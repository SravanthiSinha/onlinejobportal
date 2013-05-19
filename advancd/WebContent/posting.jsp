<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.util.*,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.*,java.io.IOException.*,javax.servlet.ServletException,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Onlinejobportal</title>
</head>
<body>
<%! 
Connection con;


%> 
			<% try 
					{
				//Class.forName("com.ibm.db2.jcc.DB2Driver");
				//String url = "jdbc:db2://localhost:50000/ROSE";
			//	String userid = "parvathi";
				//String password = "k";
				 //con = DriverManager.getConnection(url, userid, password); 
				
				
							 
				con = (Connection)application.getAttribute("Connection");
				System.out.print("connected");	
				 Statement st1=con.createStatement();
				 String str1 =(String) session.getAttribute("emailid");
				 	
				 String		insstr = "INSERT INTO SONY.VACANCIES  VALUES ('"+request.getParameter("designation")+"','"+request.getParameter("description")+"','"+request.getParameter("loc")+"','"+request.getParameter("tunnel_employment_type[]")+"','"+request.getParameter("salary_type")+"','"+request.getParameter("qualification")+"','"+request.getParameter("workexpyr")+"','"+request.getParameter("workexpmnth")+"','"+request.getParameter("info")+"','"+str1+"','"+"not approved"+"','"+request.getParameter("ind")+"','"+request.getParameter("jbc")+"')";
				 
				 System.out.println(insstr); 
				  int i = st1.executeUpdate(insstr);
				 System.out.println("query inserted in db"); %>
				 <jsp:forward page="Employeer.jsp"/>
				<% 
				}catch (Exception e) {
				    e.printStackTrace();
				}   	  	    
				
				
				%>
				

</body>
</html>