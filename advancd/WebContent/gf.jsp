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
ResultSet rse;
RequestDispatcher rd;
%>
			<% try 
					{
						con = (Connection)application.getAttribute("Connection");
				 System.out.print("connected");		System.out.print("gf");
			    //   }catch (SQLException e) {
					//	    e.printStackTrace();
				   }catch (Exception e) {
					    e.printStackTrace();
					    }
				  
				   String str1 =(String) session.getAttribute("emailid");
				   String str =(String) session.getAttribute("User");
				   System.out.println(str1);
				 
				  // if(str1== null){str1 =(String) session.getAttribute("email");}
				  // System.out.println(str1);
				st=con.createStatement();
				   //if(str1== null){str1 =(String) session.getAttribute("ema");}
				   //System.out.println(str1);
				   String arr[]=new String[50]; ResultSet rse;
				   int y=0; String User=(String)session.getAttribute("User");
				  ResultSet rs=st.executeQuery("xquery for $y in db2-fn:xmlcolumn('SONY.REGISTRY.PROFILE')/User/"+User+" where $y/email='"+str1+"' return $y/*/text() ");
     while(rs.next()){
 	  
 		   	arr[y]=rs.getString(1);  System.out.println(arr[y]+y);System.out.println("r6");
 		   	y++;
 		   	}y=0;

				  
				   %>



		  <table width="475" align="left" frame="box" class="altrowstable" id="alternatecolor" >
		  <tr>
		  <th colspan="3"><h2 align="left" class="star" ><span><u>General Info</u></span></h2></th>
		
		  </tr>
			<TR>
			<TD width="137"><strong>First name:</strong></TD>
			<TD width="336" >  <%=arr[0] %></TD>
			
			
			</TR>
		  	<TR>
			<TD><strong>Last name:</strong></TD>
			<TD> <%=arr[1]%></TD>
			
		  	</TR>
		  <TR>
		  <TD><strong>Email Id:</strong></TD>
		  <TD> <%=arr[2]%></TD>
		 
		  </TR>
 
  </table>

</body>
</html>