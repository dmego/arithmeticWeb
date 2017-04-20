<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page isELIgnored="false" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>登录</title>
  </head>
  <body>
  	<div align="center">
  	<h1>登录</h1><hr>
  	
  	<font color="red">${msg }</font>
  		<form action="${pageContext.request.contextPath }/servlet/LoginServlet" method="post">
  			<table border="1">
  				<tr>
  					<td>用户名</td>
  					<td><input type="text" name="username" /></td>
  				</tr>
  				<tr>
  					<td>密码</td>
  					<td><input type="password" name="password" /></td>
  				</tr>
  				<tr>
  					<td colspan="1"><input type="submit" value="登录" /></td>
  					<td><input type="reset" value="重置"></td>
  				</tr>
  			</table>
  		</form>
  	</div>
  </body>
</html>
