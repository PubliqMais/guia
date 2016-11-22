<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin - Categorias</title>
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
								<h3>Categorias</h3>
							</div>
							<div class="module-body table">
								<table cellpadding="0" cellspacing="0" border="0" class="datatable-1 table table-bordered table-striped	 display" width='100%'>
									<thead>
										<tr>
											<th>Id Categoria</th>
											<th>Título Categoria</th>
											<th>Descrição Categoria</th>
											<th>Editar Categoria</th>
											<th>Excluir Categoria</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var="categoria" items="${requestScope.listaCategorias}">
										<tr class="gradeA">
											<td>${categoria.id}</td>
											<td>${categoria.titulo}</td>
											<td>${categoria.descricao}</td>
												<td class="td-actions">
													<a href="categoriacontroller.do?acao=alterar&id=${categoria.id}"
														class="btn btn-small btn-success">
														<i class="btn-icon-only icon-ok"> </i>
													</a>
												</td>
												<td class="td-actions">
													<a href="categoriacontroller.do?acao=excluir&id=${categoria.id}"
														class="btn btn-danger btn-small">
														<i	class="btn-icon-only icon-remove"> </i>
													</a>
												</td>
										</tr>
									</c:forEach>
									</tbody>
									<tfoot>
										<tr>
											<th>Id Categoria</th>
											<th>Título Categoria</th>
											<th>Descrição Categoria</th>
											<th>Editar Categoria</th>
											<th>Excluir Categoria</th>
										</tr>
									</tfoot>
								</table>
							</div>
						</div><!--/.module-->

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