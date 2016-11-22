<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
						<ul class="widget widget-menu unstyled">
							<li class="active">
								<a href="maincontroller.do">
									<i class="menu-icon icon-dashboard"></i>
									Home
								</a>
							</li>
						</ul><!--/.widget-nav-->

						<ul class="widget widget-menu unstyled">
							<li>
								<a class="collapsed" data-toggle="collapse" href="#togglePages">
									<i class="menu-icon icon-cog"></i>
									<i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>
									Categorias
								</a>
								<ul id="togglePages" class="collapse unstyled">
									<li>
										<a href="categoriacontroller.do?acao=novo">
											<i class="icon-inbox"></i>
											Adicionar
										</a>
									</li>
									<li>
										<a href="categoriacontroller.do?acao=listar">
											<i class="icon-inbox"></i>
											Listar
										</a>
									</li>
									<li>
										<a href="categoriacontroller.do?acao=a-z">
											<i class="icon-inbox"></i>
											A - Z
										</a>
									</li>
								</ul>
							</li>
							<li>
								<a class="collapsed" data-toggle="collapse" href="#togglePagesII">
									<i class="menu-icon icon-cog"></i>
									<i class="icon-chevron-down pull-right"></i><i class="icon-chevron-up pull-right"></i>
									Empresas
								</a>
								<ul id="togglePagesII" class="collapse unstyled">
									<li>
										<a href="empresacontroller.do?acao=novo">
											<i class="icon-inbox"></i>
											Adicionar
										</a>
									</li>
									<li>
										<a href="empresacontroller.do?acao=listar">
											<i class="icon-inbox"></i>
											Listar
										</a>
									</li>
									<li>
										<a href="empresacontroller.do?acao=a-z">
											<i class="icon-inbox"></i>
											A - Z
										</a>
									</li>
								</ul>
							</li>							
							<li>
								<a href="http://publiqmais.com.br">
									<i class="menu-icon icon-signout"></i>
									Logout
								</a>
							</li>
						</ul>
    