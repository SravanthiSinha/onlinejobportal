<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Onlinejobportal</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
 <link rel="stylesheet" type="text/css" href="css/sddm.css" />
<script type="text/javascript" src="js/xpmenuv21.js"></script>
<script type="text/javascript">
function open_win() 
{
window.open("http://localhost:8080/advancd/Resumedetails.html");
}
</script><script type="text/javascript" src="js/register.js"></script>
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

<script type="text/javascript">
function open_win2() 
{
window.open("http://localhost:8080/advancd/help.html");
}
</script>
<!-- CuFon ends -->
<style type="text/css">
<!--
.style1 {
	color: #FFFFFF;
	font-size: 24px;
}
.style4 {font-size: 18px}
-->
</style>
<script type="text/javascript">
function altRows(id){
	if(document.getElementsByTagName){  
		
		var table = document.getElementById(id);  
		var rows = table.getElementsByTagName("tr"); 
		 
		for(i = 0; i < rows.length; i++){ 
		          if(i==0 ){
				rows[i].className = "";
				}
			else if(i % 2 == 0){
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
	border-color: #a9c6c9;
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
<div class="main">
<div class="header">
    <div class="header_resize">
   <%  
	int count=0;
	session=request.getSession(true);
	String str1 =(String)session.getAttribute("login");
	String str3 =(String)session.getAttribute("emailid");
	String str4 =(String)session.getAttribute("User");
	if (str3==null){
	session.setAttribute("emailid",request.getParameter("email"));
	
	}
	if(str4==null){
		session.setAttribute("User",request.getParameter("user"));
	}
	String str2 =(String)session.getAttribute("email");
	//session.setAttribute("ema",str2);
	if (str1==null){
		session.invalidate();
	response.sendRedirect("http://localhost:8080/advancd/homepage.jsp");
	}synchronized(this)
	{
		count++ ;
		}
	request.getParameter("emailid");
%>
      <div class="logo">
        <h1><span>JobHunt</span> <small>Experience the ultimate jobs </small></h1></div><div align="right"><a href="http://localhost:8080/advancd/logout.jsp"  class="style1"><img src="images/Sign LogOff.png" alt="Logout" width="49" height="34"/></a></div>
      <div class="clr" align="left" ><font color="white"> Welcome to Jobsekeer:<%=str2 %></font></div> 
      <div class="clr" align="right"><form method="post" action="http://localhost:8080/advancd/ChangePassword"><input type="submit" value="Changepassword" class="logout"/></form></div>
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
			<li><a href="Search.jsp" rel="dropmenu1">Search Jobs</a></li>
			
			<li><a href="#"  value="Open Window" onClick="open_win()" >UploadResume</a></li>
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
			<a href="Searchbyindustry.jsp">Jobs By Industry</a>
			<a href="Searchbycompany.jsp">Jobs By Company</a>
			<a href="Searchbylocation.jsp">Jobs By Location</a></div>
			
			
			
			<!--2nd drop down menu --> 
			<div id="dropmenu2" class="dropmenudiv" style="width: 150px;">
			<a href="Searchresumes.jsp">Advanced  Search</a>
			<a href="searchrf.html">Search By Function</a>
			<a href="Searchrl.jsp">Search By Location</a>		</div>

			<script type="text/javascript">
			cssdropdown.startchrome("chromemenu")
			</script>
		</div>
         
		
       
	   <div class="article" ><table><!--DWLayoutTable--><tr><td >
<div class="navbar" style="background-color:##d6dff7">
<!-- *********************************Start Menu****************************** -->
<div class="mainDiv"   >
			<div class="topItem" >My Profile </div>        
			<div class="dropMenu" ><!-- -->
				<div class="subMenu" style="display:inline;" id="countrytabs">
					<div class="subItem"><a href="gf.jsp" rel="countrycontainer">General info </a></div>
	        <div class="subItem"><a href="personalinfo.jsp" rel="countrycontainer" >Personal info </a></div>
		    <div class="subItem"><a href="professionalinfo.jsp" rel="countrycontainer" >Professional info </a></div>
					  <div class="subItem"><a href="edinfo.jsp" rel="countrycontainer" >Educational details </a></div>
					  
						</div>
					</div>
</div>
<!-- *********************************End Menu****************************** -->
<br>
<!-- *********************************Start Menu****************************** -->
<div class="mainDiv" style="border-color:highlighttext;border-color: silver;display:inline; " >
<div class="topItem" >Edit Profile </div>        
<div class="dropMenu" ><!-- -->
	<div class="subMenu" style="display:none;" id="countrytabs2">
		<div class="subItem"><a href="generalinfo.html" rel="countrycontainer">General info </a></div>
	 
		    <div class="subItem"><a href="professionalinfo.html" rel="countrycontainer" >Professional info </a></div>
		      <div class="subItem"><a href="edinfo.html" rel="countrycontainer" >Educational  info </a></div>
		        
		  
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
  
      
        

      <div class="clr"></div>
 
 <div ><jsp:include page="footer.jsp"/>
  </div>

</body>
</html>
