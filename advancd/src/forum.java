

import java.io.IOException;
import java.sql.Connection;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class for Servlet: forum
 *
 */
 public class forum extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public forum() {
		super();
	} 
	
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
		if(hs.isNew()){}
		String user=(String)hs.getAttribute("emailid");
		String usertype=(String)hs.getAttribute("User");
		String newname=request.getParameter("newname");
		String date=request.getParameter("date");
		String newsubject=request.getParameter("newsubject");
		String newmessage=request.getParameter("newmessage");
		try {
			st.executeUpdate("INSERT INTO 	SONY.FORUM ( FORUM_SUBJECT, FORUM_BY, FORUM_BY_TYPE, FORUM_COMMENT, FORUM_COMMENT_BY, FORUM_COMMENT_BY_TYPE, DATE, SNUM) VALUES ( '"+newsubject+"', '"+user+"', '"+usertype+"', '"+newmessage+"', '"+user+"', '"+usertype+"', '"+date+"', 1)   ");
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