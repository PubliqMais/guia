<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!-->
<html lang="en">
<!--<![endif]-->
<head>

<meta charset="utf-8" />
<title>Publiq Mais - Categorias</title>
<meta name="description" content="">
	<meta name="author" content="">
		<meta name="viewport"
			content="width=device-width, initial-scale=1, maximum-scale=1" />
		<link media="screen" charset="utf-8" rel="stylesheet"
			href="resources/css/base.css" />
		<link media="screen" charset="utf-8" rel="stylesheet"
			href="resources/css/skeleton.css" />
		<link media="screen" charset="utf-8" rel="stylesheet"
			href="resources/css/layout.css" />
		<link media="screen" charset="utf-8" rel="stylesheet"
			href="resources/css/child.css" />
		<!--[if (IE 6)|(IE 7)]>
    <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
<![endif]-->
		<!--[if lt IE 9]>
    <script src="resources/http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]-->
		<script type="text/javascript" language="javascript"
			src="resources/js/jquery-1-8-2.js"></script>
		<script type="text/javascript" src="resources/js/default.js"></script>
		<script type="text/javascript" src="resources/js/jquery.easing.1.3.js"></script>
		<script type="text/javascript" src="resources/js/jquery.carousel.js"></script>
		<script type="text/javascript"
			src="resources/js/jquery.color.animation.js"></script>


		<!-- jPage -->
		<link rel="stylesheet" type="text/css" href="resources/css/jPages.css" />
		<script type="text/javascript" src="resources/js/jPages.js"></script>
		<script>
  $(function(){
    $("div.holder-menu").jPages({
      containerID : "empresas-pags",
      previous : "Anterior ←",
      next : "→ Próximo",
      perPage : 3,
      delay : 333,
    });
  });
  </script>
		<!-- end jPage -->


		<!-- color pickers -->
		<link rel="stylesheet" media="screen" type="text/css"
			href="resources/css/colorpicker.css" />
		<script type="text/javascript" src="resources/js/colorpicker.js"></script>
		<!-- end of color pickers -->
</head>

