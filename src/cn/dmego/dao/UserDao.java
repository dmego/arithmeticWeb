package cn.dmego.dao;
/**
 * ���ݷ��ʲ�ӿ�(dao�㲻�ܲ����κ�ҵ���߼�)
 */
import cn.dmego.domain.User;

public interface UserDao {
	/**
	 * �����û��������û�
	 * @param username �û���
	 * @return �����û����ҵ����û���Ϣbean����װ��javaBean���棩�����û���ҵ�����null
	 */
	public User findUserByUserName(String username);
	/**
	 * ����û�
	 * @param user Ҫ��ӵ��û���Ϣ
	 */
	public void addUser(User user);
	/**
	 * �����û�����������Ҷ�Ӧ���û�
	 * @param username �û���
	 * @param password ����
	 * @return �����ҵ����û�������Ҳ����򷵻�null
	 */
	public User findUserByUSandPSW(String username,String password);

}
