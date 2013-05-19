<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%HttpSession hs=request.getSession();
		if(hs.isNew()){
			response.sendRedirect("http://localhost:8080/advancd/homepage.jsp");
		System.out.println("im new");
		} else{
			System.out.println("im old");
		}%>
<html xmlns="http://www.w3.org/1999/xhtml">

<head>
<title>Onlinejobportal</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%--  for feed back--%>
<script type="text/javascript">
function open_win2() 
{
window.open("http://localhost:8080/advancd/help.html");
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
<script language="javascript">
function sendPassword(){
var pass=prompt("We will send your password to your mail id.","Give your user name here");
if(x!=""){
	var xmlhttp;
	if (window.XMLHttpRequest)
  					{
  					// code for IE7+, Firefox, Chrome, Opera, Safari
  					xmlhttp=new XMLHttpRequest();
  					}
				else
  					{
  					// code for IE6, IE5
  					
  					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  					}
					xmlhttp.onreadystatechange=function()
						{
					
									if(xmlhttp.readyState==4)
  											{  										 
  													document.getElementById("pass").innerHTML="Password sent through mail";
  											}
						
  						}
  					xmlhttp.open("get","http://localhost:8080/advancd/Forgotpassword?username="+pass,true);							
					xmlhttp.send(null);
		}

}<%--  for feed back--%>
</script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%!Connection con; %>
<%!Statement st; %>
	<%!public void jspInit(){
		try{
		ServletContext ctx=getServletContext();
	con=(Connection)ctx.getAttribute("Connection");
	st=con.createStatement();
		}catch(Exception e){
			e.printStackTrace();
		}	
	}
 %>
<title>Forums</title>
<script type="text/javascript">

function addforum(){
document.getElementById("divnew").innerHTML="<table><tr> <td>Subject:</td> <td><input type='text' id='newsubject' name='newsubject' width='200' /></td>	</tr><tr> <td >Message:</td>  <td><input type='text' id='newmessage' name='newmessage' width='200' height='400' /></td></tr> <tr> <td><input type='button' value='Cancel' onclick='newforum(\"no\")' /> </td> <td><input type='button' value='Submit' onclick='newforum(\"yes\")' /></td> </tr></table>";
}

function newforum(x){
	if(x=="yes"){
	var xmlhttp;
				if (window.XMLHttpRequest)
  					{
  					// code for IE7+, Firefox, Chrome, Opera, Safari
  					xmlhttp=new XMLHttpRequest();
  					}
				else
  					{
  					// code for IE6, IE5
  					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  					}
					xmlhttp.onreadystatechange=function()
									{
									if(xmlhttp.readyState==4)
  											{  
 												
 												window.location.reload();
 											}
									}
					var d=new Date();
					var date=d.getDate()+"/"+(d.getMonth()+1)+"/"+d.getFullYear();		
					xmlhttp.open("get","http://localhost:8080/advancd/forum?newsubject="+document.getElementById("newsubject").value+"&newmessage="+document.getElementById("newmessage").value+"&date="+date,true);
	        		xmlhttp.send(null);
	       	}
	document.getElementById("divnew").innerHTML="";
}

function expand(x,type,y){

				var xmlhttp;
				if (window.XMLHttpRequest)
  					{
  					// code for IE7+, Firefox, Chrome, Opera, Safari
  					xmlhttp=new XMLHttpRequest();
  					}
				else
  					{
  					// code for IE6, IE5
  					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  					}
					xmlhttp.onreadystatechange=function()
									{
									if(xmlhttp.readyState==4)
  											{  
  												
  												document.getElementById("forumdiv").innerHTML=xmlhttp.responseText;
 											}
									}
					var d=new Date();
					var date=d.getDate()+"/"+d.getMonth()+"/"+d.getYear();		
					xmlhttp.open("get","http://localhost:8080/advancd/Forumexpand?subject="+x+"&num="+y+"&type="+type,true);
	        		xmlhttp.send(null);

}

function showpan(){
document.getElementById("addcomm").innerHTML="<textarea name='commentarea' id='commentarea' cols='50' rows='3'></textarea><br><input type='button' value='Add Comment' onclick='postcom()' /><input type='reset' value='Cancel' onclick='closepan()'/>"
}

function closepan(){
document.getElementById("addcomm").innerHTML=""
}

function postcom(){

				var xmlhttp;
				if (window.XMLHttpRequest)
  					{
  					// code for IE7+, Firefox, Chrome, Opera, Safari
  					xmlhttp=new XMLHttpRequest();
  					}
				else
  					{
  					// code for IE6, IE5
  					xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  					}
  					
					xmlhttp.onreadystatechange=function()
									{
									if(xmlhttp.readyState==4)
  											{  
  												//alert("Forum posted");
  												//document.getElementById("forumdiv").innerHTML=xmlhttp.responseText;
  					expand(document.getElementById("subject").value,"plus",document.getElementById("posttotal").value);
 											}
									}
									
					var d=new Date();
					var date=d.getDate()+"/"+(d.getMonth()+1)+"/"+d.getFullYear();	
					
					
						
					xmlhttp.open("post","http://localhost:8080/advancd/Forumexpand?comment="+document.getElementById("commentarea").value+"&subject="+document.getElementById("subject").value+"&posttotal="+document.getElementById("posttotal").value+"&date="+date,true);
	        		xmlhttp.send(null);

}
</script>

<link rel="stylesheet" type="text/css" href="css/project.css"/>
<link rel="stylesheet" type="text/css" href="css/chromestyle.css"/>
</head>
<body>

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
					  
					    String User =(String)session.getAttribute("User"); 
						   String emailid=(String)  session.getAttribute("emailid");
						   System.out.println(emailid);
						   
						   %>
<div class="main">
<jsp:include page="header.jsp"></jsp:include>
  </div>
     <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="menubar">
         <div class="chromestyle" id="chromemenu" >
			<ul><%if(User.equalsIgnoreCase("Employeer") ){ %>
				<li><a href="Employeer.jsp">Home</a></li><% } %>
				<%if(User.equalsIgnoreCase("Jobseeker") ){ %>
				<li><a href="jobseeker.jsp">Home</a></li><% } %>
			<li><a href="Search.jsp" rel="dropmenu1">Search Jobs</a></li>
			<li><a href="Searchresumes.jsp" rel="dropmenu2">Search Resumes</a></li>
			
			<li><a href="forum.jsp" >Forum</a></li>
			 <li><a href="#" value="Open Window" onClick="open_win2()">Help</a></li>
			
			</ul>
		</div>
<div class="clr"></div>
			 <!--1st drop down menu -->
			 <span class="style4"></span>
			 <div id="dropmenu1" class="dropmenudiv">
			<a href="Search.jsp">Advanced Job Search</a>
			<a href="SearchbyCategory.jsp">Jobs By Category</a>
			
			<a href="Searchbycompany.jsp">Jobs By Company</a>
			<a href="Searchbylocation.jsp">Jobs By Location</a></div>
			
			
			
			<!--2nd drop down menu --> 
			<div id="dropmenu2" class="dropmenudiv" style="width: 150px;">
			<a href="Searchresumes.jsp">Advanced  Search</a>
			<a href="Searchrf.jsp">Search By Function</a>
			<a href="Searchrl.jsp">Search By Location</a>		</div>

			<script type="text/javascript">
			cssdropdown.startchrome("chromemenu")
			</script>
		</div>	
       
 <div class="article">
 

<table align="center" bgcolor="white">
<tr><td>
<table width="800" align="center">
		<tr>
			<td  align="center">
				<table align="center">
					<tr>
						<td width="400" align="center">&nbsp;</td>
					  	<td width="175" valign="top"><font color="#ffffff"><label>Welcome <b><%=(String)hs.getAttribute("emailid")%></b></label></font></td>
						<td width="175" align="right" valign="top"><form method="post" action="http://localhost:8080/advancd/ChangePassword">
						</form></td>			  </table>
		  </td>
		</tr>
	</table>
</td></tr>


<tr><td>

<legend><b>Forums</b></legend>
<div id="forumdiv">
<table width="702" height="158" class="altrowstable" id="alternatecolor">
<tr><th width="202" height="42" >Subject</th> 
<th width="217" >Posted By</th> 
<th width="207">Posted On</th> 
</tr>
<%try{
	ResultSet rs=st.executeQuery("select distinct * from sony.forum where snum=1 order by forum_subject asc");
	while(rs.next()){%>
	<tr><td height="99" ><a href="javascript:expand('<%=rs.getString(1)%>','plus',4);" ><%=rs.getString(1)%></a></td> <td><%=rs.getString(2)%>:<%=rs.getString(3) %></td> <td bgcolor="#FFFFFF"><%=rs.getString(7)%> <input type="hidden" id="<%=rs.getString(1)%>num" value="<%=rs.getString(8)%>" /></td>	</tr>	
	<%}
	}catch(Exception e){
		e.printStackTrace();
	}%>
</table>
</div>
<div class="suba"><a href="javascript:addforum()">Add New Forum </a></div>
<div id="divnew"></div></td></tr></table></div>

</div>
  <div class="clr"></div>
    <div class="clr"></div>
 

  </div></div>
  <% }catch (Exception e){e.printStackTrace();} %>
  <div ><jsp:include page="footer.jsp"/>
  </div>

</body>
</html>


