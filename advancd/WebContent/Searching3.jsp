<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.util.*,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.*,java.io.IOException.*,javax.servlet.ServletException,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Onlinejobportal</title>
<script type="text/javascript">
function loadXMLDoc()
{
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("myDiv2").innerHTML=xmlhttp.responseText;
    }
  }

//xmlhttp.open("GET","Searching.jsp?searchfrm="+document.getElementsByName("searchfrm").value+"&loc="+document.getElementsByName("loc").value+"&fts="+document.getElementsByName("fts").value,true);

//xmlhttp.open("GET","http://localhost:8080/advancd/Apply?ce="+rs.getString(15)+"&c="+rs.getString(14)+"&desg="+rs.getString(1),true);
xmlhttp.open("GET","apply.jsp?ce="+document.getElementById("ce").value+"&c="+document.getElementById("c").value+"&desg="+document.getElementById("desg").value,true);
xmlhttp.send();
}
</script>
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
					    	st= con.createStatement();
					    String str=null;
					    String User =(String)session.getAttribute("User"); 
						   String emailid=(String)  session.getAttribute("emailid");
						   System.out.println(emailid);
					    System.out.println(request.getParameter("searchfrm")+request.getParameter("loc")+request.getParameter("fts"));
					  
					    if(request.getParameter("searchfrm").equalsIgnoreCase("sl")){
						//	str= "SELECT *  FROM SONY.VACANCIES WHERE JOB_LOCATION = '"+request.getParameter("loc")+"'";
						str= "SELECT VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID  FROM SONY.VACANCIES AS VACANCIES, SONY.PROFESSIONALNFO AS PROFESSIONALNFO  WHERE VACANCIES.EMAILID = PROFESSIONALNFO.EMAILID AND VACANCIES. JOB_LOCATION = '"+request.getParameter("loc")+"'GROUP BY VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID" ;
							System.out.println(str);				    		
							rs= st.executeQuery(str);				    		
	while(rs.next()){%>
				<div class="article">
						 <form action="http://localhost:8080/advancd/Searchbylocation.jsp">					      
					<table width="600" align="left" bordercolordark="#6633FF" frame="box" ><!--DWLayoutTable-->
	<tbody>
	<tr>
	<td colspan="3" class="formline1 headline-tunnel-colors" style="border-top: 0px none;" valign="top">Job Details:</td>
	</tr>
		<tr class="r2"> 
		<td  valign="top"  width="300"><strong>Job Designation:&nbsp;</strong> </td>
		<td  colspan="2"  valign="top"><p><input  type="text" name="desg" id="desg" readonly="readonly" value="<%=rs.getString(1)%>"/></p></td>
		</tr>
		<tr class="h2"><td class="formline" valign="top"> <strong>Job Description:<strong></td>		
		<td colspan="2"class="formline-right" valign="top"><p><input  type="text" value="<%=rs.getString(2)%>"/></p></td>
		</tr>
		<tr>		
		  <td width="26%"><strong>Category:</strong></td>
		<td colspan="2" > <input  type="text" value="<%=rs.getString(13)%>"/></td>
		</tr>
		<tr>
		<td width="26%"><strong>Industry:</strong></td>
 		<td colspan="2" ><input  type="text" value="<%=rs.getString(12)%>"/></td>
		</tr>
		<tr class="h3"> 
		<td class="formline" style="padding-right: 0px;" valign="top">Job Location:</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(3)%>"/></td>
		</tr>
  		<tr class="r7"> 
		<td valign="top"><strong>Employment Type:</strong></td>
		<td colspan="2" valign="top" height="53"><input  type="text" value="<%=rs.getString(4)%>"/>	</td>
		</tr>
		<tr>
		<td  valign="top"><strong>Relevant Professional Experience that matches the desired job:</strong></td>
		<td  colspan="2"  valign="top"><input name="text2"  size="10"type="text" value="<%=rs.getString(7)%>"/>
		  Years   &nbsp;
		    <input name="text" size="10" type="text" value="<%=rs.getString(8)%>"/>		  
		  Months						</td>
		</tr> 
		<tr>
		<td  valign="top"><strong>Type of Salary expected:</strong></td>
		<td colspan="2"  valign="top"><p><input  type="text" value="<%=rs.getString(5)%>"/></p></td>
		</tr>
		<tr> 
		<td colspan="3" class="formline1 headline-tunnel-colors" valign="top">Job Requirements:</td>
		</tr>
		<tr> 
		<td class="formline" valign="top">Minimum Educational Qualifications required:</td>
		<td colspan="2"><input  type="text" value="<%=rs.getString(6)%>"/></td>
		</tr>	
		<tr> 
		<td class="formline" valign="top">Additional Information:</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(9)%>"/></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company</td>
		<td colspan="2" class="formline-right" valign="top"><input name="c" id="c" type="text" value="<%=rs.getString(14)%>"/></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company emailid</td>
		<td colspan="2" class="formline-right" valign="top"><input name="ce" id="ce" type="text" value="<%=rs.getString(15)%>"/></td>
		</tr>
</tbody></table>

						  <div align="right"><% if(emailid==null){%>
						    <p><input type="button" name="apply" value="apply" onClick="alert('please Login')"/>
						    <% }else {%><p><input type="button" name="apply" value="apply" /><%} %>
						    <input type="submit"  name="back" value="back"/></p>
						   </div>						
						</form>
			</div>				
									
				 <%}//whiesl
  				}//ifsl					
										
  				 if(request.getParameter("searchfrm").equalsIgnoreCase("scr")){
			    	// str= "SELECT *  FROM SONY.VACANCIES WHERE CATEGORY = '"+request.getParameter("jbc")+"'";					     
			    	 str= "SELECT VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID  FROM SONY.VACANCIES AS VACANCIES, SONY.PROFESSIONALNFO AS PROFESSIONALNFO  WHERE VACANCIES.EMAILID = PROFESSIONALNFO.EMAILID AND VACANCIES.CATEGORY = '"+request.getParameter("jbc")+"' GROUP BY VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID";
			    		System.out.println(str);
			    		rs= st.executeQuery(str);

	while(rs.next()){%>
		<div class="article">	
			   <form action="http://localhost:8080/advancd/SearchbyCategory.jsp">
						 <table width="600" align="left" bordercolordark="#6633FF" frame="box" ><!--DWLayoutTable-->
	<tbody>
	<tr>
	<td colspan="3" class="formline1 headline-tunnel-colors" style="border-top: 0px none;" valign="top">Job Details:</td>
	</tr>
		<tr class="r2"> 
		<td  valign="top"  width="300"><strong>Job Designation:&nbsp;</strong> </td>
		<td  colspan="2"  valign="top"><p><input  type="text"  readonly="readonly" value="<%=rs.getString(1)%>"/></p></td>
		</tr>
		<tr class="h2"><td class="formline" valign="top"> <strong>Job Description:<strong></td>		
		<td colspan="2"class="formline-right" valign="top"><p><input  type="text" value="<%=rs.getString(2)%>"/></p></td>
		</tr>
		<tr>		
		  <td width="26%"><strong>Category:</strong></td>
		<td colspan="2" > <input  type="text" value="<%=rs.getString(13)%>"/></td>
		</tr>
		<tr>
		<td width="26%"><strong>Industry:</strong></td>
 		<td colspan="2" ><input  type="text" value="<%=rs.getString(12)%>"/></td>
		</tr>
		<tr class="h3"> 
		<td class="formline" style="padding-right: 0px;" valign="top">Job Location:</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(3)%>"/></td>
		</tr>
  		<tr class="r7"> 
		<td valign="top"><strong>Employment Type:</strong></td>
		<td colspan="2" valign="top" height="53"><input  type="text" value="<%=rs.getString(4)%>"/>	</td>
		</tr>
		<tr>
		<td  valign="top"><strong>Relevant Professional Experience that matches the desired job:</strong></td>
		<td  colspan="2"  valign="top"><input name="text2"  size="10"type="text" value="<%=rs.getString(7)%>"/>
		  Years   &nbsp;
		    <input name="text" size="10" type="text" value="<%=rs.getString(8)%>"/>		  
		  Months						</td>
		</tr> 
		<tr>
		<td  valign="top"><strong>Type of Salary expected:</strong></td>
		<td colspan="2"  valign="top"><p><input  type="text" value="<%=rs.getString(5)%>"/></p></td>
		</tr>
		<tr> 
		<td colspan="3" class="formline1 headline-tunnel-colors" valign="top">Job Requirements:</td>
		</tr>
		<tr> 
		<td class="formline" valign="top">Minimum Educational Qualifications required:</td>
		<td colspan="2"><input  type="text" value="<%=rs.getString(6)%>"/></td>
		</tr>	
		<tr> 
		<td class="formline" valign="top">Additional Information:</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(9)%>"/></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(14)%>"/></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company emailid</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(15)%>"/></td>
		</tr>
</tbody></table>

						  <div align="right"><% if(emailid==null){%>
						    <p><input type="button" name="apply" value="apply" onClick="alert('please Login')"/>
						    <% }else {%><p><input type="button" name="apply" value="apply" /><%} %>
						    <input type="submit"  name="back" value="back"/></p>
						   </div>						
						</form>
			</div>				
		<%}
}//ifscr							
		if(request.getParameter("searchfrm").equalsIgnoreCase("si")){
			//str= "SELECT *  FROM SONY.VACANCIES WHERE INDUSTRY = '"+request.getParameter("ind")+"'";//
		str= "SELECT VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID  FROM SONY.VACANCIES AS VACANCIES, SONY.PROFESSIONALNFO AS PROFESSIONALNFO  WHERE VACANCIES.EMAILID = PROFESSIONALNFO.EMAILID AND VACANCIES.INDUSTRY = '"+request.getParameter("ind")+"'GROUP BY VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID ";
			System.out.println(str);	
		rs= st.executeQuery(str);
		
		
		while(rs.next()){%>
		<div class="article">
<form action="http://localhost:8080/advancd/Searchbyindustry.jsp">									 
			<table width="600" align="left" bordercolordark="#6633FF" frame="box" ><!--DWLayoutTable-->
	<tbody>
	<tr>
	<td colspan="3" class="formline1 headline-tunnel-colors" style="border-top: 0px none;" valign="top">Job Details:</td>
	</tr>
		<tr class="r2"> 
		<td  valign="top"  width="300"><strong>Job Designation:&nbsp;</strong> </td>
		<td  colspan="2"  valign="top"><p><input  type="text"  readonly="readonly" value="<%=rs.getString(1)%>"/></p></td>
		</tr>
		<tr class="h2"><td class="formline" valign="top"> <strong>Job Description:<strong></td>		
		<td colspan="2"class="formline-right" valign="top"><p><input  type="text" value="<%=rs.getString(2)%>"/></p></td>
		</tr>
		<tr>		
		  <td width="26%"><strong>Category:</strong></td>
		<td colspan="2" > <input  type="text" value="<%=rs.getString(13)%>"/></td>
		</tr>
		<tr>
		<td width="26%"><strong>Industry:</strong></td>
 		<td colspan="2" ><input  type="text" value="<%=rs.getString(12)%>"/></td>
		</tr>
		<tr class="h3"> 
		<td class="formline" style="padding-right: 0px;" valign="top">Job Location:</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(3)%>"/></td>
		</tr>
  		<tr class="r7"> 
		<td valign="top"><strong>Employment Type:</strong></td>
		<td colspan="2" valign="top" height="53"><input  type="text" value="<%=rs.getString(4)%>"/>	</td>
		</tr>
		<tr>
		<td  valign="top"><strong>Relevant Professional Experience that matches the desired job:</strong></td>
		<td  colspan="2"  valign="top"><input name="text2"  size="10"type="text" value="<%=rs.getString(7)%>"/>
		  Years   &nbsp;
		    <input name="text" size="10" type="text" value="<%=rs.getString(8)%>"/>		  
		  Months						</td>
		</tr> 
		<tr>
		<td  valign="top"><strong>Type of Salary expected:</strong></td>
		<td colspan="2"  valign="top"><p><input  type="text" value="<%=rs.getString(5)%>"/></p></td>
		</tr>
		<tr> 
		<td colspan="3" class="formline1 headline-tunnel-colors" valign="top">Job Requirements:</td>
		</tr>
		<tr> 
		<td class="formline" valign="top">Minimum Educational Qualifications required:</td>
		<td colspan="2"><input  type="text" value="<%=rs.getString(6)%>"/></td>
		</tr>	
		<tr> 
		<td class="formline" valign="top">Additional Information:</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(9)%>"/></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(14)%>"/></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company emailid</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(15)%>"/></td>
		</tr>
</tbody></table>

						    <div align="right"><% if(emailid==null){%>
						    <p><input type="button" name="apply" value="apply" onClick="alert('please Login')"/>
						    <% }else {%><p><input type="button" name="apply" value="apply" /><%} %>
						    <input type="submit"  name="back" value="back"/></p>
						   </div>					
						</form>
			</div>	
  <%}
} 
if(request.getParameter("searchfrm").equalsIgnoreCase("sc")){
	str="SELECT VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID  FROM SONY.VACANCIES AS VACANCIES, SONY.PROFESSIONALNFO AS PROFESSIONALNFO  WHERE VACANCIES.EMAILID = PROFESSIONALNFO.EMAILID AND PROFESSIONALNFO.COMPANY = '"+request.getParameter("fts")+"' GROUP BY VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID ";
	System.out.println(str);
		rs= st.executeQuery(str);
		
		while(rs.next()){%>
		<div class="article">
<form action="http://localhost:8080/advancd/Searchbycompany.jsp">

	<table width="600" align="left" bordercolordark="#6633FF" frame="box" ><!--DWLayoutTable-->
	<tbody>
	<tr>
	<td colspan="3" class="formline1 headline-tunnel-colors" style="border-top: 0px none;" valign="top">Job Details:</td>
	</tr>
		<tr class="r2"> 
		<td  valign="top"  width="300"><strong>Job Designation:&nbsp;</strong> </td>
		<td  colspan="2"  valign="top"><p><input  type="text"  readonly="readonly" value="<%=rs.getString(1)%>"/></p></td>
		</tr>
		<tr class="h2"><td class="formline" valign="top"> <strong>Job Description:<strong></td>		
		<td colspan="2"class="formline-right" valign="top"><p><input  type="text" value="<%=rs.getString(2)%>"/></p></td>
		</tr>
		<tr>		
		  <td width="26%"><strong>Category:</strong></td>
		<td colspan="2" > <input  type="text" value="<%=rs.getString(13)%>"/></td>
		</tr>
		<tr>
		<td width="26%"><strong>Industry:</strong></td>
 		<td colspan="2" ><input  type="text" value="<%=rs.getString(12)%>"/></td>
		</tr>
		<tr class="h3"> 
		<td class="formline" style="padding-right: 0px;" valign="top">Job Location:</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(3)%>"/></td>
		</tr>
  		<tr class="r7"> 
		<td valign="top"><strong>Employment Type:</strong></td>
		<td colspan="2" valign="top" height="53"><input  type="text" value="<%=rs.getString(4)%>"/>	</td>
		</tr>
		<tr>
		<td  valign="top"><strong>Relevant Professional Experience that matches the desired job:</strong></td>
		<td  colspan="2"  valign="top"><input name="text2"  size="10"type="text" value="<%=rs.getString(7)%>"/>
		  Years   &nbsp;
		    <input name="text" size="10" type="text" value="<%=rs.getString(8)%>"/>		  
		  Months						</td>
		</tr> 
		<tr>
		<td  valign="top"><strong>Type of Salary expected:</strong></td>
		<td colspan="2"  valign="top"><p><input  type="text" value="<%=rs.getString(5)%>"/></p></td>
		</tr>
		<tr> 
		<td colspan="3" class="formline1 headline-tunnel-colors" valign="top">Job Requirements:</td>
		</tr>
		<tr> 
		<td class="formline" valign="top">Minimum Educational Qualifications required:</td>
		<td colspan="2"><input  type="text" value="<%=rs.getString(6)%>"/></td>
		</tr>	
		<tr> 
		<td class="formline" valign="top">Additional Information:</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(9)%>"/></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(14)%>"/></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company emailid</td>
		<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(15)%>"/></td>
		</tr>
</tbody></table>
	<div align="right">
<p><input type="button" name="apply" value="apply"/><input type="button" name="save" value="save"/>
<input type="submit"  name="back" value="back"/></p>
</div>
</form>
</div>
<%}
}
if(request.getParameter("searchfrm").equalsIgnoreCase("s")){
	// str= "SELECT *  FROM SONY.VACANCIES WHERE CATEGORY = '"+request.getParameter("jbc")+"'";					     
	 str= "SELECT VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID  FROM SONY.VACANCIES AS VACANCIES, SONY.PROFESSIONALNFO AS PROFESSIONALNFO  WHERE VACANCIES.EMAILID = PROFESSIONALNFO.EMAILID AND (VACANCIES.CATEGORY = '"+request.getParameter("jbc")+"' OR  VACANCIES. JOB_LOCATION = '"+request.getParameter("loc")+"'OR INDUSTRY = '"+request.getParameter("ind")+"') GROUP BY VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID";
		System.out.println(str);
		rs= st.executeQuery(str);

while(rs.next()){%>
<div class="article">	
<form action="http://localhost:8080/advancd/Search.jsp">
		 <table width="600" align="left" bordercolordark="#6633FF" frame="box" ><!--DWLayoutTable-->
<tbody>
<tr>
<td colspan="3" class="formline1 headline-tunnel-colors" style="border-top: 0px none;" valign="top">Job Details:</td>
</tr>
<tr class="r2"> 
<td  valign="top"  width="300"><strong>Job Designation:&nbsp;</strong> </td>
<td  colspan="2"  valign="top"><p><input  type="text"  readonly="readonly" value="<%=rs.getString(1)%>"/></p></td>
</tr>
<tr class="h2"><td class="formline" valign="top"> <strong>Job Description:<strong></td>		
<td colspan="2"class="formline-right" valign="top"><p><input  type="text" value="<%=rs.getString(2)%>"/></p></td>
</tr>
<tr>		
<td width="26%"><strong>Category:</strong></td>
<td colspan="2" > <input  type="text" value="<%=rs.getString(13)%>"/></td>
</tr>
<tr>
<td width="26%"><strong>Industry:</strong></td>
<td colspan="2" ><input  type="text" value="<%=rs.getString(12)%>"/></td>
</tr>
<tr class="h3"> 
<td class="formline" style="padding-right: 0px;" valign="top">Job Location:</td>
<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(3)%>"/></td>
</tr>
<tr class="r7"> 
<td valign="top"><strong>Employment Type:</strong></td>
<td colspan="2" valign="top" height="53"><input  type="text" value="<%=rs.getString(4)%>"/>	</td>
</tr>
<tr>
<td  valign="top"><strong>Relevant Professional Experience that matches the desired job:</strong></td>
<td  colspan="2"  valign="top"><input name="text2"  size="10"type="text" value="<%=rs.getString(7)%>"/>
		  Years   &nbsp;
		    <input name="text" size="10" type="text" value="<%=rs.getString(8)%>"/>		  
		  Months						</td>
</tr> 
<tr>
<td  valign="top"><strong>Type of Salary expected:</strong></td>
<td colspan="2"  valign="top"><p><input  type="text" value="<%=rs.getString(5)%>"/></p></td>
</tr>
<tr> 
<td colspan="3" class="formline1 headline-tunnel-colors" valign="top">Job Requirements:</td>
</tr>
<tr> 
<td class="formline" valign="top">Minimum Educational Qualifications required:</td>
<td colspan="2"><input  type="text" value="<%=rs.getString(6)%>"/></td>
</tr>	
<tr> 
<td class="formline" valign="top">Additional Information:</td>
<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(9)%>"/></td>
</tr>
<tr>
<td class="formline" valign="top">Company</td>
<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(14)%>"/></td>
</tr>
<tr>
<td class="formline" valign="top">Company emailid</td>
<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(15)%>"/></td>
</tr>
</tbody></table>

		   <div align="right"><% if(emailid==null){%>
						    <p><input type="button" name="apply" value="apply" onClick="alert('please Login')"/>
						    <% }else {%><p><input type="button" name="apply" value="apply" /><%} %>
						    <input type="submit"  name="back" value="back"/></p>
						   </div>					
		</form>
</div>				
<%}
}//ifs
if(request.getParameter("searchfrm").equalsIgnoreCase("main")){
	// str= "SELECT *  FROM SONY.VACANCIES WHERE CATEGORY = '"+request.getParameter("jbc")+"'";					     
	 str= "SELECT VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID  FROM SONY.VACANCIES AS VACANCIES, SONY.PROFESSIONALNFO AS PROFESSIONALNFO  WHERE VACANCIES.EMAILID = PROFESSIONALNFO.EMAILID AND (VACANCIES.CATEGORY = '"+request.getParameter("fts")+"' OR  VACANCIES.JOB_LOCATION = '"+request.getParameter("loc")+"'OR VACANCIES.INDUSTRY = '"+request.getParameter("fts")+"') GROUP BY VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID";
		System.out.println(str);
		rs= st.executeQuery(str);

while(rs.next()){%>
<div class="article">	
<form action="http://localhost:8080/advancd/homepage.jsp">
		 <table width="600" align="left" bordercolordark="#6633FF" frame="box" ><!--DWLayoutTable-->
<tbody>
<tr>
<td colspan="3" class="formline1 headline-tunnel-colors" style="border-top: 0px none;" valign="top">Job Details:</td>
</tr>
<tr class="r2"> 
<td  valign="top"  width="300"><strong>Job Designation:&nbsp;</strong> </td>
<td  colspan="2"  valign="top"><p><input  name="desg" id="desg" type="text"  readonly="readonly" value="<%=rs.getString(1)%>"/></p></td>
</tr>
<tr class="h2"><td class="formline" valign="top"> <strong>Job Description:<strong></td>		
<td colspan="2"class="formline-right" valign="top"><p><input  type="text" value="<%=rs.getString(2)%>"/></p></td>
</tr>
<tr>		
<td width="26%"><strong>Category:</strong></td>
<td colspan="2" > <input  type="text" value="<%=rs.getString(13)%>"/></td>
</tr>
<tr>
<td width="26%"><strong>Industry:</strong></td>
<td colspan="2" ><input  type="text" value="<%=rs.getString(12)%>"/></td>
</tr>
<tr class="h3"> 
<td class="formline" style="padding-right: 0px;" valign="top">Job Location:</td>
<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(3)%>"/></td>
</tr>
<tr class="r7"> 
<td valign="top"><strong>Employment Type:</strong></td>
<td colspan="2" valign="top" height="53"><input  type="text" value="<%=rs.getString(4)%>"/>	</td>
</tr>
<tr>
<td  valign="top"><strong>Relevant Professional Experience that matches the desired job:</strong></td>
<td  colspan="2"  valign="top"><input name="text2"  size="10"type="text" value="<%=rs.getString(7)%>"/>
		  Years   &nbsp;
		    <input name="text" size="10" type="text" value="<%=rs.getString(8)%>"/>		  
		  Months						</td>
</tr> 
<tr>
<td  valign="top"><strong>Type of Salary expected:</strong></td>
<td colspan="2"  valign="top"><p><input  type="text" value="<%=rs.getString(5)%>"/></p></td>
</tr>
<tr> 
<td colspan="3" class="formline1 headline-tunnel-colors" valign="top">Job Requirements:</td>
</tr>
<tr> 
<td class="formline" valign="top">Minimum Educational Qualifications required:</td>
<td colspan="2"><input  type="text" value="<%=rs.getString(6)%>"/></td>
</tr>	
<tr> 
<td class="formline" valign="top">Additional Information:</td>
<td colspan="2" class="formline-right" valign="top"><input  type="text" value="<%=rs.getString(9)%>"/></td>
</tr>
<tr>
<td class="formline" valign="top">Company</td>
<td colspan="2" class="formline-right" valign="top"><input name="c" id="c" type="text" value="<%=rs.getString(14)%>"/></td>
</tr>
<tr>
<td class="formline" valign="top">Company emailid</td>
<td colspan="2" class="formline-right" valign="top"><input name="ce" id="ce" type="text" value="<%=rs.getString(15)%>"/></td>
</tr>
</tbody></table>

		  <div align="right"><% if(emailid==null){%>
		  
						    <p><input type="button" name="apply" value="apply" onClick="alert('please Login')"/>
						    <% }else if(emailid!=null){ 
						    	//session.setAttribute("ce",rs.getString(15));
						   // session.setAttribute("desg",rs.getString(1));
						   // session.setAttribute("cmpny",rs.getString(14));
						   %><script type="text/javascript">
function loadXMLDoc()
{
var xmlhttp;
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("myDiv2").innerHTML=xmlhttp.responseText;
    }
  }

//xmlhttp.open("GET","Searching.jsp?searchfrm="+document.getElementsByName("searchfrm").value+"&loc="+document.getElementsByName("loc").value+"&fts="+document.getElementsByName("fts").value,true);
//xmlhttp.open("GET","Searching.jsp?searchfrm="+document.getElementById("searchfrm").value+"&loc="+document.getElementById("loc").value+"&fts="+document.getElementById("fts").value,true);
//xmlhttp.open("GET","http://localhost:8080/advancd/Apply?ce="+rs.getString(15)+"&c="+rs.getString(14)+"&desg="+rs.getString(1),true);
xmlhttp.open("GET","apply.jsp?ce="+document.getElementById("ce").value+"&c="+document.getElementById("c").value+"&desg="+document.getElementById("desg").value,true);
xmlhttp.send();
}
</script><button type="button" onClick="loadXMLDoc()" >Apply</button><%} %>
						   <div id="myDiv2">ERHJERH
						  </div>
						    <input type="submit"  name="back" value="back"/>
						   </div>
						           						
		</form>
