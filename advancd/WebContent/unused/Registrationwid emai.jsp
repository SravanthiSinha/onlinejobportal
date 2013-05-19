<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Onlinejobportal</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<link rel="stylesheet" type="text/css" href="css/project.css"/> 
<link href="css/style.css" rel="stylesheet" type="text/css" />
 <link href="css/chromestyle.css" rel="stylesheet" type="text/css" />
 <link href="css/ajaxtabs.css" rel="stylesheet" type="text/css" />
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="register.js"></script>
<script type="text/javascript" src="js/droid_sans_400-droid_sans_700.font.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<script type="text/javascript" src="js/jquery-1.3.2.min.js"></script>
<script type="text/javascript" src="js/radius.js"></script>
 <script type="text/javascript" src="js/chrome.js"></script>
<script type="text/javascript" src="js/ajaxtabs2.js"></script>

<!-- CuFon ends -->
<style type="text/css">
<!--
.style7 {font-size: 9px}
.style8 {font-size: 12px}
-->
</style>
<script language="JavaScript">
<!--

/***********************************************
* Required field(s) validation v1.10- By NavSurf
* Visit Nav Surf at http://navsurf.com
* Visit http://www.dynamicdrive.com/ for full source code
***********************************************/

function formCheck(formobj){
	// Enter name of mandatory fields
	var fieldRequired = Array("fname","lname","email","pass_word","j_retype","address","pincode","mobile_no");
	// Enter field description to appear in the dialog box
	var fieldDescription = Array("First Name", "Last Name","Email Id","Password","Re-type password","Address","Pincode","Mobileno");
	// dialog message
	var alertMsg = "Please complete the following fields:\n";
	
	var l_Msg = alertMsg.length;
	
	for (var i = 0; i < fieldRequired.length; i++){
		var obj = formobj.elements[fieldRequired[i]];
		if (obj){
			switch(obj.type){
			case "select-one":
				if (obj.selectedIndex == -1 || obj.options[obj.selectedIndex].text == ""){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
				break;
			case "select-multiple":
				if (obj.selectedIndex == -1){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
				break;
			case "text":
			case "textarea":
				if (obj.value == "" || obj.value == null){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
				break;
			default:
			}
			if (obj.type == undefined){
				var blnchecked = false;
				for (var j = 0; j < obj.length; j++){
					if (obj[j].checked){
						blnchecked = true;
					}
				}
				if (!blnchecked){
					alertMsg += " - " + fieldDescription[i] + "\n";
				}
			}
		}
	}

	if (alertMsg.length == l_Msg){
		return true;
	}else{
		alert(alertMsg);
		return false;
	}
}
// -->
</script><script type="text/javascript">
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
xmlhttp.open("GET","checkCaptcha.do?code="+document.getElementById("code").value,true);
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
   <div class="mainbar2">
     <div class="article">
		   <ul id="countrytabs" class="shadetabs">
			<li><a href="#" class="selected" rel="#default" >Employer</a></li>
			<li><a href="jobseekerregister.html" rel="countrycontainer">JobSeeker</a></li>
		  </ul>
			
  	  <div id="countrydivcontainer" style="border:0px solid gray; width:670px; margin-bottom: 1em; padding: 10px">
   		 <div >
       <form id="form_id" name="formcheck" action="http://localhost:8080/advancd/RegistrationController" method="get" onSubmit="return formCheck(this);">
       <input type="hidden" name="USER" id="USER" value="employeer" />
		 <table width="144%" align="left" bordercolor="#6633FF" frame="box" ><!--DWLayoutTable-->
				 <tr>
		 <th colspan="4"><h2 align="left" class="star" ><span><u>General Info</u></span></h2>		</th>
		 
		  </tr>
			<tr>
			<td width="10%" ><strong>First Name:*</strong></td>
			<td width="41%" ><input type="text" class="regform hintanchor" size="32"  id="fname" name="fname" style="color:#999999" onFocus="removeTag('fname');" onBlur="putTag('fname');"  onclick="showhint('Enter the First name', this, event, '120px')" /></td>
			<td width="13%"   align="center" valign="middle"><div style="visibility:hidden" align="left" id="labfn"><img id="fnameimg" src="images/wrong3.png" height="20" width="25" alt="dec"></div></td>
			<td width="36%" "><div id="fnamelab" ></div></td>
				</tr>
		  	<tr>
			<td><strong>Last name:*</strong></td>
			<td> <input type="text"  class="regform hintanchor"  size="32" id="lname" name="lname"   style="color:#999999" onFocus="removeTag('lname');" onBlur="putTag('lname');"   onclick="showhint('Enter the Last name', this, event, '120px')" /></td>
            <td align="center" valign="middle"><div style="visibility:hidden" align="left" id="labln"><img id="lnameimg" src="images/wrong3.png" height="25" width="25" alt="dec"></div></td><td><div id="lnamelab"></div></td>
			
		  	</tr>
		  <tr>
		  <td><strong>Email Id:*</strong></td>
		  <td> <input type="text"  class="regform hintanchor" size="32"  id ="email" name="email" style="color:#999999"  onBlur="putTag('email');" /></td>
          <td align="center" valign="middle" colspan="2"><div id="req"></div></td>
		  </tr>
		  <tr>
													<td  colspan="4" align="center" valign="middle"><div id="emaillab"></div></td></tr>
        <tr>
		<td><strong>Password:*</strong></td>
		<td> <input type="password" class="regform hintanchor" name="pass_word" size="32" onBlur="putTag('pwd');" id="pass_word" onClick="showhint('Enter the Password', this, event, '120px')" ></td>
        <td align="center" valign="middle"><div style="visibility:hidden" align="left" id="labpwd"><img id="pwdimg" src="images/wrong3.png" height="25" width="25" alt="dec"></div></td>
        <td><div id="pwdlab"></div></td>
        
		
        </tr>
		<tr>
		<td><strong>Re-enter password:*</strong></td>
		<td> <input type="password" class="regform hintanchor" size="32" name="j_retype" maxlength="64" onKeyPress="return handleEnter(this, event)" onClick="showhint('Re-Enter the Password', this, event, '130px')" id="rpwd" /></td>
		<td align="center" valign="middle"><div style="visibility:hidden" align="left" id="rlabpwd"><img id="rpwdimg" src="images/wrong3.png" height="25" width="25" alt="dec"></div></td>
        <td><div id="rpwdlab"></div></td>
		</tr>
		
		
			 <tr><TD colspan="4"> <h2><u>Personal Info</u></h2></td>
             
          </tr>
          <tr><td><strong>Date of Birth:</strong></td><td  valign="top"> 
							<table border="0" cellpadding="0" cellspacing="0" >
					<tbody><tr>
						<td style="padding-right: 20px;" valign="top" width="128">
						<select name="date" style="width: 60px;" class="regform" id="date" onkeypress="return handleEnter(this, event)">
						<option value="VOID">Date</option>
												<option value="1">

						1						</option>
												<option value="2">
						2						</option>
												<option value="3">
						3						</option>
												<option value="4">
						4						</option>

												<option value="5">
						5						</option>
												<option value="6">
						6						</option>
												<option value="7">
						7						</option>
												<option value="8">

						8						</option>
												<option value="9">
						9						</option>
												<option value="10">
						10						</option>
												<option value="11">
						11						</option>

												<option value="12">
						12						</option>
												<option value="13">
						13						</option>
												<option value="14">
						14						</option>
												<option value="15">

						15						</option>
												<option value="16">
						16						</option>
												<option value="17">
						17						</option>
												<option value="18">
						18						</option>

												<option value="19">
						19						</option>
												<option value="20">
						20						</option>
												<option value="21">
						21						</option>
												<option value="22">

						22						</option>
												<option value="23">
						23						</option>
												<option value="24">
						24						</option>
												<option value="25">
						25						</option>

												<option value="26">
						26						</option>
												<option value="27">
						27						</option>
												<option value="28">
						28						</option>
												<option value="29">

						29						</option>
												<option value="30">
						30						</option>
												<option value="31">
						31						</option>
						  </select></td>
						<td style="padding-right: 20px;" valign="top" width="164"> 
						<select name="month" style="width: 90px;" id="month" onkeypress="return handleEnter(this, event)">

						<option value="VOID">Month</option>
						<option value="1">January</option>
						<option value="2">February</option>
						<option value="3">March</option>
						<option value="4">April</option>
						<option value="5">May</option>

						<option value="6">June</option>
						<option value="7">July</option>
						<option value="8">August</option>
						<option value="9">September</option>
						<option value="10">October</option>
						<option value="11">November</option>

						<option value="12">December</option>
						</select></td>
						<td valign="top" width="81"> 
						<select name="year" style="width: 70px;" onkeypress="return handleEnter(this, event)" id="year">
						<option value="VOID">Year</option>
												<option value="2001">
						2001						</option>
												<option value="2000">

						2000						</option>
												<option value="1999">
						1999						</option>
												<option value="1998">
						1998						</option>
												<option value="1997">
						1997						</option>

												<option value="1996">
						1996						</option>
												<option value="1995">
						1995						</option>
												<option value="1994">
						1994						</option>
												<option value="1993">

						1993						</option>
												<option value="1992">
						1992						</option>
												<option value="1991">
						1991						</option>
												<option value="1990">
						1990						</option>

												<option value="1989">
						1989						</option>
												<option value="1988">
						1988						</option>
												<option value="1987">
						1987						</option>
												<option value="1986">

						1986						</option>
												<option value="1985">
						1985						</option>
												<option value="1984">
						1984						</option>
												<option value="1983">
						1983						</option>

												<option value="1982">
						1982						</option>
												<option value="1981">
						1981						</option>
												<option value="1980">
						1980						</option>
												<option value="1979">

						1979						</option>
												<option value="1978">
						1978						</option>
												<option value="1977">
						1977						</option>
												<option value="1976">
						1976						</option>

												<option value="1975">
						1975						</option>
												<option value="1974">
						1974						</option>
												<option value="1973">
						1973						</option>
												<option value="1972">

						1972						</option>
												<option value="1971">
						1971						</option>
												<option value="1970">
						1970						</option>
												<option value="1969">
						1969						</option>

												<option value="1968">
						1968						</option>
												<option value="1967">
						1967						</option>
												<option value="1966">
						1966						</option>
												<option value="1965">

						1965						</option>
												<option value="1964">
						1964						</option>
												<option value="1963">
						1963						</option>
												<option value="1962">
						1962						</option>

												<option value="1961">
						1961						</option>
												<option value="1960">
						1960						</option>
												<option value="1959">
						1959						</option>
												<option value="1958">

						1958						</option>
												<option value="1957">
						1957						</option>
												<option value="1956">
						1956						</option>
												<option value="1955">
						1955						</option>

												<option value="1954">
						1954						</option>
												<option value="1953">
						1953						</option>
												<option value="1952">
						1952						</option>
												<option value="1951">

						1951						</option>
												<option value="1950">
						1950						</option>
												<option value="1949">
						1949						</option>
												<option value="1948">
						1948						</option>

												<option value="1947">
						1947						</option>
												<option value="1946">
						1946						</option>
												<option value="1945">
						1945						</option>
												<option value="1944">

						1944						</option>
												<option value="1943">
						1943						</option>
												<option value="1942">
						1942						</option>
												<option value="1941">
						1941						</option>

												<option value="1940">
						1940						</option>
												<option value="1939">
						1939						</option>
												<option value="1938">
						1938						</option>
												<option value="1937">

						1937						</option>
												<option value="1936">
						1936						</option>
												<option value="1935">
						1935						</option>
												<option value="1934">
						1934						</option>

												<option value="1933">
						1933						</option>
												<option value="1932">
						1932						</option>
												<option value="1931">
						1931						</option>
												<option value="1930">

						1930						</option>
												<option value="1929">
						1929						</option>
												<option value="1928">
						1928						</option>
												<option value="1927">
						1927						</option>

												<option value="1926">
						1926						</option>
												<option value="1925">
						1925						</option>
												<option value="1924">
						1924						</option>
												<option value="1923">

						1923						</option>
												<option value="1922">
						1922						</option>
												<option value="1921">
						1921						</option>
												<option value="1920">
						1920						</option>

												<option value="1919">
						1919						</option>
												<option value="1918">
						1918						</option>
												<option value="1917">
						1917						</option>
												<option value="1916">

						1916						</option>
												<option value="1915">
						1915						</option>
												<option value="1914">
						1914						</option>
												<option value="1913">
						1913						</option>

												<option value="1912">
						1912						</option>
					</select></td></tr></tbody></table></td>
    <td align="left" valign="middle"><div  style="visibility:hidden" align="left" id="labdob"><img src="images/wrong3.png" alt="dec" name="dobimg" width="25" height="25" id="dobimg"/>	</div> </td><td><div id="doblab"></div></td>
		  <tr> 
			<td  valign="top"><strong>Gender*:</strong></td>

			<td colspan="3" class="formline-right" valign="top"> 
			<input name="gender" value="male" id="male_1"  checked="checked" type="radio" onKeyPress="return handleEnter(this, event)">
			<label for="male_1">Male</label>  
			<input name="gender" value="female" id="female_1" type="radio" onKeyPress="return handleEnter(this, event)">
			<label for="female_1">Female</label></td>
		</tr>
            
		  <tr>
		    <td><strong>Address*:</strong></td>
		    <TD colspan="2"> <span class="hintanchor" onMouseover="showhint('Enter the Address', this, event, '105px')"><textarea name="address" cols="32" ></textarea></span></td>
		    <td>&nbsp;</td>
		  </tr>
		  <tr>
		    <td><strong>City*:</strong></td>
		    <TD ><span class="hintanchor" onClick="showhint('Select the city', this, event, '105px')">
		  <select size="" name="city" onkeypress="return handleEnter(this, event)" id="city" onBlur="putTagcity()">
          <option value="VOID">--Select your city--</option>
              <option value="Ahmedabad">Ahmedabad</option>
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
              
              
            </select></span></td>
			<td align="center" valign="middle">
											<div style="visibility:hidden" align="left" id="labcity">
													<img src="images/wrong3.png" alt="dec" name="cityimg" width="25" height="25" id="cityimg">											</div>									</td><td><div id="citylab"></div></td>
		  </tr>
		   <tr>
		     <TD ><strong>State*:</strong></td>
		     <TD ><span class="hintanchor">
		    <select size="" name="state" onkeypress="return handleEnter(this, event)">
             <option value="andhra pradesh"> Andhra Pradesh</option>
     															<option value="arunachal pradesh"> Arunachal Pradesh</option>
    															<option value="assam"> Assam</option>
     															<option value=" bihar"> Bihar</option>
     															<option value=" chatisgarh"> Chhattisgarh</option>		
     															<option value=" goa"> Goa</option>
     															<option value=" gujarat"> Gujarat</option>
															     <option value=" haryana"> Haryana</option>
     															<option value=" himachal pradesh"> Himachal Pradesh</option>
      <option value=" jammu and kashmir"> Jammu and Kashmir</option>
      <option value=" jharkhand"> Jharkhand</option>
      <option value=" karnataka"> Karnataka</option>
      <option value=" madhyapradesh"> Kerala</option>
      <option value=" kerala"> Madhya Pradesh</option>

	

      <option value=" maharashtra"> Maharashtra</option>
      <option value=" manipur"> Manipur</option>
      <option value=" meghalaya"> Meghalaya</option>
      <option value=" mizoram"> Mizoram</option>
      <option value=" nagaland"> Nagaland</option>
      <option value=" orissa"> Orissa</option>
      <option value=" punjab"> Punjab</option>

	

      <option value=" rajasthan"> Rajasthan</option>
      <option value=" sikkim"> Sikkim</option>
      <option value=" tamilnadu"> Tamil Nadu</option>
      <option value=" tripura"> Tripura</option>
      <option value=" uttar pradesh"> Uttar Pradesh</option>
      <option value=" uttarakhand"> Uttarakhand</option>
      <option value=" westbengal"> West Bengal</option>         																<option value=" andaman and nicobar"> Andaman and Nicobar Islands</option>
	  			<option value=" chandigarh"> Chandigarh</option>
     																<option value=" dadra and haveli"> Dadra and Nagar Haveli</option>
     																<option value=" daman and diu"> Daman and Diu</option>
     																<option value=" lakshadweep"> Lakshadweep</option>
     																<option value=" CTDelhi"> National Capital Territory of Delhi</option>
     																<option value=" puducherry"> Puducherry</option></select>
		  </span></td>
		    <td ><div style="visibility:hidden" align="left" id="labstate">
													<img src="images/wrong3.png" alt="dec" name="stateimg" width="25" height="25" id="stateimg">											</div>					</td>
													<td><div id="statelab"></div></td>
		  </tr>
		 
		  <tr>
		    <td><strong>Country*:</strong></td>
            <TD ><select size="" name="country" onkeypress="return handleEnter(this, event)" id="country">
              <option value="India">India</option>
            </select></td>
		    <td><div style="visibility:hidden" align="left" id="labcountry">
													<img src="images/wrong3.png" alt="dec" name="countryimg" width="25" height="25" id="countryimg">											</div>	</td><td><div id="countrylab"></div></td>
		  </tr>
		  <tr>
		    <td><strong>PinCode*:</strong></td>
		    <TD > <span class="hintanchor" onClick="showhint('Enter the PinCode.', this, event, '120px')"> <input type="text" size="32" name="pincode" maxlength="20"  onkeypress="return handleEnter(this, event)"  id="pincode" onBlur="putTagpin_code();" /></span></td>
		    <td><div style="visibility:hidden" align="left" id="labpin_code">
													<img src="images/wrong3.png" alt="dec" name="pin_codeimg" width="25" height="25" id="pin_codeimg">											</div>	</td><td><div id="pin_codelab"></div></td>
		  </tr>
 <tr>
		    <td><strong>Mobile*:</strong></td>
		    <td> <span class="hintanchor" onClick="showhint('Enter the Mobileno.', this, event, '125px')">
		 <INPUT TYPE="text" size="20" value="Mobile" maxlength="10"   class="regform" id="mobile_no"  name="mobile_no" style="color:#999999" onFocus="removeTagmobile_no('mobnum');" onBlur="putTagmobile_no('mobnum');"></span></td>
        <td align="center" valign="middle"><div style="visibility:hidden" align="left" id="labtelnum">
													<img id="telnumimg" src="images/wrong3.png" height="25" width="25" alt="dec"/>	</div>														
											</td>
        <td><div id="mobile_nolab"></div></td>
		   
		  </tr>
		 <tr>
			<td  valign="top"><strong>Telephone Number* :</strong></td>
			<td valign="top"> 
				<table border="0" cellpadding="0" cellspacing="0">
					<tbody><tr> 
						<td width="210" style="padding-right: 10px;"><font size="-1"><select name="phone_prefix" id="country_code" onkeypress="return handleEnter(this, event)" onChange='hide_error_change("tunnel_phone_prefix1", "country_code")' style="width: 200px;">
                          <option value="VOID">-Select Country Code-</option>
                          <option value="+91">India (+91)</option>
                          <option value="+1">USA (+1)</option>
                          <option value="+1">Canada (+1)</option>
                          <option value="+44">United Kingdom (+44)</option>
                          <option value="+971">United Arab Emirates (+971)</option>
                          <option value="+61">Australia (+61)</option>
                          <option value="">-</option>
                          <option value="+93">Afghanistan (+93)</option>
                          <option value="+54">Argentina (+54)</option>
                          <option value="+880">Bangladesh (+880)</option>
                          <option value="+55">Brazil (+55)</option>
                          <option value="+86">China (+86)</option>
                          <option value="+45">Denmark (+45)</option>
                          <option value="+20">Egypt (+20)</option>
                          <option value="+33">France (+33)</option>
                          <option value="+49">Germany (+49)</option>
                          <option value="+852">Hong Kong (+852)</option>
                          <option value="+62">Indonesia (+62)</option>
                          <option value="+39">Italy (+39)</option>
                          <option value="+81">Japan (+81)</option>
                          <option value="+965">Kuwait (+965)</option>
                          <option value="+218">Libya (+218)</option>
                          <option value="+52">Mexico (+52)</option>
                          <option value="+64">New Zealand (+64)</option>
                          <option value="+968">Oman (+968)</option>
                          <option value="+92">Pakistan (+92)</option>
                          <option value="+974">Qatar (+974)</option>
                          <option value="+7">Russia (+7)</option>
                          <option value="+966">Saudi Arabia (+966)</option>
                          <option value="+27">South Africa (+27)</option>
                          <option value="+66">Thailand (+66)</option>
                          <option value="+380">Ukraine (+380)</option>
                          <option value="+58">Venezuela (+58)</option>
                          <option value="+263">Zimbabwe (+263)</option>
                        </select></font></td>
						<td style="padding-left: 5px;" width="65"><input name="phone_areacode" value="" class="input" size="4" style="width: 60px;" type="text" onKeyPress="return handleEnter(this, event)"></td>
						<td width="120" style="padding-left: 10px;" > 
						<input name="phone_number" value="" class="input" size="10" style="width: 110px;" id="phone_number" type="text" onKeyPress="return handleEnter(this, event)"></td>
					</tr>

					<tr> 
						<td class="verysmall" valign="top">Country Code</td>
						<td valign="top" class="verysmall style8" style="padding-left: 5px;">Std Code</td>
						<td valign="top" class="verysmall style7" style="padding-left: 10px;"><span class="style8">Telephone No</span>.</td>
					</tr>
				  </tbody></table>			</td><td colspan="2">&nbsp;</td>
		</tr>
		  <tr>
		    <td><strong>Fax*:</strong></td>
		    <td> <INPUT TYPE="text" size="20" value="Fax number" maxlength="10" id="mob3" NAME="telnum2" style="color:#999999" onFocus="removeTagtelnum('faxnum');" onBlur="putTagtelnum('faxnum');"></td>
		    <td align="center" valign="middle">
											<div style="visibility:hidden" align="left" id="labtelnum">
													<img src="images/wrong3.png" alt="dec" name="telnumimg" width="25" height="25" id="telnumimg">											</div><td><div id="telnumlab"></div></td>
		  </tr>
		  <tr><TD colspan="4" > <h2 ><u>Professional info</u></h2></td></tr>
		 <tr>
		 <TD id="mySelect"><strong>Company:*</strong></td>
		 <TD > <span class="hintanchor" onClick="showhint('Enter the Company name.', this, event, '160px')"><input type="text" size="32" name="company" maxlength="64" onKeyPress="return handleEnter(this, event)" /></span></td><td colspan="2">&nbsp;</td>
		 </tr>
		  <tr>
		  <TD id="mySelect"><strong>Designation:*</strong></td>
		  <TD > <span class="hintanchor" onClick="showhint('Enter the Designation', this, event, '140px')"><input type="text" size="32" name="designation" maxlength="64"  onkeypress="return handleEnter(this, event)" /></span></td><td colspan="2">&nbsp;</td>
		  </tr>        
		  <tr>
		  <TD id="mySelect"><strong>Company Email Id:*</strong></td>
          <td> <input type="text"  class="regform hintanchor" size="32"  id ="c_email" name="c_email" style="color:#999999" onFocus="removeTag('c_email');" onBlur="putTag('c_email');"    onclick="showhint('Enter the Company Email Id', this, event, '180px')"  /></td>
          <td align="center" valign="middle"><div style="visibility:hidden" align="left" id="comemail"><img src="images/wrong3.png" alt="dec" name="cemailimg" width="25" height="25" id="cemailimg"></div></td><td><div id="cemaillab"></div></td>

          </tr>
		 
		
        <tr>
		<TD colspan="4" align="center">
		
<table cellspacing=15>

<tr>
<td align="center">
<img src="captchaServlet.do">
<br />
<br />

<input type="text"  id="code" name="code"  ><br><br>
<input type="submit" value="submit" onsubmit="return formCheck(this);" >

</td></tr>
</table>

</td>
		</tr>
</table>
			
			</form>
       
		
          <script type="text/javascript">

var countries=new ddajaxtabs("countrytabs", "countrydivcontainer")
countries.setpersist(true)
countries.setselectedClassTarget("link") //"link" or "linkparent"
countries.init()

</script>           </div> <div class="clr"></div> 
        </div>
       
      </div>

         </div>
        
        
      </div>
     
		
		  
       </div>

<div class="clr"></div>
			
    <p class="pages"><small>&nbsp;&nbsp;</small></p>
     
     
        
     
           
           
       
      <div class="clr"></div>
 

  
  <div ><jsp:include page="footer.jsp"/>
  </div>

</body>
</html>
