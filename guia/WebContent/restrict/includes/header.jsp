<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    				<a class="btn btn-navbar" data-toggle="collapse" data-target=".navbar-inverse-collapse">
					<i class="icon-reorder shaded"></i>
				</a>

			  	<a class="brand" href="maincontroller.do">
			  		Publiq Mais
			  	</a>

				<div class="nav-collapse collapse navbar-inverse-collapse">

					<form class="navbar-search pull-left input-append" action="#">
						<input type="text" class="span3">
						<button class="btn" type="button">
							<i class="icon-search"></i>
						</button>
					</form>
				
					<ul class="nav pull-right">
						
						<li class="nav-user dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown">
								<img src="restrict/images/user.png" class="nav-avatar" />
								<b class="caret"></b>
							</a>
							<ul class="dropdown-menu">
								<li><a href="usuariocontroller.do?acao=listar">Usuários</a></li>
								<li class="divider"></li>
								<li><a href="logoutcontroller.do">Logout</a></li>
							</ul>
						</li>
					</ul>
				</div><!-- /.nav-collapse -->