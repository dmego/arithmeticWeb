package cn.dmego.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import cn.dmego.domain.User;
import cn.dmego.util.JDBCUtils;

public class MySqlUserDao2 implements UserDao{

	@Override
	public User findUserByUserName(String username) {
		String sql = "select * from user where username=?";
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			conn = JDBCUtils.getConn();
			ps = conn.prepareStatement(sql);
		    ps.setString(1, username);
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

	@Override
	public void addUser(User user) {
		//String sql = "insert into user values(null,'"+user.getUsername()+"','"+ user.getPassword()+"','"+user.getNickname()+"','"+user.getEmail()+"')";
		String sql ="insert into user values(?,?)";
		Connection conn = null;
		PreparedStatement ps = null;
		ResultSet rs = null;
		try{
			conn = JDBCUtils.getConn();
			ps= conn.prepareStatement(sql);
			ps.setString(1, user.getUsername());
			ps.setString(2, user.getPassword());
			ps.executeUpdate();
		}catch(Exception e){
			e.printStackTrace();
			throw new RuntimeException(e);
		}finally {
			JDBCUtils.close(rs, ps, conn);
		}
	}

	@Override
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
