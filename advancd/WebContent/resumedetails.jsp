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
				 System.out.print("connected");		
			    //   }catch (SQLException e) {
					//	    e.printStackTrace();
				   }catch (Exception e) {
					    e.printStackTrace();
					    }
				   String str1 =(String) session.getAttribute("emailid");
				   System.out.println(str1);
				   Statement st1=con.createStatement();
				   String	insstr ="SELECT *  FROM SONY.RESUMEINFO  WHERE EMAILID = '"+str1+"'";
				   System.out.println(insstr);
				   rse=st1.executeQuery(insstr);
				   if(rse.next()== false){ %>
					  <jsp:forward page="Resumedetails.html"/>
					   <%
				   };
				   System.out.println(rse.getString(1));
				   %>
<link href="css/hint.css" type="text/css" /> <script src="js/hint.js" type="text/javascript"> </script>
<form method="post" >
		  <table align="left" frame="box" bordercolordark="#6633FF" >
		    <!--DWLayoutTable-->
		  <TR><TD colspan="2" > <h2 ><u>Resume Details </u> </h2></TD>
		    <td width="31">&nbsp;</td>
		  </TR>	
		 
	    

	
		<tr> 
			<td valign="top"><p><strong>Copy &amp; paste Resume</strong></p>
			  <p><strong> or</strong></p>
			  <p><strong> Attach Resume here:</strong> </p></td>

			<td colspan="2"  valign="top"> 
			  <p><span class="hintanchor" onClick="showhint('     A detailed Resume that effectively profiles your key professional strengths and academic credentials should be copy-pasted orattach Resume here', this, event, '200px')">
			    <textarea name="tunnel_candidate_bio_data" class="txtfield" rows="5" cols="40" ></textarea></span>
		    or <span class="hintanchor" onMouseOver="showhint(' the file must be __ KB', this, event, '200px')"><input type="file" name="tunnel_candidate_bio_data" /></span></p>		</td>
		</tr><tr> 
			<td colspan="2"  style="border-top: 0px none;" valign="top">&nbsp;</td>
		    <td>&nbsp;</td>
	     </tr>
	<tr>
			<td style="padding-top: 4px;" valign="top"><strong>Please attach your recent photograph to be displayed along with the Resume (optional):</strong></td>
			<td colspan="2">
			<div id="old_image">
				
			<img src="images/sillhouse_detailview.jpg" id="image_upload_old"><div style="margin-top: 6px;" id="div_check_reset_image"><a name="tunnel_reset_image" ihref="">Delete the above image.</a></div>
			  </div>
			<table border="0" cellpadding="0" cellspacing="0">

                         <tbody>
                     </tbody></table>			</td>
		</tr>
		<tr >
	<td valign="top">&nbsp;</td>

			<td colspan="2" class="formline-right" style="padding-top: 0px;"><span class="hintanchor" onMouseOver="showhint(' the file must be __ KB', this, event, '200px')"><input name="tunnel_reset_image" id="tunnel_reset_image1" value="Upload" type="file" /></span>
			  <div style="display: none; font-size: 12px;" id="remove_text_check"><a >Delete and select again</a></div>    </td> 
		</tr>
<tr> 
			<td class="formline" valign="top"><strong>Additional Information:</strong></td>
			<td colspan="2" class="formline-right" valign="top"> 
			  <p>
			  <span class="hintanchor" onClick="showhint(' If there is any additional information that may be relevant to your search, please elaborate here.', this, event, '200px')">
			    <input type="text" size="32" name="Aditional info" maxlength="64" readonly="readonly"  value="<%= rse.getString(1)%>" /></span>		      </p>	  </td>
		</tr>
	
						

	  <td>&nbsp;</td>
	  <td>&nbsp;</td>
	</table>
</form>


</body>
</html>
