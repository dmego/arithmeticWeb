package cn.dmego.service;

import cn.dmego.dao.MySqlUserDao2;
import cn.dmego.dao.UserDao;
import cn.dmego.domain.User;

/**
 * 业务逻辑层
 * @author Dmego
 */
public class UserService {
	private MySqlUserDao2 dao = new MySqlUserDao2();
	/**
	 * 注册用户（添加用户）
	 * @param user
	 * @throws MsgException 用户名存在时的异常处理
	 *  （一个方法要想抛出异常，方法上必须有声明）
	 */
	public void registUser(User user) {
		//1.检查用户名是否存在，如果存在，则提示用户
		//2.若不存在，则实现添加用户操作（注册用户）
		dao.addUser(user);
	}
	/**
	 * 检查用户名和密码是否正确
	 * @param username
	 * @param password
	 */
	public User isUser(String username,String password) {
		return dao.findUserByUSandPSW(username, password);
	}
}