</div>				
<%}
}//ifscr
if(request.getParameter("searchfrm").equalsIgnoreCase("esl")){
	 str= "SELECT * FROM SONY.JFPROFESSIONALINFO  WHERE LOCATION = '"+ request.getParameter("loc")+"'";
		    	 st= con.createStatement();
		    		System.out.println(str);
		    				rs= st.executeQuery(str);
		    				while(rs.next()){%>
<div class="article">
	<form action="http://localhost:8080/advancd/Searchrl.jsp">
		<table align="left" frame="box" bordercolordark="#6633FF" >
		<tr>
		<td  > <h2 ><u>Professional info </u> </h2></td>
		<td>&nbsp;</td>
		</tr>	
		<tr> 
		<td  style="border-top: 0px none;" valign="top"><strong>Resume Details:</strong></td>
		<td>&nbsp;</td>
		</tr>
		<tr> 
		<td   style="border-top: 0px none;" valign="top">&nbsp;</td>
		<td>&nbsp;</td>
		</tr>
		<tr class="r2"> 
		<td  valign="top" ><strong>Job Designation:&nbsp;</strong> </td>		
		<td    valign="top"><input  type="text" size="60" name="designation"  maxlength="64" readonly="readonly"  value="<%= rs.getString(2)%>" /> </td>
	 </tr>
		<tr class="r4"> 
		<td  style="padding-right: 0px;" valign="top"><strong>Preferred Job Location:</strong></td>
		<td   valign="top"  ><input type="text" size="32"  maxlength="64" readonly="readonly"  value="<%= rs.getString(1)%>" name="loc"/ >  </td>
		</tr>
		<tr>
  		<td  valign="top" width="300px"><strong>Category:&nbsp;</strong> </td>		
		<td     valign="top"> <input type="text" size="32"  maxlength="64" readonly="readonly"  value="<%= rs.getString(10)%>" name="cat"/ ></td>
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
					<td><input type="text" size="12" maxlength="64" readonly="readonly"  value="<%= rs.getString(5)%>"  name="workexpyear" onKeyPress="return handleEnter(this, event)">Years &nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" size="12"  maxlength="64" readonly="readonly"  value="<%= rs.getString(6)%>"  name="workexpmonth" onKeyPress="return handleEnter(this, event)">Months</td>
					</tr>
				</tbody>
			</table>
		</td>
		</tr>
		<tr>
		<td  valign="top"><strong>Type of Salary expected:</strong></td>
		<td valign="top"> <input type="text" size="32" maxlength="64" readonly="readonly"  value="<%=rs.getString(8)%>"  name="salarytype" ></td>
		</tr>
		
</table>
<div align="right">
<p><input type="button" name="downloadcv" value="downloadcv"/>
<input type="submit"  name="back" value="back"/></p>
</div>
</form>

</div>
			  <%  	} 
}//
if(request.getParameter("searchfrm").equalsIgnoreCase("sr")){
	 str= "SELECT * FROM SONY.JFPROFESSIONALINFO AS JFPROFESSIONALINFO WHERE LOCATION = '"+request.getParameter("loc")+"' OR CATEGORY = '"+request.getParameter("jbc")+"' ";      
		    	 st= con.createStatement();
		    		System.out.println(str);
		    				rs= st.executeQuery(str);
		    				while(rs.next()){%>
<div class="article">
	<form action="http://localhost:8080/advancd/Searchrl.jsp">
		<table align="left" frame="box" bordercolordark="#6633FF" >
		<tr>
		<td  > <h2 ><u>Professional info </u> </h2></td>
		<td>&nbsp;</td>
		</tr>	
		<tr> 
		<td  style="border-top: 0px none;" valign="top"><strong>Resume Details:</strong></td>
		<td>&nbsp;</td>
		</tr>
		<tr> 
		<td   style="border-top: 0px none;" valign="top">&nbsp;</td>
		<td>&nbsp;</td>
		</tr>
		<tr class="r2"> 
		<td  valign="top" ><strong>Job Designation:&nbsp;</strong> </td>		
		<td    valign="top"><input  type="text" size="60" name="designation"  maxlength="64" readonly="readonly"  value="<%= rs.getString(2)%>" /> </td>
	 </tr>
		<tr class="r4"> 
		<td  style="padding-right: 0px;" valign="top"><strong>Preferred Job Location:</strong></td>
		<td   valign="top"  ><input type="text" size="32"  maxlength="64" readonly="readonly"  value="<%= rs.getString(1)%>" name="loc"/ >  </td>
		</tr>
		<tr>
 		<td  valign="top" width="300px"><strong>Category:&nbsp;</strong> </td>		
		<td     valign="top"> <input type="text" size="32"  maxlength="64" readonly="readonly"  value="<%= rs.getString(10)%>" name="cat"/ ></td>
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
					<td><input type="text" size="12" maxlength="64" readonly="readonly"  value="<%= rs.getString(5)%>"  name="workexpyear" onKeyPress="return handleEnter(this, event)">Years &nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><input type="text" size="12"  maxlength="64" readonly="readonly"  value="<%= rs.getString(6)%>"  name="workexpmonth" onKeyPress="return handleEnter(this, event)">Months</td>
					</tr>
				</tbody>
			</table>
		</td>
		</tr>
		<tr>
		<td  valign="top"><strong>Type of Salary expected:</strong></td>
		<td valign="top"> <input type="text" size="32" maxlength="64" readonly="readonly"  value="<%=rs.getString(8)%>"  name="salarytype" ></td>
		</tr>
		
</table>
<div align="right">
<p><input type="button" name="downloadcv" value="downloadcv"/>
<input type="submit"  name="back" value="back"/></p>
</div>
</form>

</div>
			  <%  	} 
}//
if(request.getParameter("searchfrm").equalsIgnoreCase("esf")){
str= "SELECT * FROM SONY.JFPROFESSIONALINFO  WHERE CATEGORY = '"+ request.getParameter("loc")+"'";

	System.out.println(str);
	
	rs= st.executeQuery(str);
	while(rs.next()){%>
	<div class="article">
		<form action="http://localhost:8080/advancd/Searchrf.jsp">
			<table align="left" frame="box" bordercolordark="#6633FF" >
			<tr>
			<td  > <h2 ><u>Professional info </u> </h2></td>
			<td>&nbsp;</td>
			</tr>	
			<tr> 
			<td   style="border-top: 0px none;" valign="top"><strong>Resume Details:</strong></td>
			<td>&nbsp;</td>
			</tr>
			<tr> 
			<td   style="border-top: 0px none;" valign="top">&nbsp;</td>
			<td>&nbsp;</td>
			</tr>
			<tr class="r2"> 
			<td  valign="top"><strong>Job Designation:&nbsp;</strong> </td>		
			<td    valign="top"><input  size="60" type="text" name="designation"  maxlength="64" readonly="readonly"  value="<%= rs.getString(2)%>" /> </td>
		 </tr>
			<tr class="r4"> 
			<td  style="padding-right: 0px;" valign="top"><strong>Preferred Job Location:</strong></td>
			<td  valign="top"  ><input type="text" size="32"  maxlength="64" readonly="readonly"  value="<%= rs.getString(1)%>" name="loc"/ >  </td>
			</tr>
			<tr>
	  		<td  valign="top" width="300px"><strong>Category:&nbsp;</strong> </td>		
			<td    valign="top"> <input type="text" size="32"  maxlength="64" readonly="readonly"  value="<%= rs.getString(10)%>" name="cat"/ ></td>
			</tr>
			<tr>
			<td  style="border-top: 0px none;" valign="top">&nbsp;</td>
			<td>&nbsp;</td>
			</tr>
			<tr>
			<td  valign="top"><strong>Relevant Professional Experience that matches the desired job:</strong></td>
			<td  valign="top">
				<table border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
						<td colspan="4"></td>
						</tr>
						<tr>
						<td><input type="text" size="12" maxlength="64" readonly="readonly"  value="<%= rs.getString(5)%>"  name="workexpyear" onKeyPress="return handleEnter(this, event)">Years &nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td><input type="text" size="12"  maxlength="64" readonly="readonly"  value="<%= rs.getString(6)%>"  name="workexpmonth" onKeyPress="return handleEnter(this, event)">Months</td>
						</tr>
					</tbody>
				</table>
			</td>
			</tr>
			<tr>
			<td  valign="top"><strong>Type of Salary expected:</strong></td>
			<td   valign="top"> <input type="text" size="32" maxlength="64" readonly="readonly"  value="<%=rs.getString(8)%>"  name="salarytype" ></td>
			</tr>
			
	</table>
	<div align="right">
	<p><input type="button" name="downloadcv" value="downloadcv"/>
	<input type="submit"  name="back" value="back"/></p>
	</div>
	</form>

	</div>
				  <%  	} 
	}
    }
					    
					    catch (Exception e) {
	    e.printStackTrace(); }%>

    <div class="clr"></div>
<p class="pages"><small>&nbsp;&nbsp;</small></p>         
      <div class="clr"></div>

 

</body>
</html>	    		
			
				 
	

