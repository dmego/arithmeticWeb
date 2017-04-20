<<<<<<< HEAD
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zxx">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>主页</title>
<link rel="icon" href="favicon.ico">
<!-- JqueryUI -->
<link rel="stylesheet" type="text/css" href="css/jquery-ui.css">
<!-- Bootstrap -->
<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
<!-- Awesome font icons -->
<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" media="screen">
<!-- Owlcoursel -->
<link rel="stylesheet" type="text/css" href="css/owl-coursel/owl.carousel.css">
<link rel="stylesheet" type="text/css" href="css/owl-coursel/owl.transitions.css">
<!-- Magnific-popup -->
<link rel="stylesheet" type="text/css" href="css/magnific-popup/magnific-popup.css">
<!-- Style -->
<link rel="stylesheet" type="text/css" href="css/style.css" media="screen">
<!-- Fw -->
<link rel="stylesheet" type="text/css" href="css/fw.css" media="screen">
</head>
<body class="bg-white">
<div class="preloader">
    <div class="preloader">
    <i class="fa fa-spinner"></i>
</div>
</div>
<header>
    <div class="container">
        <!-- Top menu -->
        <div class="row m-t-15">
            <div class="col-sm-2 col-md-4 hidden-xs">
                <div class="cloud-3"></div>
            </div>
            <div class="col-sm-4 col-md-3">
            </div>
            <div class="col-sm-6 col-md-5 hidden-xs">
                <ul class="list-inline pull-right m-t-15">
                    <c:if test="${sessionScope.user==null}">
                                                      欢迎光临!游客!
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="dropdownMenu1" aria-haspopup="true" aria-expanded="false">我的账户<span class="caret"></span></a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li><a href="${pageContext.request.contextPath }/register.html">注册</a></li>
                            <li><a href="${pageContext.request.contextPath }/login.html">登录</a></li>
                        </ul>
                    </li>
                    </c:if>
                    <c:if test="${sessionScope.user!=null}">
                                                       欢迎回来!${sessionScope.user.username }!
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="dropdownMenu1" aria-haspopup="true" aria-expanded="false">我的账户<span class="caret"></span></a>
                        <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                            <li><a href="${pageContext.request.contextPath }/servlet/LogoutServlet">注销</a></li>
                        </ul>
                    </li>
                   </c:if>
                </ul>
            </div>
        </div>
        <div class="row">
            <div class="col-sm-12 col-md-2">
              <!-- Logo -->
                        <a href="index.jsp" class="logo">
                            <img src="images/logo.png" alt="logo">
                        </a>
            </div>
            <div class="col-sm-12 col-md-10">
                <!-- Menu -->
                <div class="main-menu">
                    <nav class="navbar navbar-default menu">
                        <div class="container-fluid p-0">
                            <div class="navbar-header">
                                <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                    <span class="sr-only">Lorem ipsum dolor</span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                    <span class="icon-bar"></span>
                                </button>
                            </div>
                            <div class="collapse navbar-collapse p-0" id="bs-example-navbar-collapse-1">
                                <ul class="nav navbar-nav pull-right m-r-40 m-r-sm-0 m-r-xs-0"> 
                                    <li><a href="Menu.jsp">按参数答题</a></li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">按年级答题</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="/arithmeticWeb/servlet/GradeServlet?Grade=1" >一年级</a></li>
                                            <li><a href="/arithmeticWeb/servlet/GradeServlet?Grade=2" >二年级</a></li>
                                            <li><a href="/arithmeticWeb/servlet/GradeServlet?Grade=3" >三年级</a></li>
                                            <li><a href="/arithmeticWeb/servlet/GradeServlet?Grade=4" >四年级</a></li>
                                            <li><a href="/arithmeticWeb/servlet/GradeServlet?Grade=5" >五年级</a></li>
                                            <li><a href="/arithmeticWeb/servlet/GradeServlet?Grade=6" >六年级</a></li>
                                        </ul>
                                    </li>
                                    <li class="dropdown">
                                        <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">回顾错题</a>
                                        <ul class="dropdown-menu">
                                            <li><a href="/arithmeticWeb/servlet/HistoryServlet?backWrong=show">查看错题</a></li>
                                            <li><a href="/arithmeticWeb/servlet/HistoryServlet?backWrong=practice">练习错题</a></li>
                                        </ul>
                                    </li>
                                    <li><a href="about.html">关于</a></li>
                                    <li><a href="contact.html">联系我们</a></li>
                                </ul>
                            </div>
                        </div>
                    </nav>
                </div>
            </div>
        </div>
    </div>
</header> 
<!-- Sideshow -->
<div class="sideshow">
    <div class="container text-center">
        <div class="owl m-b-60" data-items="4" data-itemsDesktop="3" data-itemsDesktopSmall="2" data-itemsTablet="2" data-itemsMobile="1" data-transitionstyle="fade" data-singleItem="true" data-autoplay="3000" data-pag="false" data-buttons="false"> 
            <img src="images/banner-4.png"  alt="image">
            <img src="images/banner-6.png"  alt="image">
            <img src="images/banner-7.png"  alt="image">
            <img src="images/p22.png"  alt="image" >
            <img src="images/p11.png"  alt="image" >
            <img src="images/p88.png"  alt="image">
            <img src="images/p99.png"  alt="image">
            
        </div>
        <div class="cloud-0"></div>
        <div class="cloud-3"></div>
        <div class="cloud-1"></div>
        <div class="cloud-2"></div>
    </div>
</div>
<div class="top-pie"></div>

<!-- Logo -->
<div class="m-t-60">
    <div class="container">
        <div class="brand">
            <div class="row">
                <div class="owl" data-items="6" data-itemsDesktop="5" data-itemsDesktopSmall="3" data-itemsTablet="2" data-itemsMobile="1" data-transitionstyle="backslide" data-singleItem="false" data-autoplay="3000" data-pag="false" data-buttons="false"> 
                </div>
            </div>
        </div>
    </div>
</div>  
<div class="bg-landscape"></div>

<!-- Footer -->
<footer class="color-inher">
    <div class="footer-bt">
        <div class="container">
            <p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="#"></a>答题网</p>
        </div>
    </div>
</footer>
<!-- jQuery -->
<script src="js/jquery/jquery-2.2.4.min.js"></script>
<!-- JqueryUI -->
<script src="js/jquery/jquery-ui.js"></script>
<!-- Bootstrap -->
<script src="js/bootstrap/bootstrap.min.js"></script>
<!-- Owl-coursel -->
<script src="js/owl-coursel/owl.carousel.js"></script>
<!-- Magnific-popup -->
<script src="js/magnific-popup/jquery.magnific-popup.min.js"></script>
<!-- Script -->
<script src="js/script.js"></script>
</body>
</html>
=======
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>导航页面</title>
  </head>
  
  <body>
   <h1 align="center">功能选择</h1><hr>
        <form action="${pageContext.request.contextPath }/servlet/indexServlet"  method="post">
            <table align="center">
                <tr>
                   <td align="center" colspan="2">
                       <input type ="radio"  name="function" value="online"/>在线答题
                       <input type ="radio"  name="function" value="history"/>回顾错题
                   </td>
                </tr> 
                <tr>
                    <td align="center" colspan="2">
                        <input type="submit" value="确定">
                    </td>
                </tr>                
            </table>                     
        </form>
  </body>
</html>
>>>>>>> origin/master
