<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>


<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Admin - Logo</title>
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
                                	<c:if test="${!empty empresa.logo}">
	                                    <a href="" class="pull-left">
	                                    	<img src="displayservlet?id=${empresa.id}" class="img-thumbnail" alt="Logo" width="200" />
	                                    </a>
                                    </c:if>
                                    <div class="media-body">
                                        <h2 style="padding:1em">
                                            ${empresa.nomeFantazia}
                                        </h2>
                                        <p class="profile-brief">
                                            ${empresa.descricao}
                                        </p>
                                        <div class="profile-details muted">
                                        </div>
                                    </div>
                                </div>
                                
                                <div class="profile-tab-content tab-content">
									<form enctype="multipart/form-data" action="UploadController" method="post" class="form-horizontal row-fluid">
										<div class="control-group">
											<br>
											<label class="control-label" for="basicinput">Id</label>
											<div class="controls">
												<input type="hidden" name="id" placeholder="Id" class="span8" value="${empresa.id}" />
												<input type="file" name="file" value="displayservlet?id=${empresa.id}" />
											
											</div>
										</div>
										
										<div class="control-group">
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