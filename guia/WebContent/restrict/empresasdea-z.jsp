<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin - Empresas - Publiq Mais</title>
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

						<div class="btn-controls">
							<div class="btn-box-row row-fluid">
								<a href="empresacontroller.do?acao=letra&letra=a" class="btn-box small span2">
									<h1>A</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=b" class="btn-box small span2">
									<h1>B</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=c" class="btn-box small span2">
									<h1>C</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=d" class="btn-box small span2">
									<h1>D</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=e" class="btn-box small span2">
									<h1>E</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=f" class="btn-box small span2">
									<h1>F</h1>
								</a>
							</div>
							<div class="btn-box-row row-fluid">
								<a href="empresacontroller.do?acao=letra&letra=g" class="btn-box small span2">
									<h1>G</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=h" class="btn-box small span2">
									<h1>H</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=i" class="btn-box small span2">
									<h1>I</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=j" class="btn-box small span2">
									<h1>J</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=k" class="btn-box small span2">
									<h1>K</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=l" class="btn-box small span2">
									<h1>L</h1>
								</a>
							</div>
							<div class="btn-box-row row-fluid">
								<a href="empresacontroller.do?acao=letra&letra=m" class="btn-box small span2">
									<h1>M</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=n" class="btn-box small span2">
									<h1>N</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=o" class="btn-box small span2">
									<h1>O</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=p" class="btn-box small span2">
									<h1>P</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=q" class="btn-box small span2">
									<h1>Q</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=r" class="btn-box small span2">
									<h1>R</h1>
								</a>
							</div>
							<div class="btn-box-row row-fluid">
								<a href="empresacontroller.do?acao=letra&letra=s" class="btn-box small span2">
									<h1>S</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=t" class="btn-box small span2">
									<h1>T</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=u" class="btn-box small span2">
									<h1>U</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=v" class="btn-box small span2">
									<h1>V</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=w" class="btn-box small span2">
									<h1>W</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=x" class="btn-box small span2">
									<h1>X</h1>
								</a>
							</div>
							<div class="btn-box-row row-fluid">
								<a href="empresacontroller.do?acao=letra&letra=y" class="btn-box small span2">
									<h1>Y</h1>
								</a>
								<a href="empresacontroller.do?acao=letra&letra=z" class="btn-box small span2">
									<h1>Z</h1>
								</a>
							</div>
						</div>
								
					<br />
						
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

	<script src="restrict/scripts/jquery-1.9.1.min.js"></script>
	<script src="restrict/scripts/jquery-ui-1.10.1.custom.min.js"></script>
	<script src="restrict/bootstrap/js/bootstrap.min.js"></script>
	<script src="restrict/scripts/datatables/jquery.dataTables.js"></script>
	<script>
		$(document).ready(function() {
			$('.datatable-1').dataTable();
			$('.dataTables_paginate').addClass("btn-group datatable-pagination");
			$('.dataTables_paginate > a').wrapInner('<span />');
			$('.dataTables_paginate > a:first-child').append('<i class="icon-chevron-left shaded"></i>');
			$('.dataTables_paginate > a:last-child').append('<i class="icon-chevron-right shaded"></i>');
		} );
	</script>
</body>