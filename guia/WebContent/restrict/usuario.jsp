<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin - Categoria</title>
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

						<div class="module">
							<div class="module-head">
								<h3>Usuário</h3>
							</div>
							<div class="module-body">

									<form action="usuariocontroller.do" method="post" class="form-horizontal row-fluid">
										<div class="control-group">
											<label class="control-label" for="basicinput"></label>
											<div class="controls">
												<input type="hidden" id="basicinput" name="id" placeholder="Id" class="span8" value="${usuario.id}">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">Nome</label>
											<div class="controls">
												<input type="text" id="basicinput" name="nome" placeholder="Nome SobreNome" class="span8" value="${usuario.nome}">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">E-mail</label>
											<div class="controls">
												<input type="text" id="basicinput" name="email" placeholder="seuemail@seudominio..." class="span8" value="${usuario.email}">
											</div>
										</div>
										<div class="control-group">
											<label class="control-label" for="basicinput">Senha</label>
											<div class="controls">
												<input type="password" id="basicinput" name="senha" placeholder="Digite a senha..." class="span8" value="${usuario.senha}">
											</div>
										</div>

										<div class="control-group">
											<div class="controls">
												<button type="submit" class="btn">Salvar</button>
											</div>
										</div>
									</form>
							</div>
						</div>

						
						
					</div><!--/.content-->
				</div><!--/.span9-->
			</div>
		</div><!--/.container-->
	</div><!--/.wrapper-->

	<div class="footer">
		<div class="container">
			 
			<c:import url="includes/footer.jsp" />
			
		</div>
	</div>

	<script src="restrict/scripts/jquery-1.9.1.min.js" type="text/javascript"></script>
	<script src="restrict/scripts/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
	<script src="restrict/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>
	<script src="restrict/scripts/flot/jquery.flot.js" type="text/javascript"></script>
</body>