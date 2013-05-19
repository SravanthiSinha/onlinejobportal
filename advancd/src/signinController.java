

import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
/**
 * Servlet implementation class for Servlet: signinController
 *
 */
 public class signinController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   Connection con;


    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public signinController() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("got coonection in request");
		HttpSession session=request.getSession();
		System.out.print(request.getParameter("User"));
		   	if(request.getParameter("main").equalsIgnoreCase("main")){ 
		   			if(request.getParameterNames().hasMoreElements()== false)
		   				{ 
		   				response.sendRedirect("http://localhost:8080/advancd/homepage.jsp");
		   				}
	 	else if((request.getParameter("emailid")!= null)&&(request.getParameter("password")!= null)&&(request.getParameter("User")!= null)){
						Beans.CheckingBean cb =new Beans.CheckingBean();
request.setAttribute("xyz",cb);
Boolean b=cb.Check(con,request.getParameter("emailid"),request.getParameter("password"),request.getParameter("User"));
	if(b==true){
			if(request.getParameter("User").equalsIgnoreCase("Jobseeker")){	
				System.out.print(request.getParameter("User"));
				  session=request.getSession(true);
				 session.setAttribute("emailid",request.getParameter("emailid"));
				session.setAttribute("login","login");
				session.setAttribute("User",request.getParameter("User"));
				session.setAttribute("password",request.getParameter("password"));
				response.sendRedirect("http://localhost:8080/advancd/jobseeker.jsp");
			}
	 if(request.getParameter("User").equalsIgnoreCase("Employeer")){ 
		 System.out.print(request.getParameter("User"));
		 session=request.getSession(true);
		 session.setAttribute("emailid",request.getParameter("emailid"));
	 session.setAttribute("login","login");
	 session.setAttribute("User",request.getParameter("User"));
	 session.setAttribute("password",request.getParameter("password"));
	// RequestDispatcher view= request.getRequestDispatcher("http://localhost:8080/advancd/Employeer.jsp");
	// view.forward(request,response); 
	response.sendRedirect("http://localhost:8080/advancd/Employeer.jsp");
		 }
	
			}
	else if(b==false){
	response.sendRedirect("http://localhost:8080/advancd/homepage.jsp");
	 
}
			}
		   	}
		   	}

	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("got coonection in request");
		HttpSession session=request.getSession();
		System.out.print(request.getParameter("User"));
		   	if(request.getParameter("main").equalsIgnoreCase("main")){ 
		   			if(request.getParameterNames().hasMoreElements()== false)
		   				{ 
		   				response.sendRedirect("http://localhost:8080/advancd/homepage.jsp");
		   				}
	 	else if((request.getParameter("emailid")!= null)&&(request.getParameter("password")!= null)&&(request.getParameter("User")!= null)){
						Beans.CheckingBean cb =new Beans.CheckingBean();
request.setAttribute("xyz",cb);
Boolean b=cb.Check(con,request.getParameter("emailid"),request.getParameter("password"),request.getParameter("User"));
	if(b==true){
			if(request.getParameter("User").equalsIgnoreCase("Jobseeker")){	
				System.out.print(request.getParameter("User"));
				  session=request.getSession(true);
					 session.setAttribute("User",request.getParameter("User"));
				 session.setAttribute("emailid",request.getParameter("emailid"));
				session.setAttribute("login","login");

				response.sendRedirect("http://localhost:8080/advancd/jobseeker.jsp");
			}
	 if(request.getParameter("User").equalsIgnoreCase("Employeer")){ 
		 System.out.print(request.getParameter("User"));
		 session=request.getSession(true);
		 session.setAttribute("User",request.getParameter("User"));
		 session.setAttribute("emailid",request.getParameter("emailid"));
	 session.setAttribute("login","login");
	
	// RequestDispatcher view= request.getRequestDispatcher("http://localhost:8080/advancd/Employeer.jsp");
	// view.forward(request,response); 
	response.sendRedirect("http://localhost:8080/advancd/Employeer.jsp");
		 }
	
			}
	else if(b==false){
	response.sendRedirect("http://localhost:8080/advancd/homepage.jsp");
	 
}
			}
		   	}
	}   
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		try {
			ServletContext ctx=getServletContext();
			con=(Connection)(ctx.getAttribute("Connection"));
				System.out.println("got coonection");
		} catch (Exception e) {
			// TODO: handle exception
		}
	}   
}