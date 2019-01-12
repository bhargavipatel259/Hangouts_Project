package bean;

public class loginbean {
private String email;
private String password;
private String radio;


public String getEmail() {
	System.out.println("loginben getmail"+email);
	return email;
}

public void setEmail(String email) {
	this.email = email;
System.out.println("loginben setemail"+email);
}

public String getPassword() {
	return password;
}
public void setPassword(String password) {
	this.password = password;
}
public String getRadio() {
	return radio;
}

public void setRadio(String radio) {
	this.radio = radio;
}
}
