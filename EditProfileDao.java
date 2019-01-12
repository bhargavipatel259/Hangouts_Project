package com.model.divy;
import java.io.InputStream;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import bean.loginbean;
import java.sql.ResultSet;

public class EditProfileDao {
	static String url = "jdbc:mysql://localhost:9050/ualbanyhangouts";
	static String user= "root";
	static String pass="root";
	    
	java.sql.Connection con = null;
	java.sql.Statement statement = null;
	java.sql.ResultSet resultSet = null;

	//(two parameters in session role and username)
public String retrievePassword(loginbean a){ 

	String email=a.getEmail();
String passworddb = null;

String cha= "select * from ualbanyhangouts."+a.getRadio()+"_details where email=?";
System.out.println(cha);

try{
Class.forName("com.mysql.jdbc.Driver");
Connection con = DriverManager.getConnection(url,user,pass);
PreparedStatement po = con.prepareStatement(cha);
po.setString(1,email);
resultSet = po.executeQuery();


while(resultSet.next())
{	passworddb = resultSet.getString("password");
System.out.println("current saved pwd is:"+passworddb);
}
con.close();
return passworddb;
}

catch(Exception e) {
e.printStackTrace();

return "Invalid Process";
}
}

public int changePassword(loginbean l){
	String chap= "update ualbanyhangouts."+l.getRadio()+"_details" +" set password=?  where email=?";
	
	//update ualbanyhangouts.user_details set password= "dw"  where email="divyang12200730@gmail.com"
	int status=0;
	String email=l.getEmail();
	String pwd=l.getPassword();
	
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,user,pass);
	PreparedStatement st = con.prepareStatement(chap);
	st.setString(1,pwd);
	st.setString(2, email);

	System.out.println("connection happen and assign string");
	status= st.executeUpdate();
	System.out.println(chap);
	System.out.println(st);
	
	con.close();
	return status;
	}
	catch(Exception e){e.printStackTrace();
	return 0;
	}
	
}

public void upload(InputStream inputstream, loginbean l){
	
	//String sql = "INSERT INTO contacts (first_name, last_name, photo) values (?, ?, ?)";
	
	String email=l.getEmail();
	String radio=l.getRadio();
	
	String chap= "update "+l.getRadio()+"_details"+" set pic=? where email=?"; 
	System.out.println("THis is test"+chap);
	try{
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection(url,user,pass);
	PreparedStatement st = con.prepareStatement(chap);

	if (inputstream != null) {
        // fetches input stream of the upload file for the blob column
        st.setBlob(1, inputstream);
        System.out.println("photo uploaded");
    	}
		st.setString(2, email);
		st.executeUpdate();
	System.out.println("connection happen and assign string");
		
	con.close();
	
	}
	catch(Exception e){e.printStackTrace();
	
	}
}
}