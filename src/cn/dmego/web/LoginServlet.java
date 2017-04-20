package cn.dmego.web;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cn.dmego.domain.User;
import cn.dmego.service.UserService;

public class LoginServlet extends HttpServlet {

	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("utf-8");
		response.setContentType("text/html; charset=utf-8");
		UserService service = new UserService();
		//1.��ȡ�ͻ����ύ���û���������
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		//2.����Service�еķ�������û����������Ƿ�ƥ��
		User user = service.isUser(username, password);
		System.out.println("��½�ɹ�");
		request.getSession().setAttribute("user", user);
		response.sendRedirect(request.getContextPath()+"/index.jsp");
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		doGet(request, response);
	}

}
