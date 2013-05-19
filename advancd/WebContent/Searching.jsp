<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import ="java.util.*,java.sql.*,java.io.IOException.*" %>
  <%@ taglib prefix="c" uri = "http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<fmt:setLocale value="hi"/>
<fmt:setBundle basename="resource_en"/>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Onlinejobportal</title>
<script type="text/javascript">
function display_alert()
  {
  alert("Please login!");
  }
</script>
<script type="text/javascript">
function altRows(id){
	if(document.getElementsByTagName){  
		
		var table = document.getElementById(id);  
		var rows = table.getElementsByTagName("tr"); 
		 
		for(i = 0; i < rows.length; i++){          
			if(i % 2 == 0){
				rows[i].className = "evenrowcolor";
			}else{
				rows[i].className = "oddrowcolor";
			}      
		}
	}
}

window.onload=function(){
	altRows('alternatecolor');
}
</script>


<!-- CSS goes in the document HEAD or added to your external stylesheet -->
<style type="text/css">
table.altrowstable {
	font-family: verdana,arial,sans-serif;
	font-size:11px;
	color:#333333;
	border-width: 1px;
	border-color: #33FFFF;
	border-collapse: collapse;
}
table.altrowstable th {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
table.altrowstable td {
	border-width: 1px;
	padding: 8px;
	border-style: solid;
	border-color: #a9c6c9;
}
.oddrowcolor{
	background-color:#FFFFFF;
}
.evenrowcolor{
	background-color:#E6E6E6;
}
</style>
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
						str= "SELECT VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID  FROM SONY.VACANCIES AS VACANCIES, SONY.PROFESSIONALNFO AS PROFESSIONALNFO  WHERE VACANCIES.EMAILID = PROFESSIONALNFO.EMAILID AND (VACANCIES. JOB_LOCATION = '"+request.getParameter("loc")+"' OR VACANCIES.CATEGORY = '"+request.getParameter("fts")+"' OR VACANCIES.JOB_TITLE ='"+request.getParameter("fts")+"' OR  VACANCIES.JOB_DESCRIPTION='"+request.getParameter("fts")+"' OR VACANCIES.INDUSTRY='"+request.getParameter("fts")+"')GROUP BY VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID;";
							System.out.println(str);				    		
							rs= st.executeQuery(str);				    		
	while(rs.next()){%>
				<div class="article">
						 <form action="http://localhost:8080/advancd/Searchbylocation.jsp">					      
					<table width="600" align="left" bordercolordark="#6633FF" frame="box" class="altrowstable" id="alternatecolor" ><!--DWLayoutTable-->
	<tbody>
	<tr>
	<td colspan="3" valign="top" class="headline-tunnel-colors formline1" style="border-top: 0px none;"><strong>Job Details:</strong></td>
	</tr>
		<tr class="r2"> 
		<td  valign="top"  width="300">Job Designation:&nbsp; </td>
		<td  colspan="2"  valign="top"><p><%=rs.getString(1)%></p></td>
		</tr>
		<tr class="h2"><td class="formline" valign="top"> <strong>Job Description:<strong></td>		
		<td colspan="2"class="formline-right" valign="top"><p><%=rs.getString(2)%></p></td>
		</tr>
		<tr>		
		  <td width="26%">Category:</td>
		<td colspan="2" > <%=rs.getString(13)%></td>
		</tr>
		<tr>
		<td width="26%">Industry:</td>
 		<td colspan="2" ><%=rs.getString(12)%></td>
		</tr>
		<tr class="h3"> 
		<td class="formline" style="padding-right: 0px;" valign="top">Job Location:</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(3)%></td>
		</tr>
  		<tr class="r7"> 
		<td valign="top">Employment Type:</td>
		<td colspan="2" valign="top" height="53"><%=rs.getString(4)%>	</td>
		</tr>
		<tr>
		<td  valign="top">Relevant Professional Experience that matches the desired job:</td>
		<td  colspan="2"  valign="top"><%=rs.getString(7)%>&nbsp;
		  Years   &nbsp;&nbsp;
		   <%=rs.getString(8)%>		  
		  Months						</td>
		</tr> 
		<tr>
		<td  valign="top">Type of Salary expected:</td>
		<td colspan="2"  valign="top"><p><%=rs.getString(5)%></p></td>
		</tr>
		<tr> 
		<td colspan="3" valign="top" class="headline-tunnel-colors formline1"><strong>Job Requirements:</strong></td>
		</tr>
		<tr> 
		<td class="formline" valign="top">Minimum Educational Qualifications required:</td>
		<td colspan="2"><%=rs.getString(6)%></td>
		</tr>	
		<tr> 
		<td class="formline" valign="top">Additional Information:</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(9)%></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(14)%></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company emailid</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(15)%></td>
		</tr>
</tbody></table>

						  <div align="right"><% if(emailid==null){%>
						    <p><input type="button" name="apply" value="apply" onClick="alert('please Login')"/>
						    <% }else if(emailid!=null){ 
						    	session.setAttribute("ce",rs.getString(15));
						  session.setAttribute("desg",rs.getString(1));
						  session.setAttribute("c",rs.getString(14));%>
						<script type="text/javascript">
function open_win()
{
window.open("http://localhost:8080/advancd/apply.jsp","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400");
}
</script><a href="javascript: void(0)" 
   onclick="window.open('http://localhost:8080/advancd/apply.jsp', 
  'windowname1', 
  'width=400, height=200'); 
   return false;" ><input name="apply" value="apply" type="button"   /></a><%} %>
						    <input type="submit"  name="back" value="back"/>
						   </div>						
						</form>
			</div>				
									
				 <%}//whiesl
  				}//ifsl					
										
  				 if(request.getParameter("searchfrm").equalsIgnoreCase("scr")){
			    	// str= "SELECT *  FROM SONY.VACANCIES WHERE CATEGORY = '"+request.getParameter("jbc")+"'";					     
			    	 str= "SELECT VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID  FROM SONY.VACANCIES AS VACANCIES, SONY.PROFESSIONALNFO AS PROFESSIONALNFO  WHERE VACANCIES.EMAILID = PROFESSIONALNFO.EMAILID AND ( VACANCIES.CATEGORY = '"+request.getParameter("jbc")+"' OR VACANCIES.JOB_TITLE ='"+request.getParameter("fts")+"' OR  VACANCIES.JOB_DESCRIPTION='"+request.getParameter("fts")+"' OR VACANCIES.INDUSTRY='"+request.getParameter("fts")+"') GROUP BY VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID;";
			    		System.out.println(str);
			    		rs= st.executeQuery(str);

	while(rs.next()){%>
		<div class="article">	
			   <form action="http://localhost:8080/advancd/SearchbyCategory.jsp">
						 <table width="600" align="left" bordercolordark="#6633FF" frame="box" class="altrowstable" id="alternatecolor"><!--DWLayoutTable-->
	<tbody>
	<tr>
	<td colspan="3" valign="top" class="headline-tunnel-colors formline1" style="border-top: 0px none;"><strong>Job Details:</strong></td>
	</tr>
		<tr class="r2"> 
		<td  valign="top"  width="300">Job Designation:&nbsp; </td>
		<td  colspan="2"  valign="top"><p><%=rs.getString(1)%></p></td>
		</tr>
		<tr class="h2"><td class="formline" valign="top"> <strong>Job Description:<strong></td>		
		<td colspan="2"class="formline-right" valign="top"><p><%=rs.getString(2)%></p></td>
		</tr>
		<tr>		
		  <td width="26%">Category:</td>
		<td colspan="2" > <%=rs.getString(13)%></td>
		</tr>
		<tr>
		<td width="26%">Industry:</td>
 		<td colspan="2" ><%=rs.getString(12)%></td>
		</tr>
		<tr class="h3"> 
		<td class="formline" style="padding-right: 0px;" valign="top">Job Location:</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(3)%></td>
		</tr>
  		<tr class="r7"> 
		<td valign="top">Employment Type:</td>
		<td colspan="2" valign="top" height="53"><%=rs.getString(4)%>	</td>
		</tr>
		<tr>
		<td  valign="top">Relevant Professional Experience that matches the desired job:</td>
		<td  colspan="2"  valign="top"><%=rs.getString(7)%>&nbsp;
		  Years   &nbsp;&nbsp;
		  <%=rs.getString(8)%>		  
		  Months						</td>
		</tr> 
		<tr>
		<td  valign="top">Type of Salary expected:</td>
		<td colspan="2"  valign="top"><p><%=rs.getString(5)%></p></td>
		</tr>
		<tr> 
		<td colspan="3" valign="top" class="headline-tunnel-colors formline1"><strong>Job Requirements:</strong></td>
		</tr>
		<tr> 
		<td class="formline" valign="top">Minimum Educational Qualifications required:</td>
		<td colspan="2"><%=rs.getString(6)%></td>
		</tr>	
		<tr> 
		<td class="formline" valign="top">Additional Information:</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(9)%></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(14)%></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company emailid</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(15)%></td>
		</tr>
</tbody></table>

						  <div align="right"><% if(emailid==null){%>
						    <p><input type="button" name="apply" value="apply" onClick="alert('please Login')"/>
						 <% }else if(emailid!=null){ 
						    	session.setAttribute("ce",rs.getString(15));
								  session.setAttribute("desg",rs.getString(1));
								  session.setAttribute("c",rs.getString(14));%>
								<script type="text/javascript">
		function open_win()
		{
		window.open("http://localhost:8080/advancd/apply.jsp","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400");
		}
		</script><a href="javascript: void(0)" 
		   onclick="window.open('http://localhost:8080/advancd/apply.jsp', 
		  'windowname1', 
		  'width=400, height=200'); 
		   return false;" ><input name="apply" value="apply" type="button"   /></a><%} %>
								    <input type="submit"  name="back" value="back"/>
								   </div>						
								</form>
			</div>				
		<%}
}//ifscr							
		if(request.getParameter("searchfrm").equalsIgnoreCase("si")){
			//str= "SELECT *  FROM SONY.VACANCIES WHERE INDUSTRY = '"+request.getParameter("ind")+"'";//
		str= "SELECT VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID  FROM SONY.VACANCIES AS VACANCIES, SONY.PROFESSIONALNFO AS PROFESSIONALNFO  WHERE VACANCIES.EMAILID = PROFESSIONALNFO.EMAILID AND (VACANCIES.INDUSTRY = '"+request.getParameter("ind")+"'OR VACANCIES.CATEGORY = '"+request.getParameter("fts")+"' OR VACANCIES.JOB_TITLE ='"+request.getParameter("fts")+"' OR  VACANCIES.JOB_DESCRIPTION='"+request.getParameter("fts")+"')GROUP BY VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID ";
			System.out.println(str);	
		rs= st.executeQuery(str);
		
		
		while(rs.next()){%>
		<div class="article">
<form action="http://localhost:8080/advancd/Searchbyindustry.jsp">									 
			<table width="600" align="left" bordercolordark="#6633FF" frame="box" class="altrowstable" id="alternatecolor" ><!--DWLayoutTable-->
	<tbody>
	<tr>
	<td colspan="3" valign="top" class="headline-tunnel-colors formline1" style="border-top: 0px none;"><strong>Job Details:</strong></td>
	</tr>
		<tr class="r2"> 
		<td  valign="top"  width="262">Job Designation:&nbsp; </td>
		<td  colspan="2"  valign="top"><p><%=rs.getString(1)%></p></td>
		</tr>
		
		<tr>		
		  <td width="262">Category:</td>
		<td colspan="2" > <%=rs.getString(13)%></td>
		</tr>
		<tr>
		<td width="262">Industry:</td>
 		<td colspan="2" ><%=rs.getString(12)%></td>
		</tr>
		<tr class="h3"> 
		<td class="formline" style="padding-right: 0px;" valign="top">Job Location:</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(3)%></td>
		</tr>
  		<tr class="r7"> 
		<td valign="top">Employment Type:</td>
		<td colspan="2" valign="top" height="53"><%=rs.getString(4)%>	</td>
		</tr>
		<tr>
		<td  valign="top">Relevant Professional Experience that matches the desired job:</td>
		<td  colspan="2"  valign="top"><%=rs.getString(7)%>&nbsp;  Years   &nbsp;&nbsp;
		   <%=rs.getString(8)%>		  
		  Months						</td>
		</tr> 
		<tr>
		<td  valign="top">Type of Salary expected:</td>
		<td colspan="2"  valign="top"><p><%=rs.getString(5)%></p></td>
		</tr>
		
		<tr> 
		<td class="formline" valign="top">Minimum Educational Qualifications required:</td>
		<td colspan="2"><%=rs.getString(6)%></td>
		</tr>	
		<tr> 
		<tr class="h2"><td width="262" valign="top" > <strong><strong>Job Description:</strong><strong></td>		
		<td width="326" colspan="2" valign="top"><p><%=rs.getString(2)%></p></td>
		</tr>
		<tr>
		<td valign="top" class="formline"><strong>Desired candidate profile:</strong></td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(9)%></td>
		</tr>
		<tr>
		<td colspan="2" valign="top" class="formline" ><strong>Company profile:</strong></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(14)%></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company emailid</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(15)%></td>
		</tr>
</tbody></table>

						    <div align="right"><% if(emailid==null){%>
						    <p><input type="button" name="apply" value="apply" onClick="alert('please Login')"/>
						    <% }else if(emailid!=null){ 
						    	session.setAttribute("ce",rs.getString(15));
						  session.setAttribute("desg",rs.getString(1));
						  session.setAttribute("c",rs.getString(14));session.setAttribute("eemailid",rs.getString(17));%>
						<script type="text/javascript">
function open_win()
{
window.open("http://localhost:8080/advancd/apply.jsp","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400");
}
</script><a href="javascript: void(0)" 
   onclick="window.open('http://localhost:8080/advancd/apply.jsp', 
  'windowname1', 
  'width=400, height=200'); 
   return false;" ><input name="apply" value="apply" type="button"   /></a><%} %>
						    <input type="submit"  name="back" value="back"/>
						   </div>						
						</form>
			</div>	
  <%}
} 
if(request.getParameter("searchfrm").equalsIgnoreCase("sc")){
	str="SELECT VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID  FROM SONY.VACANCIES AS VACANCIES, SONY.PROFESSIONALNFO AS PROFESSIONALNFO  WHERE VACANCIES.EMAILID = PROFESSIONALNFO.EMAILID AND (PROFESSIONALNFO.COMPANY = '"+request.getParameter("fts")+"' OR VACANCIES.JOB_LOCATION='"+request.getParameter("loc")+"') GROUP BY VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID ";
	System.out.println(str);
		rs= st.executeQuery(str);
		
		while(rs.next()){%>
		<div class="article">
<form action="http://localhost:8080/advancd/Searchbycompany.jsp">

	<table width="600" align="left" bordercolordark="#6633FF" frame="box" class="altrowstable" id="alternatecolor" ><!--DWLayoutTable-->
	<tbody>
	<tr>
	<td colspan="3" valign="top" class="headline-tunnel-colors formline1" style="border-top: 0px none;"><strong>Job Details:</strong></td>
	</tr>
		<tr class="r2"> 
		<td  valign="top"  width="217">Job Designation:&nbsp; </td>
		<td width="371"  colspan="2"  valign="top"><p><%=rs.getString(1)%></p></td>
		</tr>
		
		<tr>		
		  <td width="217">Category:</td>
		<td colspan="2" > <%=rs.getString(13)%></td>
		</tr>
		<tr>
		<td width="217">Industry:</td>
 		<td colspan="2" ><%=rs.getString(12)%></td>
		</tr>
		<tr class="h3"> 
		<td class="formline" style="padding-right: 0px;" valign="top">Job Location:</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(3)%></td>
		</tr>
  		<tr class="r7"> 
		<td valign="top">Employment Type:</td>
		<td colspan="2" valign="top" height="53"><%=rs.getString(4)%>	</td>
		</tr>
		<tr>
		<td  valign="top">Relevant Professional Experience that matches the desired job:</td>
		<td  colspan="2"  valign="top"><%=rs.getString(7)%>&nbsp;
		  Years   &nbsp;
		   <%=rs.getString(8)%>		  
		  Months						</td>
		</tr> 
		<tr>
		<td  valign="top">Type of Salary expected:</td>
		<td colspan="2"  valign="top"><p><%=rs.getString(5)%></p></td>
		</tr>
		
		<tr> 
		<td class="formline" valign="top">Minimum Educational Qualifications required:</td>
		<td colspan="2"><%=rs.getString(6)%></td>
		</tr>	
		<tr class="h2"><td class="formline" valign="top"> <strong><strong>Job Description:</strong><strong></td>		
		<td colspan="2"class="formline-right" valign="top"><p><%=rs.getString(2)%></p></td>
		</tr>
		<tr>
		<tr> 
		<td class="formline" valign="top"><strong>Desired candidate profile:</strong></td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(9)%></td>
		</tr>
		
		<tr>
		<td colspan="3" valign="top" class="formline" ><strong>Company profile:</strong></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(14)%></td>
		</tr>
		<tr>
		<td class="formline" valign="top">Company emailid</td>
		<td colspan="2" class="formline-right" valign="top"><%=rs.getString(15)%></td>
		</tr>
</tbody></table>
	 <div align="right"><% if(emailid==null){%>
						    <p><input type="button" name="apply" value="apply" onClick="alert('please Login')"/>
						    <% }else if(emailid!=null){ 
						    	session.setAttribute("ce",rs.getString(15));
						  session.setAttribute("desg",rs.getString(1));
						  session.setAttribute("c",rs.getString(14));%>
						<script type="text/javascript">
function open_win()
{
window.open("http://localhost:8080/advancd/apply.jsp","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400");
}
</script><a href="javascript: void(0)" 
   onclick="window.open('http://localhost:8080/advancd/apply.jsp', 
  'windowname1', 
  'width=400, height=200'); 
   return false;" ><input name="apply" value="apply" type="button"   /></a><%} %>
						    <input type="submit"  name="back" value="back"/>
						   </div>						
						</form>
</div>
<%}
}
if(request.getParameter("searchfrm").equalsIgnoreCase("s")){
	// str= "SELECT *  FROM SONY.VACANCIES WHERE CATEGORY = '"+request.getParameter("jbc")+"'";					     
	 str= "SELECT VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID  FROM SONY.VACANCIES AS VACANCIES, SONY.PROFESSIONALNFO AS PROFESSIONALNFO  WHERE VACANCIES.EMAILID = PROFESSIONALNFO.EMAILID AND (VACANCIES.CATEGORY = '"+request.getParameter("jbc")+"' OR  VACANCIES. JOB_LOCATION = '"+request.getParameter("loc")+"'OR INDUSTRY = '"+request.getParameter("ind")+"' OR VACANCIES.CATEGORY = '"+request.getParameter("fts")+"' OR VACANCIES.JOB_TITLE ='"+request.getParameter("fts")+"' OR  VACANCIES.JOB_DESCRIPTION='"+request.getParameter("fts")+"' OR VACANCIES.INDUSTRY='"+request.getParameter("fts")+"') GROUP BY VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID";
		System.out.println(str);
		rs= st.executeQuery(str);

while(rs.next()){%>
<div class="article">	
<form action="http://localhost:8080/advancd/Search.jsp">
		 <table width="625" align="left" bordercolordark="#6633FF" frame="box" class="altrowstable" id="alternatecolor" ><!--DWLayoutTable-->
<tbody>
<tr>
<td colspan="3" valign="top" class="headline-tunnel-colors formline1" style="border-top: 0px none;"><strong>Job Details:</strong></td>
</tr>
<tr class="r2"> 
<td  valign="top"  width="237">Job Designation:&nbsp; </td>
<td width="376"  colspan="2"  valign="top"><p><%=rs.getString(1)%></p></td>
</tr>

<tr>		
<td width="237">Category:</td>
<td colspan="2" > <%=rs.getString(13)%></td>
</tr>
<tr>
<td width="237">Industry:</td>
<td colspan="2" ><%=rs.getString(12)%></td>
</tr>
<tr class="h3"> 
<td class="formline" style="padding-right: 0px;" valign="top">Job Location:</td>
<td colspan="2" class="formline-right" valign="top"><%=rs.getString(3)%></td>
</tr>
<tr class="r7"> 
<td valign="top">Employment Type:</td>
<td colspan="2" valign="top" height="53"><%=rs.getString(4)%>	</td>
</tr>
<tr>
<td  valign="top">Relevant Professional Experience that matches the desired job:</td>
<td  colspan="2"  valign="top"><%=rs.getString(7)%>&nbsp;
		  Years   &nbsp;
		  <%=rs.getString(8)%>		  
		  Months						</td>
</tr> 
<tr>
<td  valign="top">Type of Salary expected:</td>
<td colspan="2"  valign="top"><p><%=rs.getString(5)%></p></td>
</tr>

<tr> 
<td class="formline" valign="top">Minimum Educational Qualifications required:</td>
<td colspan="2"><%=rs.getString(6)%></td>
</tr>	
<tr> 
<td class="formline" valign="top"><strong>Desired candidate profile</strong></td>
<td colspan="2" class="formline-right" valign="top"><%=rs.getString(9)%></td>
</tr>
<tr>
<tr class="h2"><td class="formline" valign="top"> <strong><strong>Job Description:</strong><strong></td>		
		<td colspan="2"class="formline-right" valign="top"><p><%=rs.getString(2)%></p></td>
		</tr>
		<tr>
		<td colspan="2" valign="top" class="formline" ><strong>Company profile:</strong></td>
		</tr>
		<tr>
<td class="formline" valign="top">Company</td>
<td colspan="2" class="formline-right" valign="top"><%=rs.getString(14)%></td>
</tr>
<tr>
<td class="formline" valign="top">Company emailid</td>
<td colspan="2" class="formline-right" valign="top"><%=rs.getString(15)%></td>
</tr>
</tbody></table>

		   <div align="right"><% if(emailid==null){%>
						    <p><input type="button" name="apply" value="apply" onClick="alert('please Login')"/>
						  <% }else if(emailid!=null){ 
						    	session.setAttribute("ce",rs.getString(15));
						  session.setAttribute("desg",rs.getString(1));
						  session.setAttribute("c",rs.getString(14));%>
						<script type="text/javascript">
function open_win()
{
window.open("http://localhost:8080/advancd/apply.jsp","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400");
}
</script><a href="javascript: void(0)" 
   onclick="window.open('http://localhost:8080/advancd/apply.jsp', 
  'windowname1', 
  'width=400, height=200'); 
   return false;" ><input name="apply" value="apply" type="button"   /></a><%} %>
						    <input type="submit"  name="back" value="back"/>
    </div>						
  </form>
</div>				
<%}
}//ifs
if(request.getParameter("searchfrm").equalsIgnoreCase("main")){
	// str= "SELECT *  FROM SONY.VACANCIES WHERE CATEGORY = '"+request.getParameter("jbc")+"'";					     
	 str= "SELECT VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID  FROM SONY.VACANCIES AS VACANCIES, SONY.PROFESSIONALNFO AS PROFESSIONALNFO  WHERE VACANCIES.EMAILID = PROFESSIONALNFO.EMAILID AND (VACANCIES.CATEGORY = '"+request.getParameter("fts")+"' OR  VACANCIES.JOB_LOCATION = '"+request.getParameter("loc")+"'OR VACANCIES.INDUSTRY = '"+request.getParameter("fts")+"' OR PROFESSIONALNFO.COMPANY ='"+request.getParameter("fts")+"'OR VACANCIES.JOB_DESCRIPTION ='"+request.getParameter("fts")+"' OR  VACANCIES.JOB_TITLE ='"+request.getParameter("fts")+"') GROUP BY VACANCIES.JOB_TITLE, VACANCIES.JOB_DESCRIPTION, VACANCIES.JOB_LOCATION, VACANCIES.EMPLOYMENT_TYPE, VACANCIES.TYPEOFSALARY, VACANCIES.EDU_QUALI, VACANCIES.EXP_YEARS, VACANCIES.EXP_MONTHS, VACANCIES.ADDIONAL_INFO, VACANCIES.EMAILID, VACANCIES.STATUS, VACANCIES.INDUSTRY, VACANCIES.CATEGORY, PROFESSIONALNFO.COMPANY, PROFESSIONALNFO.CMPNYEMAILID, PROFESSIONALNFO.DESIGNATION, PROFESSIONALNFO.EMAILID";
		System.out.println(str);
		rs= st.executeQuery(str);

while(rs.next()){%>
<div class="article">	
<form action="http://localhost:8080/advancd/homepage.jsp">
		 <table width="600" align="left" bordercolordark="#6633FF" frame="box" class="altrowstable" id="alternatecolor"><!--DWLayoutTable-->
<tbody>
<tr>
<td colspan="3" valign="top" class="formline1 headline-tunnel-colors" style="border-top: 0px none;"><strong>Job Details:</strong></td>
</tr>
<tr class="r2"> 
<td  valign="top"  width="300">Job Designation:&nbsp; </td>
<td  colspan="2"  valign="top"><p><%=rs.getString(1)%></p></td>
</tr>

<tr>		
<td width="26%">Category:</td>
<td colspan="2" > <%=rs.getString(13)%></td>
</tr>
<tr>
<td width="26%">Industry:</td>
<td colspan="2" ><%=rs.getString(12)%></td>
</tr>
<tr class="h3"> 
<td class="formline" style="padding-right: 0px;" valign="top">Job Location:</td>
<td colspan="2" class="formline-right" valign="top"><%=rs.getString(3)%></td>
</tr>
<tr class="r7"> 
<td valign="top">Employment Type:</td>
<td colspan="2" valign="top" height="53"><%=rs.getString(4)%>	</td>
</tr>
<tr>
<td  valign="top">Relevant Professional Experience that matches the desired job:</td>
<td  colspan="2"  valign="top"><%=rs.getString(7)%>&nbsp;
		  Years   &nbsp;
		   <%=rs.getString(8)%>		  
		  Months						</td>
</tr> 
<tr>
<td  valign="top">Type of Salary expected:</td>
<td colspan="2"  valign="top"><p><%=rs.getString(5)%></p></td>
</tr>

<tr> 
<td class="formline" valign="top">Minimum Educational Qualifications required:</td>
<td colspan="2"><%=rs.getString(6)%></td>
</tr>
<tr class="h2"><td class="formline" valign="top"> <strong><strong>Job Description:</strong><strong></td>		
<td colspan="2"class="formline-right" valign="top"><p><%=rs.getString(2)%></p></td>
</tr>	
<tr> 
<td class="formline" valign="top"><strong>Desired candidate profile</strong></td>
<td colspan="2" class="formline-right" valign="top"><%=rs.getString(9)%></td>
</tr>
<tr>
		<td colspan="2" valign="top" class="formline" ><strong>Company profile:</strong></td>
		</tr>
<tr>
<td class="formline" valign="top">Company</td>
<td colspan="2" class="formline-right" valign="top"><%=rs.getString(14)%></td>
</tr>
<tr>
<td class="formline" valign="top">Company emailid</td>
<td colspan="2" class="formline-right" valign="top"><%=rs.getString(15)%></td>
</tr>
</tbody></table>

		  <div align="right"><% if(emailid==null){%>
						    <p><input type="button" name="apply" value="apply" onClick="alert('please Login')"/>
						   <% }else if(emailid!=null){ 
						    	session.setAttribute("ce",rs.getString(15));
						  session.setAttribute("desg",rs.getString(1));
						  session.setAttribute("c",rs.getString(14));%>
						<script type="text/javascript">
function open_win()
{
window.open("http://localhost:8080/advancd/apply.jsp","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400");
}
</script><a href="javascript: void(0)" 
   onclick="window.open('http://localhost:8080/advancd/apply.jsp', 
  'windowname1', 
  'width=400, height=200'); 
   return false;" ><input name="apply" value="apply" type="button"   /></a><%} %>
						    <input type="submit"  name="back" value="back"/>
						   </div>						
						</form>
</div>				
<%}
}//ifscr
if(request.getParameter("searchfrm").equalsIgnoreCase("esl")){
	 str= "SELECT * FROM SONY.JFPROFESSIONALINFO  WHERE ( LOCATION = '"+request.getParameter("loc")+"'OR CATEGORY = '"+request.getParameter("fts")+"' OR DESIGNATION='"+request.getParameter("fts")+"')";
		    	 st= con.createStatement();
		    		System.out.println(str);
		    				rs= st.executeQuery(str);
		    				while(rs.next()){%>
<div class="article">
	<form action="http://localhost:8080/advancd/Searchrl.jsp">
		<table width="525" height="325" align="left" bordercolordark="#6633FF" frame="box" class="altrowstable" id="alternatecolor" >
		<tr>
		<td  > <h2 ><u>Professional info </u> </h2></td>
		<td width="230" >&nbsp;</td>
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
		<td  valign="top" >Job Designation:&nbsp; </td>		
		<td    valign="top"><%= rs.getString(2)%> </td>
	 </tr>
		<tr class="r4"> 
		<td  style="padding-right: 0px;" valign="top">Preferred Job Location:</td>
		<td   valign="top"  ><%= rs.getString(1)%>  </td>
		</tr>
		<tr>
  		<td  valign="top" width="283">Category:&nbsp; </td>		
		<td     valign="top"> <%= rs.getString(10)%></td>
		</tr>
		
		<tr>
		<td  valign="top">Relevant Professional Experience that matches the desired job:</td>
		<td   valign="top">
			<table border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
					<td colspan="4"></td>
					</tr>
					<tr>
					<td><%= rs.getString(5)%>&nbsp;Years &nbsp;&nbsp;&nbsp;</td>
					<td><%= rs.getString(6)%>Months</td>
					</tr>
				</tbody>
			</table>
		</td>
		</tr>
		<tr>
		<td  valign="top">Type of Salary expected:</td>
		<td valign="top"> <%=rs.getString(8)%>" </td>
		</tr>
		
</table>
  <div align="right"><% if(emailid==null){%>
						    <p><input type="button" name="downloadcv" value="downloadcv" onClick="alert('please Login')"/>
						    <% }else if(emailid!=null){ 
						    
						  session.setAttribute("ff",rs.getString(9));%>
						<script type="text/javascript">
function open_win()
{
window.open("http://localhost:8080/advancd/Downloadcv.jsp","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400");
}
</script><a href="javascript: void(0)" 
   onclick="window.open('http://localhost:8080/advancd/Downloadcv.jsp', 
  'windowname1', 
  'width=700, height=700'); 
   return false;" ><input name="downloadcv" value="downloadcv" type="button"   /></a><%} %>
						    <input type="submit"  name="back" value="back"/>
						   </div>						
	  </form>

</div>
			  <%  	} 
}//
if(request.getParameter("searchfrm").equalsIgnoreCase("sr")){
	 str= "SELECT * FROM SONY.JFPROFESSIONALINFO AS JFPROFESSIONALINFO WHERE (LOCATION = '"+request.getParameter("loc")+"' OR CATEGORY = '"+request.getParameter("jbc")+"' OR DESIGNATION='"+request.getParameter("fts")+"' )";      
		    	 st= con.createStatement();
		    		System.out.println(str);
		    				rs= st.executeQuery(str);
		    				while(rs.next()){%>
<div class="article">
	<form action="http://localhost:8080/advancd/Searchrl.jsp">
		<table width="525" height="325" align="left" bordercolordark="#6633FF" frame="box" class="altrowstable" id="alternatecolor">
		<tr>
		<td  > <h2 ><u>Professional info </u> </h2></td>
		<td width="264">&nbsp;</td>
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
		<td  valign="top" >Job Designation:&nbsp; </td>		
		<td    valign="top"><%= rs.getString(2)%> </td>
	 </tr>
		<tr class="r4"> 
		<td height="29" valign="top"  style="padding-right: 0px;">Preferred Job Location:</td>
		<td   valign="top"  ><%= rs.getString(1)%>" </td>
		</tr>
		<tr>
 		<td  valign="top" width="280">Category:&nbsp; </td>		
		<td     valign="top"> <%= rs.getString(10)%></td>
		</tr>
		
		<tr>
		<td  valign="top">Relevant Professional Experience that matches the desired job:</td>
		<td   valign="top">
			<table border="0" cellpadding="0" cellspacing="0">
				<tbody>
					<tr>
					<td colspan="4"></td>
					</tr>
					<tr>
					<td><%= rs.getString(5)%>&nbsp;Years &nbsp;&nbsp;&nbsp;&nbsp;</td>
					<td><%= rs.getString(6)%>Months</td>
					</tr>
				</tbody>
			</table>
		</td>
		</tr>
		<tr>
		<td  valign="top">Type of Salary expected:</td>
		<td valign="top"> <%=rs.getString(8)%>"  </td>
		</tr>
		
</table>
  <div align="right"><% if(emailid==null){%>
						    <p><input type="button" name="downloadcv" value="downloadcv" onClick="alert('please Login')"/>
						    <% }else if(emailid!=null){ 
						    
						  session.setAttribute("ff",rs.getString(9));%>
						<script type="text/javascript">
function open_win()
{
window.open("http://localhost:8080/advancd/Downloadcv.jsp","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400");
}
</script><a href="javascript: void(0)" 
   onclick="window.open('http://localhost:8080/advancd/Downloadcv.jsp', 
  'windowname1', 
  'width=700, height=700'); 
   return false;" ><input name="downloadcv" value="downloadcv" type="button"   /></a><%} %>
						    <input type="submit"  name="back" value="back"/>
						   </div>						
	  </form>
			</div>	

			  <%  	} 
}//
if(request.getParameter("searchfrm").equalsIgnoreCase("esf")){
str= "SELECT * FROM SONY.JFPROFESSIONALINFO  WHERE (CATEGORY = '"+ request.getParameter("loc")+"' LOCATION = '"+request.getParameter("fts")+"'  OR DESIGNATION='"+request.getParameter("fts")+"' )";

	System.out.println(str);
	
	rs= st.executeQuery(str);
	while(rs.next()){%>
	<div class="article">
		<form action="http://localhost:8080/advancd/Searchrf.jsp">
			<table width="525" height="325" align="left" bordercolordark="#6633FF" frame="box" class="altrowstable" id="alternatecolor">
			<tr>
			<td  > <h2 ><u>Professional info </u> </h2></td>
			<td width="352">&nbsp;</td>
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
			<td  valign="top">Job Designation:&nbsp; </td>		
			<td    valign="top"><%= rs.getString(2)%> </td>
		 </tr>
			<tr class="r4"> 
			<td  style="padding-right: 0px;" valign="top">Preferred Job Location:</td>
			<td  valign="top"  ><%= rs.getString(1)%>  </td>
			</tr>
			<tr>
	  		<td  valign="top" width="295">Category:&nbsp; </td>		
			<td    valign="top"> <%= rs.getString(10)%></td>
			</tr>
			<tr>
			<td  style="border-top: 0px none;" valign="top">&nbsp;</td>
			<td>&nbsp;</td>
			</tr>
			<tr>
			<td  valign="top">Relevant Professional Experience that matches the desired job:</td>
			<td  valign="top">
				<table border="0" cellpadding="0" cellspacing="0">
					<tbody>
						<tr>
						<td colspan="4"></td>
						</tr>
						<tr>
						<td><%= rs.getString(5)%>&nbsp;Years &nbsp;&nbsp;&nbsp;&nbsp;</td>
						<td><%= rs.getString(6)%>Months</td>
						</tr>
					</tbody>
				</table>
			</td>
			</tr>
			<tr>
			<td  valign="top">Type of Salary expected:</td>
			<td   valign="top"> <%=rs.getString(8)%> </td>
			</tr>
			
	</table>
	
						    <div align="right"><% if(emailid==null){%>
						    <p><input type="button" name="downloadcv" value="downloadcv" onClick="alert('please Login')"/>
						    <% }else if(emailid!=null){ 
						    
						  session.setAttribute("ff",rs.getString(9));%>
						<script type="text/javascript">
function open_win()
{
window.open("http://localhost:8080/advancd/Downloadcv.jsp","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400");
}
</script><a href="javascript: void(0)" 
   onclick="window.open('http://localhost:8080/advancd/Downloadcv.jsp', 
  'windowname1', 
  'width=700, height=700'); 
   return false;" ><input name="downloadcv" value="downloadcv" type="button"   /></a><%} %>
						    <input type="submit"  name="back" value="back"/>
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
			
				 
	

