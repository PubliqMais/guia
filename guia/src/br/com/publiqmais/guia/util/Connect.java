package br.com.publiqmais.guia.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
	public static Connection getConnection() {
		Connection conexao = null;
		try {
			Class.forName("com.mysql.jdbc.Driver");
			String url = "jdbc:mysql://127.10.4.130:3306/publiqmais?useUnicode=yes&characterEncoding=UTF-8";
			String usuario = "root";
			String senha = "";
			
		    /*String url = "jdbc:mysql://localhost:3306/publiqma_is?useUnicode=yes&characterEncoding=UTF-8";
			String usuario = "publiqma_is";
			String senha = "Pq+@2640";*/
			 
			conexao = (Connection) DriverManager.getConnection(url, usuario, senha);
		} catch (SQLException e) {
			System.out.println("Ocorreu um erro de SQL. Erro: " + e.getMessage());
		} catch (ClassNotFoundException e) {
			System.out.println("Driver não encontrado!");
		}
		return conexao;
	}
}