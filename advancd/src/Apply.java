

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class for Servlet: Apply
 *
 */
 public class Apply extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public Apply() {
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
		   String str1 =(String) session.getAttribute("emailid");
		   int i=0;
		   String cemailid=(String) session.getAttribute("ce");
		   String cmpny=(String) session.getAttribute("c");
		   String dsg=(String) session.getAttribute("desg");
		   String eemailid=(String) session.getAttribute("eemailid");
		   System.out.println(str1+cemailid+cmpny);
		   Statement st1=con.createStatement();
		   String	insstr = "INSERT INTO SONY.JOBSAPPLIED  VALUES ('"+cemailid+"','"+ cmpny+"','"+dsg+"','"+ str1+"','"+eemailid+"')";
			i = st1.executeUpdate(insstr);
			System.out.println(insstr);
			//session.setAttribute("status","applied");
			//response.sendRedirect("http://localhost:8080/advancd/Searching.jsp");
			PrintWriter out = response.getWriter();
		out.print("Thanks for applying");
		   
		}  catch (Exception e) {
				// TODO: handle exception
			}
		
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try 
		{// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		   String str1 =(String) session.getAttribute("emailid");
		   int i=0;
		   String cemailid=(String) request.getAttribute("ce");
		   String cmpny=(String) request.getAttribute("c");
		   String dsg=(String) request.getAttribute("desg");
		   System.out.println(str1+cemailid+cmpny);
		   Statement st1=con.createStatement();
		   String	insstr = "INSERT INTO SONY.JOBSAPPLIED  VALUES ('"+cemailid+"','"+ cmpny+"','"+dsg+"','"+ str1+"')";
			i = st1.executeUpdate(insstr);
			System.out.println(insstr);
			//session.setAttribute("status","applied");
			//response.sendRedirect("http://localhost:8080/advancd/Searching.jsp");
			PrintWriter out = response.getWriter();
		out.print("Thanks for applying");
		   
		}  catch (Exception e) {
				// TODO: handle exception
			}	
	} 
	
	Connection con;
	PreparedStatement st;
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		try{			
			ServletContext ctx=getServletContext();
		con=(Connection)ctx.getAttribute("Connection");
		
			}catch(Exception e){
				e.printStackTrace();
			}
	}
 }