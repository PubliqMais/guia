package br.com.publiqmais.guia.controller;

import java.io.IOException;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/displayservlet")
public class DisplayServlet extends HttpServlet {
  /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException,
      ServletException {
    Blob photo = null;
    Connection conn = null;
    Statement stmt = null;
    ResultSet rs = null;

    int id = Integer.parseInt(request.getParameter("id"));
    
    String query = "SELECT logo FROM empresa WHERE  id = " + id;
    ServletOutputStream out = response.getOutputStream();

    try {
      conn = getMySqlConnection();
    } catch (Exception e) {
      response.setContentType("text/html");
      out.println("<html><head><title>Person Photo</title></head>");
      out.println("<body><h1>Database Connection Problem.</h1></body></html>");
      return;
    }

    try {
      stmt = conn.createStatement();
      rs = stmt.executeQuery(query);
      if (rs.next()) {
        photo = rs.getBlob(1);
      } else {
        response.setContentType("text/html");
        out.println("<html><head><title>Person Photo</title></head>");
        out.println("<body><h1>No photo found for id= 001 </h1></body></html>");
        return;
      }

      response.setContentType("image/gif");
      InputStream in = photo.getBinaryStream();
      int length = (int) photo.length();

      int bufferSize = 1024;
      byte[] buffer = new byte[bufferSize];

      while ((length = in.read(buffer)) != -1) {
        System.out.println("writing " + length + " bytes");
        out.write(buffer, 0, length);
      }

      response.setContentType("text/html");
      out.println("<html><head><title>Error: Person Photo</title></head>");
      out.println("<body><h1>Error=</h1></body></html>");

      in.close();
      out.flush();
      	
    } catch (SQLException e) {
      response.setContentType("text/html");
      out.println("<html><head><title>Error: Person Photo</title></head>");
      out.println("<body><h1>Error=" + e.getMessage() + "</h1></body></html>");
      return;
    } finally {
      try {
        rs.close();
        stmt.close();
        conn.close();
      } catch (SQLException e) {
        e.printStackTrace();
      }
    }
  }

  public static Connection getMySqlConnection() throws Exception {
    String driver = "org.gjt.mm.mysql.Driver";
    String url = "jdbc:mysql://localhost:3306/publiqma_is?useUnicode=yes&characterEncoding=UTF-8";
    String username = "publiqma_is";
    String password = "Pq+@2640";

    Class.forName(driver);
    Connection conn = DriverManager.getConnection(url, username, password);
    return conn;
  }
}
