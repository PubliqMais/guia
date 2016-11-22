<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<!--[if lt IE 7 ]><html class="ie ie6" lang="en"> <![endif]-->
<!--[if IE 7 ]><html class="ie ie7" lang="en"> <![endif]-->
<!--[if IE 8 ]><html class="ie ie8" lang="en"> <![endif]-->
<!--[if (gte IE 9)|!(IE)]><!--><html lang="en"> <!--<![endif]-->
<head>

<meta charset="utf-8" />
<title>Publiq Mais - Contatos</title>
<meta name="description" content="">
<meta name="author" content="">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />
<link media="screen" charset="utf-8" rel="stylesheet" href="resources/css/base.css" />
<link media="screen" charset="utf-8" rel="stylesheet" href="resources/css/skeleton.css" />
<link media="screen" charset="utf-8" rel="stylesheet" href="resources/css/layout.css" />
<link media="screen" charset="utf-8" rel="stylesheet" href="resources/css/child.css" />
<!--[if (IE 6)|(IE 7)]>
    <link rel="stylesheet" href="css/ie.css" type="text/css" media="screen" />
<![endif]-->
<!--[if lt IE 9]>
    <script src="resources/http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
<![endif]--><script type="text/javascript" language="javascript" src="resources/js/jquery-1-8-2.js"></script><script type="text/javascript" src="resources/js/default.js"></script>
<script type="text/javascript" src="resources/js/jquery.easing.1.3.js"></script>
<script type="text/javascript" src="resources/js/jquery.carousel.js"></script>
<script type="text/javascript" src="resources/js/jquery.color.animation.js"></script>


<!-- color pickers -->
<link rel="stylesheet" media="screen" type="text/css" href="resources/css/colorpicker.css" />
<script type="text/javascript" src="resources/js/colorpicker.js"></script>
<!-- end of color pickers -->

</head>

<body><div class="page-wrapper">
        <div class="slug-pattern"><div class="overlay" style="background: url('resources/images/background-1.jpg')"><div class="slug-cut"></div></div></div>
        <div class="header">
            <div class="nav">
            
                
                <div class="container">
                
                    <!-- Standard Nav (x >= 768px) -->
                    <div class="standard">
                    
                        <div class="five column alpha">
                            <div class="logo">
                                <a href="./"><img src="resources/images/logo.png" /></a><!-- Large Logo -->
                            </div>
                        </div>
                    
                        <div class="eleven column omega tabwrapper">
                            <div class="menu-wrapper">
                                <ul class="tabs menu">
                                    <li>
                                       <a href="./"><span>Home</span></a>
                                    </li>
                                    <li>
                                       <a href="sitecontroller.do?acao=sobre"><span>Sobre</span></a>
                                    </li>
                                    <li>
                                       <a href="sitecontroller.do?acao=listar"><span>Categorias</span></a>
                                    </li>
                                    <li>
                                       <a href="sitecontroller.do?acao=contatos" class="active"><span>Contatos</span></a>
                                    </li>

                                </ul>
                            </div>
                        </div>
                    </div>
                    <!-- Standard Nav Ends, Start of Mini -->
                    
                    <div class="mini">
                        <div class="twelve column alpha omega mini">
                            <div class="logo">
                                <a href="./"><img src="resources/images/logoMINI.png" /></a><!-- Small Logo -->
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
                            <p class="link-location">Publiq Mais: <a href="">Home</a> / <a href="#">Contatos</a> / <a href="#">Categoria</a></p>
                        </div>
                        <div class="four columns button-wrap">
                             <div class="wrapper search">
                                <form action="sitecontroller.do?acao=empresas" method="post">
                                    <input type="text" class="search-box" name="supos" value="" placeholder='Busca...' />
                                    <input type="image" src="resources/images/design/search-icon.png" class="searchbox-submit" value=""/>
                                </form>
                            </div>	
                        </div>
                    </div>
                    <div class="callout-hr"></div>  
                    <div class="container">                   	
                        <div class="contact eleven columns">
                            <div class="standard-form compressed style-2">
                                <h5 class="semi title style-2">Formulário para Contato</h5>
                                <div class="form-result"></div>
                                <form action="http://publiqmais.com.br:8080/enviar.php" class="contactForm" id="contactus" name="contactus">
                                    <input type="text" class="input" id="name" name="nomeremetente" placeholder="Nome *" />
                                    <input type="text" class="input" id="email" name="emailremetente" placeholder="Email *" />
                                    <input type="text" class="input extend" id="subject" name="assunto" placeholder="Assunto" />
                                    <textarea name="mensagem" id="comment" rows="10" cols="65" placeholder="Messagem *" ></textarea>
                                    <div class="submit">
                                          <a class="button color" href="javascript:contactUsSubmit();"><span>Submit</span></a>
                                    </div>
                                    <div class="clear"></div>
                                </form>
                            </div>
                        </div>
                        
                        <div class="five columns">
                            <h5 class="semi">Publiq Mais</h5>
                            <div class="maps">
                                <a href="./"><img src="resources/images/logo-publiqmais-transparente.png" width="70%" /></a><!-- Large Logo -->
                            </div>
                            
                            <h5 class="semi">Informações de Contatos</h5>
                            <p>
                                <span class="hr"></span>
                                Fone: +55 11 2640 4780<br />                          
                                Fax:  +55 11 2640 4780<br />                 
                                Email: sac@publiqmais.com.br<br />                           
                                Web: www.publiqmais.com.br
                            </p>
                            
                        </div>
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
                                	<img src="resources/images/design/twitter-bird-dark-bgs.png">
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
            $('.slide.testimonials').contentSlide({'nav': false});
        });
    </script>
    <script type="text/javascript" src="resources/js/jquery.color.animation.js"></script>
    <script src="resources/ajax/ajax_default.js" type="text/javascript"></script>
    <script src="resources/ajax/email_conf.js" type="text/javascript"></script>
	<script type="text/javascript" src="resources/http://twitter.com/javascripts/blogger.js"></script>
    <script type="text/javascript" src="resources/http://api.twitter.com/1/statuses/user_timeline/EmpiricalThemes.json?callback=twitterCallback2&count=2"></script>

    </div>
</body>

</html>