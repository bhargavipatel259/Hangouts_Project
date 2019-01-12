package controller;

public class updatepassbean {
	private String email ;
	private String newpassword ;
	private String oldpassword ;

	public String getemail() {
		return email;
	}
	public void setemail(String email) {
		this.email = email;
	}
	public String getnewpassword() {
		return newpassword;
	}
	public void setnewpassword(String newpassword) {
		this.newpassword = newpassword;
	}
	public String getoldpassword() {
		return oldpassword;
	}
	public void setoldpassword(String oldpassword) {
		this.oldpassword = oldpassword;
	}


}
