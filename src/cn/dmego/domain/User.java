package cn.dmego.domain;
/**
 * javaBean:������װ����
 */
import java.io.Serializable;

public class User implements Serializable{
	private String username;
	private String password;
	private String password2;//����������У��

	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getPassword2() {
		return password2;
	}
	public void setPassword2(String password2) {
		this.password2 = password2;
	}
	@Override
	public String toString() {
		return "������"+username+" | ���룺 "+password;
	}
	
}
