

import java.io.IOException;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: Forgotpassword
 *
 */
 public class Forgotpassword extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public Forgotpassword() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	String emailid=request.getParameter("emailid");
		
		try{
			ResultSet rss=st.executeQuery("select * from   SONY.USERS AS USERS WHERE USERS.EMAILID = '"+emailid+"'" );
		
		String password="";
		if (rss.next()) {
		password=rss.getString(2);
		int i=0;
		 ResultSet rs=st.executeQuery("select  password from   SONY.USERS AS USERS WHERE USERS.EMAILID = '"+emailid+"'" );
		String email="";
		String arr[]=new String[20];
		while(rs.next()){
		arr[i]=rs.getString(1);
		i++;
		}
		email=arr[4];
		String to[]=new String[1];
		to[0]=email; 
		
		Main blah = new Main(to,"Password","Your  id:"+email+" Password:"+password);
		
		}
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}   	  	  
	
	/* (non-Javadoc)
	 * @see javax.servlet.GenericServlet#init()
	 */
	Connection con;
	Statement st;
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		try{			
		ServletContext ctx=getServletContext();
		con=(Connection)ctx.getAttribute("Connection");
		st=con.createStatement();
			}catch(Exception e){
				e.printStackTrace();
			}
	}   
}