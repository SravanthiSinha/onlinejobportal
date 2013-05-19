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
					{ System.out.println("empf");
						con = (Connection)application.getAttribute("Connection");
				 System.out.print("connected");		
			    //   }catch (SQLException e) {
					//	    e.printStackTrace();
				   }catch (Exception e) {
					    e.printStackTrace();
					    }
				   String str1 =(String) session.getAttribute("emailid");
				   System.out.println(str1);
				   if(str1==null){str1 =(String) session.getAttribute("ema");}
				   System.out.println(str1);
				   if(str1==null){str1 =(String) session.getAttribute("email");}
				   System.out.println(str1);
				   Statement st1=con.createStatement();
				   String	insstr ="SELECT *  FROM SONY.PROFESSIONALNFO  WHERE EMAILID = '"+str1+"'";
				   System.out.println(insstr);
				   rse=st1.executeQuery(insstr);
				   rse.next();
				   System.out.println(rse.getString(1));
				   %>
<form method="post" action=""><table width="475"  class="altrowstable" id="alternatecolor">
<TR><TD colspan="3" > <h2 ><u>Professional info</u></h2></TD></TR>
		 <TR>
		 <TD width="134" id="mySelect"><strong>Company:</strong></TD>
		 <TD width="339"> <%= rse.getString(1)%></TD>
		 </TR>
		  <TR>
		  <TD id="mySelect"><strong>Designation:</strong></TD>
		  <TD>  <%= rse.getString(2)%></TD>
		  </TR>        
		  <TR>
		  <TD id="mySelect"><strong>Company Email Id:</strong></TD>
		  <TD><%= rse.getString(3)%></TD>
		  </TR> 
		     <%--  <TR>
		<TD colspan="2"><center> <input type="submit" value="Edit"/></center></TD>
		<td>&nbsp;</td>
		</TR> --%>
		  </table></form>


</body>
</html>
