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
xmlhttp.open("GET","Searching.jsp?searchfrm="+document.getElementById("searchfrm").value+"&fts="+document.getElementById("fts").value,true);;
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
		
         <div id="myDiv" >
		 <table width="100%" align="center" class="searchmenu"><!--DWLayoutTable-->
		 <tbody >
		 <tr>
         <td width="100%" height="30" valign="middle" class="profileTab">
			 <table border="0" cellpadding="0" cellspacing="0" width="100%">
                  <tbody>
		            <tr>
                    <td  class="ss" align="center" valign="middle"><div>
                      <h2><span>Job Search</span> By Company </h2>
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
		<input type="hidden" name="searchfrm" id="searchfrm" value="sc"/>
	
		<table border="0" cellpadding="0" cellspacing="0" width="100%">
		  <!--DWLayoutTable-->
		<tbody>
		  <tr>
		    <td height="289" align="left" valign="top" style="padding: 15px;">

		      <table border="0" cellspacing="0" width="100%">
		        <!--DWLayoutTable-->
		        <tbody><tr>
		          <td width="28"></td>
		            <td class="style1 bold"><strong>CompanyName:</strong></td>
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
		                    <td width="26%" class="style2">Location</td>
			
		                <tr>
		                  <td><select size="4" multiple="multiple" name="loc"><option value="196">Anywhere</option><option value="1">Ahmedabad</option><option value="2">Bangalore</option><option value="3">Chennai</option><option value="4">Delhi</option><option value="199">Delhi Region</option><option value="5">Gurgaon</option><option value="6">Hyderabad</option><option value="7">Kolkata</option><option value="8">Mumbai</option><option value="9">Noida</option><option value="10">Pune</option><option value="11">Agartala</option><option value="12">Agra</option><option value="13">Ahmednagar</option><option value="14">Aizawal</option><option value="15">Ajmer</option><option value="474">Alappuzha / Alleppey</option><option value="16">Aligarh</option><option value="17">Allahabad</option><option value="18">Ambala</option><option value="19">Amritsar</option><option value="20">Anand</option><option value="21">Ankleshwar</option><option value="22">Asansol</option><option value="23">Aurangabad</option><option value="483">Baddi</option><option value="24">Bahgalpur</option><option value="25">Bareilly</option><option value="26">Baroda</option><option value="27">Belgaum</option><option value="28">Bellary</option><option value="29">Bharuch</option><option value="30">Bhatinda</option><option value="31">Bhavnagar</option><option value="32">Bhilaigarh</option><option value="33">Bhopal</option><option value="34">Bhubaneshwar</option><option value="35">Bhuj</option><option value="36">Bidar</option><option value="37">Bilaspur</option><option value="38">Bokaro</option><option value="40">Chandigarh</option><option value="87">Cochin / Kochi / Ernakulam</option><option value="41">Coimbatore</option><option value="42">Cuttack</option><option value="43">Dalhousie</option><option value="44">Daman</option><option value="45">Dehradun</option><option value="46">Dhanbad</option><option value="47">Dharamsala</option><option value="48">Dharwad</option><option value="49">Dispur</option><option value="50">Durgapur</option><option value="52">Erode</option><option value="53">Faizabad</option><option value="54">Faridabad</option><option value="55">Gandhinagar</option><option value="56">Gangtok</option><option value="57">Ghaziabad</option><option value="58">Goa</option><option value="59">Gorakhpur</option><option value="60">Gulbarga</option><option value="61">Guntur</option><option value="62">Guwahati</option><option value="63">Gwalior</option><option value="64">Haldia</option><option value="65">Hisar</option><option value="66">Hosur</option><option value="67">Hubli</option><option value="475">Idukki</option><option value="68">Imphal</option><option value="69">Indore</option><option value="70">Itanagar</option><option value="71">Jabalpur</option><option value="72">Jaipur</option><option value="73">Jaisalmer</option><option value="74">Jalandhar</option><option value="75">Jalgaon</option><option value="76">Jammu</option><option value="77">Jamnagar</option><option value="78">Jamshedpur</option><option value="79">Jodhpur</option><option value="80">Kakinada</option><option value="81">Kandla</option><option value="82">Kannur</option><option value="83">Kanpur</option><option value="84">Karnal</option><option value="476">Kasargod</option><option value="85">Kavaratti</option><option value="86">Kharagpur</option><option value="88">Kohima</option><option value="89">Kolar</option><option value="90">Kolhapur</option><option value="91">Kollam</option><option value="92">Kota</option><option value="93">Kottayam</option><option value="39">Kozhikode / Calicut</option><option value="94">Kulu/Manali</option><option value="95">Kurnool</option><option value="96">Kurukshetra</option><option value="97">Lucknow</option><option value="98">Ludhiana</option><option value="99">Madurai</option><option value="477">Malappuram</option><option value="100">Mangalore</option><option value="101">Mathura</option><option value="102">Meerut</option><option value="103">Mohali</option><option value="104">Moradabad</option><option value="105">Mysore</option><option value="106">Nagercoil</option><option value="107">Nagpur</option><option value="108">Nasik</option><option value="109">Nellore</option><option value="110">Nizamabad</option><option value="111">Ooty</option><option value="112">Pallakad</option><option value="113">Panipat</option><option value="114">Paradeep</option><option value="478">Pathanamthitta</option><option value="115">Pathankot</option><option value="116">Patiala</option><option value="117">Patna</option><option value="118">Pondicherry</option><option value="119">Porbandar</option><option value="120">Port Blair</option><option value="121">Puri</option><option value="122">Quilon</option><option value="123">Raipur</option><option value="124">Rajamundry</option><option value="125">Rajkot</option><option value="126">Ranchi</option><option value="127">Rohtak</option><option value="128">Roorkee</option><option value="129">Rourkela</option><option value="130">Salem</option><option value="131">Shillong</option><option value="132">Shimla</option><option value="482">Shimoga</option><option value="133">Sholapur</option><option value="134">Silchar</option><option value="135">Siliguri</option><option value="136">Silvassa</option><option value="480">Sonipat / Sonepat</option><option value="137">Srinagar</option><option value="138">Surat</option><option value="139">Thanjavur</option><option value="140">Thrissur / Trissur</option><option value="143">Thiruvananthapuram / Trivandrum</option><option value="141">Tirunalveli</option><option value="142">Tirupati</option><option value="144">Trichy</option><option value="145">Tuticorin</option><option value="146">Udaipur</option><option value="147">Ujjain</option><option value="148">Vadodara</option><option value="149">Valsad</option><option value="150">Vapi</option><option value="151">Varanasi</option><option value="152">Vellore</option><option value="153">Vijayawada</option><option value="154">Visakhapatnam</option><option value="155">Warangal</option><option value="479">Wayanad</option><option value="481">Yamunanagar</option><option value="198">Other India</option><option value="156">Australia</option><option value="158">Bahrain</option><option value="157">Bangladesh</option><option value="159">Belgium</option><option value="160">Canada</option><option value="161">China</option><option value="250">Egypt</option><option value="164">France</option><option value="165">Germany</option><option value="204">Gulf</option><option value="166">Hongkong</option><option value="167">Indonesia</option><option value="168">Ireland</option><option value="169">Japan</option><option value="238">Jordan</option><option value="170">Kuwait</option><option value="237">Lebanon</option><option value="252">Macau</option><option value="171">Malaysia</option><option value="172">Maldives</option><option value="173">Mauritius</option><option value="174">Mexico</option><option value="175">Nepal</option><option value="176">Netherlands</option><option value="177">New Zealand</option><option value="178">Oman</option><option value="179">Pakistan</option><option value="249">Philippines</option><option value="180">Qatar</option><option value="181">Russia</option><option value="182">Saudi Arabia</option><option value="183">Singapore</option><option value="184">South Africa</option><option value="185">South Korea</option><option value="186">Spain</option><option value="187">SriLanka</option><option value="188">Sweden</option><option value="189">Switzerland</option><option value="253">Taiwan</option><option value="190">Thailand</option><option value="191">UK</option><option value="192">United Arab Emirates</option><option value="193">US</option><option value="254">Vietnam</option><option value="194">Yemen</option><option value="195">Zimbabwe</option><option value="197">Other International</option></select>
		                    <br>
		                    <span class="txt_grey">You can choose more than one option by using the <span class="bold">ctrl key</span></span></td>
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
		 
				</tbody></table></form></td>
				</tr>

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

