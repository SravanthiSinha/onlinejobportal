
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.*;

import javax.servlet.RequestDispatcher;

/**


 * Servlet implementation class for Servlet: RegistrationController
 *
 */
 public class RegistrationController extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   Connection con;

    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public RegistrationController() {
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
			 Statement st1= con.createStatement();
	 int i;
        Integer ival = (Integer)           
	      session.getAttribute ("sessiontest.counter");  
        
	      if (ival == null) ival = new Integer (1);         
	      else ival = new Integer (ival.intValue () + 1);           
	      session.setAttribute ("sessiontest.counter", ival);
	     
	String	insstr = "INSERT INTO SONY.USERS  VALUES ('"+ival+"','"+request.getParameter("email")+"','"+request.getParameter("pass_word")+"','"+ request.getParameter("USER")+"','"+ival+"')";
	i = st1.executeUpdate(insstr);
	
	ResultSet rse=st1.executeQuery("SELECT *  FROM   SONY.REGISTRY where (EMAILID ='"+request.getParameter("email")+"')AND (USERID = '"+request.getParameter("USER")+"')" );
	rse.next();
		insstr = "DELETE FROM   SONY.REGISTRY where (EMAILID ='"+request.getParameter("email")+"')AND (USERID = '"+request.getParameter("USER")+"') ";
		System.out.println(insstr);
	st1.executeUpdate(insstr);
	System.out.println("deleted");
String email=request.getParameter("email");
String user=request.getParameter("USER");

File f=new File(request.getParameter("fname")+".xml");

	FileOutputStream fos= new FileOutputStream(f);			
String str2="<User>" +"<"+request.getParameter("USER")+">"+
                               
					   			"<fname>"+request.getParameter("fname")+"</fname>" +
					   			"<lname>"+request.getParameter("lname")+"</lname>" +
					   			"<email>"+email+"</email>" + 			
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
					   			"</"+request.getParameter("USER")+">"+
					   			"</User>";
System.out.println(str2);
byte a[]=str2.getBytes();
fos.write(a, 0,a.length);
System.out.println("Successfully written to file.................");
System.out.println(f.getAbsolutePath());
fos.close();
PreparedStatement ps= con.prepareStatement("insert into SONY.REGISTRY  values (?,?,?,?)");
    ps.setString(1,request.getParameter("email"));System.out.println(request.getParameter("email"));
    ps.setString(2,request.getParameter("pass_word"));System.out.println(request.getParameter("pass_word"));
   
    ps.setString(4, request.getParameter("USER"));System.out.println(request.getParameter("USER"));
    ps.setBinaryStream(3, new FileInputStream(f), (int)f.length());
    if (ps.executeUpdate() != 1) {
        System.out.println("No record inserted.");
    }else
    	System.out.println("row inserted"); f.delete(); 	
    	     
  
   
	if(request.getParameter("USER").equalsIgnoreCase("employeer")){
	String cmail=request.getParameter("c_email");st1= con.createStatement();
	 String	insstr2 = "INSERT INTO SONY.PROFESSIONALNFO  VALUES ('"+request.getParameter("company")+"','"+cmail+"','"+request.getParameter("designation")+"','"+email+"')";
	 session.setAttribute("login","login");
		session.setAttribute("User",request.getParameter("User"));
		session.setAttribute("password",request.getParameter("password"));
		session.setAttribute("emailid",email);
	i = st1.executeUpdate(insstr2);
	System.out.println("query inserted in db"); 
	response.sendRedirect("http://localhost:8080/advancd/Employeer.jsp");

	}
	
	
	if(request.getParameter("USER").equalsIgnoreCase("jobseeker")){
		
		 String	insstr2 = "INSERT INTO SONY.EDUCATIONALINFO  VALUES ('"+request.getParameter("qualification")+"','"+request.getParameter("course")+"','"+request.getParameter("university")+"','"+request.getParameter("educational_marks")+"','"+request.getParameter("englisch")+"','"+email+"')";
		System.out.println(insstr2);
		i = st1.executeUpdate(insstr2);
		 String	insstr3 = "INSERT INTO SONY.JFPROFESSIONALINFO VALUES ('"+request.getParameter("loc")+"','"+request.getParameter("designation")+"','"+request.getParameter("employmenttype1")+"','"+request.getParameter("employmenttype2")+"','"+request.getParameter("employmenttype3")+"','"+request.getParameter("workexpyear")+"','"+request.getParameter("workexpmonth")+"','"+request.getParameter("salarytype")+"','"+email+"','"+request.getParameter("category")+"')";
		 System.out.println(insstr3);
			i = st1.executeUpdate(insstr3);
			session.setAttribute("login","login");
			session.setAttribute("User",request.getParameter("User"));
			session.setAttribute("password",request.getParameter("password"));
			session.setAttribute("emailid",email);
		
		System.out.println("query inserted in db"); 
			response.sendRedirect("http://localhost:8080/advancd/jobseeker.jsp");
		}
    System.out.println("query inserted in db");

	
				
	
	
	}catch (Exception e) {
	    e.printStackTrace();
	}
		

		}   	  	    
	
	  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	
			try 
			{
				HttpSession session=request.getSession();
				 Statement st1= con.createStatement();
		 int i;
	        Integer ival = (Integer)           
		      session.getAttribute ("sessiontest.counter");  
	        
		      if (ival == null) ival = new Integer (1);         
		      else ival = new Integer (ival.intValue () + 1);           
		      session.setAttribute ("sessiontest.counter", ival);
		     
		String	insstr = "INSERT INTO SONY.USERS  VALUES ('"+ival+"','"+request.getParameter("email")+"','"+request.getParameter("pass_word")+"','"+ request.getParameter("USER")+"','"+ival+"')";
		i = st1.executeUpdate(insstr);
		
		ResultSet rse=st1.executeQuery("SELECT *  FROM   SONY.REGISTRY where (EMAILID ='"+request.getParameter("email")+"')AND (USERID = '"+request.getParameter("USER")+"')" );
		rse.next();
			insstr = "DELETE FROM   SONY.REGISTRY where (EMAILID ='"+request.getParameter("email")+"')AND (USERID = '"+request.getParameter("USER")+"') ";
			System.out.println(insstr);
		st1.executeUpdate(insstr);
		System.out.println("deleted");
	String email=request.getParameter("email");
	String user=request.getParameter("USER");

	File f=new File(request.getParameter("fname")+".xml");

		FileOutputStream fos= new FileOutputStream(f);			
	String str2="<User>" +"<"+request.getParameter("USER")+">"+
	                               
						   			"<fname>"+request.getParameter("fname")+"</fname>" +
						   			"<lname>"+request.getParameter("lname")+"</lname>" +
						   			"<email>"+email+"</email>" + 			
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
						   			"</"+request.getParameter("USER")+">"+
						   			"</User>";
	System.out.println(str2);
	byte a[]=str2.getBytes();
	fos.write(a, 0,a.length);
	System.out.println("Successfully written to file.................");
	System.out.println(f.getAbsolutePath());
	fos.close();
	PreparedStatement ps= con.prepareStatement("insert into SONY.REGISTRY  values (?,?,?,?)");
	    ps.setString(1,request.getParameter("email"));System.out.println(request.getParameter("email"));
	    ps.setString(2,request.getParameter("pass_word"));System.out.println(request.getParameter("pass_word"));
	   
	    ps.setString(4, request.getParameter("USER"));System.out.println(request.getParameter("USER"));
	    ps.setBinaryStream(3, new FileInputStream(f), (int)f.length());
	    if (ps.executeUpdate() != 1) {
	        System.out.println("No record inserted.");
	    }else
	    	System.out.println("row inserted"); f.delete();
	    	
	    	    
	   
	    //ResultSet rs=st.executeQuery("xquery for $y in db2-fn:xmlcolumn('SONY.REGISTRY.PROFILE')/User where $y/email='"+request.getParameter("email")+"' return $y/*/text() ");
	   // while(rs.next()){
	   	//	arr[y]=rs.getString(1);  System.out.println(arr[y]);
	   	//	y++;
	   	//	} y=0;
	// rs=st.executeQuery("xquery for $y in db2-fn:xmlcolumn('SONY.REGISTRY.PROFILE')/User  where  $y/email'"+request.getParameter("email")+"' return $y/*/*/text()");
		//	 {
	//
	   	//	arr[y]=rs.getString(1);  System.out.println(arr[y]);
	   	//	y++;
	   	//	}
	   
	   
		if(request.getParameter("USER").equalsIgnoreCase("employeer")){
		String cmail=request.getParameter("c_email");st1= con.createStatement();
		 String	insstr2 = "INSERT INTO SONY.PROFESSIONALNFO  VALUES ('"+request.getParameter("company")+"','"+cmail+"','"+request.getParameter("designation")+"','"+email+"')";
		 session.setAttribute("login","login");
			session.setAttribute("User",user);
			session.setAttribute("password",request.getParameter("password"));
			session.setAttribute("emailid",email);
			
		i = st1.executeUpdate(insstr2);
		System.out.println("query inserted in db"); 
		response.sendRedirect("http://localhost:8080/advancd/Employeer.jsp");

		}
		
		
		if(request.getParameter("USER").equalsIgnoreCase("jobseeker")){
			
			 String	insstr2 = "INSERT INTO SONY.EDUCATIONALINFO  VALUES ('"+request.getParameter("qualification")+"','"+request.getParameter("course")+"','"+request.getParameter("university")+"','"+request.getParameter("educational_marks")+"','"+request.getParameter("englisch")+"','"+email+"')";
			System.out.println(insstr2);
			i = st1.executeUpdate(insstr2);
			 String	insstr3 = "INSERT INTO SONY.JFPROFESSIONALINFO VALUES ('"+request.getParameter("loc")+"','"+request.getParameter("designation")+"','"+request.getParameter("employmenttype1")+"','"+request.getParameter("employmenttype2")+"','"+request.getParameter("employmenttype3")+"','"+request.getParameter("workexpyear")+"','"+request.getParameter("workexpmonth")+"','"+request.getParameter("salarytype")+"','"+email+"','"+request.getParameter("category")+"')";
			 System.out.println(insstr3);
				i = st1.executeUpdate(insstr3);
				session.setAttribute("login","login");
				session.setAttribute("User",user);
				session.setAttribute("password",request.getParameter("password"));
				session.setAttribute("emailid",email);
			
			System.out.println("query inserted in db"); 
				response.sendRedirect("http://localhost:8080/advancd/jobseeker.jsp");
			}
	    System.out.println("query inserted in db");

		
					
		
		
		}catch (Exception e) {
		    e.printStackTrace();
		}    
	
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
	}   
}