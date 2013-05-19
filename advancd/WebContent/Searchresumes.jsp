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
xmlhttp.open("GET","Searching.jsp?searchfrm="+document.getElementById("searchfrm").value+"&loc="+document.getElementById("loc").value+"&fts="+document.getElementById("fts").value,+"&jbc="+document.getElementById("jbc").value,true);;
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
			<a href="Searchbycompany.jsp">Jobs By Company</a>
			<a href="Searchbylocation.jsp">Jobs By Location</a></div>
			
			
			
			<!--2nd drop down menu --> 
			<div id="dropmenu2" class="dropmenudiv" style="width: 150px;">	
			<a href="Searchresumes.jsp">Advanced  Search</a>
			<a href="Searchrf.jsp">Search By Function</a>
			<a href="Searchrl.jsp">Search By Location</a>			</div>

			<script type="text/javascript">
			cssdropdown.startchrome("chromemenu")
			</script>
		</div>
		
         <div id="myDiv" >
		 <table width="100%" align="center" class="searchmenu"><!--DWLayoutTable-->
		 <tbody >
		 <tr>
         <td width="100%" height="30" valign="middle" class="profileTab">
			 <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
		            <tr>
                    <td  class="ss" align="center" valign="middle"><div>
                      <h2><span><span style="padding: 15px;">
                        <input type="hidden" name="searchfrm" value="sr" id="searchfrm" />
                      </span>&nbsp; Advanced  </span>Search</h2>
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
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
		<tbody><tr>
		<td style="padding: 15px;" align="left" valign="top" height="400">

		<table border="0" cellspacing="0" width="100%">
		<tbody><tr>
		<td class="style1 bold"><strong>Search  with these keywords:</strong></td>
		</tr>
		<tr>
		<td><input name="fts" id ="fts"size="50" value="" type="text"></td>
		</tr>
		<tr>

		<td valign="bottom" height="25"><span class="bold style1"><strong> locations: </strong></span></td>
		</tr>
		<tr>
		<td valign="top"><select size="4" multiple="multiple" id="loc" name="loc"> <option value="Ahmedabad">Ahmedabad</option>
              <option value="Bangalore">Bangalore</option>
              <option value="Chennai">Chennai</option>
              <option value="Delhi">Delhi</option>
              <option value="Gurgaon">Gurgaon</option>
              <option value="Hyderabad">Hyderabad</option>
              <option value="Kolkata">Kolkata</option>
              <option value="Mumbai">Mumbai</option>
              <option value="Noida">Noida</option>
              <option value="Pune">Pune</option>
              <option value="Agartala">Agartala</option>
              <option value="Agra">Agra</option>
              <option value="Ajmer">Ajmer</option>
              <option value="Allahabad">Allahabad</option>
              <option value="Amritsar">Amritsar</option>
              <option value="Aurangabad">Aurangabad</option>
              <option value="Baroda">Baroda</option>
              <option value="Bhopal">Bhopal</option>
              <option value="Bhubaneshwar">Bhubaneshwar</option>
              <option value="Chandigarh">Chandigarh</option>
              <option value="Cochin / Kochi / Ernakulam">Cochin / Kochi / Ernakulam</option>
              <option value="Coimbatore">Coimbatore</option>
              <option value="Cuttack">Cuttack</option>
              <option value="Dehradun">Dehradun</option>
              <option value="Dhanbad">Dhanbad</option>
              <option value="Faizabad">Faizabad</option>
              <option value="Gandhinagar">Gandhinagar</option>
              <option value="Gangtok">Gangtok</option>
              <option value="Ghaziabad">Ghaziabad</option>
              <option value="Goa">Goa</option>
              <option value="Guwahati">Guwahati</option>
              <option value="Gwalior">Gwalior</option>
              <option value="Hubli">Hubli</option>
              <option value="Indore">Indore</option>
              
              <option value="Jabalpur">Jabalpur</option>
              <option value="Jaipur">Jaipur</option>
              
              
              <option value="Jammu">Jammu</option>
           
              <option value="Jamshedpur">Jamshedpur</option>
           
              <option value="Kanpur">Kanpur</option>
              
              <option value="86">Kharagpur</option>
              
              <option value="Kozhikode / Calicut">Kozhikode / Calicut</option>
            
              <option value="Kurukshetra">Kurukshetra</option>
              <option value="Lucknow">Lucknow</option>
              <option value="Ludhina">Ludhiana</option>
              <option value="Madhurai">Madurai</option>
              
              <option value="Mangalore">Mangalore</option>
           
              <option value="Meerut">Meerut</option>
              <option value="Mohali">Mohali</option>
              
              <option value="Mysore">Mysore</option>
             
              <option value="Nagpur">Nagpur</option>
              <option value="Nasik">Nasik</option>
              
              <option value="Ooty">Ooty</option>
             
              <option value="Patna">Patna</option>
              <option value="Pondicherry">Pondicherry</option>
              
              <option value="Port Blair">Port Blair</option>
              
              <option value="Raipur">Raipur</option>
              
              <option value="Ranchi">Ranchi</option>
              
              <option value="Roorkee">Roorkee</option>
              <option value="Rourkela">Rourkela</option>
              
              <option value="Shillong">Shillong</option>
              <option value="Shimla">Shimla</option>
              
              <option value="Sholapur">Sholapur</option>
              <option value="Silchar">Silchar</option>
             
              <option value="Srinagar">Srinagar</option>
              <option value="Surat">Surat</option>
              <option value="Thanjavur">Thanjavur</option>
              
              <option value="Thiruvananthapuram / Trivandrum">Thiruvananthapuram / Trivandrum</option>
              
              <option value="Tirupati">Tirupati</option>
              <option value="Trichy">Trichy</option>
              <option value="Tuticorin">Tuticorin</option>
              
              <option value="Varanasi">Varanasi</option>
              <option value="Vellore">Vellore</option>
              <option value="Vijayawada">Vijayawada</option>
              
              
            </select>

				</td>
				 </tr>
				 
			<tr>
				 <td style="padding: 0px 5px 0px 0px;">&nbsp;</td>
			</tr>
			
		
			
			
			<tr>
			<td width="26%" class="style2">Function</td>
			</tr>
			<tr>
			<td>

		

			<select name="jbc" size="4" id="jbc" multiple="multiple" >
            		
		
			 <option value="Admin/Secretarial">Admin/Secretarial</option>
                  <option value="Customer Service/ Call Centre/ BPO">Customer Service/ Call Centre/ BPO</option>
                  <option value="Finance & Accounts">Finance &amp; Accounts</option>
                  <option value="Human Resources">Human Resources</option>
                  <option value="IT">IT</option>
                  <option value="Legal">Legal</option>
                  <option value="Marketing &Communications">Marketing &amp; Communications</option>
                  <option value="Purchase/ Logistics/ Supply Chain">Purchase/ Logistics/ Supply Chain</option>
                  <option value="Sales/ Business Development">Sales/ Business Development</option>
                </select></td>

				
				</tr>
				

				<tr>
				
				<tbody>

				</tbody></table></td>
				</tr>

				

			

				

				<tr>
		            <td></td>
		             <td align="center">
		                <span class="button"><span><button type="button" onClick="loadXMLDoc()" >Search</button>
		                  </span></span>				</td>
				    <td></td>
			    </tr>

				</tbody></table></td>
				</tr>
				</tbody></table>
			  

			
         
       </div>
		
       </div>
	  
        
       
      

        
        
      </div>
      <p class="pages"><small>&nbsp;&nbsp;</small></p>
      </div>
      <div class="sidebar">
        
     
           
           
          
        
</div>>
      <div class="clr"></div>
   


  
  <div ><jsp:include page="footer.jsp"/>
  </div>

</body>
</html>

