<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Publiq Mais - Admin</title>
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


						<div class="${classeBootstrap}">
					       <h3>${msg}</h3>
					    </div>


						<div class="btn-controls">
						
							<div class="btn-box-row row-fluid">
								<a href="categoriacontroller.do?acao=novo" class="btn-box big span4">
									<i class="icon-adjust"></i>
									<b>Add Categoria</b>
								</a>
								<a href="categoriacontroller.do?acao=listar" class="btn-box big span4">
									<i class="icon-briefcase"></i>
									<b>Listar Categorias</b>
								</a>
								<a href="categoriacontroller.do?acao=a-z" class="btn-box big span4">
									<i class="icon-gift"></i>
									<b>Categorias de A - Z</b>
								</a>
							</div>
														<div class="btn-box-row row-fluid">
								<a href="empresacontroller.do?acao=novo" class="btn-box big span4">
									<i class="icon-adjust"></i>
									<b>Add Empresa</b>
								</a>
								<a href="empresacontroller.do?acao=listar" class="btn-box big span4">
									<i class="icon-briefcase"></i>
									<b>Listar Empresas</b>
								</a>
								<a href="empresacontroller.do?acao=a-z" class="btn-box big span4">
									<i class="icon-gift"></i>
									<b>Buscar Empresa</b>
								</a>
							</div>

						</div><!--/.btn-controls-->

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


</body>