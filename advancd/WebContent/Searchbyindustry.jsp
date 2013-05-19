<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ taglib prefix="c" uri = "http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jstl/fmt"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<fmt:setLocale value="hi"/>
<fmt:setBundle basename="resource_en"/>
<html>
<head>
<title>Onlinejobportal</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />



<link href="css/style.css" rel="stylesheet" type="text/css" />
 <link href="css/chromestyle.css" rel="stylesheet" type="text/css" />
 <link href="css/search.css" rel="stylesheet" type="text/css" />
<script type="text/javascript">
function open_win2() 
{
window.open("http://localhost:8080/advancd/help.html");
}
</script>
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/dropdowncontent.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
 <script type="text/javascript" src="js/chrome.js"></script>
<script type="text/javascript" src="js/ajaxtabs.js"></script>
<!-- CuFon ends -->

<style type="text/css">
<!--
.style1 {color: #000000;}
.style2 {color: #000000; font-weight: bold; }
-->
</style>
<%--<script type="text/javascript">
var xmlhttp;
function loadXMLDoc(url,cfunc)
{
if (window.XMLHttpRequest)
  {// code for IE7+, Firefox, Chrome, Opera, Safari
  xmlhttp=new XMLHttpRequest();
  }
else
  {// code for IE6, IE5
  xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  }
xmlhttp.onreadystatechange=cfunc;
xmlhttp.open("GET",url,true);
xmlhttp.send();
}
function myFunction()
{
loadXMLDoc("ajax_info.txt",function()
  {
  if (xmlhttp.readyState==4 && xmlhttp.status==200)
    {
    document.getElementById("myDiv").innerHTML=xmlhttp.responseText;
    }
  });
}
</script>--%>
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
xmlhttp.open("GET","Searching.jsp?searchfrm="+document.getElementById("searchfrm").value+"&ind="+document.getElementById("ind").value+"&fts="+document.getElementById("fts").value,true);
xmlhttp.send();
}
</script>
</head>

<body>

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
			<a href="Searchrf.jsp">Search By Function</a>
			<a href="Searchrl.jsp">Search By Location</a>		</div>

			<script type="text/javascript">
			cssdropdown.startchrome("chromemenu")
			</script>
		</div>
		
         <div id="myDiv">
		 <table width="100%" align="center" class="searchmenu"><!--DWLayoutTable-->
		 <tbody >
		 <tr>
         <td width="100%" height="30" valign="middle" class="profileTab">
			 <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
		            <tr>
                    <td  class="ss" align="center" valign="middle"><div>
                      <h2><span>Job Search</span> By Industry </h2>
                    </div>
					 </td>
                  	</tr>
                </tbody>
				</table>
                  <!-- other window -->
                  <div id="other" class="border_darkgreen" style="float: left; position: absolute; width: 561px; margin: -30px 0px 0px; display: none;">
                    <div class="bg_green" style="padding: 10px;"> </div>
                  </div>

                <!-- other window end -->
              </td>
            </tr>
<tr>

		<td class="bg_grey" style="padding: 4px 8px;" align="center">
		<form method="get">
		<input type="hidden" name="searchfrm" id="searchfrm" value="si"/>
	
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <!--DWLayoutTable-->
		<tbody>
		  <tr>
		    <td height="289" align="left" valign="top" style="padding: 15px;">

		      <table border="0" cellspacing="0" width="100%">
		        <!--DWLayoutTable-->
		        
		        <tbody><tr>
		          <td width="28"></td>
		            <td class="style1 bold"><strong>Show Jobs with these keywords:</strong></td>
		    <td width="28"></td>
		    </tr>
		          <tr>
		            <td></td>
		              <td><input name="fts" id="fts" size="50" value="" type="text"></td>
		    <td></td>
		    </tr>		
		          <tr>
		            <td></td>
		              <td style="padding: 0px 5px 0px 0px;"><table border="0" cellpadding="3" cellspacing="0" width="100%">
		                <tbody>
		                  <td width="26%" class="style2">Industry</td>
			  
		                <tr>
		                  
		                  <td><select name="ind" size="4" id="ind" multiple="multiple">
		                
		                  <option value="Automotive/ Ancillaries">Automotive/ Ancillaries</option>
		                  <option value="Banking/ Financial Services">Banking/ Financial Services</option>
		                  <option value="Bio Technology & Life Sciences">Bio Technology &amp; Life Sciences</option>
		                  <option value="Chemicals/ Plastic/ Rubber">Chemicals/ Plastic/ Rubber</option>
		                  <option value="Construction">Construction</option>
		                  <option value="Consumer Goods/ FMCG">Consumer Goods/ FMCG</option>
		                  <option value="Education">Education</option>
		                  <option value="Entertainment/ Media/ Publishing">Entertainment/ Media/ Publishing</option>
		                  <option value="Insurance">Insurance</option>
		                  <option value="ITES/ BPO/ KPO">ITES/ BPO/ KPO</option>
		                  <option value="IT/ Computers - Hardware">IT/ Computers - Hardware</option>
		                  <option value="IT/ Computers - Software">IT/ Computers - Software</option>
		                  <option value="Machinery/ Equipment Mfg.">Machinery/ Equipment Mfg.</option>
		                  <option value="Oil/ Gas/ Petroleum">Oil/ Gas/ Petroleum</option>
		                  <option value="Pharmaceuticals">Pharmaceuticals</option>
		                  <option value="Power">Power</option>
		                  <option value="Real Estate">Real Estate</option>
		                  <option value="Retailing">Retailing</option>
		                  <option value="Telecom">Telecom</option>
		                  <option value="Advertising">Advertising</option>
		                  <option value="Agriculture/ Dairy Based">Agriculture/ Dairy Based</option>
		                  <option value="Airlines">Airlines</option>
		                  <option value="Beauty/Fitness/PersonalCare/SPA">Beauty/Fitness/PersonalCare/SPA</option>
		                  <option value="Beverages/ Liquor">Beverages/ Liquor</option>
		                  <option value="Cement">Cement</option>
		                  <option value="Consultancy">Consultancy</option>
		                  <option value="Courier/ Freight/ Transportation">Courier/ Freight/ Transportation</option>
		                  <option value="Dotcom">Dotcom</option>
		                  <option value="Fertilizer/ Pesticides">Fertilizer/ Pesticides</option>
		                  <option value="Food & Packaged Food">Food &amp; Packaged Food</option>
		                  <option value="Textiles / Yarn / Fabrics / Garments">Textiles / Yarn / Fabrics / Garments</option>
		                  <option value="Gems & Jewellery">Gems &amp; Jewellery</option>
		                  <option value="Government/ PSU/ Defence">Government/ PSU/ Defence</option>
		                  <option value="Home Appliances (TV, Fridge, AC etc.)">Home Appliances (TV, Fridge, AC etc.)</option>
		                  <option value="Hospitals/ Health Care">Hospitals/ Health Care</option>
		                  <option value="Hotels/ Restaurant">Hotels/ Restaurant</option>
		                  <option value="Import / Export">Import / Export</option>
		                  <option value="Iron/ Steel">Iron/ Steel</option>
		                  <option value="ISP">ISP</option>
		                  <option value="Leather">Leather</option>
		                  <option value="Market Research">Market Research</option>
		                  <option value="Medical Transcription">Medical Transcription</option>
		                  <option value="Mining">Mining</option>
		                  <option value="NGO">NGO</option>
		                  <option value="Non-Ferrous Metals (Aluminium, Zinc etc.)">Non-Ferrous Metals (Aluminium, Zinc etc.)</option>
		                  <option value="Office Equipment">Office Equipment</option>
		                  <option value="Paints">Paints</option>
		                  <option value="Paper">Paper</option>
		                  <option value="Printing/ Packaging">Printing/ Packaging</option>
		                  <option value="Public Relations (PR)">Public Relations (PR)</option>
		                  <option value="Shipping">Shipping</option>
		                  <option value="Sugar">Sugar</option>
		                  <option value="Travel/ Tourism">Travel/ Tourism</option>
		                  <option value="Tyres">Tyres</option>
		                  <option value="Wood">Wood</option>
		                  <option value="Other">Other</option>
		                  </select>
		                    </td>
				    </tr>
		                <tr>
		                  <tbody>
		                    </tbody></table></td>
				    <td></td>
			    </tr>
		          <tr>
		            <td></td>
		             <td align="center">
		                <span class="button"><span><button type="button" onClick="loadXMLDoc()" >Search</button>
		                  </span></span>				</td>
				    <td></td>
			    </tr>
		          
		          </tbody>
		        </table></td>
				</tr>
		 
				</tbody></table>
</form>
				</table>     
       </div> 
       
      </div>
      <p class="pages"><small>&nbsp;&nbsp;</small></p>
      </div>
      <div class="sidebar">
        
       
           
           
          
        </div>
</div>
      <div class="clr"></div>
 


  
  <div ><jsp:include page="footer.jsp"/>
  </div>

</body>
</html>


   