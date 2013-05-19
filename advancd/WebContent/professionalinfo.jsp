<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.util.*,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.*,java.io.IOException.*,javax.servlet.ServletException,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Onlinejobportal</title>
<style type="text/css">
<!--
.style1 {font-size: 24px}
-->
</style>
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
				 System.out.print("connected");		
			    //   }catch (SQLException e) {
					//	    e.printStackTrace();
				   }catch (Exception e) {
					    e.printStackTrace();
					    }
				   String str1 =(String) session.getAttribute("emailid");
				   System.out.println(str1);
				   Statement st1=con.createStatement();
				   String	insstr ="SELECT *  FROM SONY.JFPROFESSIONALINFO  WHERE EMAILID = '"+str1+"'";
				   System.out.println(insstr);
				   rse=st1.executeQuery(insstr);
				   rse.next();
				   System.out.println(rse.getString(1));
				   %>
 
<form method="post" >
		  <table width="475" height="186" align="left" bordercolordark="#6633FF" frame="box"  class="altrowstable" id="alternatecolor">
		<tr>
		<td colspan="2" > <h2><u> Professional info </u> </h2></td>
		
		</tr>	
		<tr> 
		<td  style="border-top: 0px none;" valign="top"><strong>Resume Details:</strong></td>
		<td width="220">&nbsp;</td>
		</tr>
		<tr> 
		<td   style="border-top: 0px none;" valign="top">&nbsp;</td>
		<td>&nbsp;</td>
		</tr>
		<tr class="r2"> 
		<td  valign="top" ><strong>Job Designation:&nbsp;</strong> </td>		
		<td    valign="top"><%= rse.getString(2)%> </td>
	 </tr>
		<tr class="r4"> 
		<td  style="padding-right: 0px;" valign="top"><strong>Preferred Job Location:</strong></td>
		<td   valign="top"  ><%= rse.getString(1)%>  </td>
		</tr>
		<tr>
  		<td  valign="top" width="253"><strong>Category:&nbsp;</strong> </td>		
		<td     valign="top"> <%= rse.getString(10)%></td>
		</tr>
		
		<tr>
		<td  valign="top"><strong>Relevant Professional Experience that matches the desired job:</strong></td>
		<td   valign="top">
			<table border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
					<td colspan="4"></td>
					</tr>
					<tr>
					<td><%= rse.getString(5)%>&nbsp; Yearse &nbsp;&nbsp;&nbsp;</td>
					<td><%= rse.getString(6)%>Months</td>
					</tr>
				</tbody>
			</table>		</td>
		</tr>
		<tr>
		<td  valign="top"><strong>Type of Salary expected:</strong></td>
		<td valign="top"> <%=rse.getString(8)%></td>
		</tr>
</table>
</form>


</body>
</html>
