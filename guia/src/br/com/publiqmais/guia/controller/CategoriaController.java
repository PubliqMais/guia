package br.com.publiqmais.guia.controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.publiqmais.guia.dao.CategoriaDAO;
import br.com.publiqmais.guia.dao.CategoriaDAOImpl;
import br.com.publiqmais.guia.model.Categoria;

/**
 * Servlet implementation class CategoriaController
 */
@WebServlet("/categoriacontroller.do")
public class CategoriaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CategoriaController() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String acao = request.getParameter("acao");
		CategoriaDAOImpl categoriaDAOImpl = new CategoriaDAOImpl();
			
		// Lista todo os registros
		if(acao != null && acao.equals("listar")){
			CategoriaDAO categoriaDAO = categoriaDAOImpl;
			List<Categoria> listaCategorias = categoriaDAO.listCategorias();
			request.setAttribute("listaCategorias", listaCategorias);
			RequestDispatcher saida = request.getRequestDispatcher("restrict/categorias.jsp");
			saida.forward(request, response);
		}
		// Lista todo os registros
		if(acao != null && acao.equals("categorias")){
			String supos = request.getParameter("supos");
			CategoriaDAO categoriaDAO = categoriaDAOImpl;
			List<Categoria> listaCategorias = categoriaDAO.listCategoriasByTituloAproximado(supos);
			request.setAttribute("listaCategorias", listaCategorias);
			RequestDispatcher saida = request.getRequestDispatcher("restrict/categorias.jsp");
			saida.forward(request, response);
		}
		// Inicia um formulário para novo cadastro
		if(acao != null && acao.equals("novo")){
			RequestDispatcher saida = request.getRequestDispatcher("restrict/categoria.jsp");
			saida.forward(request, response);
		}
		// Busca para edição
		if(acao != null && acao.equals("alterar")){
			String id = request.getParameter("id");
			CategoriaDAO categoriaDAO = categoriaDAOImpl;
			Categoria categoria = categoriaDAO.getCategoriaById(Integer.parseInt(id));		
			request.setAttribute("categoria", categoria);
			RequestDispatcher saida = request.getRequestDispatcher("restrict/categoria.jsp");
			saida.forward(request, response);			
		}
		// Busca para edição
		if(acao != null && acao.equals("a-z")){
			RequestDispatcher saida = request.getRequestDispatcher("restrict/categoriasdea-z.jsp");
			saida.forward(request, response);			
		}
		// Lista todo os registros
		if(acao != null && acao.equals("letra")){
			String letra = request.getParameter("letra");
			CategoriaDAO categoriaDAO = categoriaDAOImpl;
			List<Categoria> listaCategorias = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategorias", listaCategorias);
			RequestDispatcher saida = request.getRequestDispatcher("restrict/categorias.jsp");
			saida.forward(request, response);
		}

		// Excluir
		if(acao != null && acao.equals("excluir")){
			String id = request.getParameter("id");			
			CategoriaDAO categoriaDAO = categoriaDAOImpl;
			categoriaDAO.removeCategoria(Integer.parseInt(id));
			String msg = "Categoria excluida com sucesso!";
			request.setAttribute("msg", msg);
			response.sendRedirect("categoriacontroller.do?acao=listar");
		}
	
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
		String titulo = request.getParameter("titulo");
		String descricao = request.getParameter("descricao");
		
		Categoria categoria = new Categoria();
		categoria.setTitulo(titulo);
		categoria.setDescricao(descricao);

		CategoriaDAOImpl categoriaDAOImpl = new CategoriaDAOImpl();
		CategoriaDAO categoriaDAO = categoriaDAOImpl;
		
		String msg;
		if(id != null && id != "" && id != "0"){
			categoria.setId(Integer.parseInt(id));
			categoriaDAO.updateCategoria(categoria);
			msg = "Categoria alterada com sucesso!";
		} else {
			categoriaDAO.addCategoria(categoria);
			msg = "Categoria criada com sucesso!";
		}
		
		request.setAttribute("msg", msg);
		RequestDispatcher home = request.getRequestDispatcher("restrict/home.jsp");
		home.forward(request, response);
	}
}
