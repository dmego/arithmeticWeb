package cn.dmego.service;

import cn.dmego.dao.MySqlUserDao2;
import cn.dmego.dao.UserDao;
import cn.dmego.domain.User;

/**
 * ҵ���߼���
 * @author Dmego
 */
public class UserService {
	private MySqlUserDao2 dao = new MySqlUserDao2();
	/**
	 * ע���û�������û���
	 * @param user
	 * @throws MsgException �û�������ʱ���쳣����
	 *  ��һ������Ҫ���׳��쳣�������ϱ�����������
	 */
	public void registUser(User user) {
		//1.����û����Ƿ���ڣ�������ڣ�����ʾ�û�
		//2.�������ڣ���ʵ������û�������ע���û���
		dao.addUser(user);
	}
	/**
	 * ����û����������Ƿ���ȷ
	 * @param username
	 * @param password
	 */
	public User isUser(String username,String password) {
		return dao.findUserByUSandPSW(username, password);
	}
}

