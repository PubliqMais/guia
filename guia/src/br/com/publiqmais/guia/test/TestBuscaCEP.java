package br.com.publiqmais.guia.test;

import br.com.publiqmais.guia.util.WebServiceCep;

public class TestBuscaCEP {
	public static void main(String[] args) {
		//Faz a busca para o cep 58043-280
		WebServiceCep webServiceCep = WebServiceCep.searchCep("03155-100");
		//A ferramenta de busca ignora qualquer caracter que não seja número.
		
		//caso a busca ocorra bem, imprime os resultados.
		if (webServiceCep.wasSuccessful()) {
			System.out.println("Cep: "+webServiceCep.getCep());
			System.out.println("Logradouro: "+webServiceCep.getLogradouroFull());
			System.out.println("Bairro: "+webServiceCep.getBairro());
			System.out.println("Cidade: "+
					webServiceCep.getCidade()+"/"+ webServiceCep.getUf());
			
		//caso haja problemas imprime as exceções.
		} else {
			System.out.println("Erro número: " + webServiceCep.getResulCode());
			System.out.println("Descrição do erro: " + webServiceCep.getResultText());
		}
	}   
}
