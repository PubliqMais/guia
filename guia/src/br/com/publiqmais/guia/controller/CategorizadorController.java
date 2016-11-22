package br.com.publiqmais.guia.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.publiqmais.guia.dao.EmpresaDAO;
import br.com.publiqmais.guia.dao.EmpresaDAOImpl;
import br.com.publiqmais.guia.model.Empresa;

/**
 * Servlet implementation class UsuarioController
 */
@WebServlet("/categorizadorcontroller.do")
public class CategorizadorController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CategorizadorController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String id = request.getParameter("id");
		String categoria = request.getParameter("categoria");
		
		Empresa empresa = new Empresa();
		empresa.setCategoria(categoria);

		EmpresaDAOImpl empresaDAOImpl = new EmpresaDAOImpl();
		EmpresaDAO empresaDAO = empresaDAOImpl;
		empresa.setId(Integer.parseInt(id));
		empresaDAO.updateCategoria(Integer.parseInt(id), categoria);

		String msg = "Empresa alterada com sucesso!";
		request.setAttribute("msg", msg);
		RequestDispatcher home = request.getRequestDispatcher("restrict/home.jsp");
		home.forward(request, response);
	}
}
