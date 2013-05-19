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

Statement st; 


%>
			<% try 
					{
				//Class.forName("COM.ibm.db2.jdbc.app.DB2Driver");
				//Class.forName("com.ibm.db2.jcc.DB2Driver");
				//String url = "jdbc:db2://localhost:50000/ROSE";
				//String userid = "parvathi";
				//String password = "k";
				 con = (Connection)application.getAttribute("Connection");
				 System.out.print("connected");		
			    //   }catch (SQLException e) {
					//	    e.printStackTrace();
				   }catch (Exception e) {
					    e.printStackTrace();
					    }
				 if(request.getParameter("search").equalsIgnoreCase("search")){
		 %>
		 
	<jsp:forward page="Search.jsp"/>
	<% }	
		 else if(request.getParameter("register").equalsIgnoreCase("register")){
		 %>
		 
	<jsp:forward page="Registration.jsp"/>
	<% }	
		
		  else if(request.getParameter("searchindustry").equalsIgnoreCase("searchindustry")){
		 %>
		 
	<jsp:forward page="Searchbyindustry.jsp"/>
	<% }
		  else if(request.getParameter("searchcategory").equalsIgnoreCase("searchcategory")){
				 %>
				 
			<jsp:forward page="SearchbyCategory.jsp"/>
			<% }	
		  else if(request.getParameter("searchcompany").equalsIgnoreCase("searchcompany")){
				 %>
				 
			<jsp:forward page="Searchbycompany.jsp"/>
			<% }
		  else if(request.getParameter("searchlocation").equalsIgnoreCase("searchlocation")){
				 %>
				 
			<jsp:forward page="Searchbylocation.jsp"/>
			<% }
		 %>

</body>
</html>