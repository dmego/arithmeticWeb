package cn.dmego.web;
/**
 * ע�Ṧ��
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
			request.setCharacterEncoding("utf-8");   //���������������������
			response.setContentType("text/html; charset=utf-8");
			String username = request.getParameter("username");
			String password = request.getParameter("password");
			//2.��װ����У������
			System.out.println(username+","+password);
			User user = new User();
			user.setUsername(username);
			user.setPassword(password);
			user.setPassword2(password);
			//3.����service�еķ�������û�
			service.registUser(user); 
			//4.��¼�û�
			request.getSession().setAttribute("user",user );
			//5.��ʾ�û�ע��ɹ���3��󷵻���ҳ
			response.getWriter().write("��ϲ��ע��ɹ���3��ص���ҳ��������");
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
