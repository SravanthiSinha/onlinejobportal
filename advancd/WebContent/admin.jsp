<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> <%@ page import ="java.util.*,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.*,java.io.IOException.*,javax.servlet.ServletException,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Onlinejobportal</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 <link rel="stylesheet" type="text/css" href="css/sddm.css" />
 <link rel="stylesheet" type="text/css" href="css/sddm2.css" />
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
    <%!  Connection con; %>
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
			<li><a href="homepage.jsp">Home</a></li>
			
			</ul>
		</div>
<div class="clr"></div>
	
         
		
       
	   <div class="article" ><table><!--DWLayoutTable--><tr><td >
<div class="navbar" style="background-color:##d6dff7">
<!-- *********************************Start Menu****************************** -->
<div class="mainDiv"   >
			<div class="topItem" >Manage users </div>        
			<div class="dropMenu" ><!-- -->
				<div class="subMenu" style="display:inline;" id="countrytabs">
					<div class="subItem"><a href="emp.jsp" rel="countrycontainer"> employeers</a></div>
	                <div class="subItem"><a href="job.jsp" rel="countrycontainer" >jobseekers </a></div>
		 
					  
						</div>
					</div>
</div>
<!-- *********************************End Menu****************************** -->
<br>
<!-- *********************************Start Menu****************************** -->
<div class="mainDiv" style="border-color:highlighttext;border-color: silver;display:inline; " >
<div class="topItem" >Generate Reports </div>        
<div class="dropMenu" ><!-- -->
	<div class="subMenu" style="display:none;" id="countrytabs2">
		<div class="subItem"><a href="Report.jsp" rel="countrycontainer">Countrywise </a></div>
	 
		    <div class="subItem"><a href="Report.jsp" rel="countrycontainer" >statewise</a></div>
		      <div class="subItem"><a href="Report.jsp" rel="countrycontainer" >citywise </a></div>
		           <div class="subItem"><a href="Report.jsp" rel="countrycontainer" >Qualification wise </a></div>
				      <div class="subItem"><a href="Report.jsp" rel="countrycontainer" >Experience wise </a></div>
		  
	</div>
</div>
</div>
<!-- *********************************End Menu****************************** -->

<div class="mainDiv" style="border-color:highlighttext;border-color: silver;display:inline; " >
<div class="topItem" >Approve Vacancies </div>        
<div class="dropMenu" ><!-- -->
	<div class="subMenu" style="display:none;" id="countrytabs3">
		<div class="subItem"><a href="approve.jsp" rel="countrycontainer" >Approve</a></div>
	</div>
</div>
</div>
<!-- *********************************End Menu****************************** -->



<script type="text/javascript" src="js/xpmenuv21.js"></script>
</div>
</td><td>
<div id="countrydivcontainer"  width:700px; margin-bottom: 1em; padding: 10px">
<p>This is some default tab content, embedded directly inside this space and not via Ajax. It can be shown when no tabs are automatically selected, or associated with a certain tab, in this case, the first tab.</p>
</div>

<script type="text/javascript">

var countries=new ddajaxtabs("countrytabs", "countrydivcontainer")
countries.setpersist(true)
countries.setselectedClassTarget("link") //"link" or "linkparent"
countries.init()
var countries2=new ddajaxtabs("countrytabs2", "countrydivcontainer")
countries2.setpersist(true)
countries2.setselectedClassTarget("link") //"link" or "linkparent"
countries2.init()
var countries3=new ddajaxtabs("countrytabs3", "countrydivcontainer")
countries3.setpersist(true)
countries3.setselectedClassTarget("link") //"link" or "linkparent"
countries3.init()



</script></td></tr></table>
</div>

        
        <p class="pages"><small>&nbsp;&nbsp;</small></p>
      
      <div class="sidebar">
        
     
		 <div class="clr"></div>
		
         </div>
      </div>
     
    </div>
     <%
	    }else{%> 
        <jsp:forward page="http://localhost:8080/advancd/admin.html"></jsp:forward>
<%}}catch (Exception e){}
	  
 %>
      <div class="clr"></div>
 
 <div ><jsp:include page="footer.jsp"/>
  </div>

</body>
</html>
