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
import br.com.publiqmais.guia.util.WebServiceCep;

/**
 * Servlet implementation class UsuarioController
 */
@WebServlet("/empresacontroller.do")
public class EmpresaController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EmpresaController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		String acao = request.getParameter("acao");
		EmpresaDAOImpl empresaDAOImpl = new EmpresaDAOImpl();
		CategoriaDAOImpl categoriaDAOImpl = new CategoriaDAOImpl();

		// Lista todo os registros
		if (acao != null && acao.equals("listar")) {
			EmpresaDAO empresaDAO = empresaDAOImpl;
			List<Empresa> listaEmpresas = empresaDAO.listEmpresas();
			request.setAttribute("listaEmpresas", listaEmpresas);
			RequestDispatcher saida = request.getRequestDispatcher("restrict/empresas.jsp");
			saida.forward(request, response);
		}
		// Inicia um formulário para novo cadastro
		if (acao != null && acao.equals("novo")) {
			RequestDispatcher saida = request.getRequestDispatcher("restrict/cnpj.jsp");
			saida.forward(request, response);
		}
		// Busca para edição
		if (acao != null && acao.equals("alterar")) {
			String id = request.getParameter("id");
			EmpresaDAO empresaDAO = empresaDAOImpl;
			Empresa empresa = empresaDAO.getEmpresaById(Integer.parseInt(id));
			// Faz a busca para o cep 58043-280
			WebServiceCep webServiceCep = WebServiceCep.searchCep(empresa.getCep());
			// A ferramenta de busca ignora qualquer caracter que não seja
			// número.
			if (webServiceCep.wasSuccessful()) {
				// caso a busca ocorra bem, imprime os resultados.
				if (empresa.getLogradouro() == "" || empresa.getLogradouro() == null) {
					empresa.setLogradouro(webServiceCep.getLogradouroFull());
				}
				if (empresa.getBairro() == null || empresa.getLogradouro() == "") {
					empresa.setBairro(webServiceCep.getBairro());
				}
				if (empresa.getCidade() == null || empresa.getCidade() == "") {
					empresa.setCidade(webServiceCep.getCidade());
				}
				if (empresa.getEstado() == null || empresa.getEstado() == "") {
					empresa.setEstado(webServiceCep.getUf());
				}

				// caso haja problemas imprime as exceções.
			}

			request.setAttribute("empresa", empresa);
			RequestDispatcher saida = request.getRequestDispatcher("restrict/empresa.jsp");
			saida.forward(request, response);
		}
		// Confere CNPJ para Adição
		String cnpj = request.getParameter("cnpj");
		if (cnpj != null) {
			EmpresaDAO empresaDAO = empresaDAOImpl;
			Empresa empresa = empresaDAO.getEmpresaByCnpj(cnpj);
			if (empresa != null) {
				// Faz a busca para o cep 58043-280
				WebServiceCep webServiceCep = WebServiceCep.searchCep(empresa.getCep());
				// A ferramenta de busca ignora qualquer caracter que não seja
				// número.
				if (webServiceCep.wasSuccessful()) {
					// caso a busca ocorra bem, imprime os resultados.
					if (empresa.getLogradouro() == "" || empresa.getLogradouro() == null) {
						empresa.setLogradouro(webServiceCep.getLogradouroFull());
					}
					if (empresa.getBairro() == null || empresa.getLogradouro() == "") {
						empresa.setBairro(webServiceCep.getBairro());
					}
					if (empresa.getCidade() == null || empresa.getCidade() == "") {
						empresa.setCidade(webServiceCep.getCidade());
					}
					if (empresa.getEstado() == null || empresa.getEstado() == "") {
						empresa.setEstado(webServiceCep.getUf());
					}
					request.setAttribute("empresa", empresa);
					RequestDispatcher saida = request.getRequestDispatcher("restrict/empresa.jsp");
					saida.forward(request, response);
				}
			} else {
				RequestDispatcher saida = request.getRequestDispatcher("restrict/empresa.jsp");
				saida.forward(request, response);
			}	
			
		}
		// Busca para edição do logo
		if (acao != null && acao.equals("logo")) {
			String id = request.getParameter("id");
			EmpresaDAO empresaDAO = empresaDAOImpl;
			Empresa empresa = empresaDAO.getEmpresaById(Integer.parseInt(id));
			request.setAttribute("empresa", empresa);
			RequestDispatcher saida = request.getRequestDispatcher("restrict/logo.jsp");
			saida.forward(request, response);
		}
		// Busca para edição da categoria
		if (acao != null && acao.equals("categorizar")) {
			String id = request.getParameter("id");
			EmpresaDAO empresaDAO = empresaDAOImpl;
			Empresa empresa = empresaDAO.getEmpresaById(Integer.parseInt(id));
			CategoriaDAO categoriaDAO = categoriaDAOImpl;
			List<Categoria> categorias = categoriaDAO.listCategorias();
			request.setAttribute("categorias", categorias);
			request.setAttribute("empresa", empresa);
			RequestDispatcher saida = request.getRequestDispatcher("restrict/categorizar.jsp");
			saida.forward(request, response);
		}
		// Busca para edição
		if (acao != null && acao.equals("a-z")) {
			RequestDispatcher saida = request.getRequestDispatcher("restrict/empresasdea-z.jsp");
			saida.forward(request, response);
		}
		// Lista todos os registros por letra
		if (acao != null && acao.equals("letra")) {
			String letra = request.getParameter("letra");
			EmpresaDAO empresaDAO = empresaDAOImpl;
			List<Empresa> listaEmpresas = empresaDAO.listEmpresasByLetraNomeFantazia(letra);
			request.setAttribute("listaEmpresas", listaEmpresas);
			RequestDispatcher saida = request.getRequestDispatcher("restrict/empresas.jsp");
			saida.forward(request, response);
		}
		// Excluir
		if (acao != null && acao.equals("excluir")) {
			String id = request.getParameter("id");
			EmpresaDAO empresaDAO = empresaDAOImpl;
			empresaDAO.removeEmpresa(Integer.parseInt(id));
			String msg = "Empresa excluida com sucesso!";
			request.setAttribute("msg", msg);
			response.sendRedirect("empresacontroller.do?acao=listar");
		}

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String id = request.getParameter("id");
		String contato = request.getParameter("contato");
		String email = request.getParameter("email");
		String cnpj = request.getParameter("cnpj");
		String telefone = request.getParameter("telefone");
		String celular = request.getParameter("celular");
		String razaoSocial = request.getParameter("razaoSocial");
		String nomeFantazia = request.getParameter("nomeFantazia");
		String site = request.getParameter("site");
		String cep = request.getParameter("cep");
		String descricao = request.getParameter("descricao");
		String numero = request.getParameter("numero");
		String complemento = request.getParameter("complemento");
		String logradouro = request.getParameter("logradouro");
		String bairro = request.getParameter("bairro");
		String cidade = request.getParameter("cidade");
		String estado = request.getParameter("estado");

		Empresa empresa = new Empresa();
		empresa.setContato(contato);
		empresa.setEmail(email);
		empresa.setTelefone(telefone);
		empresa.setCelular(celular);
		empresa.setCnpj(cnpj);
		empresa.setRazaoSocial(razaoSocial);
		empresa.setNomeFantazia(nomeFantazia);
		empresa.setSite(site);
		empresa.setCep(cep);
		empresa.setDescricao(descricao);
		empresa.setNumero(numero);
		empresa.setComplemento(complemento);
		empresa.setLogradouro(logradouro);
		empresa.setBairro(bairro);
		empresa.setCidade(cidade);
		empresa.setEstado(estado);
		EmpresaDAOImpl empresaDAOImpl = new EmpresaDAOImpl();
		EmpresaDAO empresaDAO = empresaDAOImpl;

		String msg;
		if (id != null && id != "" && id != "0") {
			empresa.setId(Integer.parseInt(id));
			empresaDAO.updateEmpresa(empresa);
			msg = "Empresa alterada com sucesso!";
		} else {
			empresaDAO.addEmpresa(empresa);
			msg = "Empresa criada com sucesso!";
		}

		request.setAttribute("msg", msg);
		RequestDispatcher home = request.getRequestDispatcher("restrict/home.jsp");
		home.forward(request, response);
	}
}
