<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ page import="java.sql.*" %>
    <%@ taglib prefix="c" uri = "http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jstl/fmt"%>

     <%@ page import ="java.util.*,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.*,java.io.IOException.*,javax.servlet.ServletException,java.io.*" %>
   
<fmt:setBundle basename="resource"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><fmt:message key="OnlineJobPortal"/></title>
<link rel="stylesheet" type="text/css" href="css/project.css"/> 
<script type="text/javascript" src="js/register.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
 <link href="css/chromestyle.css" rel="stylesheet" type="text/css" />
 <link href="css/ajaxtabs2.css" rel="stylesheet" type="text/css" />
  <link href="css/hint.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
 <script type="text/javascript" src="js/chrome.js"></script>
<script type="text/javascript" src="js/ajaxtabs2.js"></script>
<script type="text/javascript" src="js/hint.js"></script>
<script type="text/javascript" src="js/validation.js"></script>
<script type="text/javascript" src="js/disableenter.js"></script>
<link href="css/style.css" rel="stylesheet" type="text/css" />
 <link href="css/chromestyle.css" rel="stylesheet" type="text/css" />
 <link href="css/search.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/dddropdownpanel.css" />

<script type="text/javascript" src="js/dddropdownpanel.js"></script>
<style>
#displaybox {
	z-index: 10000;
	filter: alpha(opacity=50); /*older IE*/
	filter:progid:DXImageTransform.Microsoft.Alpha(opacity=50); /* IE */
	-moz-opacity: .50; /*older Mozilla*/
	-khtml-opacity: 0.5;   /*older Safari*/
	opacity: 0.5;   /*supported by current Mozilla, Safari, and Opera*/
	
	position:fixed; top:0px; left:0px; width:100%; height:100%;  text-align:center; vertical-align:middle;
}
</style>
<script>
function clicker(){
	var thediv=document.getElementById('displaybox');
	if(thediv.style.display == "none"){
		thediv.style.display = "";
		thediv.innerHTML = "<EMBED src="+"http://localhost:8080/advancd/help.html"+" WIDTH = 800 HEIGHT = 500 ></EMBED><br><br><a href='#' onclick='return clicker();'>CLOSE WINDOW</a>";
	}else{
		thediv.style.display = "none";
		thediv.innerHTML = '';
	}
	return false;
}
</script>
<!-- CuFon ends -->
<style type="text/css">
<!--
.style4 {font-size: 18px}
.style8 {
	font-size: 12px;
	font-weight: bold;
}
.style9 {
	font-size: 12px;
	padding: 2px 2px 2px 2px;
}
.style11 {color: #FFFFFF}
-->
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
<script language="javascript" type="text/javascript">
function usernameAjax(usrname,USER,pawd,frm)
					{
						
						var xmlhttp;
						
						if (window.XMLHttpRequest)
  							{
							  xmlhttp=new XMLHttpRequest();
  							}
						else	
  							{
 	  						xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  							}
							xmlhttp.onreadystatechange=function()
							{
							if(xmlhttp.readyState==0||xmlhttp.readyState==1||xmlhttp.readyState==2||xmlhttp.readyState==3){
								document.getElementById("req").innerHTML="<img id='req' src='images/loading.gif'/>";
							}
							if(xmlhttp.readyState==4)
  								{
  								document.getElementById("req").innerHTML="<div id='req'></div>";
  								document.getElementById("emaillab1").innerHTML=xmlhttp.responseText;
  								namecheck=xmlhttp.responseText;
  								}
						}
						xmlhttp.open("GET","CheckUser.jsp?uname="+usrname+"&user="+USER+"&pawd="+pawd+"&frm="+frm,true);
						xmlhttp.send(null);
						}</script>
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
					  
					    String User =(String)session.getAttribute("User"); 
						   String emailidssn=(String)  session.getAttribute("emailid");
						   System.out.println(emailidssn);
						   
						   %>
<div class="header">
    <div class="header_resize">
   
      <div class="logo">
        <h1><span>JobHunt</span> <small><fmt:message key="Experiencetheultimatejobs"/></small> 	</h1><div>     
        <div class="clr"></div><% if(emailidssn==null){%>
      <div align="center">
<div id="mypanel" class="ddpanel"  >
<div id="mypanelcontent" class="ddpanelcontent" >

<form action="http://localhost:8080/advancd/signinController" method="get">
		
		  <input type="hidden" name="main" value="main"/>
		  <input type="hidden" name="search" value="man"/>
		  <input type="hidden" name="register" value="main"/>
		  <input type="hidden" name="searchindustry" value=""/>
		  <input type="hidden" name="searchcategory" value=""/>
		  <input type="hidden" name="searchlocation" value=""/>
		  <input type="hidden" name="searchcompany" value=""/>
    
		
		      
         <table width="987"  height="78"   align="center"  class="table1" ><!--DWLayoutTable-->		  
		    <tr class="t3" >
			<td width="94"><span class="style8"><fmt:message key="EmailId"/>:</span></td>
			 <TD width="206"> <input type="text"  class="regform"  id ="email" name="emailid" style="color:#999999" onFocus="removeTag('email');" onBlur="putTag('email');"  /></TD>
          <td width="96" align="center" valign="middle"><div style="visibility:hidden" align="left" id="labemail"><img id="emailimg" src="images/wrong3.png" height="20" width="25" alt="dec"></div></td>
         			
			
		    
			<td width="70"  height="47"><strong><span class="style9"><fmt:message key="Password"/>:</span></strong></td>
			<TD width="203"> <input type="password" class="regform hintanchor" name="password" onBlur="putTag('pwd');" id="pass_word"  onclick="showhint('Enter the Password', this, event, '120px')" ></TD>
        <td width="51" align="center" valign="middle"><div style="visibility:hidden" align="left" id="labpwd"><img id="pwdimg" src="images/wrong3.png" height="25" width="25" alt="dec"></div></td><td width="235" colspan="2" > <label>
             <input name="User" id="User" type="radio" value="employeer" checked="checked"/>
          <span class="style9" ><strong><fmt:message key="Employer"/></strong></span></label>			 </TD>
        </tr>
		 <tr class="t3" ><td colspan="3"><div id="emaillab" align="center"></div></td>
			
			<td colspan="3"><div id="pwdlab" align="center"></div></td>
			
			<td colspan="2" >
 			<span class="style4">
 			<label>
 			<input name="User" id="User" type="radio" class="t3" value="jobseeker" />
 			<span class="style8"><fmt:message key="Jobseeker"/></span></label>
		  </span>			</td>
		   </tr> <input type="hidden" id="checking" value="main"/>
		   <tr><td colspan="3"></td><div id="emaillab2"></div><td ><div align="left"><input type="submit" name="Sign In" value="Submit"  align="absmiddle"  onClick="usernameAjax(document.getElementById("email").value,document.getElementById("pass_word").value),document.getElementById("User").value,document.getElementById("checking").value);" /></div></td><td colspan="3"><div id="req"></div></td></tr>
</table>	
        
</form>
<table width="100%" >
  <tr><td width="500">
<div align="left">
<span class="style11">
<%--/*<form action="http://localhost:8080/advancd/Registration.jsp" method="get">
<input type="submit" name="register" value ="register"/>
<input type="hidden" name="main" value="in"/>
		<input type="hidden" name="search" value="man"/>
		</form>
        </div><div>*/--%>
		
        <a href="javascript:sendPassword();" ><font color="#FFFFFF"><fmt:message key="AlreadyregisteredbutForgotPassword"/>? </font></a></span> </div></td><td width="502"><div align="center"><fmt:message key="noidnpwd"/>&nbsp; <a href="http://localhost:8080/advancd/Registration.jsp"><fmt:message key="Registernow"/></a></div> </td></tr></table>
</div><div class="clr"></div>
  
<div id="mypaneltab" class="ddpaneltab" align="right">
<a href="#"><span><font color="#FFFFFF"><fmt:message key="Login"/></font></span></a>
</div> </div></div> </div>
      <img src="images/mainpic1.jpg" width="978" height="112" alt="image" class="hbg_img" />
	  <% }else if(emailidssn!=null){ %></div>
      <img src="images/mainpic1.jpg" width="978" height="112" alt="image" class="hbg_img" />
      <%  	} 
					    }
					    
					    catch (Exception e) {
	    e.printStackTrace(); }%>
  </div></div>
</body>
</html>