<body>
	<div class="page-wrapper">
		<div class="slug-pattern">
			<div class="overlay" style="background: url('resources/images/background-1.jpg')">
				<div class="slug-cut"></div>
			</div>
		</div>
		<div class="header">
			<div class="nav">


				<div class="container">

					<!-- Standard Nav (x >= 768px) -->
					<div class="standard">

						<div class="five column alpha">
							<div class="logo">
								<a href="./"><img src="resources/images/logo.png" /></a>
								<!-- Large Logo -->
							</div>
						</div>

						<div class="eleven column omega tabwrapper">
							<div class="menu-wrapper">
								<ul class="tabs menu">
									<li><a href="./"><span>Home</span></a></li>
									<li><a href="sitecontroller.do?acao=sobre"><span>Sobre</span></a>
									</li>
									<li><a href="sitecontroller.do?acao=listar" class="active"><span>Categorias</span></a>
									</li>
									<li><a href="sitecontroller.do?acao=contatos"><span>Contatos</span></a></li>

								</ul>
							</div>
						</div>
					</div>
					<!-- Standard Nav Ends, Start of Mini -->

					<div class="mini">
						<div class="twelve column alpha omega mini">
							<div class="logo">
								<a href="./"><img src="resources/images/logoMINI.png" /></a>
								<!-- Small Logo -->
							</div>
						</div>

						<div class="twelve column alpha omega navagation-wrapper">
							<select class="navagation">
								<option value="" selected="selected">Menu</option>
							</select>
						</div>
					</div>
					<!-- Start of Mini Ends -->
				</div>

			</div>

			<div class="shadow"></div>
			<div class="container">
				<div class="page-title">
					<div class="rg"></div>
					<h1>Publiq Mais</h1>
				</div>
			</div>
		</div>

		<div class="body">
			<div class="body-round"></div>
			<div class="body-wrapper">
				<div class="side-shadows"></div>
				<div class="content">
					<div class="container callout standard">

						<div class="twelve columns">
							<h4>Digite sua busca >>></h4>
							<p class="link-location">
								Publiq Mais: <a href="">Home</a> / <a href="#">Contatos</a> / <a
									href="#">Categoria</a>
							</p>
						</div>

						<div class="four columns button-wrap">
							<div class="wrapper search">
								<form action="./sitecontroller.do?acao=empresas" method="post">
									<input type="text" class="search-box" name="supos" value=""
										placeholder='Busca...' /> <input type="image"
										src="resources/images/design/search-icon.png"
										class="searchbox-submit" value="" />
								</form>
							</div>
						</div>
					</div>
					<div class="callout-hr"></div>


					<div class="container">
						<div class="twelve columns" style="height:1200px">
							
							<div class="left-cat">
								<c:if test="${!empty requestScope.listaCategoriasA}">

									<h4>A</h4>
									<ul>

										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasA}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>

								</c:if>

								<c:if test="${!empty requestScope.listaCategoriasB}">
									<h4>B</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasB}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasC}">
									<h4>C</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasC}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasD}">
									<h4>D</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasD}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>

							</div>
							<div class="left-cat">

								<c:if test="${!empty requestScope.listaCategoriasE}">
									<h4>E</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasE}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasF}">
									<h4>F</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasF}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>



								<c:if test="${!empty requestScope.listaCategoriasG}">
									<h4>G</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasG}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasH}">

									<h4>H</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasH}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasI}">
									<h4>I</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasI}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>



								<c:if test="${!empty requestScope.listaCategoriasJ}">
									<h4>J</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasJ}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasK}">
									<h4>K</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasK}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasL}">
									<h4>L</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasL}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>

							</div>
							<div class="left-cat">

								<c:if test="${!empty requestScope.listaCategoriasM}">
									<h4>M</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasM}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>



								<c:if test="${!empty requestScope.listaCategoriasN}">
									<h4>N</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasN}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasO}">
									<h4>O</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasO}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>

								</c:if>



								<c:if test="${!empty requestScope.listaCategoriasP}">

									<h4>P</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasP}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasQ}">
									<h4>Q</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasQ}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasR}">
									<h4>R</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasR}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasS}">
									<h4>S</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasS}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasT}">
									<h4>T</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasT}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasU}">
									<h4>U</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasU}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasV}">
									<h4>V</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasV}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasW}">
									<h4>W</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasW}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasX}">
									<h4>X</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasX}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasY}">
									<h4>Y</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasY}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>
								</c:if>
								<c:if test="${!empty requestScope.listaCategoriasZ}">
									<h4>Z</h4>
									<ul>
										<c:forEach var="categoria"
											items="${requestScope.listaCategoriasZ}">
											<li><a
												href="sitecontroller.do?acao=categoria&titulo=${categoria.titulo}">${categoria.titulo}</a></li>
										</c:forEach>
									</ul>

								</c:if>
							</div>

							<div class="pagination">
								<div class="holder-menu"></div>
								<div class="clear"></div>
							</div>
						</div>
						<div class="four columns">
							<div class="sidebar">

								<c:import url="sidebar.jsp" />

							</div>
						</div>

						<div class="clear"></div>

						<div class="sixteen columns">
							<span class="hr lip-quote"></span>
							<blockquote class="standard bottom">
								"Encontre empresas, negócios e profissionais das mais diversas
								áreas em todo o Brasil" <br /> - PubliqMais
							</blockquote>
						</div>

					</div>
				</div>
			</div>
			<div class="footer style-2">
				<div class="background">
					<div class="stitch"></div>
				</div>
				<div class="foot-nav-bg"></div>
				<div class="content">
					<div class="patch"></div>
					<div class="blur"></div>
					<div class="pattern">
						<div class="container">
							<div class="stitch"></div>
							<div class="sixteen columns">
								<div class="first column alpha">

									<div class="left">
										<div class="logo-caption"></div>
										<h5>PubliqMais</h5>
										<p>Uma empresa com foco no cliente e atendimento..</p>
										<p class="extra">Qualidade, compreenção e outras
											qualidades fazem parte dessa empresa.</p>
									</div>
								</div>
								<div class="column ct">
									<h5>Equipe altamente treinada:</h5>
									<br /> <img
										src="resources/images/design/twitter-bird-dark-bgs.png">
										<p class="extra">Entre em contato e confira.</p>
								</div>
								<div class="last column omega">
									<h5>Receba nossas novidades!</h5>

									<div class="input-wrapper">
										<input type="text" placeholder="Email..." id="email"
											name="email" />
									</div>
									<div class="right">
										<a href="#" class="button color"><span>Enviar</span></a>
									</div>
									<div class="clear"></div>
									<span class="hr"></span>
									<h5>Redes Sociais</h5>
									<ul class="sm foot">
										<li class="facebook"><a href="#facebook">Facebook</a></li>
										<li class="twitter"><a href="#twitter">Twitter</a></li>
										<li class="linkedin"><a href="#linkedin">LinkedIn</a></li>
									</ul>
								</div>
							</div>
							<div class="clear"></div>
						</div>
						<div class="sixteen columns alpha omega">
							<div class="foot-nav-bg"></div>
							<div class="foot-nav">
								<div class="copy">Coptyright © 2016 <a href="logincontroller.do" style="color:white">Publiq Mais</a>. Todos os
									direitos reservados.</div>
								<div class="nav">
									<a href="./">Home</a> <a href="sitecontroller.do?acao=sobre">Sobre</a>
									<a href="sitecontroller.do?acao=listar">Categorias</a> <a
										href="contatos.jsp">Contatos</a>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

		<script type="text/javascript">
        $(document).ready(function() {
            $('.slidewrap2').carousel({
                slider: '.slider',
                slide: '.slide',
                slideHed: '.slidehed',
                nextSlide : '.next',
                prevSlide : '.prev',
                addPagination: false,
                addNav : false
            });
        });
    </script>
		<script type="text/javascript"
			src="http://twitter.com/javascripts/blogger.js"></script>
		<script type="text/javascript"
			src="http://api.twitter.com/1/statuses/user_timeline/EmpiricalThemes.json?callback=twitterCallback2&count=2"></script>

	</div>
</body>

</html>