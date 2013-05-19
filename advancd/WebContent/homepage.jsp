<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<%@ taglib prefix="c" uri = "http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jstl/fmt"%>

<fmt:setBundle basename="resource"/>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><fmt:message key="OnlineJobPortal"/></title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%--  for feed back--%>
<script type="text/javascript">
function open_win2() 
{
window.open("http://localhost:8080/advancd/help.html");
}
</script>

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
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
  }

//xmlhttp.open("GET","Searching.jsp?searchfrm="+document.getElementsByName("searchfrm").value+"&loc="+document.getElementsByName("loc").value+"&fts="+document.getElementsByName("fts").value,true);
xmlhttp.open("GET","Searching.jsp?searchfrm="+document.getElementById("searchfrm").value+"&loc="+document.getElementById("loc").value+"&fts="+document.getElementById("fts").value,true);
xmlhttp.send();
}
</script>
<style type="text/css">
<!--
.style2 {font-size: 16px}
-->
</style>
</head>
<body>

<%! int i=0; %>


<div class="main">
<jsp:include page="header.jsp"></jsp:include>
</div>
     <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="menubar">
         <div class="chromestyle" id="chromemenu" >
			<ul>
			<li><a href="homepage.jsp"><fmt:message key="home" /></a></li>
			<li><a href="Search.jsp" rel="dropmenu1"><fmt:message key="searchjob"/></a></li>
			<li><a href="Searchresumes.jsp" rel="dropmenu2"><fmt:message key="searchresume"/></a></li>
			<li><a href="#" value="Open Window" onClick="open_win2()">Help</a></li>
			
			</ul>
		</div>
<div class="clr"></div>
			 <!--1st drop down menu -->
			 <span class="style4"></span>
			 <div id="dropmenu1" class="dropmenudiv" style="width: 165px;">
			<a href="Search.jsp"><fmt:message key="Advancejobsearch"/></a>
			<a href="SearchbyCategory.jsp"><fmt:message key="jobbycategory"/></a>
			<a href="Searchbyindustry.jsp"><fmt:message key="jobbyindustry"/></a>
			<a href="Searchbycompany.jsp"><fmt:message key="jobbycompany"/></a>
			<a href="Searchbylocation.jsp"><fmt:message key="jobbylocation"/></a></div>
			
			
			
			<!--2nd drop down menu --> 
			<div id="dropmenu2" class="dropmenudiv" style="width: 150px;">
			<a href="Searchresumes.jsp"><fmt:message key="advancesearch"/></a>
			<a href="Searchrf.jsp"><fmt:message key="searchjobbyfun"/></a>
			<a href="Searchrl.jsp"><fmt:message key="searchjobbylocation"/></a>		</div>

			<script type="text/javascript" >
			cssdropdown.startchrome("chromemenu")
			</script>
		</div>
       <div class="searchbar">
         <table width="100%" cellpadding="10px"  bgcolor="#E0E0D7" class="table1" ><!--DWLayoutTable-->
			  <tr>
			  <td width="31"><fmt:message key="What"/>:<input type="hidden" name="searchfrm" value="main" id="searchfrm" /></td>
			  <td width="170" ><span class="hintanchor" onclick="showhint('Enter the keyword.', this, event, '110px')"><input type="text" name="fts" id="fts"    /></span> </td>
			  <td width="39"><fmt:message key="Where"/>:</td><td width="170"> <span class="hintanchor" onclick="showhint('Enter the Location.', this, event, '110px')"><input type="text" name="loc"  id=loc   /></span> </td>
			  <td width="100%" ><button type="button" onClick="loadXMLDoc()" ><fmt:message key="Search"/></button></td></tr>
			  <tr><td colspan="2"><fmt:message key="eg1"/> </td><td colspan="3">
				<fmt:message key="eg2"/></td></tr>
		</table>
       </div>
		
       
 <div class="article" id="myDiv">
 <ul id="countrytabs" class="shadetabs">
<li><a href="#" class="selected" rel="#default" ><fmt:message key="JobSeeker"/></a></li>
<li><a href="external2.jsp" rel="countrycontainer"><fmt:message key="Employer"/></a></li>
</ul>

  	<div id="countrydivcontainer" style="border:1px solid gray; width:450px; margin-bottom: 1em; padding: 10px">
		   <div >
         		<table>
				<tr>
				<td height="247" width="444">
					<div align="left"><h2><i> <fmt:message key="benfit"/></i></h2>
						<table border="0" cellpadding="0" cellspacing="0" width="90%">
					    <tbody>
						<tr>
							  <td colspan="2" height="23">&nbsp;</td>
							</tr>
							<tr>
							  <td valign="top" width="7%"><div></div></td>
							  <td width="94%"><span class="style6"><li><fmt:message key="cstm"/></li></span><br />
								
							</tr>
							
							<tr>
							  <td colspan="2" height="23">&nbsp;</td>
							</tr>
							<tr>
							  <td valign="top" ><div></div></td>
							  <td><li><span class="style6"><fmt:message key="recruite"/></span></li>
							   <li> <fmt:message key="recruitec"/></li>
							  </td>
							</tr>
							
					  </tbody>
					 </table>
				  </div>
      	   		</td>
	   		</tr>
	   	</table>
       </div>
    </div>
			<script type="text/javascript">
			
			var countries=new ddajaxtabs("countrytabs", "countrydivcontainer")
			countries.setpersist(true)
			countries.setselectedClassTarget("link") //"link" or "linkparent"
			countries.init()
			
			</script>
	 </div>
      </div>
        
        <p class="pages"><small>&nbsp;&nbsp;</small></p>
      
      <div class="sidebar" >
	  <div class="gadget" style="border-style: solid;border-color: #C6EEFB" >
	  <div align="center">

        <h2><fmt:message key="valuea"/></h2>
	  </div>
</div>
<div class="clr"></div></div><div class="clr"></div>
  </div>
  <div ><jsp:include page="footer.jsp"/>
  </div>

</body>
</html>
