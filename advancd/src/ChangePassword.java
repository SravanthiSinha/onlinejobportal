

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class for Servlet: ChangePassword
 *
 */
 public class ChangePassword extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public ChangePassword() {
		super();
	} 
	Connection con;
	Statement st;
	/* (non-Javadoc)
	 * @see javax.servlet.Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession hs=request.getSession();
		String password=request.getParameter("pwd");
		System.out.println("in 1"+password);
		try {
			System.out.println("in 2");
			st.executeUpdate("update SONY.REGISTRY set password='"+password+"' where username='"+(String)hs.getAttribute("emailid")+"'");
		} catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		
		
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession hs=request.getSession();
		
		response.sendRedirect("http://localhost:8080/advancd/");
	}   	  	  
	
	/* (non-Javadoc)
	 * @see javax.servlet.GenericServlet#init()
	 */
	
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
