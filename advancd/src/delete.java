

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class for Servlet: delete
 *
 */
 public class delete extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   Connection con;
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public delete() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try 
		{// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		  String str1 =(String) session.getAttribute("use");
		   String str2 =(String) session.getAttribute("type");
		// String str1 = request.getParameter("use");
		 //  String str2 =request.getParameter("type");
		   int i=0; Statement st1=con.createStatement();
		   String	insstr = "DELETE FROM SONY.USERS USERS WHERE USERS.EMAILID = '"+str1+"' AND USERS.USERID = '"+str2+"'";
		   i = st1.executeUpdate(insstr);
			System.out.println(insstr);
			PrintWriter out=response.getWriter();
			out.println("enetery has been deleted");
	 	}  catch (Exception e) {
		// TODO: handle exception
	}

}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}   
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		try {
			ServletContext ctx=getServletContext();
			con=(Connection)(ctx.getAttribute("Connection"));
				System.out.println("got conection");
		} catch (Exception e) {
			// TODO: handle exception
		}
}}