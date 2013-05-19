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
				   String	insstr ="SELECT * FROM SONY.EDUCATIONALINFO WHERE EMAILID = '"+str1+"'";
				   System.out.println(insstr);
				   rse=st1.executeQuery(insstr);
				   rse.next();
				   System.out.println(rse.getString(1));
				   %>
				 <form action="http://localhost:8080/onlinejobportal/edit.jsp">
<input type="hidden" name="prf" value="">

<input type="hidden" name="gf" value="">

<input type="hidden" name="pf" value="">
<input type="hidden" name="ef" value="ef">
<input type="hidden" name="rf" value="">
		  <table align="left" frame="box" bordercolordark="#6633FF" width="475" class="altrowstable" id="alternatecolor" >
<tr>
			<td colspan="3"  style="border-top: 0px none;" valign="top"><h2><u>Educational info</u></h2></td>
		</tr>
								
		
		<tr> 
			<td   valign="top"><strong>Highest Educational qualification:</strong></td>
			<td  colspan="2" valign="top" class="formline-right"> 
				<table ="0" cellpadding="2" cellspacing="0" width="385"><!--DWLayoutTable-->
									<tbody><tr> 
						<td width="150"> 
						  <%= rse.getString(1)%>						</td>
						
					</tr>
				</tbody></table>
						<br>
			Some details of the specified Qualification 
			<table style="margin-top: 5px;" border="0" cellpadding="0" cellspacing="0" width="100%">

				<tbody><tr> 
					<td id="qualification_detail_td"><p>Course name
					    <%= rse.getString(2)%>
					  <br>
					</p>
					  
				  <div ></div>					</td>
				</tr>
				<tr> 
					<td style="padding-top: 5px;" valign="top">University &nbsp;
					 <%= rse.getString(3)%></td></tr>
					 <tr>

					<td style="padding-top: 5px;" valign="top">
					Marks / Grade / Class<br>
					<%= rse.getString(4)%>				  </td>
				</tr> 
                       
		  </tbody></table>		</td>
		</tr>
		<tr> 
			<td colspan="3" class="formline1 headline-tunnel-colors" style="border-top: 0px none;" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
		</tr>
		
				<tr class="r19"> 
			<td  valign="top"><strong>Language Skills:</strong></td>
			<td colspan="2" class="formline-right" valign="top"> 
			<table class="adpostsubtable" id="more_langs0" border="0" cellpadding="0" cellspacing="0">
					<tbody><tr>

						<td colspan="2">
						<%= rse.getString(5)%>
							</td>
											</tr>
				</tbody></table>
			  				<!--<table class="adpostsubtable" border="0" cellpadding="0" cellspacing="0">
					<tbody><tr> 
						<td width="110">Hindi:</td>

						<td> 
						<select name="tunnel_sprachkenntnisse_andere1" onkeypress="return handleEnter(this, event)">
						<option value="VOID">Select</option>
						<option value="Keine">No Knowledge</option>
						<option value="Grundkenntnisse">Beginner</option>
						<option value="Verhandlungssicher">Intermediate</option>
						<option value="Fliessend/Verhandlungssicher">Expert</option>
						</select>						</td>
					</tr>
				</tbody></table>
							<table class="adpostsubtable" id="more_langs1" style="display: none;" border="0" cellpadding="0" cellspacing="0">
					<tbody><tr> 
						<td valign="top" width="110"> 
						<input name="tunnel_sprache_andere2" style="width: 100px; margin-right: 2px;" class="txtfield" value="" type="text">:</td>
						<td valign="top">
						<select id="tunnel_sprachkenntnisse_andere21" name="tunnel_sprachkenntnisse_andere2">

						<option value="VOID">Select</option>
						<option value="Keine">No Knowledge</option>
						<option value="Grundkenntnisse">Beginner</option>
						<option value="Verhandlungssicher">Intermediate</option>
						<option value="Fliessend/Verhandlungssicher">Expert</option>
						</select><span class="hint" style="margin-left: 90px;">Select the Proficiency Level in this Language.<span class="hint-pointer">&nbsp;</span><span class="prop"></span></span>						</td>

						<td valign="top">&nbsp;<span  style="color: rgb(40, 82, 146); cursor: pointer;">« Remove this option.</span></td>
					</tr>
				</tbody></table>
				<table class="adpostsubtable" id="more_langs2" style="display: none;" border="0" cellpadding="0" cellspacing="0">
					<tbody><tr> 
						<td valign="top" width="110"> 
						<input name="tunnel_sprache_andere3" style="width: 100px; margin-right: 2px;" class="txtfield" value="" type="text">:</td>
						<td valign="top"> 
						<select id="tunnel_sprachkenntnisse_andere31" name="tunnel_sprachkenntnisse_andere3" >

						<option value="VOID">Select</option>
						<option value="Keine">No Knowledge</option>
						<option value="Grundkenntnisse">Beginner</option>
						<option value="Verhandlungssicher">Intermediate</option>
						<option value="Fliessend/Verhandlungssicher">Expert</option>
						</select><span class="hint" style="margin-left: 90px;">Select the Proficiency Level in this Language.<span class="hint-pointer">&nbsp;</span><span class="prop"></span></span>						</td>

						<td valign="top">&nbsp;<span onclick="hide_language_option('tunnel_sprache_andere3', 'tunnel_sprachkenntnisse_andere3', 'more_langs2')" style="color: rgb(40, 82, 146); cursor: pointer;">« Remove this option.</span></td>
					</tr>
				</tbody></table>
				<table class="adpostsubtable" id="more_langs3" style="display: none;" border="0" cellpadding="0" cellspacing="0">
					<tbody><tr> 
						<td valign="top" width="110"> 
						<input name="tunnel_sprache_andere4" style="width: 100px; margin-right: 2px;" class="txtfield" value="" type="text">:</td>
						<td valign="top"> 
						<select id="tunnel_sprachkenntnisse_andere41" name="tunnel_sprachkenntnisse_andere4" onchange='hide_error_change("tunnel_sprachkenntnisse_andere4", "tunnel_sprachkenntnisse_andere41")'>

						<option value="VOID">Select</option>
						<option value="Keine">No Knowledge</option>
						<option value="Grundkenntnisse">Beginner</option>
						<option value="Verhandlungssicher">Intermediate</option>
						<option value="Fliessend/Verhandlungssicher">Expert</option>
						</select><span class="hint" style="margin-left: 90px;">Select the Proficiency Level in this Language.<span class="hint-pointer">&nbsp;</span><span class="prop"></span></span>						</td>

						<td valign="top">&nbsp;<span onclick="hide_language_option('tunnel_sprache_andere4', 'tunnel_sprachkenntnisse_andere4', 'more_langs3')" style="color: rgb(40, 82, 146); cursor: pointer;">« Remove this option.</span></td>
					</tr>
				</tbody></table>
                                <input id="language_check" value="Ja" type="hidden">
			<script type="text/javascript">
			isIndiaSelected('IN');
									</script>
			<span onclick="showmore_langs()" style="color: rgb(40, 82, 146); cursor: pointer;" id="more_langs">More languages »</span></td>-->
		</tr>
</table></form>



</body>
</html>
