<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> <%@ page import ="java.util.*,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.*,java.io.IOException.*,javax.servlet.ServletException,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Onlinejobportal</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 <link rel="stylesheet" type="text/css" href="css/sddm.css" />
<script type="text/javascript" src="js/xpmenuv21.js"></script>
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


<!-- CuFon ends -->
<style type="text/css">
<!--
.style1 {color: #FFFFFF}
.style2 {
	font-size: 14px;
	font-weight: bold;
}
.style3 {font-size: 14px}
.style4 {font-size: 18px}
.style5 {
	font-size: 22px;
	text-align: center;
}
.style6 {
	color: #000000;
	font-weight: bold;
}
-->
</style>
</head>
<body>
<div class="main">
<div class="header">
    <div class="header_resize">
    <%!  Connection con;%>
<%
try{		
	String name=request.getParameter("User_Name");
	String pwd=request.getParameter("password");
	  if(name.equalsIgnoreCase("admin")&&pwd.equalsIgnoreCase("admin")){
	  
%>
    <div class="logo">
        <h1><a href="index.html"><span>JobHunt</span> <small>Experience the ultimate jobs </small></a></h1>
      </div><div align="right"><a href="http://localhost:8080/advancd/logout.jsp"  class="style1"><img src="images/Sign LogOff.png" alt="Logout" width="49" height="34"/></a></div><div class="clr" align="left" ><font color="white"> Welcome to Adminisrator</font></div> 
    
      <img src="images/mainpic1.jpg" width="978" height="219" alt="image" class="hbg_img" />
      <div class="clr"></div>
    </div></div>

  </div>     <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="menubar">
         <div class="chromestyle" id="chromemenu" >
			<ul>
			<li><a href="mainwidtabs.html">Home</a></li>
			<li><a href="#">Manage Employers</a></li>
			<li><a href="searchresumes.html">Generate reports</a></li>
			
			
			</ul>
		</div>

			

			<script type="text/javascript">
			cssdropdown.startchrome("chromemenu")
			</script>
		</div>
         
		
       
	   <div class="article" > <div class="clr"></div><form action="http://localhost:8080/advancd/JasperServlet" method="get">
	   <table align="center">
	   <tr><td>Enter the location</td><td><input type="text" name="location" id=location/>
	   <tr><td colspan="2" align="center"> <input type="submit" value="Generate" name="Generate" onClick=""/></td></tr>
	   </table></form>
</div> <div class="clr"></div>

        
        <p class="pages"><small>&nbsp;&nbsp;</small></p>
      
      <div class="sidebar">
        
     
		 <div class="clr"></div>
		
         </div>
      </div>
     
    </div>
  
      <%
	    }else{%> 
        <jsp:forward page="http://localhost:8080/advancd/adminlogin.html"></jsp:forward>
<%}}catch (Exception e){}
	  
 %>
      <div class="clr"></div>
 
 <div ><jsp:include page="footer.jsp"/>
  </div>

</body>
</html>
