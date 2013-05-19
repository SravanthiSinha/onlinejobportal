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
				 System.out.print("connected");	 System.out.print("pf");		
			   
				   }catch (Exception e) {
					    e.printStackTrace();
					    }
				  
				   String str1 =(String) session.getAttribute("emailid");
				   System.out.println(str1);
				 
				 
				st=con.createStatement();
				   
				   String arr[]=new String[50]; ResultSet rse;
				   int y=0; String User=(String)session.getAttribute("User");
				   ResultSet rs=st.executeQuery("xquery for $y in db2-fn:xmlcolumn('SONY.REGISTRY.PROFILE')/User/"+User+" where $y/email='"+str1+"' return $y/*/text() ");
				     while(rs.next()){
				 	  
				 		   	arr[y]=rs.getString(1);  System.out.println(arr[y]+y);System.out.println("r6");
				 		   	y++;
				 		   	}
				 		    rs=st.executeQuery("xquery for $y in db2-fn:xmlcolumn('SONY.REGISTRY.PROFILE')/User/"+User+" where $y/email='"+str1+"' return $y/*/*/text() ");
				 		     while(rs.next()){
				 		 	  
				 		 		   	arr[y]=rs.getString(1);  System.out.println(arr[y]+y);System.out.println("r6");
				 		 		   	y++;
				 		 		   	}y=0;%>
				   <form >
		  <table width="475" height="274" align="left" bordercolor="#6633FF" frame="box"  class="altrowstable" id="alternatecolor" >
		
          <TR><TD colspan="2"> <h2><u>Personal Info</u></h2></TD>
          
          </TR>
          <TR><TD width="152"><strong>Date of Birth:</strong></TD>
							
						
						
						<td   valign="top" class="formline-right">
						<%=arr[14]+"-"+arr[15]+"-"+arr[16]%>
		    </td>
		  <tr> 
			<td  valign="top"><strong>Gender:</strong></td>

			<td class="formline-right" valign="top"> 
			<%= arr[3]%>
			
		</tr>
            
		  <TR><TD><strong>Address:</strong></TD><TD width="321">  <%= arr[4]%></TD>
		   
		  </TR>
		  <TR><TD><strong>City:</strong></TD>
		  <TD>
		 <%= arr[5]%>
            </TD>
			
		  </TR>
		  <TR><TD><strong>State:</strong></TD><TD> <%= arr[6]%></TD>
		  
		  </TR>
		  <TR><TD><strong>	Country</strong></TD><TD><%= arr[7]%></TD>
		  
		  </TR>
		  <TR><TD><strong>PinCode:</strong></TD><TD><%= arr[8]%></TD>
		   
		  </TR>
		  <TR><TD><strong>Mobile:</strong></TD><TD> <%= arr[9]%></TD>
		  
		  </TR>
		 <tr>
			<td  ><strong>Telephone Number :</strong></td>
			<td><%= arr[10]+"-"+arr[11]+"-"+arr[12]%>
		  </TD>
		  
		  </TR>
		  <TR><TD><strong>Fax:</strong></TD><TD> <%=arr[13]%></TD>
		    
		  </TR>
		  
		  
		  			<tr> </table></form>
</body>
</html>
