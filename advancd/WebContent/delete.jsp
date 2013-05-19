<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ page import="java.sql.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
					    try{
					    String str1 =(String) session.getAttribute("use");
						   String str2 =(String) session.getAttribute("type");
						// String str1 = request.getParameter("use");
						 //  String str2 =request.getParameter("type");
						   int i=0; Statement st1=con.createStatement();
						   String	insstr = "DELETE FROM SONY.USERS USERS WHERE USERS.EMAILID = '"+str1+"' AND USERS.USERID = '"+str2+"'";
						   i = st1.executeUpdate(insstr);
							System.out.println(insstr);
							
							
					 	}  catch (Exception e) {
						// TODO: handle exceptio
							// TODO: handle exception
						} %>
						entry has been deleted
</body>
</html>