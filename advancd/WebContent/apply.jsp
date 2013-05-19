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
<%!  Connection con;

 
ResultSet rs; Statement st;

%>
			<% try 
					{
				 
						con = (Connection)application.getAttribute("Connection");
				 System.out.print("connected");		
			    //   }catch (SQLException e) {
					//	    e.printStackTrace();
				   }catch (Exception e) {
					    e.printStackTrace();
					    }
				   System.out.println("got coonection in request");
					    try
					    { 


	   String str1 =(String) session.getAttribute("emailid");
	   int i=0;
	   String cemailid=(String) session.getAttribute("ce");
	   String cmpny=(String) session.getAttribute("c");
	   String dsg=(String) session.getAttribute("desg");
	   System.out.println(str1+cemailid+cmpny);
	   Statement st1=con.createStatement();
	   String	insstr = "INSERT INTO SONY.JOBSAPPLIED  VALUES ('"+cemailid+"','"+ cmpny+"','"+dsg+"','"+ str1+"')";
		i = st1.executeUpdate(insstr);
		System.out.println(insstr);
		//session.setAttribute("status","applied");
		//response.sendRedirect("http://localhost:8080/advancd/Searching.jsp");
		
	   
	}  catch (Exception e) {
			// TODO: handle exception
		} %>
		thanks for applying
</body>
</html>