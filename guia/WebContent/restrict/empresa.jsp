<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin - Empresa</title>
	<link type="text/css" href="restrict/bootstrap/css/bootstrap.min.css" rel="stylesheet">
	<link type="text/css" href="restrict/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet">
	<link type="text/css" href="restrict/css/theme.css" rel="stylesheet">
	<link type="text/css" href="restrict/images/icons/css/font-awesome.css" rel="stylesheet">
	<link type="text/css" href='http://fonts.googleapis.com/css?family=Open+Sans:400italic,600italic,400,600' rel='stylesheet'>
</head>
<body>

	<div class="navbar navbar-fixed-top">
		<div class="navbar-inner">
			<div class="container">
				
				<c:import url="includes/header.jsp" />
				
			</div>
		</div><!-- /navbar-inner -->
	</div><!-- /navbar -->



	<div class="wrapper">
		<div class="container">
			<div class="row">
				<div class="span3">
					<div class="sidebar">

						<c:import url="includes/menu.jsp" />						

					</div><!--/.sidebar-->
				</div><!--/.span3-->


				<div class="span9">
					<div class="content">
					<form action="empresacontroller.do" method="post" class="form-horizontal row-fluid">
						<div class="module">
                            <div class="module-body">
                                <div class="profile-head media">
                                	<c:if test="${!empty empresa.id}">
                                		<a href="empresacontroller.do?acao=logo&id=${empresa.id}" class="pull-left">
                                    		<img src="displayservlet?id=${empresa.id}" class="scale-with-grid" width="33%" alt="Logotipo da Empresa" />
                                    	</a>
									</c:if>                                    
                                    <div class="media-body">
                                        <h4>
                                            Empresa: ${empresa.nomeFantazia}
                                        </h4>
                                        <p class="profile-brief">
                                            ${empresa.descricao}
                                        </p>
                                        <div class="profile-details muted">
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="profile-tab-content tab-content">
						
										<div class="control-group">
											<label class="control-label" for="basicinput"></label>
											<div class="controls">
												${empresa.nomeFantazia}
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">Contato</label>
											<div class="controls">
												<input type="hidden" id="id" name='id' value="${empresa.id}">
												<!-- <input type="hidden" id="id" name='logo' value="${empresa.logo}"> -->
												<input type="text" id="basicinput" name="contato" placeholder="Type something here..." class="span8" value="${empresa.contato}">
												<span class="help-inline">Pessoa contato do cliente</span>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">E-mail</label>
											<div class="controls">
												<input type="text" id="basicinput" name="email" placeholder="Type something here..." class="span8" value="${empresa.email}">
												<span class="help-inline">email@seudominio.extensao</span>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">Telefone</label>
											<div class="controls">
												<input type="text" id="basicinput" name="telefone" placeholder="Telefone fixo do cliente" class="span8" value="${empresa.telefone}">
												<span class="help-inline">(XX) XXXX - XXXX</span>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">Celular</label>
											<div class="controls">
												<input type="text" id="basicinput" name="celular" placeholder="Celular do contato do cliente" class="span8" value="${empresa.celular}">
												<span class="help-inline">(XX) XXX XXX XXX</span>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">CNPJ</label>
											<div class="controls">
												<input type="text" id="basicinput" name="cnpj" placeholder="Type something here..." class="span8" value="${empresa.cnpj}">
												<span class="help-inline">CNPJ - XX.XXX.XXX/XXXX-XX</span>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">Razão Social</label>
											<div class="controls">
												<input type="text" id="basicinput" name="razaoSocial" placeholder="Type something here..." class="span8" value="${empresa.razaoSocial}">
												<span class="help-inline">Completo</span>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">Nome Fantazia</label>
											<div class="controls">
												<input type="text" id="basicinput" name="nomeFantazia" placeholder="Type something here..." class="span8" value="${empresa.nomeFantazia}">
												<span class="help-inline">Completo</span>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">Site</label>
											<div class="controls">
												<input type="text" id="basicinput" name="site" placeholder="Type something here..." class="span8" value="${empresa.site}">
												<span class="help-inline">www.seudominio.extensao</span>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">CEP</label>
											<div class="controls">
												<input type="text" id="basicinput" name="cep" placeholder="Type something here..." class="span8" value="${empresa.cep}">
												<span class="help-inline">XXXXX-XXX</span>
											</div>
										</div>
										<c:if test="${!empty empresa.id}">
										<div class="control-group">
											<label class="control-label" for="basicinput">Logradouro</label>
											<div class="controls">
												<input type="text" id="basicinput" name="logradouro" class="span8" value="${empresa.logradouro}" />
												<span class="help-inline">Rua, Avenida...</span>
											</div>
										</div>
										</c:if>
										<div class="control-group">
											<label class="control-label" for="basicinput">Número</label>
											<div class="controls">
												<input type="text" id="basicinput" name="numero" class="span8" value="${empresa.numero}" />
												<span class="help-inline">Somente números</span>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">Complemento</label>
											<div class="controls">
												<input type="text" id="basicinput" name="complemento" class="span8" value="${empresa.complemento}">
												<span class="help-inline">Complemento</span>
											</div>
										</div>
										<c:if test="${!empty empresa.id}">
										<div class="control-group">
											<label class="control-label" for="basicinput">Bairro</label>
											<div class="controls">
												<input type="text" id="basicinput" name="bairro" class="span8" value="${empresa.bairro}" />
												<span class="help-inline">Bairro - Distrito</span>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">Cidade</label>
											<div class="controls">
												<input type="text" id="basicinput" name="cidade" class="span8" value="${empresa.cidade}" />
												<span class="help-inline">Cidade - Município</span>
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">UF</label>
											<div class="controls">
												<input type="text" id="basicinput" name="estado" class="span8" value="${empresa.estado}" />
												<span class="help-inline">UF do Estado</span>
											</div>
										</div>
										</c:if>
										<c:if test="${!empty empresa.id}">
										<div class="control-group">
											<label class="control-label" for="basicinput">Categoria</label>
											<div class="controls">
												<input type="text" id="basicinput" class="span8" value="${empresa.categoria}" disabled>
												<span class="help-inline">
													<a href="empresacontroller.do?acao=categorizar&id=${empresa.id}" class="pull-left">Alterar Categoria</a>
												</span>
											</div>
										</div>
										</c:if>
										<div class="control-group">
											<label class="control-label" for="basicinput">Descrição</label>
											<div class="controls">
												<textarea class="span8" rows="5" name="descricao">${empresa.descricao}</textarea>
											</div>
										</div>

										<div class="control-group">
											<div class="controls">
												<button type="submit" class="btn">Salvar</button>
											</div>
										</div>
									
							</div>
						</div>
						
					</div>	
</form>					
						
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

	<div class="footer">
		<div class="container">
			 

			<b class="copyright">&copy; 2014 Edmin - EGrappler.com </b> All rights reserved.
		</div>
	</div>

	<script src="restrict/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="restrict/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="restrict/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="restrict/scripts/flot/jquery.flot.js" type="text/javascript"></script>
</body>