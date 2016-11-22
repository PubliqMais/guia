<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<head>
<title>Publiq Mais - Guia de Empresas e Negócios</title>
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scaxle=1, maximum-scale=1" />
<link media="screen" charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/base.css" />
<link media="screen" charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/skeleton.css" />
<link media="screen" charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/layout.css" />
<link media="screen" charset="utf-8" rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/child.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/animate.min.css" type="text/css" media="screen" charset="utf-8" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/jquery.onebyone.css" type="text/css" media="screen" charset="utf-8" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/prettyPhoto.css" type="text/css" media="screen" charset="utf-8" />
<!--[if (IE 6)|(IE 7)]>
    <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
<![endif]-->
<!--[if lt IE 9]>
    <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]--><script type="text/javascript" language="javascript" src="${pageContext.request.contextPath}/resources/js/jquery-1-8-2.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.carousel.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.color.animation.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.prettyPhoto.js" charset="utf-8"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/default.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.onebyone.min.js"></script>
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/jquery.touchwipe.min.js"></script>

<!-- color pickers -->
<link rel="stylesheet" media="screen" type="text/css" href="${pageContext.request.contextPath}/resources/css/colorpicker.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/colorpicker.js"></script>
<!-- end of color pickers -->

</head>

<body>
	
    <div class="page-wrapper">
        <div class="slug-pattern slider-expand">
            <div class="background-image" id="1"></div>
            <div class="overlay"><div class="slug-cut"></div>
        </div></div>
        <div class="header slider-expand">
            <div class="nav">
            
                
                <div class="container">
                
                    <!-- Standard Nav (x >= 768px) -->
                    <div class="standard">
                    
                        <div class="five column alpha">
                            <div class="logo">
                                <a href="./"><img src="${pageContext.request.contextPath}/resources/images/logo.png" /></a><!-- Large Logo -->
                            </div>
                        </div>
                    
                        <div class="eleven column omega tabwrapper">
                            <div class="menu-wrapper">
                                <ul class="tabs menu">
                                    <li>
                                       	<a href="sitecontroller.do" class="active"><span>Home</span></a>
                                    </li>
                                    <li>
                                        <a href="sitecontroller.do?acao=sobre">Sobre</a>
                                    </li>
                                    <li>
                                        <a href="sitecontroller.do?acao=listar">Categorias</a>
                                    </li>
                                    <li>
                                        <a href="sitecontroller.do?acao=contatos">Contatos</a>
                                    </li>
                                </ul>
                          </div>
                        </div>
                    </div>
                    <!-- Standard Nav Ends, Start of Mini -->
                    
                    <div class="mini">
                        <div class="twelve column alpha omega mini">
                            <div class="logo">
                                <a href="./"><img src="${pageContext.request.contextPath}${pageContext.request.contextPath}/resources/images/logoMINI.png" /></a><!-- Small Logo -->
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
            
            <div class="slug">
                <div class="container">
                    <div class="onebyone-wrapper">
                        <div class="preload">
                            <center><img src="${pageContext.request.contextPath}/resources/images/design/preloader.gif" /></center>
                        </div>
                        <div class="fallback">
                            <img src="${pageContext.request.contextPath}/resources/images/fallback-image.png" class="scale-with-grid" />
                        </div>
                        <div class="outer">
                        
                            <div class="onebyone hide" id="onebyone">

                                <div id="slide-01" class="oneByOne_item" data-bg="${pageContext.request.contextPath}/resources/images/background-1.jpg">
                                    <div id="left">
                                        <h3>Encontre</h3>
                                        <h1>As <strong>Melhores</strong> Soluções do mercado!</h1>
                                        <h2>Para sua empresa ou negócio.</h2>
                                    </div>
                                    <div class="button">
                                        <a href=""><img src="${pageContext.request.contextPath}/resources/images/button-slider.png" /></a>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/imac-2.png" class="monitor" />
                                    <img src="${pageContext.request.contextPath}/resources/images/iphone-2.png" class="iphone" />
                                    <img src="${pageContext.request.contextPath}/resources/images/ipad.png" class="ipad" />          
                                </div>
                                
                                <div id="slide-02" class="oneByOne_item" data-bg="${pageContext.request.contextPath}/resources/images/background-2.jpg">
                                    <div id="right">
                                    	<h2> Anuncie - JÁ ! </h2>
                                        <h1> Mais visualização </h1>
                                        <h3> Dos seus clientes e dos buscadores do Google ! </h3>
                                    </div>
                                    <div class="button">
                                        <a href=""><img src="${pageContext.request.contextPath}/resources/images/button-slider.png" /></a>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/ipad.png" class="iphone" />
                                    <img src="${pageContext.request.contextPath}/resources/images/laptop.png" class="laptop" />
                                    <img src="${pageContext.request.contextPath}/resources/images/monitor.png" class="monitor" />
                                    
                                </div>
                                
                                 <div id="slide-03" class="oneByOne_item" data-bg="${pageContext.request.contextPath}/resources/images/background-1.jpg">
                                    <div id="left">
                                    	<h3>Publiq Mais</h3>
                                        <h1><strong>Faça</strong> a <strong>Diferença</strong> Anuncie</h1>
                                       	<h2>Tenha mais visualização!</h2>
                                    </div>
                                    <div class="button">
                                        <a href=""><img src="${pageContext.request.contextPath}/resources/images/button-slider.png" /></a>
                                    </div>
                                    <img src="${pageContext.request.contextPath}/resources/images/onebyone/1_laptop.png" class="laptop" />
                                    <img src="${pageContext.request.contextPath}/resources/images/onebyone/1_ipad.png" class="ipad" />
                                    <img src="${pageContext.request.contextPath}/resources/images/onebyone/1_iphone.png" class="iphone" />
                                    <img src="${pageContext.request.contextPath}/resources/images/onebyone/lens_1.png" class="lens" id="one" />
                                    <img src="${pageContext.request.contextPath}/resources/images/onebyone/lens_2.png" class="lens" id="two" />
                                    <img src="${pageContext.request.contextPath}/resources/images/onebyone/lens_3.png" class="lens" id="three" />
                                    
                                </div>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="body">
            <div class="body-round"></div>
            <div class="body-wrapper">
                <div class="side-shadows"></div>
                <div class="content">
                    <div class="container callout">
                        
                        <div class="twelve columns">
                            <h4>Digite sua busca >>></h4>
                            <p class="link-location">Publiq Mais: <a href="">Home</a> / <a href="#">Contatos</a> / <a href="#">Categoria</a></p>
                        </div>
                        
                       <div class="wrapper search">
                                <form action="sitecontroller.do?acao=empresas" method="post">
                                    <input type="text" class="search-box" name="supos" value="" placeholder='Busca...' />
                                    <input type="image" src="${pageContext.request.contextPath}/resources/images/design/search-icon.png" class="searchbox-submit" value=""/>
                                </form>
                            </div>	

                    </div>
                    <div class="callout-hr"></div>                        
                    <div class="container">
                         
                                           	
                   		
                        <div class="sixteen columns">         
                            <!-- carousel starts -->
                            <div class="slidewrap">
                            	<div class="title-wrapper">
                                    <div class="section-title">
                                        <h4 class="title"><strong>Destaque</strong> News</h4>
                                    </div>
                                    <ul class="slidecontrols">
                                        <li><a href="#sliderName" class="next">Anterior</a></li>
                                        <li><a href="#sliderName" class="prev">Próximo</a></li>
                                    </ul>
                                    <span class="divider"></span>
                                    <div class="clear"></div>
                                </div>
                                <ul class="slider carousel" id="sliderName">
                                    <li class="slide"><!-- slide starts -->
                                        <div class="one-third column alpha portfolio-item">
                                        	<div class="content">
                                                <div class="border">
                                                    <img class="scale-with-grid" src="${pageContext.request.contextPath}/resources/images/ecommerce.jpg" />
                                                </div>
                                               <center><h5 class="noline"><a href="">Meps Hotel</a></h5></center>
                                            </div>
                                            <div class="shadow"></div>
                                        </div>
                                        
                                        <div class="one-third column portfolio-item">
                                        	<div class="content">
                                                <div class="border">
                                                    <img class="scale-with-grid" src="${pageContext.request.contextPath}/resources/images/canais.jpg" />
                                                </div>
                                               <center><h5 class="noline"><a href="">Star Med</a></h5></center>
                                            </div>
                                            <div class="shadow"></div>
                                        </div>
                                        
                                        <div class="one-third column omega portfolio-item">
                                        	<div class="content">
                                                <div class="border">
                                                    <img class="scale-with-grid" src="${pageContext.request.contextPath}/resources/images/google.jpg" />
                                                </div>
                                               <center><h5 class="noline"><a href="">ProHuose Colchões</a></h5></center>
                                            </div>
                                            <div class="shadow"></div>
                                        </div>
                                        
                                    </li><!-- slide ends -->
                                    <li class="slide"><!-- slide starts -->
                                        <div class="one-third column alpha portfolio-item">
                                        	<div class="content">
                                                <div class="border">
                                                    <img class="scale-with-grid" src="${pageContext.request.contextPath}/resources/images/addwords.jpg" />
                                                </div>
                                               <center><h5 class="noline"><a href="">Cape Construtora</a></h5></center>
                                            </div>
                                            <div class="shadow"></div>
                                        </div>
                                        
                                        <div class="one-third column portfolio-item">
                                        	<div class="content">
                                                <div class="border">
                                                	<img class="scale-with-grid" src="${pageContext.request.contextPath}/resources/images/analytics.jpg" />
                                                </div>
                                               <center><h5 class="noline"><a href="">Publiq Mais</a></h5></center>
                                            </div>
                                            <div class="shadow"></div>
                                        </div>
                                        
                                        <div class="one-third column omega portfolio-item">
                                        	<div class="content">
                                                <div class="border">
                                                  	<img class="scale-with-grid" src="${pageContext.request.contextPath}/resources/images/roi.jpg" />
                                                </div>
                                               <center><h5 class="noline"><a href="">O2 Ecoturismo</a></h5></center>
                                            </div>
                                            <div class="shadow"></div>
                                        </div>
                                        
                                    </li><!-- slide ends -->
                                </ul>
                            </div><!-- end of carousel -->                            
							
                            <div class="clear"></div>
                            <span class="hr"></span>
                            
                            <div class="two-thirds column alpha">
                                <div class="title-wrapper">
                                    <div class="section-title">
                                        <h4 class="title">Porque a PubliqMais?</h4>
                                    </div>
                                    <span class="divider"></span>
                                    <div class="clear"></div>
                                </div>
                                <ul class="accordion" id="1">
                                    <li>
                                        <div class="parent first">
                                            <h6><div class="accordion-caption"></div>Atendimento...</h6>
                                        </div>
                                        <div class="tcontent">
                                            Ágil e qualificado.
                                        </div>
                                    </li>
                                    <li>
                                        <div class="parent">
                                            <h6><div class="accordion-caption"></div>Serviço...</h6>
                                        </div>
                                        <div class="tcontent">
                                            Qualificado e evolutivo.
                                        </div>
                                    </li>
                                    <li>
                                        <div class="parent">
                                            <h6><div class="accordion-caption"></div>Pós Venda</h6>
                                        </div>
                                        <div class="tcontent">
                                         Acompanhado e instrutivo.
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="one-third column omega">
                                <div class="title-wrapper">
                                    <div class="section-title">
                                        <h4 class="title">Testemunhos</h4>
                                    </div>
                                    <span class="divider"></span>
                                    <div class="clear"></div>
                                </div>
                                <ul class="style-2 slide testimonials clr overlap">
                                    <li>
                                        <div class="quote">
                                            <p>
                                                Empresa qualificada e compreensiva, sempre em busca de resolver e encontrar a melhor e mais indicada solução!
                                            </p>
                                        </div>
                                        <div class="source">
                                            <!-- <img src="${pageContext.request.contextPath}/resources/images/testimonial.jpg" /> -->
                                            <strong>Nico Tigulis
                                                <a href="#">Contate Me</a>
                                            </strong>
                                            <div class="clear"></div>
                                        </div>
                                    </li>
                                    <li>
                                        <div class="quote">
                                            <p>
                                                Completamente compreensivos, &hellip; Muito obrigado, estou muito satisfeito. Cliente fidelidade! 
                                            </p>
                                        </div>
                                        <div class="source">
                                            <!-- <img src="${pageContext.request.contextPath}/resources/images/testimonial.jpg" /> -->
                                            <strong>movilwebs
                                                <a href="#">Contate Me</a>
                                            </strong>
                                            <div class="clear"></div>
                                        </div>
                                    </li>
                                    <li>
                                         <div class="quote">
                                            <p>
                                                Fui muito bem atendido, aumentou consideravelmente os visitantes novos em meu site. Muito obrigado!
                                            </p>
                                        </div>
                                        <div class="source">
                                            <!--  <img src="${pageContext.request.contextPath}/resources/images/testimonial.jpg" /> -->
                                            <strong>Chris Fale
                                                <a href="#">Contate Me</a>
                                            </strong>
                                            <div class="clear"></div>
                                        </div>
                                    </li>
                                </ul>
                            </div>
                            <div class="clear"></div>
                            <span class="hr"></span>
                            
                            <div class="callout intext">
                        
                                <div class="alpha twelve columns">
                                    <div class="content">
                                        <h4>Estamos aguardando por você!</h4>
                                        <p class="subtitle">Temos uma equipe altamente treinada para sua necessidade.</p>
                                    </div>
                                </div>
                                
                                <div class="omega four columns">
                                   <div class="intext-button">
                                        <a href="#" class="big-button"><span>Contatos!</span></a>
                                   </div>
                                </div>
                                
                                <div class="clear"></div>
                            </div>
        				
        					<!-- 

                            <div class="title-wrapper">
                                <div class="section-title">
                                    <h4 class="title"><strong>Nossos</strong> Clientes</h4>
                                </div>
                                <ul class="slidecontrols">
                                    <li><a href="#clientSlider" class="next">Próximo</a></li>
                                    <li><a href="#clientSlider" class="prev">Anterior</a></li>
                                </ul>
                                    <span class="divider"></span>
                            	<div class="clear"></div>
                            </div>
                            -->
                        </div>
                        <!-- 
                        <div class="clients columns sixteen slidewrap2">
                            <ul class="slider carousel" id="clientSlider">
                                <li class="slide">
                                    <div class="client alpha">
                                        <a href="#"><img id="transparent" src="${pageContext.request.contextPath}/resources/images/logo1.png" /></a>
                                    </div>
                                    <div class="client beta">
                                        <a href="#"><img id="transparent" src="${pageContext.request.contextPath}/resources/images/logo2.png" /></a>
                                    </div>
                                    <div class="client delta">
                                        <a href="#"><img id="transparent" src="${pageContext.request.contextPath}/resources/images/logo3.png" /></a>
                                    </div>
                                    <div class="client omega">
                                        <a href="#"><img id="transparent" src="${pageContext.request.contextPath}/resources/images/logo4.png" /></a>
                                    </div>
                                </li>
                                
                                <li class="slide">
                                    <div class="client alpha">
                                        <a href="#"><img id="transparent" src="${pageContext.request.contextPath}/resources/images/logo2.png" /></a>
                                    </div>
                                    <div class="client beta">
                                        <a href="#"><img id="transparent" src="${pageContext.request.contextPath}/resources/images/logo3.png" /></a>
                                    </div>
                                    <div class="client delta">
                                        <a href="#"><img id="transparent" src="${pageContext.request.contextPath}/resources/images/logo4.png" /></a>
                                    </div>
                                    <div class="client omega">
                                        <a href="#"><img id="transparent" src="${pageContext.request.contextPath}/resources/images/logo1.png" /></a>
                                    </div>
                                </li>
                            </ul>
                            
                        </div>  
                        -->
                        <div class="clear"></div>
                        <div class="sixteen columns">
                       		<span class="hr lip-quote"></span>
                            <blockquote class="standard bottom">
                                "Encontre empresas, negócios e profissionais das mais diversas áreas em todo o Brasil" <br />
                                - PubliqMais
                            </blockquote>
                        </div>
                    </div>
                </div>
            </div><div class="footer style-2">
            	<div class="background"><div class="stitch"></div></div>
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
                                        <p>
                                            Uma empresa com foco no cliente e atendimento..
                     					</p>
                                        <p class="extra">
                                            Qualidade, compreenção e outras qualidades fazem parte dessa empresa.
                                        </p>
                                    </div>
                                </div>
                                <div class="column ct">
                                    <h5>Equipe altamente treinada:</h5>
                                    <br />
                                	<img src="${pageContext.request.contextPath}/resources/images/design/twitter-bird-dark-bgs.png">
                                	<p class="extra">
                                        Entre em contato e confira.
                                    </p>
                                </div>
                                <div class="last column omega">
                                    <h5>Receba nossas novidades!</h5>
                                    
                                    <div class="input-wrapper">
                                        <input type="text" placeholder="Email..." id="email" name="email" />
                                    </div>
                                    <div class="right">
                                    	<a href="" class="button color"><span>Enviar</span></a>
                                    </div>
                                    <div class="clear"></div>
                                    <span class="hr"></span>
                                    <h5>Redes Sociais</h5>
                                    <ul class="sm foot">
                                        <li class="facebook"><a href="">Facebook</a></li>
                                        <li class="twitter"><a href="">Twitter</a></li>
                                        <li class="linkedin"><a href="">LinkedIn</a></li>
                                    </ul>
                                </div>
                            </div>
                            <div class="clear"></div>
                        </div>
                        <div class="sixteen columns alpha omega">
                        	<div class="foot-nav-bg"></div>
                            <div class="foot-nav">
                                <div class="copy">
                                    Coptyright © 2016 <a href="logincontroller.do" style="color:white">Publiq Mais</a>. Todos os direitos reservados.
                                </div>
                                <div class="nav">
                                    <a href="./">Home</a>
                                    <a href="sitecontroller.do?acao=sobre">Sobre</a>
                                    <a href="sitecontroller.do?acao=listar">Categorias</a>
                                    <a href="contatos.jsp">Contatos</a>
                               	</div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
        
    <script type="text/javascript">
    
        $(window).load(function(){
            // Setup Slider
            $(".onebyone.hide").fadeIn(1000);
            $('.onebyone').oneByOne({
                className: 'oneByOne1',	             
                easeType: 'random',
                autoHideButton: false,
                width: 960,
                height: 840,
                minWidth: 680,
                slideShow: true
            });
             $("a[class^='prettyPhoto']").prettyPhoto({social_tools: '' });
        });
        $(document).ready(function() {
            $('.slidewrap, .slidewrap2').carousel({
                slider: '.slider',
                slide: '.slide',
                slideHed: '.slidehed',
                nextSlide : '.next',
                prevSlide : '.prev',
                addPagination: false,
                addNav : false
            });
			$('.slide.testimonials').contentSlide();
			$('.bbss').contentSlide();
        });
    
    </script>
	<script type="text/javascript" src="http://twitter.com/javascripts/blogger.js"></script>
    <script type="text/javascript" src="http://api.twitter.com/1/statuses/user_timeline/EmpiricalThemes.json?callback=twitterCallback2&count=2"></script>
	</div>
</body>

</html>