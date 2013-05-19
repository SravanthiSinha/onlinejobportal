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
					    try
					    { 
						   String str1 =(String) session.getAttribute("use");
						   String str2 =(String) session.getAttribute("title");
						   int i=0; 
						   Statement st1=con.createStatement();
						   String	insstr = "UPDATE SONY.VACANCIES VACANCIES SET STATUS ='"+"approved"+"' WHERE VACANCIES.JOB_TITLE = '"+str2+"' AND VACANCIES.EMAILID = '"+str1+"'";
						   System.out.println(insstr);
						   i = st1.executeUpdate(insstr);
							System.out.println(insstr);
						}  catch (Exception e) {
							// TODO: handle exception
						} %>
						the vacancy has been approved.
				
</body>
</html>