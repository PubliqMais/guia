package br.com.publiqmais.guia.dao;

import java.util.List;

import br.com.publiqmais.guia.model.Usuario;


public interface UsuarioDAO {
	
	public void addUsuario(Usuario usuario);
	public Usuario getUsuarioById(int id);
	public void updateUsuario(Usuario usuario);
	public List<Usuario> listUsuarios();
	public void removeUsuario(int id);
	public boolean autenticarUsuario(Usuario usuario);
	
}
