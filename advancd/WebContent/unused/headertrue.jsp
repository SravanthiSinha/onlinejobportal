<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ page import ="java.util.*,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.*,java.io.IOException.*,javax.servlet.ServletException,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Onlinejobportal</title>


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
<style>
#displaybox {
	z-index: 10000;
	filter: alpha(opacity=50); /*older IE*/
	filter:progid:DXImageTransform.Microsoft.Alpha(opacity=50); /* IE */
	-moz-opacity: .50; /*older Mozilla*/
	-khtml-opacity: 0.5;   /*older Safari*/
	opacity: 0.5;   /*supported by current Mozilla, Safari, and Opera*/
	background-color:#000000;
	position:fixed; top:0px; left:0px; width:100%; height:100%; color:#FFFFFF; text-align:center; vertical-align:middle;
}
</style>
<script>
function clicker(){
	var thediv=document.getElementById('displaybox');
	if(thediv.style.display == "none"){
		thediv.style.display = "";
		thediv.innerHTML = "<EMBED src="+"http://localhost:8080/advancd/sign.jsp"+" WIDTH = 800 HEIGHT = 600 ></EMBED><tr><td><label><input type="+"submit"+"name="+"Sign In"+"value="+"Sign In"+" /></label>			 </td><td colspan="+"2"+"><a href="+"http://localhost:8080/advancd/Registration.jsp"+">Register now</a></td></tr><tr><td height="+"5"+"></td><td><img src="+"images/spacer.gif"+"alt="" width="+"118"+"height="+"1"+"/></td><td><img src="+"images/spacer.gif"+" alt="" width="+"-2"+" height="+"1"+"/></td></tr></table></form><br><br><a href='#' onclick='return clicker();'>CLOSE WINDOW</a>";
			}else{
		thediv.style.display = "none";
		thediv.innerHTML = '';
	}
	return false;
}
</script>
</head>
<body>
<div class="header">
    <div class="header_resize">
   
      <div class="logo">
      <h1><span>JobHunt</span> <small>Experience the ultimate jobs </small></h1></div><div align="right"><div id="displaybox" style="display: none;"></div>
<a href='#' onclick='return clicker();'>Open Window</a></div>
      <div class="clr"></div>
      <img src="images/mainpic1.jpg" width="978" height="219" alt="image" class="hbg_img" />
      <div class="clr"></div>
    </div></div>
</body>
</html>