

import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.*;

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

/**
 * Servlet implementation class for Servlet: edit
 *
 */
 public class edit extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   Connection con;Statement st;
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public edit() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try 
		{
						HttpSession session=request.getSession();
				   String str1 =(String) session.getAttribute("emailid");
			 int flag = 0;String	insstr2;int i;System.out.println("ed");
			 Statement st1=con.createStatement();
			 String str =(String) session.getAttribute("User");
			 System.out.println(str);
			 int y=0;
			if(request.getParameter("gf").equalsIgnoreCase("gf")){
			
				ResultSet rse=st1.executeQuery("SELECT *  FROM   SONY.REGISTRY where (EMAILID ='"+str1+"')AND (USERID = '"+str+"')" );
				rse.next();
				String 	insstr = "DELETE FROM   SONY.REGISTRY where (EMAILID ='"+str1+"')AND (USERID = '"+str+"') ";
					System.out.println(insstr);
				st1.executeUpdate(insstr);
				System.out.println("deleted");
			String email=request.getParameter("email");


			File f=new File(request.getParameter("fname")+".xml");

				FileOutputStream fos= new FileOutputStream(f);			
			String str2="<User>" +
			"<"+(String)session.getAttribute("User")+">"+
								   			"<fname>"+request.getParameter("fname")+"</fname>" +
								   			"<lname>"+request.getParameter("lname")+"</lname>" +
								   			"<email>"+str1+"</email>" + 			
								   				"<dob>" +
								   					"<date>"+request.getParameter("date")+"</date>" +
								   					"<month>"+request.getParameter("month")+"</month>"+
								   					"<year>"+request.getParameter("year")+"</year>" +
								   			"</dob>" +
								   			"<gender>"+request.getParameter("gender")+"</gender>" +
								   			"<address>"+request.getParameter("address")+"</address>" +
								   			"<city>"+request.getParameter("city")+"</city>" +
								   			"<state>"+request.getParameter("state")+"</state>" +
								   			"<country>"+request.getParameter("country")+"</country>" +
								   			"<pincode>"+request.getParameter("pincode")+"</pincode>" +
								   			"<mobile_no>"+request.getParameter("mobile_no")+"</mobile_no>" +
								   			"<countrycode>"+request.getParameter("phone_prefix")+"</countrycode>" +
								   			"<STDcode>"+request.getParameter("phone_areacode")+"</STDcode>" +
								   			"<fax>"+request.getParameter("fax")+"</fax>" +
								   			"<phonenum>"+request.getParameter("phone_number")+"</phonenum>"+
								   			"</"+(String)session.getAttribute("User")+">"+
								   			
								   			"</User>";
			System.out.println(str2);
			byte a[]=str2.getBytes();
			fos.write(a, 0,a.length);
			System.out.println("Successfully written to file.................");
			System.out.println(f.getAbsolutePath());
			fos.close();
			PreparedStatement ps= con.prepareStatement("insert into SONY.REGISTRY  values (?,?,?,?)");
			    ps.setString(1,str1);System.out.println(str1);
			    ps.setString(2,(String)session.getAttribute("password"));
			   
			    ps.setString(4, (String)session.getAttribute("User"));System.out.println((String)session.getAttribute("User"));
			    ps.setBinaryStream(3, new FileInputStream(f), (int)f.length());
			    if (ps.executeUpdate() != 1) {
			        System.out.println("No record inserted.");
			    }else
			    	System.out.println("row inserted"); f.delete();
			
			
			 System.out.println(str);
			 if(str.equalsIgnoreCase("employeer")){  
				 System.out.println("in redirect");
					   response.sendRedirect("http://localhost:8080/advancd/Employeer.jsp");
						
						  }
				   else if(str.equalsIgnoreCase("jobseeker")){	
					   System.out.println("in redirect");
					   response.sendRedirect("http://localhost:8080/advancd/jobseeker.jsp");
				   	}
				   }
					  
				   //session.setAttribute("email",str1);
			
				/*	if(request.getParameter("pf").equalsIgnoreCase("pf")){
						insstr2 ="UPDATE SONY.PERSONALINFO SET DOBDAY = '"+request.getParameter("dobday")+"',DOBMONTH = '"+request.getParameter("dobmonth")+"', DOBYEAR = '"+request.getParameter("dobyear")+"',GENDER ='"+request.getParameter("gender")+"', ADDRESS ='"+request.getParameter("address")+"',CITY='"+request.getParameter("loc")+"',STATE='"+request.getParameter("state")+"',COUNTRY='"+request.getParameter("country")+"',MOBILE='"+request.getParameter("mobileno")+"',PINCODE='"+request.getParameter("pincode")+"',TELEPHONE ='"+request.getParameter("phone_prefix")+"-"+request.getParameter("phone_areacode")+"-"+request.getParameter("phone_number")+"',FAX='"+request.getParameter("fax")+"' WHERE EMAILID = '"+str1+"'"  ;
					System.out.println(insstr2);
					 i=st1.executeUpdate(insstr2);
					System.out.println(insstr2);flag++;
					con.setAutoCommit(true); 
					if(str.equalsIgnoreCase("Employeer")){ 
					   
						response.sendRedirect("http://localhost:8080/advancd/Employeer.jsp");
						 }
					else if(str.equalsIgnoreCase("Jobseeker")){	
						response.sendRedirect("http://localhost:8080/advancd/jobseeker.jsp");
					}
					}*/
			
			

				if(request.getParameter("prf").equalsIgnoreCase("prf")){
					insstr2 ="UPDATE SONY.PROFESSIONALNFO SET COMPANY ='"+request.getParameter("company")+"',DESIGNATION ='"+request.getParameter("designation")+"',CMPNYEMAILID ='"+request.getParameter("c_emailid")+"'WHERE EMAILID = '"+str1+"'"  ;  
				System.out.println(insstr2);
				 i=st1.executeUpdate(insstr2);
				System.out.println(insstr2);flag++;
				con.setAutoCommit(true); 
				if(str.equalsIgnoreCase("Employeer")){ 
				   
				   response.sendRedirect("http://localhost:8080/advancd/Employeer.jsp");
				}
				}
				
				if(request.getParameter("prf").equalsIgnoreCase("jprf")){
					insstr2 ="UPDATE SONY.JFPROFESSIONALINFO SET LOCATION = '"+request.getParameter("loc")+"', DESIGNATION ='"+request.getParameter("designation")+"',TYPE1='"+request.getParameter("employmenttype1")+"',TYPE2='"+request.getParameter("employmenttype2")+"',TYPE3='"+request.getParameter("employmenttype3")+"', EXPYRS='"+request.getParameter("workexpyear")+"', EXPMNTH ='"+request.getParameter("workexpmonth")+"', SAL ='"+request.getParameter("salarytype")+"',CATEGORY='"+request.getParameter("jbc")+"' WHERE EMAILID = '"+str1+"'";
				System.out.println(insstr2);
				 i=st1.executeUpdate(insstr2);
				System.out.println(insstr2);
				con.setAutoCommit(true);
				if(str.equalsIgnoreCase("Jobseeker")){	
					response.sendRedirect("http://localhost:8080/advancd/jobseeker.jsp");
				}
				  }
				
				
				
				
			if(request.getParameter("ef").equalsIgnoreCase("ef")){
				
			insstr2 ="UPDATE SONY.EDUCATIONALINFO SET QUALIFICATION ='"+request.getParameter("qualification")+"', COURSENAME ='"+request.getParameter("course")+"', UNIVERSITY = '"+request.getParameter("university")+"',MARKS ='"+request.getParameter("educational_marks")+"', LANGUAGES ='"+request.getParameter("englisch")+"' WHERE EMAILID = '"+str1+"'"  ;  
			System.out.println(insstr2);
			 i=st1.executeUpdate(insstr2);
			System.out.println(insstr2);
			con.setAutoCommit(true);
			if(str.equalsIgnoreCase("Jobseeker")){	
				response.sendRedirect("http://localhost:8080/advancd/jobseeker.jsp");
			}//session.setAttribute("email",str1);
			}
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
					System.out.println("got conection in int");
			} catch (Exception e) {
				// TODO: handle exception
			}
		}   
	}