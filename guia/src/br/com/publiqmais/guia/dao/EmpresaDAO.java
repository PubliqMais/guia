package br.com.publiqmais.guia.dao;

import java.util.List;

import br.com.publiqmais.guia.model.Empresa;


public interface EmpresaDAO {
	
	public void addEmpresa(Empresa empresa);
	public Empresa getEmpresaById(int id);
	public Empresa getEmpresaByCnpj(String cnpj);
	public void updateEmpresa(Empresa empresa);
	public void updateLogo(Empresa empresa, byte[] logo);
	public void updateLogo(int id, String logo);
	public void updateCategoria(int id, String categoria);
	public List<Empresa> listEmpresas();
	public List<Empresa> listEmpresasByLetraNomeFantazia(String letra);
	public void removeEmpresa(int id);
	public List<Empresa> listEmpresasByNomeFantaziaAproximado(String supos);
	public List<Empresa> listEmpresasByCategoria(String categoria);	
}
