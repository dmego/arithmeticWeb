package cn.dmego.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import cn.dmego.domain.User;
import cn.dmego.util.JDBCUtils;

public class MysqlUserDao {
	/**
	 * �����û�����������Ҷ�Ӧ���û�
	 * @param username �û���
	 * @param password ����
	 * @return �����ҵ����û�������Ҳ����򷵻�null
	 */
	public User findUserByUSandPSW(String username, String password) {
		String sql = "select * from user where username=? and password=?";
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			conn = JDBCUtils.getConn();
			ps = conn.prepareStatement(sql);
			ps.setString(1, username);
			ps.setString(2, password);
		     rs = ps.executeQuery();
		     if(rs.next()) {
		    	 User user = new User();
		    	 user.setUsername(rs.getString("username"));
		    	 user.setPassword(rs.getString("password"));
		    	 return user;  	 
		     }else{
		    	 return null;
		     }
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JDBCUtils.close(rs, ps, conn);
		}
	}
}