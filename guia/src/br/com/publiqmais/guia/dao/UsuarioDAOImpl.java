package br.com.publiqmais.guia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.publiqmais.guia.model.Usuario;
import br.com.publiqmais.guia.util.Connect;



public class UsuarioDAOImpl implements UsuarioDAO {
	
	private Connection conn = Connect.getConnection();
	
	@Override
	public void addUsuario(Usuario usuario){
		String sql ="INSERT INTO usuario(nome, email, senha) VALUES (?,?,?)";
		try 
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, usuario.getNome());
			preparador.setString(2, usuario.getEmail());
			preparador.setString(3, usuario.getSenha());
			preparador.execute();
			preparador.close();
			System.out.println("Usuario cadastrado com sucesso!");
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao cadastrar usuario. Mensagem: " + e.getMessage());
		}
	}
	@Override
	public Usuario getUsuarioById(int id) {
		String sql = "SELECT * FROM usuario WHERE id = ?";
		Usuario usuario = null;	
		try
 		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setInt(1, id);
			ResultSet resultado = preparador.executeQuery();
			if(resultado.next()){
				usuario = new Usuario();
				usuario.setId(resultado.getInt("id"));
				usuario.setNome(resultado.getString("nome"));
				usuario.setEmail(resultado.getString("email"));
				usuario.setSenha(resultado.getString("senha"));
			}
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao listar o usuario. Mensagem: " + e.getMessage());
		}

		return usuario;
	}
	
	@Override
	public void updateUsuario(Usuario usuario) {
		String sql ="UPDATE usuario SET nome = ?, email = ?, senha = ? WHERE id = ?";

		try 
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, usuario.getNome());
			preparador.setString(2, usuario.getEmail());
			preparador.setString(3, usuario.getSenha());
			preparador.setLong(4, usuario.getId());

			preparador.execute();
			preparador.close();
			System.out.println("Cadastro alterado com sucesso!");
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao alterar usuario. Mensagem: " + e.getMessage());
		}

	}

	@Override
	public List<Usuario> listUsuarios() {
			String sql = "SELECT * FROM usuario";
			List<Usuario> listaUsuarios = new ArrayList<Usuario>();
			try
			{
				PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
				ResultSet resultado = preparador.executeQuery();
				while(resultado.next()){
					Usuario usuario = new Usuario();
					usuario.setId(resultado.getInt("id"));
					usuario.setNome(resultado.getString("nome"));
					usuario.setEmail(resultado.getString("email"));
					usuario.setSenha(resultado.getString("senha"));
					listaUsuarios.add(usuario);
				}
			}
			catch(SQLException e)
			{
				System.out.println("Erro ao listar os usuarios. Mensagem: " + e.getMessage());
			}
			return listaUsuarios;
	}

	@Override
	public void removeUsuario(int id) {
		String sql ="DELETE FROM usuario WHERE id=?";
		try 
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setInt(1, id);
			preparador.execute();
			preparador.close();
			System.out.println("Usuário excluido com sucesso!");
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao excluir usuario. Mensagem: " + e.getMessage());
		}
	}
	
	@Override
	public boolean autenticarUsuario(Usuario usuario) {

		String sql = "SELECT * FROM usuario WHERE email = ? AND senha = ?";

		try {
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, usuario.getEmail());
			preparador.setString(2, usuario.getSenha());

			ResultSet resultado = preparador.executeQuery();
			return resultado.next();

		} catch (SQLException e) {
			e.printStackTrace();
		}

		return false;

	}// autenticar
}
