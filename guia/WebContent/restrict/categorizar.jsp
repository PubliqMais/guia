<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin - Categorizar</title>
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
                            <div class="module-body">
                                <div class="profile-head media">
                                    <a class="pull-left">
                                    	<img src="restrict/images/${empresa.logo}" class="img-thumbnail" alt="Logo" width="200" />
                                    </a>
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
									<form action="./categorizadorcontroller.do" method="post" class="form-horizontal row-fluid">
										<div class="control-group">
											<br>
											<label class="control-label" for="basicinput">Id</label>
											<div class="controls">
												<input type="hidden" name="id" placeholder="Id" class="span8" value="${empresa.id}" />
												<div class="control-group">
													<label class="control-label" for="basicinput">Categorias</label>
													<div class="controls">
														<select tabindex="1" name="categoria" data-placeholder="Select here.." class="span8">
															<option value="${empresa.categoria}">${empresa.categoria}</option>
															<c:forEach var="categoria" items="${requestScope.categorias}">
																<option value="${categoria.titulo}">${categoria.titulo}</option>
															</c:forEach>
														</select>
													</div>
												</div>
											</div>
										</div>
										
										<div class="control-group">
											<label class="control-label" for="basicinput"><a href="maincontroller.do">Cancelar</a></label>
											<div class="controls">
												<input type="submit" class="btn" value="Salvar" />
											</div>
										</div>
									</form>
							</div>
						</div>
						
					</div>	
					
						
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