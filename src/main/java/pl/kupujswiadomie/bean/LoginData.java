package pl.kupujswiadomie.bean;

import org.springframework.stereotype.Component;

@Component
public class LoginData {

	private String username;
	private String password;
	
	public LoginData() {
		super();
	}

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
	
}
