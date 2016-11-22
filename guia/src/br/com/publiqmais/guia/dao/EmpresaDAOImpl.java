package br.com.publiqmais.guia.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import br.com.publiqmais.guia.model.Empresa;
import br.com.publiqmais.guia.util.Connect;



public class EmpresaDAOImpl implements EmpresaDAO {
	
	private Connection conn = Connect.getConnection();
	
	@Override
	public void addEmpresa(Empresa empresa){
		String sql ="INSERT INTO empresa(contato, email, telefone, celular, cnpj, razaosocial, nomefantazia, site, cep, descricao, numero, complemento, logradouro, bairro, cidade, estado) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		try 
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, empresa.getContato());
			preparador.setString(2, empresa.getEmail());
			preparador.setString(3, empresa.getTelefone());
			preparador.setString(4, empresa.getCelular());
			preparador.setString(5, empresa.getCnpj());
			preparador.setString(6, empresa.getRazaoSocial());
			preparador.setString(7, empresa.getNomeFantazia());
			preparador.setString(8, empresa.getSite());
			preparador.setString(9, empresa.getCep());
			preparador.setString(10, empresa.getDescricao());
			preparador.setString(11, empresa.getNumero());
			preparador.setString(12, empresa.getComplemento());
			preparador.setString(13, empresa.getLogradouro());
			preparador.setString(14, empresa.getBairro());
			preparador.setString(15, empresa.getCidade());
			preparador.setString(16, empresa.getEstado());
			preparador.execute();
			preparador.close();
			System.out.println("Empresa cadastrada com sucesso!");
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao cadastrar empresa. Mensagem: " + e.getMessage());
		}
	}
	@Override
	public Empresa getEmpresaById(int id) {
		String sql = "SELECT * FROM empresa WHERE id = ?";
		Empresa empresa = null;	
		try
 		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setInt(1, id);
			ResultSet resultado = preparador.executeQuery();
			if(resultado.next()){
				empresa = new Empresa();
				empresa.setId(resultado.getInt("id"));
				empresa.setContato(resultado.getString("contato"));
				empresa.setEmail(resultado.getString("email"));
				empresa.setCnpj(resultado.getString("cnpj"));
				empresa.setTelefone(resultado.getString("telefone"));
				empresa.setCelular(resultado.getString("celular"));
				empresa.setRazaoSocial(resultado.getString("razaoSocial"));
				empresa.setNomeFantazia(resultado.getString("nomeFantazia"));
				empresa.setSite(resultado.getString("site"));
				empresa.setCep(resultado.getString("cep"));
				empresa.setDescricao(resultado.getString("descricao"));
				empresa.setNumero(resultado.getString("numero"));
				empresa.setComplemento(resultado.getString("complemento"));
				empresa.setLogo(resultado.getBytes("logo"));
				empresa.setCategoria(resultado.getString("categoria"));
				empresa.setLogradouro(resultado.getString("logradouro"));
				empresa.setBairro(resultado.getString("bairro"));
				empresa.setCidade(resultado.getString("cidade"));
				empresa.setEstado(resultado.getString("estado"));
			}
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao listar o empresa. Mensagem: " + e.getMessage());
		}

		return empresa;
	}
	
	@Override
	public void updateEmpresa(Empresa empresa) {
		String sql ="UPDATE empresa SET contato = ?, email = ?, telefone = ?, celular = ?, cnpj = ?, razaosocial = ?, nomefantazia = ?, site = ?, cep = ?, numero = ?, complemento = ?, logradouro = ?, bairro = ?, cidade = ?, estado = ?, descricao = ?, logo = ? WHERE id = ?";

		try 
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, empresa.getContato());
			preparador.setString(2, empresa.getEmail());
			preparador.setString(3, empresa.getTelefone());
			preparador.setString(4, empresa.getCelular());
			preparador.setString(5, empresa.getCnpj());
			preparador.setString(6, empresa.getRazaoSocial());
			preparador.setString(7, empresa.getNomeFantazia());
			preparador.setString(8, empresa.getSite());
			preparador.setString(9, empresa.getCep());
			preparador.setString(10, empresa.getNumero());
			preparador.setString(11, empresa.getComplemento());
			preparador.setString(12, empresa.getLogradouro());
			preparador.setString(13, empresa.getBairro());
			preparador.setString(14, empresa.getCidade());
			preparador.setString(15, empresa.getEstado());
			preparador.setString(16, empresa.getDescricao());
			preparador.setBytes(17, empresa.getLogo());
			preparador.setLong(18, empresa.getId());

			preparador.execute();
			preparador.close();
			System.out.println("Cadastro alterado com sucesso!");
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao alterar empresa. Mensagem: " + e.getMessage());
		}

	}

	@Override
	public void updateLogo(Empresa empresa, byte[] logo) {
		String sql ="UPDATE empresa SET logo = ? WHERE id = ?";

		try 
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setBytes(17, logo);
			preparador.setLong(18, empresa.getId());

			preparador.execute();
			preparador.close();
			System.out.println("Cadastro alterado com sucesso!");
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao alterar empresa. Mensagem: " + e.getMessage());
		}

	}

	@Override
	public List<Empresa> listEmpresas() {
			String sql = "SELECT * FROM empresa ORDER BY id DESC";
			List<Empresa> listaEmpresas = new ArrayList<Empresa>();
			try
			{
				PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
				ResultSet resultado = preparador.executeQuery();
				while(resultado.next()){
					Empresa empresa = new Empresa();
					empresa.setId(resultado.getInt("id"));
					empresa.setContato(resultado.getString("contato"));
					empresa.setEmail(resultado.getString("email"));
					empresa.setCnpj(resultado.getString("cnpj"));
					empresa.setTelefone(resultado.getString("telefone"));
					empresa.setCelular(resultado.getString("celular"));
					empresa.setRazaoSocial(resultado.getString("RazaoSocial"));
					empresa.setNomeFantazia(resultado.getString("nomeFantazia"));
					empresa.setSite(resultado.getString("site"));
					empresa.setCep(resultado.getString("cep"));
					empresa.setNumero(resultado.getString("numero"));
					empresa.setComplemento(resultado.getString("complemento"));
					empresa.setLogradouro(resultado.getString("logradouro"));
					empresa.setBairro(resultado.getString("bairro"));
					empresa.setCidade(resultado.getString("cidade"));
					empresa.setEstado(resultado.getString("estado"));
					empresa.setDescricao(resultado.getString("descricao"));
					empresa.setLogo(resultado.getBytes("logo"));
					empresa.setCategoria(resultado.getString("categoria"));
					listaEmpresas.add(empresa);
				}
			}
			catch(SQLException e)
			{
				System.out.println("Erro ao listar as empresas. Mensagem: " + e.getMessage());
			}
			return listaEmpresas;
	}
	
	@Override
	public List<Empresa>  listEmpresasByLetraNomeFantazia(String letra) {
		String sql = "SELECT * FROM empresa WHERE nomefantazia like ?";
		List<Empresa> listaEmpresas = new ArrayList<Empresa>();	
		try
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, letra + "%");
				
			ResultSet resultado = preparador.executeQuery();
			
			while(resultado.next()){
				Empresa empresa = new Empresa();
				empresa.setId(resultado.getInt("id"));
				empresa.setContato(resultado.getString("contato"));
				empresa.setEmail(resultado.getString("email"));
				empresa.setCnpj(resultado.getString("cnpj"));
				empresa.setTelefone(resultado.getString("telefone"));
				empresa.setCelular(resultado.getString("celular"));
				empresa.setRazaoSocial(resultado.getString("RazaoSocial"));
				empresa.setNomeFantazia(resultado.getString("nomeFantazia"));
				empresa.setSite(resultado.getString("site"));
				empresa.setCep(resultado.getString("cep"));
				empresa.setDescricao(resultado.getString("descricao"));
				empresa.setLogo(resultado.getBytes("logo"));
				empresa.setNumero(resultado.getString("numero"));
				empresa.setComplemento(resultado.getString("complemento"));
				empresa.setLogradouro(resultado.getString("logradouro"));
				empresa.setBairro(resultado.getString("bairro"));
				empresa.setCidade(resultado.getString("cidade"));
				empresa.setEstado(resultado.getString("estado"));
				empresa.setCategoria(resultado.getString("categoria"));
				listaEmpresas.add(empresa);
			}
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao listar as empresas. Mensagem: " + e.getMessage());
		}
				
		return listaEmpresas;
	}


	@Override
	public void removeEmpresa(int id) {
		String sql ="DELETE FROM empresa WHERE id=?";
		try 
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setInt(1, id);
			preparador.execute();
			preparador.close();
			System.out.println("Empresa excluida com sucesso!");
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao excluir empresa. Mensagem: " + e.getMessage());
		}
	}
	@Override
	public List<Empresa> listEmpresasByNomeFantaziaAproximado(String supos) {
		String sql = "SELECT * FROM empresa WHERE nomeFantazia like ?";
		List<Empresa> listaEmpresas = new ArrayList<Empresa>();	
		try
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, "%" + supos + "%");
				
			ResultSet resultado = preparador.executeQuery();
			
			while(resultado.next()){
				Empresa empresa = new Empresa();
				empresa.setId(resultado.getInt("id"));
				empresa.setContato(resultado.getString("contato"));
				empresa.setEmail(resultado.getString("email"));
				empresa.setCnpj(resultado.getString("cnpj"));
				empresa.setTelefone(resultado.getString("telefone"));
				empresa.setCelular(resultado.getString("celular"));
				empresa.setRazaoSocial(resultado.getString("RazaoSocial"));
				empresa.setNomeFantazia(resultado.getString("nomeFantazia"));
				empresa.setSite(resultado.getString("site"));
				empresa.setCep(resultado.getString("cep"));
				empresa.setDescricao(resultado.getString("descricao"));
				empresa.setLogo(resultado.getBytes("logo"));
				empresa.setNumero(resultado.getString("numero"));
				empresa.setComplemento(resultado.getString("complemento"));
				empresa.setLogradouro(resultado.getString("logradouro"));
				empresa.setBairro(resultado.getString("bairro"));
				empresa.setCidade(resultado.getString("cidade"));
				empresa.setEstado(resultado.getString("estado"));
				empresa.setCategoria(resultado.getString("categoria"));
				listaEmpresas.add(empresa);
			}
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao listar os produto. Mensagem: " + e.getMessage());
		}
				
		return listaEmpresas;
	}
	
	@Override
	public void updateLogo(int id, String logo) {
		String sql ="UPDATE empresa SET logo = ? WHERE id = ?";

		try 
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, logo);
			preparador.setLong(2, id);

			preparador.execute();
			preparador.close();
			System.out.println("Cadastro alterado com sucesso!");
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao alterar empresa. Mensagem: " + e.getMessage());
		}
		
	}
	@Override
	public void updateCategoria(int id, String categoria) {
		String sql ="UPDATE empresa SET categoria = ? WHERE id = ?";

		try 
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, categoria);
			preparador.setLong(2, id);

			preparador.execute();
			preparador.close();
			System.out.println("Categoria alterada com sucesso!");
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao alterar a categoria da empresa. Mensagem: " + e.getMessage());
		}		
	}
	@Override
	public List<Empresa> listEmpresasByCategoria(String categoria) {
		String sql = "SELECT * FROM empresa WHERE categoria like ?";
		List<Empresa> listaEmpresas = new ArrayList<Empresa>();	
		try
		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, "%" + categoria + "%");
				
			ResultSet resultado = preparador.executeQuery();
			
			while(resultado.next()){
				Empresa empresa = new Empresa();
				empresa.setId(resultado.getInt("id"));
				empresa.setContato(resultado.getString("contato"));
				empresa.setEmail(resultado.getString("email"));
				empresa.setCnpj(resultado.getString("cnpj"));
				empresa.setTelefone(resultado.getString("telefone"));
				empresa.setCelular(resultado.getString("celular"));
				empresa.setRazaoSocial(resultado.getString("RazaoSocial"));
				empresa.setNomeFantazia(resultado.getString("nomeFantazia"));
				empresa.setSite(resultado.getString("site"));
				empresa.setCep(resultado.getString("cep"));
				empresa.setDescricao(resultado.getString("descricao"));
				empresa.setLogo(resultado.getBytes("logo"));
				empresa.setNumero(resultado.getString("numero"));
				empresa.setComplemento(resultado.getString("complemento"));
				empresa.setLogradouro(resultado.getString("logradouro"));
				empresa.setBairro(resultado.getString("bairro"));
				empresa.setCidade(resultado.getString("cidade"));
				empresa.setEstado(resultado.getString("estado"));
				empresa.setCategoria(resultado.getString("categoria"));
				listaEmpresas.add(empresa);
			}
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao listar os empresas. Mensagem: " + e.getMessage());
		}
				
		return listaEmpresas;
		
	}
	@Override
	public Empresa getEmpresaByCnpj(String cnpj) {
		String sql = "SELECT * FROM empresa WHERE cnpj = ?";
		Empresa empresa = null;	
		try
 		{
			PreparedStatement preparador = (PreparedStatement) conn.prepareStatement(sql);
			preparador.setString(1, cnpj);
			ResultSet resultado = preparador.executeQuery();
			if(resultado.next()){
				empresa = new Empresa();
				empresa.setId(resultado.getInt("id"));
				empresa.setContato(resultado.getString("contato"));
				empresa.setEmail(resultado.getString("email"));
				empresa.setCnpj(resultado.getString("cnpj"));
				empresa.setTelefone(resultado.getString("telefone"));
				empresa.setCelular(resultado.getString("celular"));
				empresa.setRazaoSocial(resultado.getString("razaoSocial"));
				empresa.setNomeFantazia(resultado.getString("nomeFantazia"));
				empresa.setSite(resultado.getString("site"));
				empresa.setCep(resultado.getString("cep"));
				empresa.setDescricao(resultado.getString("descricao"));
				empresa.setNumero(resultado.getString("numero"));
				empresa.setComplemento(resultado.getString("complemento"));
				empresa.setLogo(resultado.getBytes("logo"));
				empresa.setCategoria(resultado.getString("categoria"));
				empresa.setLogradouro(resultado.getString("logradouro"));
				empresa.setBairro(resultado.getString("bairro"));
				empresa.setCidade(resultado.getString("cidade"));
				empresa.setEstado(resultado.getString("estado"));
			}
		}
		catch(SQLException e)
		{
			System.out.println("Erro ao listar o empresa. Mensagem: " + e.getMessage());
		}
		return empresa;
	}
	
}
