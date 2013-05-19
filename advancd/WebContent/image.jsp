<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@page import="java.io.OutputStream"%><%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<%!Connection con; 
Statement st; %>

<title>Onlinejobportal</title>
</head>
<body>
<%try 
{
	 
	con = (Connection)application.getAttribute("Connection");
System.out.print("connected");		
//   }catch (SQLException e) {
//	    e.printStackTrace();
}catch (Exception e) {
    e.printStackTrace();
    }
System.out.println("got coonection in request");


//  String strSQL = "SELECT ContentType, ImageBinary " 
 //   + "FROM Images " 
  //  + "WHERE (ImageID=" + request.getParameter("imageid") + ")"; 
 // Statement stmt = con.createStatement(); 
  //ResultSet rs = st.executeQuery(strSQL);
 
  try{
	   
  ResultSet rs=st.executeQuery("select IMAGE From SONY.IMAGES where EMAILID='sravani.sinha@gmail.com' "); 
 
  while(rs.next()){
//response.setHeader("expires", "0");


	  OutputStream os=response.getOutputStream();
	  
	  os.write(rs.getBytes("IMAGE")); 
	  os.flush();
	  }
	  }catch(Exception e){}
	
 
  
%> 
</body>
</html>