<<<<<<< HEAD
<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="zxx">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>登录</title>
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
    <body>
         
        <div class="preloader">
            <i class="fa fa-spinner"></i>
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
                            <li class="dropdown">
                                <a href="#" class="dropdown-toggle" data-toggle="dropdown" id="dropdownMenu1" aria-haspopup="true" aria-expanded="false">我的账户<span class="caret"></span></a>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenu1">
                                    <li><a href="login.html">登录</a></li>
                                    <li><a href="register.html">注册</a></li>
                                    <li><a href="#">注销</a></li>
                                </ul>
                            </li>
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
                                    
                                    <div class="collapse navbar-collapse p-0" id="bs-example-navbar-collapse-1">
                                        <ul class="nav navbar-nav pull-right m-r-40 m-r-sm-0 m-r-xs-0"> 
                                            <li class="dropdown active">
                                                <a href="index.jsp" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">主页</a>

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
        <div class="container">
            <ul class="breadcrumb">
                <li><a href="index.jsp"><i class="fa fa-home m-r-5"></i>主页</a></li>
                <li>登录</li>
            </ul>
        </div>
        <!-- Login page -->
        <div class="container">
            <div class="thumb p-60">
                <div id="content">
                    <div class="row">
                        <div class="col-sm-12 col-md-6 col-md-offset-3">
                            <h3 class="title">参数选择</h3> 
                            <form action="${pageContext.request.contextPath }/servlet/MenuServlet" method="post" >
                                <div class="search-box">
                                     <div class="search-txt form-item">
                                              <font>是否有乘除 : </font>
                                              <input type="radio" name="hasMD" id="md" value="Y" />是
                                              <input type="radio" name="hasMD" id="md" value="N" />否
                                          </div>
                                      </div>
                                      <div class="search-box">
                                     <div class="search-txt form-item">
                                             <font>是否有真分数：</font>
                                             <input type="radio" name="hasFS" id="fs" value="Y" />是
                                             <input type="radio" name="hasFS" id="fs" value="N" />否   
                                           </div>
                                      </div>
                                      <div class="search-box">
                                     <div class="search-txt form-item">
                                             <font>运算符个数是否固定：</font>
                                             <input type="radio" name="hasGD" id="gd" value="Y" />是
                                             <input type="radio" name="hasGD" id="gd" value="N" />否   
                                          </div>
                                      </div>
                                      <div class="search-box">
                                     <div class="search-txt form-item">
                                             <font>请输入运算符个数：</font>
                                             <input type="text" name="Numsy" id="numsy"  placeholder="固定或最大值"/>
                                          </div>
                                      </div>
                                       <div class="search-box">
                                     <div class="search-txt form-item">
                                             <font>请输入出题数值范围：</font>
                                             <input type="text" name="Range" id="range"  placeholder="请输入整数"/>
                                           </div>
                                      </div>
                                      <div class="search-box">
                                     <div class="search-txt form-item">
                                              <font>请输入出题数量：</font>
                                              <input type="text" name="Num" id="num"  placeholder="请输入整数"/>
                                          </div>
                                      </div>
                                <button type="submit" class="btn ht-btn bg-3 m-t-10">提交</button>
                                <button type="reset" class="btn ht-btn bg-4 m-t-10">重置</button>
                            </form>
                        </div>
                     </div>
                </div>
            </div>
        </div>
        <!-- Process -->
        <section class="process">
            <div class="container">
                <div class="row m-l-r-5">
                    <div class="col-sm-6 col-md-3 p-5"> 
                        <div class="media ht-media">
                            <div class="media-left">
                                <i class="fa fa-cogs color-3"></i>
                            </div>
                            <div class="media-body">
                                <h5 class="media-heading color-3">知识改变命运<br>
                                勤奋创造未来</h5>
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3 p-5"> 
                        <div class="media ht-media">
                            <div class="media-left">
                                <i class="fa fa-send color-7"></i>
                            </div>
                            <div class="media-body">
                                <h5 class="media-heading color-7">不是不可能<br>
                                只是暂时还没成功</h5>
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3 p-5"> 
                        <div class="media ht-media">
                            <div class="media-left">
                                <i class="fa fa-car color-4"></i>
                            </div>
                            <div class="media-body">
                                <h5 class="media-heading color-4">我是最棒的<br>
                                我一定会成功</h5>
                                
                            </div>
                        </div>
                    </div>
                    <div class="col-sm-6 col-md-3 p-5"> 
                        <div class="media ht-media">
                            <div class="media-left">
                                <i class="fa fa-ship color-5"></i>
                            </div>
                            <div class="media-body">
                                <h5 class="media-heading color-5">忘掉失败<br>
                                牢记失败中的教训</h5>
                                
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Footer -->
        <footer class="color-inher">
            <div class="bot-pie"></div>
            <div class="footer-bt">
                <div class="container">
                    <p>Copyright &copy; 2017.Company name All rights reserved.<a target="_blank" href="index.jsp">答题网</a></p>
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
    <title>参数选择</title>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/checkForm.js">
		    
    </script>
  </head>
  <!--/arithmeticWeb  -->
  <body>
    <h1 align="center">参数选择</h1><hr>
        <form action="${pageContext.request.contextPath }/servlet/MenuServlet" onsubmit="return checkForm()" method="post">
            <table align="center">
	            <tr>
	               <td >
	                  <font>是否有乘除 : </font>
	               </td>
	                <td>
                      <input type="radio" name="hasMD" id="md" value="Y" />是
                      <input type="radio" name="hasMD" id="md" value="N" />否
                   </td>
	            </tr>
	             <tr>
                   <td >
                     <font>是否有真分数：</font>
                   </td>
                   <td>
                     <input type="radio" name="hasFS" id="fs" value="Y" />是
                     <input type="radio" name="hasFS" id="fs" value="N" />否   
                   </td>
                </tr>
                <tr>
                   <td >
                     <font>运算符个数是否固定：</font>
                   </td>
                   <td>
                     <input type="radio" name="hasGD" id="gd" value="Y" />是
                     <input type="radio" name="hasGD" id="gd" value="N" />否   
                   </td>
                </tr>
                <tr>
                   <td >
                     <font>请输入运算符个数：</font>
                   </td>
                   <td>
                     <input type="text" name="Numsy" id="numsy" size="10" placeholder="固定或最大值"/>
                   </td>
                </tr>
                 <tr>
                   <td >
                     <font>请输入出题数值范围：</font>
                   </td>
                   <td>
                     <input type="text" name="Range" id="range" size="10" placeholder="请输入整数"/>
                   </td>
                </tr>
                 <tr>
                   <td >
                      <font>请输入出题数量：</font>
                   </td>
                   <td>
                      <input type="text" name="Num" id="num" size="10" placeholder="请输入整数"/>
                   </td>
                </tr>
               <tr>
                   <td align="center" colspan="2">
                       <input type ="submit" value="提交" />
                   </td>
                </tr>                        
            </table>                     
        </form>
  </body>
</html>
>>>>>>> origin/master
