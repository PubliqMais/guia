package br.com.publiqmais.guia.test;

import java.util.List;

import br.com.publiqmais.guia.dao.CategoriaDAO;
import br.com.publiqmais.guia.dao.CategoriaDAOImpl;
import br.com.publiqmais.guia.model.Categoria;

public class TestCategoriaDAO {
	public static void main(String [] args) {
		testAddCategoria();
		testGetCategoriaById(1);
		testGetCategoriaByTitulo("titulo");
		testListCategoriasByTituloAproximado("c");
		testListarTodos();		
	}

	private static void testAddCategoria() {
		Categoria categoria = new Categoria();
		categoria.setTitulo("Compressores");
		//categoria.setDescricao("Compressor de gás");
		CategoriaDAOImpl categoriaDAOImpl = new CategoriaDAOImpl();
		CategoriaDAO categoriaDAO = categoriaDAOImpl;
		categoriaDAO.addCategoria(categoria);
	}//testAddCategoria
	
	private static void testGetCategoriaById(int id){
		CategoriaDAOImpl categoriaDAOImpl = new CategoriaDAOImpl();
		CategoriaDAO categoriaDAO = categoriaDAOImpl;
		Categoria categoria = categoriaDAO.getCategoriaById(id);
	    System.out.println(categoria.getTitulo());
	}//testGetCategoriaById
	
	private static void testGetCategoriaByTitulo(String titulo){
		CategoriaDAOImpl categoriaDAOImpl = new CategoriaDAOImpl();
		CategoriaDAO categoriaDAO = categoriaDAOImpl;
		Categoria categoria = categoriaDAO.getCategoriaByTitulo(titulo);
	    System.out.println(categoria.getTitulo() + "\n" + categoria.getDescricao());
	}//testGetCategoriaById
	
	private static void testListCategoriasByTituloAproximado(String supos){
		CategoriaDAOImpl categoriaDAOImpl = new CategoriaDAOImpl();
		CategoriaDAO categoriaDAO = categoriaDAOImpl;
		List<Categoria> listarResultados = (List<Categoria>) categoriaDAO.listCategoriasByTituloAproximado(supos);
		for(Categoria c: listarResultados){
			System.out.println(c.getId() + " " + c.getTitulo());
		}//for
	}//testBuscarByNomeAproximado()
	
	private static void testListarTodos(){
		CategoriaDAOImpl categoriaDAOImpl = new CategoriaDAOImpl();
		CategoriaDAO categoriaDAO = categoriaDAOImpl;
		List<Categoria> listarResultados = (List<Categoria>) categoriaDAO.listCategorias();
		for(Categoria c: listarResultados){
			System.out.println(c.getId() + " " + c.getTitulo());
		}//for	  
	}//testeListarTodos()
}
