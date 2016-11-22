package br.com.publiqmais.guia.test;

import java.util.List;

import br.com.publiqmais.guia.dao.EmpresaDAO;
import br.com.publiqmais.guia.dao.EmpresaDAOImpl;
import br.com.publiqmais.guia.model.Empresa;

public class TestEmpresaDAO {
	public static void main(String [] args) {
		testAddEmpresa();
		testGetEmpresasByCnpj("08.457.851/0001-70");
		testListEmpresasByLetraNomeFantazia("e");
		testUpdateLogo();
		testListEmpresasByNomeFantaziaAproximado("hot");
	}
	
	private static void testGetEmpresasByCnpj(String cnpj) {
		EmpresaDAOImpl empresaDAOImpl = new EmpresaDAOImpl();
		EmpresaDAO empresaDAO = empresaDAOImpl;
		Empresa empresa = empresaDAO.getEmpresaByCnpj(cnpj);
	    System.out.println(empresa.getNomeFantazia());		
	}

	private static void testAddEmpresa() {
		Empresa empresa = new Empresa();
		empresa.setContato("Carlos");
		empresa.setEmail("contato@seudominio.com.br");
		empresa.setCnpj("123456789");
		empresa.setRazaoSocial("Empresa S/A");
		empresa.setNomeFantazia("Empresa 2016");
		empresa.setSite("www.seudominio.com.br");
		empresa.setCep("123456789");
		//empresa.setLogo("coca.png");

		//categoria.setDescricao("Compressor de gás");
		EmpresaDAOImpl empresaDAOImpl = new EmpresaDAOImpl();
		EmpresaDAO empresaDAO = empresaDAOImpl;
		empresaDAO.addEmpresa(empresa);
	}//testAddEmpresa
	
	private static void testUpdateLogo() {
		String filePath = "C:/images/img.png";
		
		EmpresaDAOImpl empresaDAOImpl = new EmpresaDAOImpl();
		EmpresaDAO empresaDao = empresaDAOImpl;
		empresaDao.updateLogo(1, filePath); 
   
	}//testAddEmpresa

	private static void testListEmpresasByLetraNomeFantazia(String letra) {
		EmpresaDAOImpl empresaDAOImpl = new EmpresaDAOImpl();
		EmpresaDAO empresaDAO = empresaDAOImpl;
		List<Empresa> listarResultados = (List<Empresa>) empresaDAO.listEmpresasByLetraNomeFantazia(letra);
		for(Empresa e: listarResultados){
			System.out.println(e.getId() + " " + e.getNomeFantazia());
		}//for
	}//testBuscarByNomeAproximado()
	
	private static void testListEmpresasByNomeFantaziaAproximado(String supos) {
		EmpresaDAOImpl empresaDAOImpl = new EmpresaDAOImpl();
		EmpresaDAO empresaDAO = empresaDAOImpl;
		List<Empresa> listarResultados = (List<Empresa>) empresaDAO.listEmpresasByLetraNomeFantazia(supos);
		for(Empresa e: listarResultados){
			System.out.println(e.getId() + " " + e.getNomeFantazia());
		}//for
	}//testBuscarByNomeAproximado()
	
}
