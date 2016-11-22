package br.com.publiqmais.guia.dao;

import java.util.List;

import br.com.publiqmais.guia.model.Categoria;


public interface CategoriaDAO {
	
	public void addCategoria(Categoria categoria);
	public Categoria getCategoriaById(int id);
	public Categoria getCategoriaByTitulo(String titulo);
	public List<Categoria> listCategoriasByTituloAproximado(String supos);
	public List<Categoria> listCategoriasByLetraTitulo(String letra);
	public void updateCategoria(Categoria categoria);
	public List<Categoria> listCategorias();
	public void removeCategoria(int id);
	
}
