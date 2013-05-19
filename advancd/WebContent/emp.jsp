<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@page import="java.io.PrintWriter"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Untitled Document</title>

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
					    {  PrintWriter out2=response.getWriter();
					    	st= con.createStatement();
					    	String str=null;
					    	str="SELECT USERS.EMAILID, USERS.USERID FROM SONY.USERS AS USERS WHERE USERS.USERID = 'employeer'  ";
					    	System.out.println(str);				    		
							rs= st.executeQuery(str);	Integer i=0;%>
							
	<%while(rs.next()){%>
	<div class="article" ><form action="http://localhost:8080/advancd/delete" method="get"><table width="600" align="left" bordercolordark="#6633FF" frame="box" class="altrowstable" id="alternatecolor" ><!--DWLayoutTable-->
	<tbody>	
	<tr>
	<td  valign="top" class="headline-tunnel-colors formline1" style="border-top: 0px none;"><strong>s.no</strong></td><td>emailid</td>
	</tr>		    		
		<tr><td><% i++;out2.print(i); %></td>
		<td><%=rs.getString(1)%></td><%session.setAttribute("use",rs.getString(1)); session.setAttribute("type",rs.getString(2)); %>
			</tr>
			
			<tr><td  align="center">	 <input type="hidden" id="use" value="+<%=rs.getString(1)%>+"/><input type="hidden" id="type" value="+<%=rs.getString(2)%>+"/>
			
		              				</td></tr><tr><td><div id="myDiv"></div></td></tr>
				</tbody></table><script type="text/javascript">
function open_win()
{
window.open("http://localhost:8080/advancd/delete.jsp","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400");
}
</script><a href="javascript: void(0)" 
   onclick="window.open('http://localhost:8080/advancd/delete.jsp', 
  'windowname1', 
  'width=400, height=200'); 
   return false;" ><input name="delete" value="delete" type="button"  /></a></div><%} %>
				 <% }catch(Exception E){E.printStackTrace();}  %>  
</body>
</html>
