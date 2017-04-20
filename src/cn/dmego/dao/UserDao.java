package cn.dmego.dao;
/**
 * 数据访问层接口(dao层不能参杂任何业务逻辑)
 */
import cn.dmego.domain.User;

public interface UserDao {
	/**
	 * 根据用户名查找用户
	 * @param username 用户名
	 * @return 根据用户名找到的用户信息bean（封装在javaBean里面），如果没有找到返回null
	 */
	public User findUserByUserName(String username);
	/**
	 * 添加用户
	 * @param user 要添加的用户信息
	 */
	public void addUser(User user);
	/**
	 * 根据用户名，密码查找对应的用户
	 * @param username 用户名
	 * @param password 密码
	 * @return 返回找到的用户，如果找不到则返回null
	 */
	public User findUserByUSandPSW(String username,String password);

}
