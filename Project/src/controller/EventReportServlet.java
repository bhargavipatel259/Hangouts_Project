package controller;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import dao.Db_Connection;
import java.io.PrintWriter;
import java.util.List;
import java.util.Random;
import javax.servlet.RequestDispatcher;
import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;
@WebServlet("/EventReportServlet")
@MultipartConfig(maxFileSize = 16177215)

public class EventReportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public EventReportServlet() {
        super();
        }
    
    @Override
        protected void doPost(HttpServletRequest request, HttpServletResponse response)
                throws ServletException, IOException 
        {
    	String saveFile="F:/upload/";
    	response.setContentType("text/html;charset=UTF-8");
                    PrintWriter out = response.getWriter();
                    HttpSession session = request.getSession();
            
                    InputStream inputStream = null;

                    String title = request.getParameter("rating");
                    Random rand = new Random();
                    int  n = rand.nextInt(9999) + 1;
                    
                    String idTemp=(String.valueOf(n));
                    String email = (String)session.getAttribute("email");
                    
                    String textpart =request.getParameter("textpart");
                    String idp = request.getParameter("pop");
                    idp =idp.replace("/", "");
                    System.out.println("id from EventReportServlet"+idp);
                    int eventid = Integer.parseInt(idp);
                    String filename= null;
                    long size= 0;
                    
                    //-----------new code
//                    ServletFileUpload sf = new ServletFileUpload(new DiskFileItemFactory());
//                    try {
//						List<FileItem> multifiles =sf.parseRequest(request);
//						for(FileItem item: multifiles) { 
//		                    item.write(new File("F:/upload/"+ item.getName()));
//	                    }
//						System.out.println("File uploaded in F:");
//                    } catch (Exception e1) {
//						// TODO Auto-generated catch block
//						e1.printStackTrace();
//					}
                    
                    //----------------
                    filename="organizer";
                    Part filePart = request.getPart("file_uploaded");
                    
                    if (filePart != null) 
                    {
                    	filename=filePart.getName();
                    	size =filePart.getSize();
                        System.out.println(filePart.getName());
                        System.out.println(filePart.getSize());
                        System.out.println(filePart.getContentType());
                        inputStream = filePart.getInputStream();
                    }
                    try 
                    {
                        Db_Connection dbconn=new Db_Connection();
                        Connection conn= dbconn.Connection();
                        
                        String sql = "insert into eventreport(idt,title,file,text,email,hangout_id,filename) values (?,?,?,?,?,?,?)";
                        PreparedStatement statement = conn.prepareStatement(sql);
                        statement.setString(1, idTemp);
                        statement.setString(2, title);
                        
                        if (inputStream != null) 
                        {
                            statement.setBinaryStream(3, inputStream, (int) filePart.getSize());
                        }
                        else {statement.setString(3, "null");}
                        
                        statement.setString(4, textpart);
                        statement.setString(5,email);
                        statement.setInt(6, eventid);
                        
                        statement.setString(7, filename);
                        
                        int row = statement.executeUpdate();
                        //response.sendRedirect("Profile.jsp?File uploaded");
                        if (row > 0) 
                        {
                            out.println("File uploaded!!!");
                            conn.close();
                            
                            response.sendRedirect("Profileorganizer.jsp?File uploaded");
                        }
                        else
                        {
                            out.println("Couldn't upload your file!!!");
                            
                            conn.close();
                            
                            RequestDispatcher rs = request.getRequestDispatcher("EventReport.jsp");
                            rs.include(request, response);
                        }    

                    }catch(Exception e){e.printStackTrace();}     
        }   
    }