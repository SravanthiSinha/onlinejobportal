<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">


<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Onlinejobportal</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<%--  for feed back--%>

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
			<li><a href="homepage.jsp">Home</a></li>
			<li><a href="Search.jsp" rel="dropmenu1">Search Jobs</a></li>
			<li><a href="Searchresumes.jsp" rel="dropmenu2">Search Resumes</a></li>
			
			
			</ul>
		</div>
<div class="clr"></div>
			 <!--1st drop down menu -->
			 <span class="style4"></span>
			 <div id="dropmenu1" class="dropmenudiv" style="width: 165px;">
			<a href="Search.jsp">Advanced Job Search</a>
			<a href="SearchbyCategory.jsp">Jobs By Category</a>
			<a href="Searchbyindustry.jsp">Jobs By Industry</a>
			<a href="Searchbycompany.jsp">Jobs By Company</a>
			<a href="Searchbylocation.jsp">Jobs By Location</a></div>
			
			
			
			<!--2nd drop down menu --> 
			<div id="dropmenu2" class="dropmenudiv" style="width: 150px;">
			<a href="Searchresumes.jsp">Advanced  Search</a>
			<a href="Searchrf.jsp">Search By Function</a>
			<a href="Searchrl.jsp">Search By Location</a>		</div>

			<script type="text/javascript" >
			cssdropdown.startchrome("chromemenu")
			</script>
		</div>
       <div class="searchbar">
         <table width="100%" cellpadding="10px"  bgcolor="#E0E0D7" class="table1" ><!--DWLayoutTable-->
			  <tr>
			  <td width="31">What:<input type="hidden" name="searchfrm" value="main" id="searchfrm" /></td>
			  <td width="170" ><span class="hintanchor" onclick="showhint('Enter the keyword.', this, event, '110px')"><input type="text" name="fts" id="fts"  value=""    /></span> </td>
			  <td width="39">Where:</td><td width="170"> <span class="hintanchor" onclick="showhint('Enter the Location.', this, event, '110px')"><input type="text" name="loc"  id=loc value=""  /></span> </td>
			  <td width="100%" ><button type="button" onClick="loadXMLDoc()" >Search</button></td></tr>
			  <tr><td colspan="2">e.g. HR, Java, Marketing, </td><td colspan="3">
				e.g. Hyderabad, 500001, Uttar Pradesh, USA</td></tr>
		</table>
       </div>
		
       
 <div class="article" id="myDiv">
 <ul id="countrytabs" class="shadetabs">
<li><a href="#" class="selected" rel="#default" >JobSeeker</a></li>
<li><a href="external2.htm" rel="countrycontainer">Employer</a></li>
</ul>

  	<div id="countrydivcontainer" style="border:1px solid gray; width:450px; margin-bottom: 1em; padding: 10px">
		   <div >
         		<table>
				<tr>
				<td height="247" width="444">
					<div align="left"><h2><i> Member/Registered User Benefits...</i></h2>
						<table border="0" cellpadding="0" cellspacing="0" width="90%">
					    <tbody>
							<tr>
							  <td valign="top" width="7%"><div></div></td>
							  <td width="94%"><span class="style6">Create Customized 'Job Alert'</span><br />
								Get Jobs regularly in your inbox by creating up to 5 personalized Job Alert</td>
							</tr>
							<tr>
							  <td colspan="2" height="23">&nbsp;</td>
							</tr>
							<tr>
							  <td valign="top"><div></div></td>
							  <td><span class="style6">Create Multiple Profiles</span><br />
								Create upto 5 customized profiles to apply to jobs in different categories</td>
							</tr>
							<tr>
							  <td colspan="2" height="23">&nbsp;</td>
							</tr>
							<tr>
							  <td valign="top" ><div></div></td>
							  <td><span class="style6">Let Recruiters find you the right job</span><br />
								Thousands of recruiters search our database daily to find candidates. Get found by them </td>
							</tr>
							<tr>
							  <td colspan="2" height="23">&nbsp;</td>
							</tr>
							<tr >
							  <td valign="top"><div></div></td>
							  <td><span class="style6">Confidentiality &amp; Privacy Settings</span><br />
								Define your privacy level. Block your current employer from  accessing your profile. </td>
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
		<form action="http://localhost:8080/advancd/signinController" method="get">
		<input type="hidden" name="main" value="main"/>
		<input type="hidden" name="search" value="man"/>
		<input type="hidden" name="register" value="main"/>
		<input type="hidden" name="searchindustry" value=""/>
		<input type="hidden" name="searchcategory" value=""/>
		<input type="hidden" name="searchlocation" value=""/>
		<input type="hidden" name="searchcompany" value=""/>
          <h2 class="style5"  >Offers</h2>
          <p class="style5" >&nbsp;</p>
          <table width="100%" align="center"  class="table1" ><!--DWLayoutTable-->
		  <div class="clr"></div>
		  <div class="clr"></div>
		    
		  <div class="clr"></div>
        
           
           
          
    
      <div class="clr"></div>
   


  
  <div ><jsp:include page="footer.jsp"/>
  </div>

</body>
</html>
