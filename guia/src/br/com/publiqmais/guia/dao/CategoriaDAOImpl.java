package br.com.publiqmais.guia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.publiqmais.guia.model.Categoria;
import br.com.publiqmais.guia.util.Connect;



public class CategoriaDAOImpl implements CategoriaDAO {
	
	private Connection conn = Connect.getConnection();
	
	@Override
	public void addCategoria(Categoria categoria){
		String sql ="INSERT INTO categoria(titulo, descricao) VALUES (?,?)";
		try 
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, categoria.getTitulo());
			preparador.setString(2, categoria.getDescricao());
			preparador.execute();
			preparador.close();
			System.out.println("Categoria cadastrada com sucesso!");
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao cadastrar categoria. Mensagem: " + e.getMessage());
		}
	}
	@Override
	public Categoria getCategoriaById(int id) {
		String sql = "SELECT * FROM categoria WHERE id = ?";
		Categoria categoria = null;	
		try
 		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setInt(1, id);
			ResultSet resultado = preparador.executeQuery();
			if(resultado.next()){
				categoria = new Categoria();
				categoria.setId(resultado.getInt("id"));
				categoria.setTitulo(resultado.getString("titulo"));
				categoria.setDescricao(resultado.getString("descricao"));
			}
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao listar a categoria. Mensagem: " + e.getMessage());
		}

		return categoria;
	}
	
	public Categoria getCategoriaByTitulo(String titulo)
	{
		String sql = "SELECT * FROM categoria WHERE titulo = ?";
		Categoria categoria = null;	
		try
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, titulo);
				
			ResultSet resultado = preparador.executeQuery();
			
			if(resultado.next()){
				categoria = new Categoria();
				categoria.setId(resultado.getInt("id"));
				categoria.setTitulo(resultado.getString("titulo"));
				categoria.setDescricao(resultado.getString("descricao"));
			}
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao listar os produto. Mensagem: " + e.getMessage());
		}
				
		return categoria;
					
	}//buscarByNome	
	
	@Override
	public List<Categoria>  listCategoriasByTituloAproximado(String supos) {
		String sql = "SELECT * FROM categoria WHERE titulo like ?";
		List<Categoria> listaCategoria = new ArrayList<Categoria>();	
		try
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, "%" + supos + "%");
				
			ResultSet resultado = preparador.executeQuery();
			
			while(resultado.next()){
				Categoria categoria = new Categoria();
				categoria.setId(resultado.getInt("id"));
				categoria.setTitulo(resultado.getString("titulo"));
				categoria.setDescricao(resultado.getString("descricao"));
				
				listaCategoria.add(categoria);
			}
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao listar os produto. Mensagem: " + e.getMessage());
		}
				
		return listaCategoria;
	}
	
	@Override
	public List<Categoria>  listCategoriasByLetraTitulo(String letra) {
		String sql = "SELECT * FROM categoria WHERE titulo like ?";
		List<Categoria> listaCategoria = new ArrayList<Categoria>();	
		try
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, letra + "%");
				
			ResultSet resultado = preparador.executeQuery();
			
			while(resultado.next()){
				Categoria categoria = new Categoria();
				categoria.setId(resultado.getInt("id"));
				categoria.setTitulo(resultado.getString("titulo"));
				categoria.setDescricao(resultado.getString("descricao"));
				
				listaCategoria.add(categoria);
			}
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao listar os produto. Mensagem: " + e.getMessage());
		}
				
		return listaCategoria;
	}
	
	@Override
	public void updateCategoria(Categoria categoria) {
		String sql ="UPDATE categoria SET titulo = ?, descricao = ? WHERE id = ?";

		try 
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, categoria.getTitulo());
			preparador.setString(2, categoria.getDescricao());
			preparador.setLong(3, categoria.getId());

			preparador.execute();
			preparador.close();
			System.out.println("Cadastro alterado com sucesso!");
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao alterar categoria. Mensagem: " + e.getMessage());
		}

	}

	@Override
	public List<Categoria> listCategorias() {
			String sql = "SELECT * FROM categoria";
			List<Categoria> listaCategorias = new ArrayList<Categoria>();
			try
			{
				PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
				ResultSet resultado = preparador.executeQuery();
				while(resultado.next()){
					Categoria categoria = new Categoria();
					categoria.setId(resultado.getInt("id"));
					categoria.setTitulo(resultado.getString("titulo"));
					categoria.setDescricao(resultado.getString("descricao"));
					listaCategorias.add(categoria);
				}
			}
			catch(SQLException e)
			{
				System.out.println("Erro ao listar as categorias. Mensagem: " + e.getMessage());
			}
			return listaCategorias;
	}

	@Override
	public void removeCategoria(int id) {
		String sql ="DELETE FROM categoria WHERE id=?";
		try 
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setInt(1, id);
			preparador.execute();
			preparador.close();
			System.out.println("Categoria excluida com sucesso!");
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao excluir categoria. Mensagem: " + e.getMessage());
		}
	}


}
