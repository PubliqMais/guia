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
import br.com.publiqmais.guia.dao.EmpresaDAO;
import br.com.publiqmais.guia.dao.EmpresaDAOImpl;
import br.com.publiqmais.guia.model.Categoria;
import br.com.publiqmais.guia.model.Empresa;

@WebServlet("/sitecontroller.do")
public class SiteController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public SiteController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		
		String acao = request.getParameter("acao");

		if (acao == null || acao == "") {
			RequestDispatcher saida = request.getRequestDispatcher("index.jsp");
			saida.forward(request, response);
		}
		
		EmpresaDAOImpl empresaDAOImpl = new EmpresaDAOImpl();
		CategoriaDAOImpl categoriaDAOImpl = new CategoriaDAOImpl();

		// Lista todo os registros
		if (acao != null && acao.equals("_listar")) {
			EmpresaDAO empresaDAO = empresaDAOImpl;

			// Patrocinados
			Empresa patrocinado_1 = empresaDAO.getEmpresaById(20);
			Empresa patrocinado_2 = empresaDAO.getEmpresaById(22);
			Empresa patrocinado_3 = empresaDAO.getEmpresaById(23);
			request.setAttribute("patrocinado_1", patrocinado_1);
			request.setAttribute("patrocinado_2", patrocinado_3);
			request.setAttribute("patrocinado_3", patrocinado_2);

			// Destaques
			Empresa destaque_1 = empresaDAO.getEmpresaById(1);
			Empresa destaque_2 = empresaDAO.getEmpresaById(3);
			Empresa destaque_3 = empresaDAO.getEmpresaById(5);
			request.setAttribute("destaque_1", destaque_1);
			request.setAttribute("destaque_2", destaque_2);
			request.setAttribute("destaque_3", destaque_3);
			Empresa destaque_4 = empresaDAO.getEmpresaById(7);
			Empresa destaque_5 = empresaDAO.getEmpresaById(9);
			Empresa destaque_6 = empresaDAO.getEmpresaById(11);
			request.setAttribute("destaque_4", destaque_4);
			request.setAttribute("destaque_5", destaque_5);
			request.setAttribute("destaque_6", destaque_6);

			// Recentes
			Empresa recente_1 = empresaDAO.getEmpresaById(27);
			Empresa recente_2 = empresaDAO.getEmpresaById(26);
			Empresa recente_3 = empresaDAO.getEmpresaById(29);
			Empresa recente_4 = empresaDAO.getEmpresaById(30);
			request.setAttribute("recente_1", recente_1);
			request.setAttribute("recente_2", recente_2);
			request.setAttribute("recente_3", recente_3);
			request.setAttribute("recente_4", recente_4);

			// Patrocinados
			Empresa visitado_1 = empresaDAO.getEmpresaById(27);
			Empresa visitado_2 = empresaDAO.getEmpresaById(48);
			Empresa visitado_3 = empresaDAO.getEmpresaById(29);
			request.setAttribute("visitado_1", visitado_1);
			request.setAttribute("visitado_2", visitado_3);
			request.setAttribute("visitado_3", visitado_2);

			List<Empresa> listaEmpresas = empresaDAO.listEmpresas();
			request.setAttribute("listaEmpresas", listaEmpresas);
			RequestDispatcher saida = request.getRequestDispatcher("categorias.jsp");
			saida.forward(request, response);
		}

		// Lista todo os registros
		if (acao != null && acao.equals("listar")) {

			String letra = "A";
			CategoriaDAO categoriaDAO = categoriaDAOImpl;
			List<Categoria> listaCategoriasA = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasA", listaCategoriasA);
			letra = "B";
			List<Categoria> listaCategoriasB = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasB", listaCategoriasB);
			letra = "C";
			List<Categoria> listaCategoriasC = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasC", listaCategoriasC);
			letra = "D";
			List<Categoria> listaCategoriasD = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasD", listaCategoriasD);
			letra = "E";
			List<Categoria> listaCategoriasE = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasE", listaCategoriasE);
			letra = "F";
			List<Categoria> listaCategoriasF = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasF", listaCategoriasF);
			letra = "G";
			List<Categoria> listaCategoriasG = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasG", listaCategoriasG);
			letra = "H";
			List<Categoria> listaCategoriasH = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasH", listaCategoriasH);
			letra = "I";
			List<Categoria> listaCategoriasI = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasI", listaCategoriasI);
			letra = "J";
			List<Categoria> listaCategoriasJ = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasJ", listaCategoriasJ);
			letra = "K";
			List<Categoria> listaCategoriasK = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasK", listaCategoriasK);
			letra = "L";
			List<Categoria> listaCategoriasL = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasL", listaCategoriasL);
			letra = "M";
			List<Categoria> listaCategoriasM = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasM", listaCategoriasM);
			letra = "N";
			List<Categoria> listaCategoriasN = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasN", listaCategoriasN);
			letra = "O";
			List<Categoria> listaCategoriasO = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasO", listaCategoriasO);
			letra = "P";
			List<Categoria> listaCategoriasP = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasP", listaCategoriasP);
			letra = "Q";
			List<Categoria> listaCategoriasQ = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasQ", listaCategoriasQ);
			letra = "R";
			List<Categoria> listaCategoriasR = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasR", listaCategoriasR);
			letra = "S";
			List<Categoria> listaCategoriasS = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasS", listaCategoriasS);
			letra = "T";
			List<Categoria> listaCategoriasT = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasT", listaCategoriasT);
			letra = "U";
			List<Categoria> listaCategoriasU = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasU", listaCategoriasU);
			letra = "V";
			List<Categoria> listaCategoriasV = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasV", listaCategoriasV);
			letra = "W";
			List<Categoria> listaCategoriasW = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasW", listaCategoriasW);
			letra = "X";
			List<Categoria> listaCategoriasX = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasX", listaCategoriasX);
			letra = "Y";
			List<Categoria> listaCategoriasY = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasY", listaCategoriasY);
			letra = "Z";
			List<Categoria> listaCategoriasZ = categoriaDAO.listCategoriasByLetraTitulo(letra);
			request.setAttribute("listaCategoriasZ", listaCategoriasZ);

			EmpresaDAO empresaDAO = empresaDAOImpl;

			// Patrocinados
			Empresa patrocinado_1 = empresaDAO.getEmpresaById(20);
			Empresa patrocinado_2 = empresaDAO.getEmpresaById(22);
			Empresa patrocinado_3 = empresaDAO.getEmpresaById(23);
			request.setAttribute("patrocinado_1", patrocinado_1);
			request.setAttribute("patrocinado_2", patrocinado_3);
			request.setAttribute("patrocinado_3", patrocinado_2);

			// Destaques
			Empresa destaque_1 = empresaDAO.getEmpresaById(1);
			Empresa destaque_2 = empresaDAO.getEmpresaById(3);
			Empresa destaque_3 = empresaDAO.getEmpresaById(5);
			request.setAttribute("destaque_1", destaque_1);
			request.setAttribute("destaque_2", destaque_2);
			request.setAttribute("destaque_3", destaque_3);
			Empresa destaque_4 = empresaDAO.getEmpresaById(7);
			Empresa destaque_5 = empresaDAO.getEmpresaById(9);
			Empresa destaque_6 = empresaDAO.getEmpresaById(11);
			request.setAttribute("destaque_4", destaque_4);
			request.setAttribute("destaque_5", destaque_5);
			request.setAttribute("destaque_6", destaque_6);

			// Recentes
			Empresa recente_1 = empresaDAO.getEmpresaById(27);
			Empresa recente_2 = empresaDAO.getEmpresaById(26);
			Empresa recente_3 = empresaDAO.getEmpresaById(29);
			Empresa recente_4 = empresaDAO.getEmpresaById(30);
			request.setAttribute("recente_1", recente_1);
			request.setAttribute("recente_2", recente_2);
			request.setAttribute("recente_3", recente_3);
			request.setAttribute("recente_4", recente_4);

			// Patrocinados
			Empresa visitado_1 = empresaDAO.getEmpresaById(27);
			Empresa visitado_2 = empresaDAO.getEmpresaById(48);
			Empresa visitado_3 = empresaDAO.getEmpresaById(29);
			request.setAttribute("visitado_1", visitado_1);
			request.setAttribute("visitado_2", visitado_3);
			request.setAttribute("visitado_3", visitado_2);

			List<Empresa> listaEmpresas = empresaDAO.listEmpresas();
			request.setAttribute("listaEmpresas", listaEmpresas);
			RequestDispatcher saida = request.getRequestDispatcher("categorias.jsp");
			saida.forward(request, response);
		}

		// Lista todo os registros
		if (acao != null && acao.equals("sobre")) {
			EmpresaDAO empresaDAO = empresaDAOImpl;

			// Patrocinados
			Empresa patrocinado_1 = empresaDAO.getEmpresaById(20);
			Empresa patrocinado_2 = empresaDAO.getEmpresaById(22);
			Empresa patrocinado_3 = empresaDAO.getEmpresaById(23);
			request.setAttribute("patrocinado_1", patrocinado_1);
			request.setAttribute("patrocinado_2", patrocinado_3);
			request.setAttribute("patrocinado_3", patrocinado_2);

			// Destaques
			Empresa destaque_1 = empresaDAO.getEmpresaById(1);
			Empresa destaque_2 = empresaDAO.getEmpresaById(3);
			Empresa destaque_3 = empresaDAO.getEmpresaById(5);
			request.setAttribute("destaque_1", destaque_1);
			request.setAttribute("destaque_2", destaque_2);
			request.setAttribute("destaque_3", destaque_3);
			Empresa destaque_4 = empresaDAO.getEmpresaById(7);
			Empresa destaque_5 = empresaDAO.getEmpresaById(9);
			Empresa destaque_6 = empresaDAO.getEmpresaById(11);
			request.setAttribute("destaque_4", destaque_4);
			request.setAttribute("destaque_5", destaque_5);
			request.setAttribute("destaque_6", destaque_6);

			// Recentes
			Empresa recente_1 = empresaDAO.getEmpresaById(27);
			Empresa recente_2 = empresaDAO.getEmpresaById(26);
			Empresa recente_3 = empresaDAO.getEmpresaById(29);
			Empresa recente_4 = empresaDAO.getEmpresaById(30);
			request.setAttribute("recente_1", recente_1);
			request.setAttribute("recente_2", recente_2);
			request.setAttribute("recente_3", recente_3);
			request.setAttribute("recente_4", recente_4);

			// Patrocinados
			Empresa visitado_1 = empresaDAO.getEmpresaById(27);
			Empresa visitado_2 = empresaDAO.getEmpresaById(48);
			Empresa visitado_3 = empresaDAO.getEmpresaById(29);
			request.setAttribute("visitado_1", visitado_1);
			request.setAttribute("visitado_2", visitado_3);
			request.setAttribute("visitado_3", visitado_2);
			RequestDispatcher saida = request.getRequestDispatcher("sobre.jsp");
			saida.forward(request, response);
		}

		// Busca para edição
		if (acao != null && acao.equals("buscar")) {
			String id = request.getParameter("id");
			EmpresaDAO empresaDAO = empresaDAOImpl;
			Empresa empresa = empresaDAO.getEmpresaById(Integer.parseInt(id));

			// Patrocinados
			Empresa patrocinado_1 = empresaDAO.getEmpresaById(20);
			Empresa patrocinado_2 = empresaDAO.getEmpresaById(22);
			Empresa patrocinado_3 = empresaDAO.getEmpresaById(23);
			request.setAttribute("patrocinado_1", patrocinado_1);
			request.setAttribute("patrocinado_2", patrocinado_3);
			request.setAttribute("patrocinado_3", patrocinado_2);

			// Destaques
			Empresa destaque_1 = empresaDAO.getEmpresaById(1);
			Empresa destaque_2 = empresaDAO.getEmpresaById(3);
			Empresa destaque_3 = empresaDAO.getEmpresaById(5);
			request.setAttribute("destaque_1", destaque_1);
			request.setAttribute("destaque_2", destaque_2);
			request.setAttribute("destaque_3", destaque_3);
			Empresa destaque_4 = empresaDAO.getEmpresaById(7);
			Empresa destaque_5 = empresaDAO.getEmpresaById(9);
			Empresa destaque_6 = empresaDAO.getEmpresaById(11);
			request.setAttribute("destaque_4", destaque_4);
			request.setAttribute("destaque_5", destaque_5);
			request.setAttribute("destaque_6", destaque_6);

			// Recentes
			Empresa recente_1 = empresaDAO.getEmpresaById(27);
			Empresa recente_2 = empresaDAO.getEmpresaById(26);
			Empresa recente_3 = empresaDAO.getEmpresaById(29);
			Empresa recente_4 = empresaDAO.getEmpresaById(30);
			request.setAttribute("recente_1", recente_1);
			request.setAttribute("recente_2", recente_2);
			request.setAttribute("recente_3", recente_3);
			request.setAttribute("recente_4", recente_4);

			// Patrocinados
			Empresa visitado_1 = empresaDAO.getEmpresaById(27);
			Empresa visitado_2 = empresaDAO.getEmpresaById(48);
			Empresa visitado_3 = empresaDAO.getEmpresaById(29);
			request.setAttribute("visitado_1", visitado_1);
			request.setAttribute("visitado_2", visitado_3);
			request.setAttribute("visitado_3", visitado_2);
			request.setAttribute("empresa", empresa);
			RequestDispatcher saida = request.getRequestDispatcher("empresa.jsp");
			saida.forward(request, response);
		}
		
		// Lista todo os registros
		if (acao != null && acao.equals("empresas")) {

			String supos = request.getParameter("supos");
			EmpresaDAO empresaDAO = empresaDAOImpl;
			
			// Patrocinados
			Empresa patrocinado_1 = empresaDAO.getEmpresaById(20);
			Empresa patrocinado_2 = empresaDAO.getEmpresaById(22);
			Empresa patrocinado_3 = empresaDAO.getEmpresaById(23);
			request.setAttribute("patrocinado_1", patrocinado_1);
			request.setAttribute("patrocinado_2", patrocinado_3);
			request.setAttribute("patrocinado_3", patrocinado_2);

			// Destaques
			Empresa destaque_1 = empresaDAO.getEmpresaById(1);
			Empresa destaque_2 = empresaDAO.getEmpresaById(3);
			Empresa destaque_3 = empresaDAO.getEmpresaById(5);
			request.setAttribute("destaque_1", destaque_1);
			request.setAttribute("destaque_2", destaque_2);
			request.setAttribute("destaque_3", destaque_3);
			Empresa destaque_4 = empresaDAO.getEmpresaById(7);
			Empresa destaque_5 = empresaDAO.getEmpresaById(9);
			Empresa destaque_6 = empresaDAO.getEmpresaById(11);
			request.setAttribute("destaque_4", destaque_4);
			request.setAttribute("destaque_5", destaque_5);
			request.setAttribute("destaque_6", destaque_6);

			// Recentes
			Empresa recente_1 = empresaDAO.getEmpresaById(27);
			Empresa recente_2 = empresaDAO.getEmpresaById(26);
			Empresa recente_3 = empresaDAO.getEmpresaById(29);
			Empresa recente_4 = empresaDAO.getEmpresaById(30);
			request.setAttribute("recente_1", recente_1);
			request.setAttribute("recente_2", recente_2);
			request.setAttribute("recente_3", recente_3);
			request.setAttribute("recente_4", recente_4);

			// Patrocinados
			Empresa visitado_1 = empresaDAO.getEmpresaById(27);
			Empresa visitado_2 = empresaDAO.getEmpresaById(48);
			Empresa visitado_3 = empresaDAO.getEmpresaById(29);
			request.setAttribute("visitado_1", visitado_1);
			request.setAttribute("visitado_2", visitado_3);
			request.setAttribute("visitado_3", visitado_2);

			List<Empresa> listaEmpresas = empresaDAO.listEmpresasByNomeFantaziaAproximado(supos);
			request.setAttribute("listaEmpresas", listaEmpresas);
			RequestDispatcher saida = request.getRequestDispatcher("categoria.jsp");
			saida.forward(request, response);
		}

		// Lista todo os registros
		if (acao != null && acao.equals("categoria")) {
			
			String titulo = request.getParameter("titulo");
			EmpresaDAO empresaDAO = empresaDAOImpl;
			
			// Patrocinados
			Empresa patrocinado_1 = empresaDAO.getEmpresaById(20);
			Empresa patrocinado_2 = empresaDAO.getEmpresaById(22);
			Empresa patrocinado_3 = empresaDAO.getEmpresaById(23);
			request.setAttribute("patrocinado_1", patrocinado_1);
			request.setAttribute("patrocinado_2", patrocinado_3);
			request.setAttribute("patrocinado_3", patrocinado_2);

			// Destaques
			Empresa destaque_1 = empresaDAO.getEmpresaById(1);
			Empresa destaque_2 = empresaDAO.getEmpresaById(3);
			Empresa destaque_3 = empresaDAO.getEmpresaById(5);
			request.setAttribute("destaque_1", destaque_1);
			request.setAttribute("destaque_2", destaque_2);
			request.setAttribute("destaque_3", destaque_3);
			Empresa destaque_4 = empresaDAO.getEmpresaById(7);
			Empresa destaque_5 = empresaDAO.getEmpresaById(9);
			Empresa destaque_6 = empresaDAO.getEmpresaById(11);
			request.setAttribute("destaque_4", destaque_4);
			request.setAttribute("destaque_5", destaque_5);
			request.setAttribute("destaque_6", destaque_6);

			// Recentes
			Empresa recente_1 = empresaDAO.getEmpresaById(27);
			Empresa recente_2 = empresaDAO.getEmpresaById(26);
			Empresa recente_3 = empresaDAO.getEmpresaById(29);
			Empresa recente_4 = empresaDAO.getEmpresaById(30);
			request.setAttribute("recente_1", recente_1);
			request.setAttribute("recente_2", recente_2);
			request.setAttribute("recente_3", recente_3);
			request.setAttribute("recente_4", recente_4);

			// Patrocinados
			Empresa visitado_1 = empresaDAO.getEmpresaById(27);
			Empresa visitado_2 = empresaDAO.getEmpresaById(48);
			Empresa visitado_3 = empresaDAO.getEmpresaById(29);
			request.setAttribute("visitado_1", visitado_1);
			request.setAttribute("visitado_2", visitado_3);
			request.setAttribute("visitado_3", visitado_2);

			List<Empresa> listaEmpresas = empresaDAO.listEmpresasByCategoria(titulo);
			request.setAttribute("listaEmpresas", listaEmpresas);
			RequestDispatcher saida = request.getRequestDispatcher("categoria.jsp");
			saida.forward(request, response);
		}

		// Lista todo os registros
		if (acao != null && acao.equals("contatos")) {
			EmpresaDAO empresaDAO = empresaDAOImpl;

			// Patrocinados
			Empresa patrocinado_1 = empresaDAO.getEmpresaById(20);
			Empresa patrocinado_2 = empresaDAO.getEmpresaById(22);
			Empresa patrocinado_3 = empresaDAO.getEmpresaById(23);
			request.setAttribute("patrocinado_1", patrocinado_1);
			request.setAttribute("patrocinado_2", patrocinado_3);
			request.setAttribute("patrocinado_3", patrocinado_2);

			// Destaques
			Empresa destaque_1 = empresaDAO.getEmpresaById(1);
			Empresa destaque_2 = empresaDAO.getEmpresaById(3);
			Empresa destaque_3 = empresaDAO.getEmpresaById(5);
			request.setAttribute("destaque_1", destaque_1);
			request.setAttribute("destaque_2", destaque_2);
			request.setAttribute("destaque_3", destaque_3);
			Empresa destaque_4 = empresaDAO.getEmpresaById(7);
			Empresa destaque_5 = empresaDAO.getEmpresaById(9);
			Empresa destaque_6 = empresaDAO.getEmpresaById(11);
			request.setAttribute("destaque_4", destaque_4);
			request.setAttribute("destaque_5", destaque_5);
			request.setAttribute("destaque_6", destaque_6);

			// Recentes
			Empresa recente_1 = empresaDAO.getEmpresaById(27);
			Empresa recente_2 = empresaDAO.getEmpresaById(26);
			Empresa recente_3 = empresaDAO.getEmpresaById(29);
			Empresa recente_4 = empresaDAO.getEmpresaById(30);
			request.setAttribute("recente_1", recente_1);
			request.setAttribute("recente_2", recente_2);
			request.setAttribute("recente_3", recente_3);
			request.setAttribute("recente_4", recente_4);

			// Patrocinados
			Empresa visitado_1 = empresaDAO.getEmpresaById(27);
			Empresa visitado_2 = empresaDAO.getEmpresaById(48);
			Empresa visitado_3 = empresaDAO.getEmpresaById(29);
			request.setAttribute("visitado_1", visitado_1);
			request.setAttribute("visitado_2", visitado_3);
			request.setAttribute("visitado_3", visitado_2);
			RequestDispatcher saida = request.getRequestDispatcher("contatos.jsp");
			saida.forward(request, response);
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}

}
