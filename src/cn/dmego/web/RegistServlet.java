package cn.dmego.web;
/**
 * 注册功能
 */
import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.dmego.domain.User;
import cn.dmego.service.UserService;

public class RegistServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		try{
			UserService service = new UserService();
			request.setCharacterEncoding("utf-8");   //处理请求输入的中文乱码
			response.setContentType("text/html; charset=utf-8");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			//2.封装数据校验数据
			System.out.println(username+","+password);
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			user.setPassword2(password);
			//3.调用service中的方法添加用户
			service.registUser(user); 
			//4.登录用户
			request.getSession().setAttribute("user",user );
			//5.提示用户注册成功，3秒后返回主页
			response.getWriter().write("恭喜您注册成功！3秒回到主页。。。。");
			response.setHeader("refresh", "3; url="+request.getContextPath()+"/index.jsp");
		}
		catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);

	}

}
