<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Onlinejobportal</title>
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
#hintbox{ /*CSS for pop up hint box */
position:absolute;
top: 0;
background-color: lightyellow;
width: 150px; /*Default width of hint.*/ 
padding: 3px;
border:1px solid black;
font:normal 11px Verdana;
line-height:18px;
z-index:100;
border-right: 3px solid black;
border-bottom: 3px solid black;
visibility: hidden;
}

.hintanchor{ /*CSS for link that shows hint onmouseover*/
font-weight: bold;
color: solid black;
margin: 3px 8px;
}



-->
</style>
 <script type="text/javascript" src="js/hint.js"></script>
</head>
<body>

<div class="article">
	<form method="post" >
		  <table align="left" frame="box" bordercolordark="#6633FF" >
		    <!--DWLayoutTable-->
		    <tr>
		 <th colspan="2"><h2 align="left" class="star" ><span><u>General Info</u></span></h2>		</th>
		 <td width="1">&nbsp;</td>
		  </tr>
			<TR>
			<TD width="150"><strong>First name:*</strong></TD>
			<TD width="826"> <input type="text" size="32" name="f_name" maxlength="64"  class="hintanchor" onclick="showhint('Enter the First name', this, event, '120px')"/></TD>
			<td>&nbsp;</td>
			</TR>
		  	<TR>
			<TD><strong>Last name:*</strong></TD>
			<TD> <input type="text" size="32" name="l_name" maxlength="64" class="hintanchor" onclick="showhint('Enter the Last name', this, event, '120px')" /></TD>
			<td>&nbsp;</td>
		  	</TR>
		  <TR>
		  <TD><strong>Email Id:*</strong></TD>
		  <TD> <input type="text" size="32" name="emailid" maxlength="64" class="hintanchor" onclick="showhint('Enter the Email Id', this, event, '120px')" /></TD>
		  <td>&nbsp;</td>
		  </TR>
        <TR>
		<TD><strong>Password:*</strong></TD>
		<TD> <input name="j_password" type="password" size="32" maxlength="64" class="hintanchor" onclick="showhint('Enter the Password', this, event, '120px')" ></TD>
		<td>&nbsp;</td>
        </TR>
		<TR>
		<TD><strong>Re-enter password:*</strong></TD>
		<TD> <input type="password" size="32" name="j_retype" maxlength="64" class="hintanchor" onclick="showhint('Re-Enter the Password', this, event, '130px')" /></TD>
		<td>&nbsp;</td>
		</TR>
		
          <TR><TD colspan="2"> <h2><u>Personal Info</u></h2></TD>
            <td>&nbsp;</td>
          </TR>
          <TR><TD><strong>Date of Birth:</strong></TD><td colspan="2" valign="top"> 
							<table border="0" cellpadding="0" cellspacing="0" width="410">
					<tbody><tr>
						<td style="padding-right: 20px;" valign="top" width="90">
						<select name="tunnel_candidate_dob_day" style="width: 60px;" id="tunnel_candidate_dob_day2">
						<option value="VOID">Day</option>
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
						<td style="padding-right: 20px;" valign="top" width="120"> 
						<select name="tunnel_candidate_dob_month" style="width: 90px;" id="tunnel_candidate_dob_month2">

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
						<td valign="top" width="100"> 
																								<select name="tunnel_candidate_dob_year" style="width: 70px;" id="tunnel_candidate_dob_year2">
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
		  <tr> 
			<td  valign="top"><strong>Gender:</strong></td>

			<td colspan="2" class="formline-right" valign="top"> 
			<input name="tunnel_candidate_gender" value="male" id="male_1" type="radio">
			<label for="male_1">Male</label>  
			<input name="tunnel_candidate_gender" value="female" id="female_1" type="radio">
			<label for="female_1">Female</label></td>
		</tr>
            
		  <TR><TD><strong>Address:</strong></TD><TD> <span class="hintanchor" onMouseover="showhint('Enter the Address', this, event, '105px')"><textarea name="address" cols="32"></textarea></span></TD>
		    <td>&nbsp;</td>
		  </TR>
		  <TR><TD><strong>City:</strong></TD>
		  <TD><span class="hintanchor" onclick="showhint('Select the city', this, event, '105px')"><select size="4" multiple="multiple" name="loc">
              <option value="196">Anywhere</option>
              <option value="1">Ahmedabad</option>
              <option value="2">Bangalore</option>
              <option value="3">Chennai</option>
              <option value="4">Delhi</option>
              <option value="199">Delhi Region</option>
              <option value="5">Gurgaon</option>
              <option value="6">Hyderabad</option>
              <option value="7">Kolkata</option>
              <option value="8">Mumbai</option>
              <option value="9">Noida</option>
              <option value="10">Pune</option>
              <option value="11">Agartala</option>
              <option value="12">Agra</option>
              <option value="13">Ahmednagar</option>
              <option value="14">Aizawal</option>
              <option value="15">Ajmer</option>
              <option value="474">Alappuzha / Alleppey</option>
              <option value="16">Aligarh</option>
              <option value="17">Allahabad</option>
              <option value="18">Ambala</option>
              <option value="19">Amritsar</option>
              <option value="20">Anand</option>
              <option value="21">Ankleshwar</option>
              <option value="22">Asansol</option>
              <option value="23">Aurangabad</option>
              <option value="483">Baddi</option>
              <option value="24">Bahgalpur</option>
              <option value="25">Bareilly</option>
              <option value="26">Baroda</option>
              <option value="27">Belgaum</option>
              <option value="28">Bellary</option>
              <option value="29">Bharuch</option>
              <option value="30">Bhatinda</option>
              <option value="31">Bhavnagar</option>
              <option value="32">Bhilaigarh</option>
              <option value="33">Bhopal</option>
              <option value="34">Bhubaneshwar</option>
              <option value="35">Bhuj</option>
              <option value="36">Bidar</option>
              <option value="37">Bilaspur</option>
              <option value="38">Bokaro</option>
              <option value="40">Chandigarh</option>
              <option value="87">Cochin / Kochi / Ernakulam</option>
              <option value="41">Coimbatore</option>
              <option value="42">Cuttack</option>
              <option value="43">Dalhousie</option>
              <option value="44">Daman</option>
              <option value="45">Dehradun</option>
              <option value="46">Dhanbad</option>
              <option value="47">Dharamsala</option>
              <option value="48">Dharwad</option>
              <option value="49">Dispur</option>
              <option value="50">Durgapur</option>
              <option value="52">Erode</option>
              <option value="53">Faizabad</option>
              <option value="54">Faridabad</option>
              <option value="55">Gandhinagar</option>
              <option value="56">Gangtok</option>
              <option value="57">Ghaziabad</option>
              <option value="58">Goa</option>
              <option value="59">Gorakhpur</option>
              <option value="60">Gulbarga</option>
              <option value="61">Guntur</option>
              <option value="62">Guwahati</option>
              <option value="63">Gwalior</option>
              <option value="64">Haldia</option>
              <option value="65">Hisar</option>
              <option value="66">Hosur</option>
              <option value="67">Hubli</option>
              <option value="475">Idukki</option>
              <option value="68">Imphal</option>
              <option value="69">Indore</option>
              <option value="70">Itanagar</option>
              <option value="71">Jabalpur</option>
              <option value="72">Jaipur</option>
              <option value="73">Jaisalmer</option>
              <option value="74">Jalandhar</option>
              <option value="75">Jalgaon</option>
              <option value="76">Jammu</option>
              <option value="77">Jamnagar</option>
              <option value="78">Jamshedpur</option>
              <option value="79">Jodhpur</option>
              <option value="80">Kakinada</option>
              <option value="81">Kandla</option>
              <option value="82">Kannur</option>
              <option value="83">Kanpur</option>
              <option value="84">Karnal</option>
              <option value="476">Kasargod</option>
              <option value="85">Kavaratti</option>
              <option value="86">Kharagpur</option>
              <option value="88">Kohima</option>
              <option value="89">Kolar</option>
              <option value="90">Kolhapur</option>
              <option value="91">Kollam</option>
              <option value="92">Kota</option>
              <option value="93">Kottayam</option>
              <option value="39">Kozhikode / Calicut</option>
              <option value="94">Kulu/Manali</option>
              <option value="95">Kurnool</option>
              <option value="96">Kurukshetra</option>
              <option value="97">Lucknow</option>
              <option value="98">Ludhiana</option>
              <option value="99">Madurai</option>
              <option value="477">Malappuram</option>
              <option value="100">Mangalore</option>
              <option value="101">Mathura</option>
              <option value="102">Meerut</option>
              <option value="103">Mohali</option>
              <option value="104">Moradabad</option>
              <option value="105">Mysore</option>
              <option value="106">Nagercoil</option>
              <option value="107">Nagpur</option>
              <option value="108">Nasik</option>
              <option value="109">Nellore</option>
              <option value="110">Nizamabad</option>
              <option value="111">Ooty</option>
              <option value="112">Pallakad</option>
              <option value="113">Panipat</option>
              <option value="114">Paradeep</option>
              <option value="478">Pathanamthitta</option>
              <option value="115">Pathankot</option>
              <option value="116">Patiala</option>
              <option value="117">Patna</option>
              <option value="118">Pondicherry</option>
              <option value="119">Porbandar</option>
              <option value="120">Port Blair</option>
              <option value="121">Puri</option>
              <option value="122">Quilon</option>
              <option value="123">Raipur</option>
              <option value="124">Rajamundry</option>
              <option value="125">Rajkot</option>
              <option value="126">Ranchi</option>
              <option value="127">Rohtak</option>
              <option value="128">Roorkee</option>
              <option value="129">Rourkela</option>
              <option value="130">Salem</option>
              <option value="131">Shillong</option>
              <option value="132">Shimla</option>
              <option value="482">Shimoga</option>
              <option value="133">Sholapur</option>
              <option value="134">Silchar</option>
              <option value="135">Siliguri</option>
              <option value="136">Silvassa</option>
              <option value="480">Sonipat / Sonepat</option>
              <option value="137">Srinagar</option>
              <option value="138">Surat</option>
              <option value="139">Thanjavur</option>
              <option value="140">Thrissur / Trissur</option>
              <option value="143">Thiruvananthapuram / Trivandrum</option>
              <option value="141">Tirunalveli</option>
              <option value="142">Tirupati</option>
              <option value="144">Trichy</option>
              <option value="145">Tuticorin</option>
              <option value="146">Udaipur</option>
              <option value="147">Ujjain</option>
              <option value="148">Vadodara</option>
              <option value="149">Valsad</option>
              <option value="150">Vapi</option>
              <option value="151">Varanasi</option>
              <option value="152">Vellore</option>
              <option value="153">Vijayawada</option>
              <option value="154">Visakhapatnam</option>
              <option value="155">Warangal</option>
              <option value="479">Wayanad</option>
              <option value="481">Yamunanagar</option>
              <option value="198">Other India</option>
              <option value="156">Australia</option>
              <option value="158">Bahrain</option>
              <option value="157">Bangladesh</option>
              <option value="159">Belgium</option>
              <option value="160">Canada</option>
              <option value="161">China</option>
              <option value="250">Egypt</option>
              <option value="164">France</option>
              <option value="165">Germany</option>
              <option value="204">Gulf</option>
              <option value="166">Hongkong</option>
              <option value="167">Indonesia</option>
              <option value="168">Ireland</option>
              <option value="169">Japan</option>
              <option value="238">Jordan</option>
              <option value="170">Kuwait</option>
              <option value="237">Lebanon</option>
              <option value="252">Macau</option>
              <option value="171">Malaysia</option>
              <option value="172">Maldives</option>
              <option value="173">Mauritius</option>
              <option value="174">Mexico</option>
              <option value="175">Nepal</option>
              <option value="176">Netherlands</option>
              <option value="177">New Zealand</option>
              <option value="178">Oman</option>
              <option value="179">Pakistan</option>
              <option value="249">Philippines</option>
              <option value="180">Qatar</option>
              <option value="181">Russia</option>
              <option value="182">Saudi Arabia</option>
              <option value="183">Singapore</option>
              <option value="184">South Africa</option>
              <option value="185">South Korea</option>
              <option value="186">Spain</option>
              <option value="187">SriLanka</option>
              <option value="188">Sweden</option>
              <option value="189">Switzerland</option>
              <option value="253">Taiwan</option>
              <option value="190">Thailand</option>
              <option value="191">UK</option>
              <option value="192">United Arab Emirates</option>
              <option value="193">US</option>
              <option value="254">Vietnam</option>
              <option value="194">Yemen</option>
              <option value="195">Zimbabwe</option>
              <option value="197">Other International</option>
            </select></span></TD>
			<td>&nbsp;</td>
		  </TR>
		  <TR><TD><strong>State:</strong></TD><TD> <span class="hintanchor" onclick="showhint('Enter the State name.', this, event, '130px')"><input type="text" size="32" name="state" maxlength="64"  /></span></TD>
		    <td>&nbsp;</td>
		  </TR>
		  <TR><TD><strong>PinCode:</strong></TD><TD><span class="hintanchor" onclick="showhint('Enter the PinCode.', this, event, '120px')"> <input type="text" size="32" name="pincode" maxlength="64"  /></span></TD>
		    <td>&nbsp;</td>
		  </TR>
		  <TR><TD><strong>Mobile:</strong></TD><TD> <span class="hintanchor" onclick="showhint('Enter the Mobileno.', this, event, '125px')"><input type="text" size="32" name="mobileno" maxlength="64"  />
		  </span></TD>
		    <td>&nbsp;</td>
		  </TR>
		 <tr>
			<td  valign="top"><strong>Telephone Number :</strong></td>
			<td colspan="2"  valign="top"> 
				<table border="0" cellpadding="0" cellspacing="0">
					<tbody><tr> 
						<td style="padding-right: 10px;"> 
						<select name="tunnel_phone_prefix" id="country_code" onchange='hide_error_change("tunnel_phone_prefix1", "country_code")' style="width: 200px;">
						<option value="VOID">Select Country Code</option>
																		<option value="IN">India (+91)</option>

																								<option value="US">USA (+1)</option>
																								<option value="CA">Canada (+1)</option>
																								<option value="GB">United Kingdom (+44)</option>
																								<option value="AE">United Arab Emirates (+971)</option>
																								<option value="AU">Australia (+61)</option>
																								<option value="">-</option>

																								<option value="AF">Afghanistan (+93)</option>
																								<option value="AL">Albania (+355)</option>
																								<option value="DZ">Algeria (+213)</option>
																								<option value="AD">Andorra (+376)</option>
																								<option value="AO">Angola (+244)</option>
																								<option value="AG">Antigua and Barbuda (+1268)</option>

																								<option value="AR">Argentina (+54)</option>
																								<option value="AM">Armenia (+374)</option>
																								<option value="AT">Austria (+43)</option>
																								<option value="AZ">Azerbaijan (+994)</option>
																								<option value="BS">Bahamas (+1242)</option>
																								<option value="BH">Bahrain (+973)</option>

																								<option value="BD">Bangladesh (+880)</option>
																								<option value="BB">Barbados (+1246)</option>
																								<option value="BY">Belarus (+375)</option>
																								<option value="BE">Belgium (+32)</option>
																								<option value="BZ">Belize (+501)</option>
																								<option value="BJ">Benin (+229)</option>

																								<option value="BT">Bhutan (+975)</option>
																								<option value="BO">Bolivia (+591)</option>
																								<option value="BA">Bosnia and Herzegovina (+387)</option>
																								<option value="BW">Botswana (+267)</option>
																								<option value="BR">Brazil (+55)</option>
																								<option value="BN">Brunei (+673)</option>

																								<option value="BG">Bulgaria (+359)</option>
																								<option value="BF">Burkina Faso (+226)</option>
																								<option value="BI">Burundi (+257)</option>
																								<option value="KH">Cambodia (+855)</option>
																								<option value="CM">Cameroon (+237)</option>
																								<option value="CV">Cape Verde (+238)</option>

																								<option value="CF">Central African Republic (+236)</option>
																								<option value="TD">Chad (+235)</option>
																								<option value="CL">Chile (+56)</option>
																								<option value="CN">China (+86)</option>
																								<option value="CO">Colombia (+57)</option>
																								<option value="KM">Comoros (+0)</option>

																								<option value="CG">Congo (+242)</option>
																								<option value="CK">Cook Islands (+682)</option>

																								<option value="CR">Costa Rica (+506)</option>
																								<option value="HR">Croatia (+385)</option>
																								<option value="CU">Cuba (+53)</option>
																								<option value="CY">Cyprus (+357)</option>

																								<option value="CZ">Czech Republic (+420)</option>
																								<option value="CD">Democratic Republic of the Congo (+243)</option>
																								<option value="DK">Denmark (+45)</option>
																								<option value="DJ">Djibouti (+253)</option>
																								<option value="DM">Dominica (+1)</option>
																								<option value="DO">Dominican Republic (+1809)</option>

																								<option value="EC">Ecuador (+593)</option>
																								<option value="EG">Egypt (+20)</option>
																								<option value="SV">El Salvador (+503)</option>
																								<option value="GQ">Equatorial Guinea (+240)</option>
																								<option value="ER">Eritrea (+291)</option>
																								<option value="EE">Estonia (+372)</option>

																								<option value="ET">Ethiopia (+251)</option>
																								<option value="FJ">Fiji (+679)</option>
																								<option value="FI">Finland (+358)</option>
																								<option value="FR">France (+33)</option>
																								<option value="GA">Gabon (+241)</option>
																								<option value="GM">Gambia (+220)</option>

																								<option value="GE">Georgia (+995)</option>
																								<option value="DE">Germany (+49)</option>
																								<option value="GH">Ghana (+233)</option>
																								<option value="GR">Greece (+30)</option>
																								<option value="GD">Grenada (+1809)</option>
																								<option value="GT">Guatemala (+502)</option>

																								<option value="GN">Guinea (+224)</option>
																								<option value="GW">Guinea-Bissau (+245)</option>
																								<option value="GY">Guyana (+592)</option>
																								<option value="HT">Haiti (+509)</option>
																								<option value="HN">Honduras (+504)</option>
																								<option value="HK">Hong Kong (+852)</option>

																								<option value="HU">Hungary (+36)</option>
																								<option value="IS">Iceland (+354)</option>
																								<option value="ID">Indonesia (+62)</option>
																								<option value="IR">Iran (+98)</option>
																								<option value="IQ">Iraq (+964)</option>
																								<option value="IE">Ireland (+353)</option>

																								<option value="IL">Israel (+972)</option>
																								<option value="IT">Italy (+39)</option>
																								<option value="JM">Jamaica (+1876)</option>
																								<option value="JP">Japan (+81)</option>
																								<option value="JO">Jordan (+962)</option>
																								<option value="KZ">Kazakhstan (+7336)</option>

																								<option value="KE">Kenya (+254)</option>
																								<option value="KI">Kiribati (+686)</option>
																								<option value="KW">Kuwait (+965)</option>
																								<option value="KG">Kyrgyzstan (+996)</option>
																								<option value="LA">Laos (+865)</option>
																								<option value="LV">Latvia (+371)</option>

																								<option value="LB">Lebanon (+961)</option>
																								<option value="LS">Lesotho (+265)</option>
																								<option value="LR">Liberia (+231)</option>
																								<option value="LY">Libya (+218)</option>
																								<option value="LI">Liechtenstein (+423)</option>
																								<option value="LT">Lithuania (+370)</option>

																								<option value="LU">Luxembourg (+352)</option>
																								<option value="MK">Macedonia (+389)</option>
																								<option value="MG">Madagascar (+261)</option>
																								<option value="MW">Malawi (+265)</option>
																								<option value="MY">Malaysia (+60)</option>
																								<option value="MV">Maldives (+960)</option>

																								<option value="ML">Mali (+223)</option>
																								<option value="MT">Malta (+356)</option>
																								<option value="MH">Marshall Islands (+692)</option>
																								<option value="MR">Mauritania (+222)</option>
																								<option value="MU">Mauritius (+230)</option>
																								<option value="MX">Mexico (+52)</option>

																								<option value="FM">Micronesia (+691)</option>
																								<option value="MD">Moldova (+373)</option>
																								<option value="MC">Monaco (+339)</option>
																								<option value="MN">Mongolia (+976)</option>
																								<option value="ME">Montenegro (+382)</option>
																								<option value="MA">Morocco (+212)</option>

																								<option value="MZ">Mozambique (+258)</option>
																								<option value="MM">Myanmar (+95)</option>
																								<option value="NA">Namibia (+264)</option>
																								<option value="NR">Nauru (+674)</option>
																								<option value="NP">Nepal (+977)</option>
																								<option value="NL">Netherlands (+31)</option>

																								<option value="NZ">New Zealand (+64)</option>
																								<option value="NI">Nicaragua (+505)</option>
																								<option value="NE">Niger (+227)</option>
																								<option value="NG">Nigeria (+234)</option>
																								<option value="NU">Niue (+683)</option>
																								<option value="KP">North Korea (+850)</option>

																								<option value="NO">Norway (+47)</option>
																								<option value="OM">Oman (+968)</option>
																								<option value="PK">Pakistan (+92)</option>
																								<option value="PW">Palau (+680)</option>
																								<option value="PA">Panama (+507)</option>
																								<option value="PG">Papua New Guinea (+675)</option>

																								<option value="PY">Paraguay (+595)</option>
																								<option value="PE">Peru (+51)</option>
																								<option value="PH">Philippines (+63)</option>
																								<option value="PL">Poland (+48)</option>
																								<option value="PT">Portugal (+351)</option>
																								<option value="QA">Qatar (+974)</option>

																								<option value="RO">Romania (+40)</option>
																								<option value="RU">Russia (+7)</option>
																								<option value="RW">Rwanda (+250)</option>
																								<option value="KN">Saint Kitts and Nevis (+1869)</option>
																								<option value="LC">Saint Lucia (+1758)</option>
																								<option value="VC">Saint Vincent and the Grenadines (+1784)</option>

																								<option value="WS">Samoa (+685)</option>
																								<option value="SM">San Marino (+378)</option>
																								<option value="SA">Saudi Arabia (+966)</option>
																								<option value="SN">Senegal (+221)</option>
																								<option value="RS">Serbia (+381)</option>
																								<option value="SC">Seychelles (+248)</option>

																								<option value="SL">Sierra Leone (+232)</option>
																								<option value="SG">Singapore (+65)</option>
																								<option value="SK">Slovakia (+421)</option>
																								<option value="SI">Slovenia (+386)</option>
																								<option value="SB">Solomon Islands (+677)</option>
																								<option value="SO">Somalia (+252)</option>


																								<option value="ZA">South Africa (+27)</option>
																								<option value="KR">South Korea (+82)</option>
																								<option value="ES">Spain (+34)</option>
																								<option value="LK">Sri Lanka (+94)</option>
																								<option value="SD">Sudan (+249)</option>
																								<option value="SR">Suriname (+597)</option>

																								<option value="SZ">Swaziland (+268)</option>
																								<option value="SE">Sweden (+46)</option>
																								<option value="CH">Switzerland (+41)</option>
																								<option value="SY">Syria (+963)</option>
																								<option value="TW">Taiwan (+886)</option>
																								<option value="TJ">Tajikistan (+992)</option>

																								<option value="TZ">Tanzania (+255)</option>
																								<option value="TH">Thailand (+66)</option>
																								<option value="TL">Timor-Leste (+670)</option>
																								<option value="TG">Togo (+228)</option>
																								<option value="TO">Tonga (+676)</option>
																								<option value="TT">Trinidad and Tobago (+868)</option>

																								<option value="TN">Tunisia (+216)</option>
																								<option value="TR">Turkey (+90)</option>
																								<option value="TM">Turkmenistan (+993)</option>
																								<option value="TV">Tuvalu (+688)</option>
																								<option value="UG">Uganda (+256)</option>
																								<option value="UA">Ukraine (+380)</option>

																								<option value="UY">Uruguay (+598)</option>
																								<option value="UZ">Uzbekistan (+7)</option>
																								<option value="VU">Vanuatu (+678)</option>
																								<option value="VA">Vatican (+39)</option>
																								<option value="VE">Venezuela (+58)</option>
																								<option value="VN">Vietnam (+84)</option>

																								<option value="YE">Yemen (+969)</option>
																								<option value="ZM">Zambia (+260)</option>
																								<option value="ZW">Zimbabwe (+263)</option>
						  </select></td>
						<td style="padding-left: 5px;" width="65"><input name="tunnel_phone_areacode" value="" class="input" size="8" style="width: 60px;" type="text"></td>
						<td style="padding-left: 10px;" width="115"> 
						<input name="tunnel_phone_number" value="" class="input" size="15" style="width: 110px;" id="tunnel_phone_number2" type="text"></td>
					</tr>

					<tr> 
						<td class="verysmall" valign="top">Country Code</td>
						<td class="verysmall" style="padding-left: 5px;" valign="top">Std Code</td>
						<td class="verysmall" style="padding-left: 10px;" valign="top">Telephone No.</td>
					</tr>
				  </tbody></table>			</td>
		</tr>
		  <TR><TD><strong>Fax:</strong></TD><TD> <input type="text" size="32" name="fax" maxlength="64"  /></TD>
		    <td>&nbsp;</td>
		  </TR>
		  
		  
		  			<tr> 
			<td colspan="3"  style="border-top: 0px none;" valign="top"><h2><u>Educational info</u></h2></td>
		</tr>
								
		
		<tr> 
			<td  valign="top"><strong>Highest Educational qualification:</strong></td>
			<td colspan="2" class="formline-right" valign="top"> 
				<table ="0" cellpadding="2" cellspacing="0" width="385">
									<tbody><tr> 
						<td > 
						<input name="tunnel_educational_qualification" value="10" id="10_1" type="radio">						</td>
						<td width="50%"><label for="10_1">Standard X</label></td>

                       <td> 
						<input name="tunnel_educational_qualification" value="12" id="12_1" type="radio">						</td>
						<td><label for="12_1">Standard XII</label></td>
					</tr>
										<tr> 
						<td class="leftpadzero"> 
						<input name="tunnel_educational_qualification" value="Diploma" id="Diploma_1" type="radio">						</td>
						<td width="50%"><label for="Diploma_1">Diploma</label></td>

						
						<td> 
						<input name="tunnel_educational_qualification" value="Bachelors" id="Bachelors_1" type="radio">						</td>
						<td><label for="Bachelors_1">Bachelor's degree</label></td>
					</tr>
					<tr> 
						<td> 
						<input name="tunnel_educational_qualification" value="Masters" id="Masters_1" type="radio">						</td>
						<td><label for="Masters_1">Master's Degree</label></td>

						<td> 
						<input name="tunnel_educational_qualification" value="Doctorate" id="Doctorate_1" type="radio">						</td>
						<td><label for="Doctorate_1">Doctorate (Ph.D.)</label></td>
					</tr>
				</tbody></table>
						<br>
			Some details of the specified Qualification 
			<table style="margin-top: 5px;" border="0" cellpadding="0" cellspacing="0" width="100%">

				<tbody><tr> 
					<td id="tunnel_educational_qualification_detail_td"><p>Course name
					    <input type="text" class="hintanchor" onclick="showhint('Provide details of your educational qualifications; e.g., if you have a Bachelor degree, specify the branch such as Science, Arts etc., and also name the Majors.', this, event, '300px')" />
					  <br>
					</p>
					  
				  <div ></div>					</td>
				</tr>
				<tr> 
					<td style="padding-top: 5px;" valign="top">University
					  <select name="tunnel_educational_university" style="width: 385px;" onchange="check_university()">
                        <option value="VOID">Select</option>
                        <optgroup value="Andhra Pradesh" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Andhra Pradesh-----"></optgroup>
                        <option value="Acharya N. G. Ranga Agricultural University, Hyderabad">Acharya N. G. Ranga Agricultural University, Hyderabad</option>
                        <option value="Acharya Nagarjuna University, Guntur">Acharya Nagarjuna University, Guntur</option>
                        <option value="Adikavi Nannaya University, Rajamundhry">Adikavi Nannaya University, Rajamundhry</option>
                        <option value="Andhra Pradesh Agricultural University, Hyderabad">Andhra Pradesh Agricultural University, Hyderabad</option>
                        <option value="Andhra Pradesh Open University, Hyderabad">Andhra Pradesh Open University, Hyderabad</option>
                        <option value="Andhra University, Vishakhapatnam">Andhra University, Vishakhapatnam</option>
                        <option value="Dr. B. R. Ambedkar Open University, Hyderabad">Dr. B. R. Ambedkar Open University, Hyderabad</option>
                        <option value="Dravidian University, Kuppam">Dravidian University, Kuppam</option>
                        <option value="English and Foreign Languages University, Hyderabad">English and Foreign Languages University, Hyderabad</option>
                        <option value="GITAM University, Visakhapatnam">GITAM University, Visakhapatnam</option>
                        <option value="ICFAI University, Hyderabad">ICFAI University, Hyderabad</option>
                        <option value="Indian Institute of Information Technology, Hyderabad">Indian Institute of Information Technology, Hyderabad</option>
                        <option value="Indian Institute of Information Technology, Nuzvid">Indian Institute of Information Technology, Nuzvid</option>
                        <option value="Jawaharlal Nehru Technological University, Hyderabad">Jawaharlal Nehru Technological University, Hyderabad</option>
                        <option value="Jawaharlal Nehru Technological University, Kakinada">Jawaharlal Nehru Technological University, Kakinada</option>
                        <option value="Jawaharlal Nehru Technological University, Kadapa">Jawaharlal Nehru Technological University, Kadapa</option>
                        <option value="Kakatiya University, Warangal">Kakatiya University, Warangal</option>
                        <option value="Mahatma Gandhi University, Nalgonda">Mahatma Gandhi University, Nalgonda</option>
                        <option value="Maulana Azad National Urdu University, Hyderabad">Maulana Azad National Urdu University, Hyderabad</option>
                        <option value="NALSAR University of Law, Hyderabad">NALSAR University of Law, Hyderabad</option>
                        <option value="National Institute of fashion Technology, Hyderabad">National Institute of fashion Technology, Hyderabad</option>
                        <option value="National Institute of Technology, Warangal">National Institute of Technology, Warangal</option>
                        <option value="NTR University of Health Sciences, Vijayawada">NTR University of Health Sciences, Vijayawada</option>
                        <option value="Osmania University, Hyderabad">Osmania University, Hyderabad</option>
                        <option value="Potti Sreeramulu Telugu University, Hyderabad">Potti Sreeramulu Telugu University, Hyderabad</option>
                        <option value="Qurram University, Hyderabad">Qurram University, Hyderabad</option>
                        <option value="Sathavahana University, Machilipatnam">Sathavahana University, Machilipatnam</option>
                        <option value="Shatavahana University, Karimnagar">Shatavahana University, Karimnagar</option>
                        <option value="Sri Krishnadevaraya University, Anantapur">Sri Krishnadevaraya University, Anantapur</option>
                        <option value="Sri Sathya Sai University, Puttaparthi">Sri Sathya Sai University, Puttaparthi</option>
                        <option value="Sri Venkateswara University, Tirupati">Sri Venkateswara University, Tirupati</option>
                        <option value="Sri Venkateswara Veterinary University, Tirupati">Sri Venkateswara Veterinary University, Tirupati</option>
                        <option value="Telangana University, Nizamabad">Telangana University, Nizamabad</option>
                        <option value="University of Hyderabad, Hyderabad">University of Hyderabad, Hyderabad</option>
                        <option value="Yogi Vemana University, Kadapa">Yogi Vemana University, Kadapa</option>
                        <optgroup value="Arunachal Pradesh" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Arunachal Pradesh-----"></optgroup>
                        <option value="Arunachal University, Itanagar">Arunachal University, Itanagar</option>
                        <option value="Rajiv Gandhi University, Itanagar">Rajiv Gandhi University, Itanagar</option>
                        <optgroup value="Assam" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Assam-----"></optgroup>
                        <option value="Assam Agricultural University, Jorhat">Assam Agricultural University, Jorhat</option>
                        <option value="Assam University, Silchar">Assam University, Silchar</option>
                        <option value="Dibrugarh University, Dibrugarh">Dibrugarh University, Dibrugarh</option>
                        <option value="Gauhati University, Guwahati">Gauhati University, Guwahati</option>
                        <option value="Indian Institute of Technology Guwahati, Guwahati">Indian Institute of Technology Guwahati, Guwahati</option>
                        <option value="National Institute of Technology, Silchar">National Institute of Technology, Silchar</option>
                        <option value="Tezpur University, Tezpur">Tezpur University, Tezpur</option>
                        <optgroup value="Bihar" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Bihar-----"></optgroup>
                        <option value="B. R. Ambedkar Bihar University, Muzzafarpur">B. R. Ambedkar Bihar University, Muzzafarpur</option>
                        <option value="Bhupendra Narayan Mandal University, Madhepura">Bhupendra Narayan Mandal University, Madhepura</option>
                        <option value="Indian Institute of Technology, Patna">Indian Institute of Technology, Patna</option>
                        <option value="Jaiprakash University, Chapra">Jaiprakash University, Chapra</option>
                        <option value="Kameshwar Singh Darbhanga Sanskrit University, Darbhanga">Kameshwar Singh Darbhanga Sanskrit University, Darbhanga</option>
                        <option value="Lalit Narayan Mithila University, Darbhanga">Lalit Narayan Mithila University, Darbhanga</option>
                        <option value="Magadh University, Bodh Gaya">Magadh University, Bodh Gaya</option>
                        <option value="Nalanda Open University, Patna">Nalanda Open University, Patna</option>
                        <option value="National Institute of Technology, Patna">National Institute of Technology, Patna</option>
                        <option value="Patna University, Patna">Patna University, Patna</option>
                        <option value="Rajendra Agricultural University, Samastipur">Rajendra Agricultural University, Samastipur</option>
                        <option value="Ramakant Verma University, Aurangabad">Ramakant Verma University, Aurangabad</option>
                        <option value="Tilka Manjhi Bhagalpur University, Bhagalpur">Tilka Manjhi Bhagalpur University, Bhagalpur</option>
                        <option value="Veer Kunwar Singh University, Arrah">Veer Kunwar Singh University, Arrah</option>
                        <option value="Veer Kunwar Singh University, Hyderabad">Veer Kunwar Singh University, Hyderabad</option>
                        <optgroup value="Chandigarh" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Chandigarh-----"></optgroup>
                        <option value="Panjab University, Chandigarh">Panjab University, Chandigarh</option>
                        <optgroup value="Chattisgarh" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Chattisgarh-----"></optgroup>
                        <option value="Chhattisgarh Swami Vivekanand Technical University, Bhilai">Chhattisgarh Swami Vivekanand Technical University, Bhilai</option>
                        <option value="Dr. Loknath Technical University, Raipur">Dr. Loknath Technical University, Raipur</option>
                        <option value="Guru Ghasidas University, Bilaspur">Guru Ghasidas University, Bilaspur</option>
                        <option value="Hidayatullah National Law University, Raipur">Hidayatullah National Law University, Raipur</option>
                        <option value="Indira Gandhi Agricultural University, Raipur">Indira Gandhi Agricultural University, Raipur</option>
                        <option value="Indira Kala Sangeet University, Khairagarh">Indira Kala Sangeet University, Khairagarh</option>
                        <option value="Kushabhau Thakre Patrakarita Avam Jansanchar University, Raipur">Kushabhau Thakre Patrakarita Avam Jansanchar University, Raipur</option>
                        <option value="National Institute of Technology, Raipur">National Institute of Technology, Raipur</option>
                        <option value="Pandit Ravishankar Shukla University, Raipur">Pandit Ravishankar Shukla University, Raipur</option>
                        <option value="Pandit Sivanand University, Raipur">Pandit Sivanand University, Raipur</option>
                        <optgroup value="Delhi" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Delhi-----"></optgroup>
                        <option value="All India Institute of Medical Sciences, Delhi">All India Institute of Medical Sciences, Delhi</option>
                        <option value="Ambedkar Institute of Technology, Delhi">Ambedkar Institute of Technology, Delhi</option>
                        <option value="Guru Gobind Singh Indraprastha University, Delhi">Guru Gobind Singh Indraprastha University, Delhi</option>
                        <option value="Indian Institute of Technology Delhi, Delhi">Indian Institute of Technology Delhi, Delhi</option>
                        <option value="Indira Gandhi National Open University, Delhi">Indira Gandhi National Open University, Delhi</option>
                        <option value="Indraprastha University, Delhi">Indraprastha University, Delhi</option>
                        <option value="Jamia Hamdard, Delhi">Jamia Hamdard, Delhi</option>
                        <option value="Jamia Millia Islamia, Delhi">Jamia Millia Islamia, Delhi</option>
                        <option value="Jawaharlal Nehru University, Delhi">Jawaharlal Nehru University, Delhi</option>
                        <option value="National Institute of Fashion Technology, Delhi">National Institute of Fashion Technology, Delhi</option>
                        <option value="School of Planning and Architecture, Delhi">School of Planning and Architecture, Delhi</option>
                        <option value="Shri Ram College of Commerce, Delhi">Shri Ram College of Commerce, Delhi</option>
                        <option value="TERI University, Delhi">TERI University, Delhi</option>
                        <option value="University of Delhi, Delhi">University of Delhi, Delhi</option>
                        <optgroup value="Goa" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Goa-----"></optgroup>
                        <option value="Goa University, Goa">Goa University, Goa</option>
                        <optgroup value="Gujarat" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Gujarat-----"></optgroup>
                        <option value="Anand Agricultural University, Anand">Anand Agricultural University, Anand</option>
                        <option value="Bhavnagar University, Bhavnagar">Bhavnagar University, Bhavnagar</option>
                        <option value="Dharmsinh Desai University, Nadiad">Dharmsinh Desai University, Nadiad</option>
                        <option value="Dhirubhai Ambani Institute of Information and Communication Technology, Gandhinagar">Dhirubhai Ambani Institute of Information and Communication Technology, Gandhinagar</option>
                        <option value="Dr. Babasaheb Ambedkar Open University, Ahmedabad">Dr. Babasaheb Ambedkar Open University, Ahmedabad</option>
                        <option value="Ganpat University, Mahesana">Ganpat University, Mahesana</option>
                        <option value="Gujarat Ayurved University, Jamnagar">Gujarat Ayurved University, Jamnagar</option>
                        <option value="Gujarat National Law University, Gandhinagar">Gujarat National Law University, Gandhinagar</option>
                        <option value="Gujarat University, Ahmedabad">Gujarat University, Ahmedabad</option>
                        <option value="Gujarat Vidyapith, Ahmedabad">Gujarat Vidyapith, Ahmedabad</option>
                        <option value="Hemchandracharya North Gujarat University, Patan">Hemchandracharya North Gujarat University, Patan</option>
                        <option value="Indian Institute of Management Ahmedabad, Ahmedabad">Indian Institute of Management Ahmedabad, Ahmedabad</option>
                        <option value="Junagadh Agricultural University, Junagadh">Junagadh Agricultural University, Junagadh</option>
                        <option value="Kachchh University, Bhuj">Kachchh University, Bhuj</option>
                        <option value="Maharaja Sayajirao University of Baroda, Baroda">Maharaja Sayajirao University of Baroda, Baroda</option>
                        <option value="National Institute of Fashion Technology, Gandhinagar">National Institute of Fashion Technology, Gandhinagar</option>
                        <option value="Navsari Agricultural University, Navsari">Navsari Agricultural University, Navsari</option>
                        <option value="Pandit Deendayal Petroleum University, Gandhinagar">Pandit Deendayal Petroleum University, Gandhinagar</option>
                        <option value="Sardar Patel University, Vallabh Vidyanagar">Sardar Patel University, Vallabh Vidyanagar</option>
                        <option value="Sardar Vallabhbhai National Institute of Technology, Surat">Sardar Vallabhbhai National Institute of Technology, Surat</option>
                        <option value="Sardarkrushinagar Dantiwada Agricultural University, Palanpur">Sardarkrushinagar Dantiwada Agricultural University, Palanpur</option>
                        <option value="Saurashtra University, Rajkot">Saurashtra University, Rajkot</option>
                        <option value="South Gujarat University, Surat">South Gujarat University, Surat</option>
                        <option value="Sumandeep Vidyapeeth University, Vadodara">Sumandeep Vidyapeeth University, Vadodara</option>
                        <optgroup value="Himachal Pradesh" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Himachal Pradesh-----"></optgroup>
                        <option value="Himachal Pradesh University, Shimla">Himachal Pradesh University, Shimla</option>
                        <optgroup value="Haryana" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Haryana-----"></optgroup>
                        <option value="Chaudhary Charan Singh Haryana Agricultural University, Hisar">Chaudhary Charan Singh Haryana Agricultural University, Hisar</option>
                        <option value="Chuadhary Devi Lal University, Sirsa">Chuadhary Devi Lal University, Sirsa</option>
                        <option value="Guru Jambheshwar University of Science and Technology, Hisar">Guru Jambheshwar University of Science and Technology, Hisar</option>
                        <option value="Kurukshetra University, Kurukshetra">Kurukshetra University, Kurukshetra</option>
                        <option value="Maharishi Dayanand University, Rohtak">Maharishi Dayanand University, Rohtak</option>
                        <option value="Maharishi Markandeshwar Univerity, Ambala">Maharishi Markandeshwar Univerity, Ambala</option>
                        <option value="National Institute of Technology, Kurukshetra">National Institute of Technology, Kurukshetra</option>
                        <optgroup value="Jharkhand" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Jharkhand-----"></optgroup>
                        <option value="Birla Institute of Technology, Ranchi">Birla Institute of Technology, Ranchi</option>
                        <option value="Birsa Agricultural University, Ranchi">Birsa Agricultural University, Ranchi</option>
                        <option value="Indian School of Mines University, Dhanbad">Indian School of Mines University, Dhanbad</option>
                        <option value="National Institute of Technology, Jamshedpur">National Institute of Technology, Jamshedpur</option>
                        <option value="Ranchi University, Ranchi">Ranchi University, Ranchi</option>
                        <option value="Sidhhu Kanhu University, Dumka">Sidhhu Kanhu University, Dumka</option>
                        <option value="Vinoba Bhave University, Hazaribagh">Vinoba Bhave University, Hazaribagh</option>
                        <optgroup value="Jammu and Kashmir" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Jammu and Kashmir-----"></optgroup>
                        <option value="Baba Ghulam Shah Badhshah University, Rajouri">Baba Ghulam Shah Badhshah University, Rajouri</option>
                        <option value="Islamic University of Science &amp; Technology, Pulwama">Islamic University of Science &amp; Technology, Pulwama</option>
                        <option value="Sher-e-Kashmir University of Agricultural Sciences and Technology of Jammu, Jammu">Sher-e-Kashmir University of Agricultural Sciences and Technology of Jammu, Jammu</option>
                        <option value="Sher-e-Kashmir University of Agricultural Sciences and Technology of Kashmir, Srinagar">Sher-e-Kashmir University of Agricultural Sciences and Technology of Kashmir, Srinagar</option>
                        <option value="Shri Mata Vaishno Devi University, Katra">Shri Mata Vaishno Devi University, Katra</option>
                        <option value="University of Jammu, Jammu">University of Jammu, Jammu</option>
                        <option value="University of Kashmir, Srinagar">University of Kashmir, Srinagar</option>
                        <optgroup value="Karnataka" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Karnataka-----"></optgroup>
                        <option value="Amrita Vishwa Vidyapeetham, Bangalore">Amrita Vishwa Vidyapeetham, Bangalore</option>
                        <option value="Amrita Vishwa Vidyapeetham, Mysore">Amrita Vishwa Vidyapeetham, Mysore</option>
                        <option value="Bangalore University, Bangalore">Bangalore University, Bangalore</option>
                        <option value="Gulbarga University, Gulbarga">Gulbarga University, Gulbarga</option>
                        <option value="Indian Institute of Management Bangalore, Bangalore">Indian Institute of Management Bangalore, Bangalore</option>
                        <option value="Indian Institute of Science, Bangalore">Indian Institute of Science, Bangalore</option>
                        <option value="International Institute of Information Technology, Bangalore">International Institute of Information Technology, Bangalore</option>
                        <option value="Kannada University, Hampi">Kannada University, Hampi</option>
                        <option value="Karnatak University, Dharwad">Karnatak University, Dharwad</option>
                        <option value="Karnataka State Open University, Mysore">Karnataka State Open University, Mysore</option>
                        <option value="Karnataka Veterinary, Animal and Fisheries Sciences University, Bidar">Karnataka Veterinary, Animal and Fisheries Sciences University, Bidar</option>
                        <option value="Karnataka Women's University, Bijapur">Karnataka Women's University, Bijapur</option>
                        <option value="KLE University, Belagavi">KLE University, Belagavi</option>
                        <option value="Kuvempu University, Shimoga">Kuvempu University, Shimoga</option>
                        <option value="Mangalore University, Mangalore">Mangalore University, Mangalore</option>
                        <option value="Manipal University, Manipal">Manipal University, Manipal</option>
                        <option value="Mysore University, Mysore">Mysore University, Mysore</option>
                        <option value="National Institute of Fashion Technology, Bangalore">National Institute of Fashion Technology, Bangalore</option>
                        <option value="National Institute of Mental Health and Neuro Sciences, Bangalore">National Institute of Mental Health and Neuro Sciences, Bangalore</option>
                        <option value="National Institute of Technology Karnataka, Surathkal">National Institute of Technology Karnataka, Surathkal</option>
                        <option value="Rajiv Gandhi University of Health Sciences, Bangalore">Rajiv Gandhi University of Health Sciences, Bangalore</option>
                        <option value="Ramakrishna Mission Vivekananda University, Belur">Ramakrishna Mission Vivekananda University, Belur</option>
                        <option value="Tumkur University, Tumkur">Tumkur University, Tumkur</option>
                        <option value="University of Agricultural Science, Bangalore">University of Agricultural Science, Bangalore</option>
                        <option value="University of Agricultural Sciences, Dharwad">University of Agricultural Sciences, Dharwad</option>
                        <option value="Visweswaraiah Technological University, Belgaum">Visweswaraiah Technological University, Belgaum</option>
                        <optgroup value="Kerala" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Kerala-----"></optgroup>
                        <option value="Amrita Vishwa Vidyapeetham,Amritapuri Campus, Kollam">Amrita Vishwa Vidyapeetham,Amritapuri Campus, Kollam</option>
                        <option value="Amrita Vishwa Vidyapeetham,Cochin Campus, Kollam">Amrita Vishwa Vidyapeetham,Cochin Campus, Kollam</option>
                        <option value="Calicut University, Calicut">Calicut University, Calicut</option>
                        <option value="Cochin University of Science and Technology, Kochi">Cochin University of Science and Technology, Kochi</option>
                        <option value="Indian Institute of Management Kozhikode, Kozhikode">Indian Institute of Management Kozhikode, Kozhikode</option>
                        <option value="Indian Institute of Space Science and Technology, Thiruvananthapuram">Indian Institute of Space Science and Technology, Thiruvananthapuram</option>
                        <option value="Kannur University, Kannur">Kannur University, Kannur</option>
                        <option value="Kerala Agricultural University, Thrissur">Kerala Agricultural University, Thrissur</option>
                        <option value="Kerala University, Trivandrum">Kerala University, Trivandrum</option>
                        <option value="Mahatma Gandhi University, Kottayam">Mahatma Gandhi University, Kottayam</option>
                        <option value="National Institute of Technology, Calicut">National Institute of Technology, Calicut</option>
                        <optgroup value="Maharashtra" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Maharashtra-----"></optgroup>
                        <option value="Amravati University, Amravati">Amravati University, Amravati</option>
                        <option value="Dnyaneshwar Vidyapeeth, Pune">Dnyaneshwar Vidyapeeth, Pune</option>
                        <option value="Dr. Babasaheb Ambedkar Marathwada University, Aurangabad">Dr. Babasaheb Ambedkar Marathwada University, Aurangabad</option>
                        <option value="Dr.Babasaheb Ambedkar Technological University, Lonere">Dr.Babasaheb Ambedkar Technological University, Lonere</option>
                        <option value="Indian Institute of Technology Bombay, Mumbai">Indian Institute of Technology Bombay, Mumbai</option>
                        <option value="International Institute of Population Science, Mumbai">International Institute of Population Science, Mumbai</option>
                        <option value="Konkan Agriculture University, Dapoli">Konkan Agriculture University, Dapoli</option>
                        <option value="Mahatma Phule Agriculture University, Rahuri">Mahatma Phule Agriculture University, Rahuri</option>
                        <option value="marathwada agriculture University, Parbhni">marathwada agriculture University, Parbhni</option>
                        <option value="Nagpur University, Nagpur">Nagpur University, Nagpur</option>
                        <option value="National Institute of fashion Technology, Mumbai">National Institute of fashion Technology, Mumbai</option>
                        <option value="NMIMS University, Mumbai">NMIMS University, Mumbai</option>
                        <option value="North Maharashtra University, Jalgaon">North Maharashtra University, Jalgaon</option>
                        <option value="panjabrao deshmukh agriculture University, Akola">panjabrao deshmukh agriculture University, Akola</option>
                        <option value="Pravara Rural University, Pravaranagar">Pravara Rural University, Pravaranagar</option>
                        <option value="Rashtrasant Tukadoji Maharaj Nagpur University, Nagpur">Rashtrasant Tukadoji Maharaj Nagpur University, Nagpur</option>
                        <option value="Sant Gadge Baba Amravati University, Amravati">Sant Gadge Baba Amravati University, Amravati</option>
                        <option value="Sant Gadgebaba Amravati University, Amravati">Sant Gadgebaba Amravati University, Amravati</option>
                        <option value="Shivaji University, Kolhapur">Shivaji University, Kolhapur</option>
                        <option value="Shreemati Nathibai Damodar Thackersey Women's University, Mumbai">Shreemati Nathibai Damodar Thackersey Women's University, Mumbai</option>
                        <option value="Solapur University, Solapur">Solapur University, Solapur</option>
                        <option value="Swami Ramanand Teerth Marathwada University, Nanded">Swami Ramanand Teerth Marathwada University, Nanded</option>
                        <option value="Symbiosis International University, Pune">Symbiosis International University, Pune</option>
                        <option value="Tata Institute of Social Science, Mumbai">Tata Institute of Social Science, Mumbai</option>
                        <option value="Tilak Maharastra vidyapeeth, Pune">Tilak Maharastra vidyapeeth, Pune</option>
                        <option value="University of Mumbai, Mumbai">University of Mumbai, Mumbai</option>
                        <option value="University of Pune, Pune">University of Pune, Pune</option>
                        <option value="Visvesvaraya National Institute of Technology, Nagpur">Visvesvaraya National Institute of Technology, Nagpur</option>
                        <option value="Yashwantrao Chavan Maharashtra Open University, Nasik">Yashwantrao Chavan Maharashtra Open University, Nasik</option>
                        <optgroup value="Meghalaya" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Meghalaya-----"></optgroup>
                        <option value="North Eastern Hill University, Shillong">North Eastern Hill University, Shillong</option>
                        <optgroup value="Manipur" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Manipur-----"></optgroup>
                        <option value="Central Agricultural University, Imphal">Central Agricultural University, Imphal</option>
                        <option value="Manipur University, Imphal">Manipur University, Imphal</option>
                        <optgroup value="Madhya Pradesh" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Madhya Pradesh-----"></optgroup>
                        <option value="Awadhesh Pratap Singh University, Rewa">Awadhesh Pratap Singh University, Rewa</option>
                        <option value="Barkatullah University, Bhopal">Barkatullah University, Bhopal</option>
                        <option value="Devi Ahilya University, Indore">Devi Ahilya University, Indore</option>
                        <option value="Dr. Hari Singh Gour University, Sagar">Dr. Hari Singh Gour University, Sagar</option>
                        <option value="Indian Institute of Management Indore, Indore">Indian Institute of Management Indore, Indore</option>
                        <option value="Jawaharlal Nehru Agricultural University, Jabalpur">Jawaharlal Nehru Agricultural University, Jabalpur</option>
                        <option value="Jiwaji University, Gwalior">Jiwaji University, Gwalior</option>
                        <option value="Madhya Pradesh Bhoj Open University, Bhopal">Madhya Pradesh Bhoj Open University, Bhopal</option>
                        <option value="Maharishi Mahesh Yogi Vedic University, Katni">Maharishi Mahesh Yogi Vedic University, Katni</option>
                        <option value="Mahatma Gandhi Chitrakoot Gramoday University, Chitrakoot">Mahatma Gandhi Chitrakoot Gramoday University, Chitrakoot</option>
                        <option value="Makhanlal Chaturvedi National University of Journalism, Bhopal">Makhanlal Chaturvedi National University of Journalism, Bhopal</option>
                        <option value="Maulana Azad National Institute of Technology, Bhopal">Maulana Azad National Institute of Technology, Bhopal</option>
                        <option value="National Law Institute University, Bhopal">National Law Institute University, Bhopal</option>
                        <option value="Rajiv Gandhi Technical University, Bhopal">Rajiv Gandhi Technical University, Bhopal</option>
                        <option value="Rani Durgavati University, Jabalpur">Rani Durgavati University, Jabalpur</option>
                        <option value="Vikram University, Ujjain">Vikram University, Ujjain</option>
                        <optgroup value="Nagaland" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Nagaland-----"></optgroup>
                        <option value="The Global Open University, Dimapur">The Global Open University, Dimapur</option>
                        <optgroup value="Orissa" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Orissa-----"></optgroup>
                        <option value="Berhampur University, Berhampur">Berhampur University, Berhampur</option>
                        <option value="Biju Patnaik University of Technology, Rourkela">Biju Patnaik University of Technology, Rourkela</option>
                        <option value="Fakir Mohan University, Balasore">Fakir Mohan University, Balasore</option>
                        <option value="Indian Institute of Technology, Bhubaneswar">Indian Institute of Technology, Bhubaneswar</option>
                        <option value="International Institute of Information Technology, Bhubaneswar">International Institute of Information Technology, Bhubaneswar</option>
                        <option value="KIIT University, Bhubaneswar">KIIT University, Bhubaneswar</option>
                        <option value="National Institute of Technology, Rourkela">National Institute of Technology, Rourkela</option>
                        <option value="National Law University, Naraj">National Law University, Naraj</option>
                        <option value="North Orissa University, Baripada">North Orissa University, Baripada</option>
                        <option value="Orissa University of Agriculture and Technology, Bhubaneswar">Orissa University of Agriculture and Technology, Bhubaneswar</option>
                        <option value="Ravenshaw University, Cuttack">Ravenshaw University, Cuttack</option>
                        <option value="Sambalpur University, Sambalpur">Sambalpur University, Sambalpur</option>
                        <option value="Siksha O Anusandhan University, Bhubaneswar">Siksha O Anusandhan University, Bhubaneswar</option>
                        <option value="Utkal University, Bhubaneswar">Utkal University, Bhubaneswar</option>
                        <option value="Vedanta University, Konark">Vedanta University, Konark</option>
                        <optgroup value="Punjab" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Punjab-----"></optgroup>
                        <option value="Amritsar College of Engineering and Technology, Amritsar">Amritsar College of Engineering and Technology, Amritsar</option>
                        <option value="B R Ambedkar National Institute of Technology, Jalandhar">B R Ambedkar National Institute of Technology, Jalandhar</option>
                        <option value="Guru Angad Dev Veterinary and Animal Sciences University, Ludhiana">Guru Angad Dev Veterinary and Animal Sciences University, Ludhiana</option>
                        <option value="Guru Nanak Dev University, Amritsar">Guru Nanak Dev University, Amritsar</option>
                        <option value="Lovely Professional University, Jalandhar">Lovely Professional University, Jalandhar</option>
                        <option value="Punjab Agricultural University, Ludhiana">Punjab Agricultural University, Ludhiana</option>
                        <option value="Punjab Technical University, Jalandhar">Punjab Technical University, Jalandhar</option>
                        <option value="Punjabi University, Patiala">Punjabi University, Patiala</option>
                        <option value="Thapar University, Patiala">Thapar University, Patiala</option>
                        <optgroup value="Pondicherry" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Pondicherry-----"></optgroup>
                        <option value="Pondicherry University, Pondicherry">Pondicherry University, Pondicherry</option>
                        <optgroup value="Rajasthan" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Rajasthan-----"></optgroup>
                        <option value="Amity University Rajasthan, Jaipur">Amity University Rajasthan, Jaipur</option>
                        <option value="Birla Institute of Technology and Science, Pilani">Birla Institute of Technology and Science, Pilani</option>
                        <option value="IASE University, Sardarshahr">IASE University, Sardarshahr</option>
                        <option value="Jai Narain Vyas University, Jodhpur">Jai Narain Vyas University, Jodhpur</option>
                        <option value="Jaipur National University, Jaipur">Jaipur National University, Jaipur</option>
                        <option value="Maharana Pratap University of Agricultural &amp; Technology, Udaipur">Maharana Pratap University of Agricultural &amp; Technology, Udaipur</option>
                        <option value="Maharshi Dayanand Saraswati University, Ajmer">Maharshi Dayanand Saraswati University, Ajmer</option>
                        <option value="Malviya Regional Engineering College, Jaipur">Malviya Regional Engineering College, Jaipur</option>
                        <option value="Mohanlal Sukhadia University, Udaipur">Mohanlal Sukhadia University, Udaipur</option>
                        <option value="National Law University, Jodhpur">National Law University, Jodhpur</option>
                        <option value="Rajasthan Agricultural University, Bikaner">Rajasthan Agricultural University, Bikaner</option>
                        <option value="Rajasthan ayurved university, Jodhpur">Rajasthan ayurved university, Jodhpur</option>
                        <option value="Rajasthan Technical University, kota">Rajasthan Technical University, kota</option>
                        <option value="Rajasthan Vidyapeeth University, Udaipur">Rajasthan Vidyapeeth University, Udaipur</option>
                        <option value="Singhania University, Pacheri">Singhania University, Pacheri</option>
                        <option value="Sir Padampat Singhania University, Udaipur">Sir Padampat Singhania University, Udaipur</option>
                        <option value="Suresh Gyanvihar University, Jaipur">Suresh Gyanvihar University, Jaipur</option>
                        <option value="The LNM Institute of Information Technology, Jaipur">The LNM Institute of Information Technology, Jaipur</option>
                        <option value="University of Bikaner, Bikaner">University of Bikaner, Bikaner</option>
                        <option value="University of Jodhpur, Jodhpur">University of Jodhpur, Jodhpur</option>
                        <option value="University of Rajasthan, Jaipur">University of Rajasthan, Jaipur</option>
                        <option value="University of Udaipur, Udaipur">University of Udaipur, Udaipur</option>
                        <option value="Vardhaman Mahaveer Open University, kota">Vardhaman Mahaveer Open University, kota</option>
                        <optgroup value="Tamil Nadu" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Tamil Nadu-----"></optgroup>
                        <option value="Alagappa University, Karaikudi">Alagappa University, Karaikudi</option>
                        <option value="Amrita Vishwa Vidyapeetham, Coimbatore">Amrita Vishwa Vidyapeetham, Coimbatore</option>
                        <option value="Anna University, Tirunelveli">Anna University, Tirunelveli</option>
                        <option value="Anna University, Chennai">Anna University, Chennai</option>
                        <option value="Anna University, Coimbatore">Anna University, Coimbatore</option>
                        <option value="Anna University, Thiruchirapalli">Anna University, Thiruchirapalli</option>
                        <option value="Annamalai University, Annamalai Nagar">Annamalai University, Annamalai Nagar</option>
                        <option value="Avinashilingam University, Coimbatore">Avinashilingam University, Coimbatore</option>
                        <option value="Bharat University, Chennai">Bharat University, Chennai</option>
                        <option value="Bharathiar University, Coimbatore">Bharathiar University, Coimbatore</option>
                        <option value="Bharathidasan University, Thiruchirapalli">Bharathidasan University, Thiruchirapalli</option>
                        <option value="Chennai Mathematical Institute, Siruseri">Chennai Mathematical Institute, Siruseri</option>
                        <option value="Deemed University, Salem">Deemed University, Salem</option>
                        <option value="Gandhigram Rural Institute, Dindigul">Gandhigram Rural Institute, Dindigul</option>
                        <option value="Hindustan university, Chennai">Hindustan university, Chennai</option>
                        <option value="Indian Institute of Technology Madras, Chennai">Indian Institute of Technology Madras, Chennai</option>
                        <option value="Kalasalingam University, Krishnankovil">Kalasalingam University, Krishnankovil</option>
                        <option value="Karunya University, Coimbatore">Karunya University, Coimbatore</option>
                        <option value="M.G.R. Educational and Research Institute, Chennai">M.G.R. Educational and Research Institute, Chennai</option>
                        <option value="Madurai Kamaraj University, Madurai">Madurai Kamaraj University, Madurai</option>
                        <option value="Manonmaniam Sundaranar University, Tirunelveli">Manonmaniam Sundaranar University, Tirunelveli</option>
                        <option value="Meenakshi Academy of Higher Education and Research, Chennai">Meenakshi Academy of Higher Education and Research, Chennai</option>
                        <option value="Mother Teresa Women's University, Kodaikanal">Mother Teresa Women's University, Kodaikanal</option>
                        <option value="National Institute of Technology, Thiruchirapalli">National Institute of Technology, Thiruchirapalli</option>
                        <option value="Park College of Engineering and Technology, Coimbatore">Park College of Engineering and Technology, Coimbatore</option>
                        <option value="Periyar Maniammai University, Vallam Tanjavur">Periyar Maniammai University, Vallam Tanjavur</option>
                        <option value="Periyar University, Salem">Periyar University, Salem</option>
                        <option value="SASTRA University, Thanjavur">SASTRA University, Thanjavur</option>
                        <option value="Sathyabama University, Chennai">Sathyabama University, Chennai</option>
                        <option value="Saveetha Institute of Medical and Technical Sciences, Chennai">Saveetha Institute of Medical and Technical Sciences, Chennai</option>
                        <option value="Sri Chandrasekharendra Saraswathi Viswa Mahavidhyalaya, Kanchipuram">Sri Chandrasekharendra Saraswathi Viswa Mahavidhyalaya, Kanchipuram</option>
                        <option value="Sri Ramachandra Medical College and Research Institute, Chennai">Sri Ramachandra Medical College and Research Institute, Chennai</option>
                        <option value="SRM University, Kanchipuram">SRM University, Kanchipuram</option>
                        <option value="Tamil Nadu Agricultural University, Coimbatore">Tamil Nadu Agricultural University, Coimbatore</option>
                        <option value="Tamil Nadu Dr. Ambedkar Law University, Chennai">Tamil Nadu Dr. Ambedkar Law University, Chennai</option>
                        <option value="Tamil Nadu Dr. M. G. R. Medical University, Chennai">Tamil Nadu Dr. M. G. R. Medical University, Chennai</option>
                        <option value="Tamil Nadu Open University, Chennai">Tamil Nadu Open University, Chennai</option>
                        <option value="Tamil Nadu Veterinary and Animal Sciences University, Chennai">Tamil Nadu Veterinary and Animal Sciences University, Chennai</option>
                        <option value="Tamil University, Thanjavur">Tamil University, Thanjavur</option>
                        <option value="The Institute of Mathematical Sciences, Chennai">The Institute of Mathematical Sciences, Chennai</option>
                        <option value="Thiruvalluvar University, Vellore">Thiruvalluvar University, Vellore</option>
                        <option value="University of Madras, Chennai">University of Madras, Chennai</option>
                        <option value="Vinayaka Mission's Research Foundation, Salem">Vinayaka Mission's Research Foundation, Salem</option>
                        <option value="VIT University, Vellore">VIT University, Vellore</option>
                        <optgroup value="Tripura" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Tripura-----"></optgroup>
                        <option value="National Institute of Technology, Agartala">National Institute of Technology, Agartala</option>
                        <option value="Tripura University, Suryamaninagar">Tripura University, Suryamaninagar</option>
                        <optgroup value="Uttarakhand" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Uttarakhand-----"></optgroup>
                        <option value="Govind Ballabh Pant University of Agriculture &amp; Technology, Pantnagar">Govind Ballabh Pant University of Agriculture &amp; Technology, Pantnagar</option>
                        <option value="Gurukul Kangri University, Haridwar">Gurukul Kangri University, Haridwar</option>
                        <option value="Hemwati Nandan Bahuguna Garhwal University, Garhwal">Hemwati Nandan Bahuguna Garhwal University, Garhwal</option>
                        <option value="ICFAI University, Dehradun">ICFAI University, Dehradun</option>
                        <option value="Indian Institute of Technology Roorkee, Roorkee">Indian Institute of Technology Roorkee, Roorkee</option>
                        <option value="Kumaun University, Nainital">Kumaun University, Nainital</option>
                        <option value="National Institute of Technology, Srinagar">National Institute of Technology, Srinagar</option>
                        <option value="University of Petroleum &amp; Energy studies, Dehradun">University of Petroleum &amp; Energy studies, Dehradun</option>
                        <option value="Uttarakhand Technical University, Dehradun">Uttarakhand Technical University, Dehradun</option>
                        <optgroup value="Uttar Pradesh" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----Uttar Pradesh-----"></optgroup>
                        <option value="Aligarh Muslim University, Aligarh">Aligarh Muslim University, Aligarh</option>
                        <option value="Allahabad Agricultural Institute, Allahabad">Allahabad Agricultural Institute, Allahabad</option>
                        <option value="Allahabad University, Allahabad">Allahabad University, Allahabad</option>
                        <option value="Amity University, Noida">Amity University, Noida</option>
                        <option value="Babasaheb Bhimrao Ambedkar University, Lucknow">Babasaheb Bhimrao Ambedkar University, Lucknow</option>
                        <option value="Banaras Hindu University, Varanasi">Banaras Hindu University, Varanasi</option>
                        <option value="Bundelkhand University, Jhansi">Bundelkhand University, Jhansi</option>
                        <option value="Chandra Shekhar Azad University of Agriculture &amp; Technology, Kanpur">Chandra Shekhar Azad University of Agriculture &amp; Technology, Kanpur</option>
                        <option value="Chaudhary Charan Singh University, Meerut">Chaudhary Charan Singh University, Meerut</option>
                        <option value="Chhatrapati Sahu Ji Maharaj University, Kanpur">Chhatrapati Sahu Ji Maharaj University, Kanpur</option>
                        <option value="Dayalbagh Educational Institute (Deemed University) Dayalbagh, Agra">Dayalbagh Educational Institute (Deemed University) Dayalbagh, Agra</option>
                        <option value="Deemed University, Allahabad">Deemed University, Allahabad</option>
                        <option value="Dr. Bhim Rao Ambedkar University: Agra University, Agra">Dr. Bhim Rao Ambedkar University: Agra University, Agra</option>
                        <option value="Dr. Ram Manohar Lohia Avadh University, Faizabad">Dr. Ram Manohar Lohia Avadh University, Faizabad</option>
                        <option value="Dr. Ram Manohar Lohia National Law University, Lucknow">Dr. Ram Manohar Lohia National Law University, Lucknow</option>
                        <option value="Gorakhpur University, Gorakhpur">Gorakhpur University, Gorakhpur</option>
                        <option value="Indian Institute of Information Technology, Allahabad">Indian Institute of Information Technology, Allahabad</option>
                        <option value="Indian Institute of Management Lucknow, Lucknow">Indian Institute of Management Lucknow, Lucknow</option>
                        <option value="Indian Institute of Technology Kanpur, Kanpur">Indian Institute of Technology Kanpur, Kanpur</option>
                        <option value="Integral University, Lucknow">Integral University, Lucknow</option>
                        <option value="Jaypee Institute of Information Technology University, Noida">Jaypee Institute of Information Technology University, Noida</option>
                        <option value="Kanpur University, Kanpur">Kanpur University, Kanpur</option>
                        <option value="M.J.P. Rohilkhand University, Bareilly">M.J.P. Rohilkhand University, Bareilly</option>
                        <option value="Manglayatan University, Aligarh">Manglayatan University, Aligarh</option>
                        <option value="Meerut University, Meerut">Meerut University, Meerut</option>
                        <option value="Pandit Sundarlal Sharma University, Bilaspur">Pandit Sundarlal Sharma University, Bilaspur</option>
                        <option value="Purvanchal University, Jaunpur">Purvanchal University, Jaunpur</option>
                        <option value="Sampurnanand Sanskrit University, Varanasi">Sampurnanand Sanskrit University, Varanasi</option>
                        <option value="Shobhit University, Meerut">Shobhit University, Meerut</option>
                        <option value="Teerthankar Mahaveer University, Moradabad">Teerthankar Mahaveer University, Moradabad</option>
                        <option value="University of Lucknow, Lucknow">University of Lucknow, Lucknow</option>
                        <option value="Uttar Pradesh Rajarshi Tandon Open University, Allahabad">Uttar Pradesh Rajarshi Tandon Open University, Allahabad</option>
                        <option value="Uttar Pradesh Technical University, Lucknow">Uttar Pradesh Technical University, Lucknow</option>
                        <optgroup value="West Bengal" style="background: none repeat scroll 0% 0% rgb(208, 224, 241); color: rgb(0, 0, 0);" label="-----West Bengal-----"></optgroup>
                        <option value="Aliya University, Kolkata">Aliya University, Kolkata</option>
                        <option value="Bengal Engineering &amp; Science University, Howrah">Bengal Engineering &amp; Science University, Howrah</option>
                        <option value="Bidhan Chandra Krishi Viswa Vidyalaya, Haringhata">Bidhan Chandra Krishi Viswa Vidyalaya, Haringhata</option>
                        <option value="Gour Banga University, Malda">Gour Banga University, Malda</option>
                        <option value="Indian Institute of Management, Kolkata">Indian Institute of Management, Kolkata</option>
                        <option value="Indian Institute of Technology, Kharagpur">Indian Institute of Technology, Kharagpur</option>
                        <option value="Indian Statistical Institute, Kolkata">Indian Statistical Institute, Kolkata</option>
                        <option value="Jadavpur University, Kolkata">Jadavpur University, Kolkata</option>
                        <option value="National Institute of Fashion Technology, Kolkata">National Institute of Fashion Technology, Kolkata</option>
                        <option value="National Institute of Technology, Durgapur">National Institute of Technology, Durgapur</option>
                        <option value="Netaji Subhas Open University, Kolkata">Netaji Subhas Open University, Kolkata</option>
                        <option value="Rabindra Bharati University, Kolkata">Rabindra Bharati University, Kolkata</option>
                        <option value="Senate of Serampore College, Serampore">Senate of Serampore College, Serampore</option>
                        <option value="Senate of Serampore University, Serampore">Senate of Serampore University, Serampore</option>
                        <option value="The West Bengal National University of Juridical Sciences, Kolkata">The West Bengal National University of Juridical Sciences, Kolkata</option>
                        <option value="University of Burdwan, Bardhaman">University of Burdwan, Bardhaman</option>
                        <option value="University of Calcutta, Kolkata">University of Calcutta, Kolkata</option>
                        <option value="University of Kalyani, Kalyani">University of Kalyani, Kalyani</option>
                        <option value="University of North Bengal, Siliguri">University of North Bengal, Siliguri</option>
                        <option value="Uttar Banga Krishi Vishwavidyalaya, Cooch Behar">Uttar Banga Krishi Vishwavidyalaya, Cooch Behar</option>
                        <option value="Vidyasagar University, Medinipur">Vidyasagar University, Medinipur</option>
                        <option value="Visva Bharati University, Santiniketan">Visva Bharati University, Santiniketan</option>
                        <option value="West Bengal State University, Barasat">West Bengal State University, Barasat</option>
                        <option value="West Bengal University of Animal and Fishery Sciences, Kolkata">West Bengal University of Animal and Fishery Sciences, Kolkata</option>
                        <option value="West Bengal University of Health Sciences, Kolkata">West Bengal University of Health Sciences, Kolkata</option>
                        <option value="West Bengal University of Technology, Kolkata">West Bengal University of Technology, Kolkata</option>
                        <optgroup value="Other University" style="background: none repeat scroll 0% 0% rgb(236, 163, 163); color: rgb(0, 0, 0);" label="-----Other University-----"> </optgroup>
                        <option value="others">Other University</option>
                        <optgroup value="" label="--------------------------"></optgroup>
                      </select>
					  <br>
					  <div id="other_university" style="display: none; margin-top: 10px;">Other University <input name="tunnel_other_university" style="width: 200px;" value="" id="other_uni" type="text"></div>				  </td>
				</tr>
				<tr>

					<td style="padding-top: 5px;" valign="top">
					Marks / Grade / Class<br>
					<input name="tunnel_educational_marks" class="txtfield" value="" type="text">				  </td>
				</tr>
			</tbody></table>		</td>
		</tr>
		<tr> 
			<td colspan="3" class="formline1 headline-tunnel-colors" style="border-top: 0px none;" valign="top"><!--DWLayoutEmptyCell-->&nbsp;</td>
		</tr>
		
				<tr class="r19"> 
			<td  valign="top"><strong>Language Skills:</strong></td>
			<td colspan="2" class="formline-right" valign="top"> 
				<table class="adpostsubtable" border="0" cellpadding="0" cellspacing="0">
			  </table><table class="adpostsubtable" id="more_langs0" border="0" cellpadding="0" cellspacing="0">
					<tbody><tr>

						<td width="110">English:</td>
						<td> 
						<select name="tunnel_sprachkenntnisse_englisch">
						<option value="VOID">Select</option>
						<option value="Keine">No Knowledge</option>
						<option value="Grundkenntnisse">Beginner</option>
						<option value="Verhandlungssicher">Intermediate</option>

						<option value="Fliessend/Verhandlungssicher">Expert</option>
						</select><span class="hint" style="margin-left: 90px;">Select the Proficiency Level in this Language.<span class="hint-pointer">&nbsp;</span><span class="prop"></span></span>						</td>
											</tr>
				</tbody></table>
			  				<table class="adpostsubtable" border="0" cellpadding="0" cellspacing="0">
					<tbody><tr> 
						<td width="110">Hindi:</td>

						<td> 
						<select name="tunnel_sprachkenntnisse_andere1">
						<option value="VOID">Select</option>
						<option value="Keine">No Knowledge</option>
						<option value="Grundkenntnisse">Beginner</option>
						<option value="Verhandlungssicher">Intermediate</option>
						<option value="Fliessend/Verhandlungssicher">Expert</option>
						</select>						</td>
					</tr>
				</tbody></table>
							<table class="adpostsubtable" id="more_langs1" style="display: none;" border="0" cellpadding="0" cellspacing="0">
					<tbody><tr> 
						<td valign="top" width="110"> 
						<input name="tunnel_sprache_andere2" style="width: 100px; margin-right: 2px;" class="txtfield" value="" type="text">:</td>
						<td valign="top">
						<select id="tunnel_sprachkenntnisse_andere21" name="tunnel_sprachkenntnisse_andere2">

						<option value="VOID">Select</option>
						<option value="Keine">No Knowledge</option>
						<option value="Grundkenntnisse">Beginner</option>
						<option value="Verhandlungssicher">Intermediate</option>
						<option value="Fliessend/Verhandlungssicher">Expert</option>
						</select><span class="hint" style="margin-left: 90px;">Select the Proficiency Level in this Language.<span class="hint-pointer">&nbsp;</span><span class="prop"></span></span>						</td>

						<td valign="top">&nbsp;<span  style="color: rgb(40, 82, 146); cursor: pointer;">« Remove this option.</span></td>
					</tr>
				</tbody></table>
				<table class="adpostsubtable" id="more_langs2" style="display: none;" border="0" cellpadding="0" cellspacing="0">
					<tbody><tr> 
						<td valign="top" width="110"> 
						<input name="tunnel_sprache_andere3" style="width: 100px; margin-right: 2px;" class="txtfield" value="" type="text">:</td>
						<td valign="top"> 
						<select id="tunnel_sprachkenntnisse_andere31" name="tunnel_sprachkenntnisse_andere3" >

						<option value="VOID">Select</option>
						<option value="Keine">No Knowledge</option>
						<option value="Grundkenntnisse">Beginner</option>
						<option value="Verhandlungssicher">Intermediate</option>
						<option value="Fliessend/Verhandlungssicher">Expert</option>
						</select><span class="hint" style="margin-left: 90px;">Select the Proficiency Level in this Language.<span class="hint-pointer">&nbsp;</span><span class="prop"></span></span>						</td>

						<td valign="top">&nbsp;<span onclick="hide_language_option('tunnel_sprache_andere3', 'tunnel_sprachkenntnisse_andere3', 'more_langs2')" style="color: rgb(40, 82, 146); cursor: pointer;">« Remove this option.</span></td>
					</tr>
				</tbody></table>
				<table class="adpostsubtable" id="more_langs3" style="display: none;" border="0" cellpadding="0" cellspacing="0">
					<tbody><tr> 
						<td valign="top" width="110"> 
						<input name="tunnel_sprache_andere4" style="width: 100px; margin-right: 2px;" class="txtfield" value="" type="text">:</td>
						<td valign="top"> 
						<select id="tunnel_sprachkenntnisse_andere41" name="tunnel_sprachkenntnisse_andere4" onchange='hide_error_change("tunnel_sprachkenntnisse_andere4", "tunnel_sprachkenntnisse_andere41")'>

						<option value="VOID">Select</option>
						<option value="Keine">No Knowledge</option>
						<option value="Grundkenntnisse">Beginner</option>
						<option value="Verhandlungssicher">Intermediate</option>
						<option value="Fliessend/Verhandlungssicher">Expert</option>
						</select><span class="hint" style="margin-left: 90px;">Select the Proficiency Level in this Language.<span class="hint-pointer">&nbsp;</span><span class="prop"></span></span>						</td>

						<td valign="top">&nbsp;<span onclick="hide_language_option('tunnel_sprache_andere4', 'tunnel_sprachkenntnisse_andere4', 'more_langs3')" style="color: rgb(40, 82, 146); cursor: pointer;">« Remove this option.</span></td>
					</tr>
				</tbody></table>
                                <input id="language_check" value="Ja" type="hidden">
			<script type="text/javascript">
			isIndiaSelected('IN');
									</script>
			<span onclick="showmore_langs()" style="color: rgb(40, 82, 146); cursor: pointer;" id="more_langs">More languages »</span></td>
		</tr>

			<TR><TD colspan="2" > <h2 ><u>Professional info </u> </h2></TD>
		    <td>&nbsp;</td>
		  </TR>	
		 
	     <tr> 
			<td colspan="2"  style="border-top: 0px none;" valign="top"><strong>Resume Details:</strong></td>
		    <td>&nbsp;</td>
	     </tr>
		  <tr> 
			<td colspan="2"  style="border-top: 0px none;" valign="top">&nbsp;</td>
		    <td>&nbsp;</td>
	     </tr>
		<tr class="r2"> 
			<td  valign="top" width="300px">
			<strong>Job Designation:&nbsp;</strong> </td>

			<td    valign="top"> 
			  <p>
			    <input  type="text" class="hintanchor" onclick="showhint('Express your core professional competency; e.g., Software Developer, Doctor, Editor, Nurse, etc.', this, event, '280px')">
		      </p>
			  
		 		<div >e.g. Java Developer, Receptionist, System Administrator, Nurse, Webmaster, HR Manager</div>		  </td>
		   
		</tr>
		
		<tr class="r4"> 
			<td  style="padding-right: 0px;" valign="top"><strong>Preferred Job Location:</strong></td>
			<td   valign="top"  > 
				<p ><span class="hintanchor"  onclick="showhint('Choose your prefered job location', this, event, '200px')">
				  <select size="4" multiple="multiple" name="loc" >
				  <option value="196">Anywhere</option>
				  <option value="1">Ahmedabad</option>
				  <option value="2">Bangalore</option>
				  <option value="3">Chennai</option>
				  <option value="4">Delhi</option>
				  <option value="199">Delhi Region</option>
				  <option value="5">Gurgaon</option>
				  <option value="6">Hyderabad</option>
				  <option value="7">Kolkata</option>
				  <option value="8">Mumbai</option>
				  <option value="9">Noida</option>
				  <option value="10">Pune</option>
				  <option value="11">Agartala</option>
				  <option value="12">Agra</option>
				  <option value="13">Ahmednagar</option>
				  <option value="14">Aizawal</option>
				  <option value="15">Ajmer</option>
				  <option value="474">Alappuzha / Alleppey</option>
				  <option value="16">Aligarh</option>
				  <option value="17">Allahabad</option>
				  <option value="18">Ambala</option>
				  <option value="19">Amritsar</option>
				  <option value="20">Anand</option>
				  <option value="21">Ankleshwar</option>
				  <option value="22">Asansol</option>
				  <option value="23">Aurangabad</option>
				  <option value="483">Baddi</option>
				  <option value="24">Bahgalpur</option>
				  <option value="25">Bareilly</option>
				  <option value="26">Baroda</option>
				  <option value="27">Belgaum</option>
				  <option value="28">Bellary</option>
				  <option value="29">Bharuch</option>
				  <option value="30">Bhatinda</option>
				  <option value="31">Bhavnagar</option>
				  <option value="32">Bhilaigarh</option>
				  <option value="33">Bhopal</option>
				  <option value="34">Bhubaneshwar</option>
				  <option value="35">Bhuj</option>
				  <option value="36">Bidar</option>
				  <option value="37">Bilaspur</option>
				  <option value="38">Bokaro</option>
				  <option value="40">Chandigarh</option>
				  <option value="87">Cochin / Kochi / Ernakulam</option>
				  <option value="41">Coimbatore</option>
				  <option value="42">Cuttack</option>
				  <option value="43">Dalhousie</option>
				  <option value="44">Daman</option>
				  <option value="45">Dehradun</option>
				  <option value="46">Dhanbad</option>
				  <option value="47">Dharamsala</option>
				  <option value="48">Dharwad</option>
				  <option value="49">Dispur</option>
				  <option value="50">Durgapur</option>
				  <option value="52">Erode</option>
				  <option value="53">Faizabad</option>
				  <option value="54">Faridabad</option>
				  <option value="55">Gandhinagar</option>
				  <option value="56">Gangtok</option>
				  <option value="57">Ghaziabad</option>
				  <option value="58">Goa</option>
				  <option value="59">Gorakhpur</option>
				  <option value="60">Gulbarga</option>
				  <option value="61">Guntur</option>
				  <option value="62">Guwahati</option>
				  <option value="63">Gwalior</option>
				  <option value="64">Haldia</option>
				  <option value="65">Hisar</option>
				  <option value="66">Hosur</option>
				  <option value="67">Hubli</option>
				  <option value="475">Idukki</option>
				  <option value="68">Imphal</option>
				  <option value="69">Indore</option>
				  <option value="70">Itanagar</option>
				  <option value="71">Jabalpur</option>
				  <option value="72">Jaipur</option>
				  <option value="73">Jaisalmer</option>
				  <option value="74">Jalandhar</option>
				  <option value="75">Jalgaon</option>
				  <option value="76">Jammu</option>
				  <option value="77">Jamnagar</option>
				  <option value="78">Jamshedpur</option>
				  <option value="79">Jodhpur</option>
				  <option value="80">Kakinada</option>
				  <option value="81">Kandla</option>
				  <option value="82">Kannur</option>
				  <option value="83">Kanpur</option>
				  <option value="84">Karnal</option>
				  <option value="476">Kasargod</option>
				  <option value="85">Kavaratti</option>
				  <option value="86">Kharagpur</option>
				  <option value="88">Kohima</option>
				  <option value="89">Kolar</option>
				  <option value="90">Kolhapur</option>
				  <option value="91">Kollam</option>
				  <option value="92">Kota</option>
				  <option value="93">Kottayam</option>
				  <option value="39">Kozhikode / Calicut</option>
				  <option value="94">Kulu/Manali</option>
				  <option value="95">Kurnool</option>
				  <option value="96">Kurukshetra</option>
				  <option value="97">Lucknow</option>
				  <option value="98">Ludhiana</option>
				  <option value="99">Madurai</option>
				  <option value="477">Malappuram</option>
				  <option value="100">Mangalore</option>
				  <option value="101">Mathura</option>
				  <option value="102">Meerut</option>
				  <option value="103">Mohali</option>
				  <option value="104">Moradabad</option>
				  <option value="105">Mysore</option>
				  <option value="106">Nagercoil</option>
				  <option value="107">Nagpur</option>
				  <option value="108">Nasik</option>
				  <option value="109">Nellore</option>
				  <option value="110">Nizamabad</option>
				  <option value="111">Ooty</option>
				  <option value="112">Pallakad</option>
				  <option value="113">Panipat</option>
				  <option value="114">Paradeep</option>
				  <option value="478">Pathanamthitta</option>
				  <option value="115">Pathankot</option>
				  <option value="116">Patiala</option>
				  <option value="117">Patna</option>
				  <option value="118">Pondicherry</option>
				  <option value="119">Porbandar</option>
				  <option value="120">Port Blair</option>
				  <option value="121">Puri</option>
				  <option value="122">Quilon</option>
				  <option value="123">Raipur</option>
				  <option value="124">Rajamundry</option>
				  <option value="125">Rajkot</option>
				  <option value="126">Ranchi</option>
				  <option value="127">Rohtak</option>
				  <option value="128">Roorkee</option>
				  <option value="129">Rourkela</option>
				  <option value="130">Salem</option>
				  <option value="131">Shillong</option>
				  <option value="132">Shimla</option>
				  <option value="482">Shimoga</option>
				  <option value="133">Sholapur</option>
				  <option value="134">Silchar</option>
				  <option value="135">Siliguri</option>
				  <option value="136">Silvassa</option>
				  <option value="480">Sonipat / Sonepat</option>
				  <option value="137">Srinagar</option>
				  <option value="138">Surat</option>
				  <option value="139">Thanjavur</option>
				  <option value="140">Thrissur / Trissur</option>
				  <option value="143">Thiruvananthapuram / Trivandrum</option>
				  <option value="141">Tirunalveli</option>
				  <option value="142">Tirupati</option>
				  <option value="144">Trichy</option>
				  <option value="145">Tuticorin</option>
				  <option value="146">Udaipur</option>
				  <option value="147">Ujjain</option>
				  <option value="148">Vadodara</option>
				  <option value="149">Valsad</option>
				  <option value="150">Vapi</option>
				  <option value="151">Varanasi</option>
				  <option value="152">Vellore</option>
				  <option value="153">Vijayawada</option>
				 <option value="154">Visakhapatnam</option>
				 <option value="155">Warangal</option>
				 <option value="479">Wayanad</option>
				 <option value="481">Yamunanagar</option>
				 <option value="198">Other India</option>
				 <option value="156">Australia</option>
				 <option value="158">Bahrain</option>
				 <option value="157">Bangladesh</option>
				 <option value="159">Belgium</option>
				 <option value="160">Canada</option>
				 <option value="161">China</option>
				 <option value="250">Egypt</option>
				 <option value="164">France</option>
				 <option value="165">Germany</option>
				 <option value="204">Gulf</option>
				 <option value="166">Hongkong</option>
				 <option value="167">Indonesia</option>
				 <option value="168">Ireland</option>
				 <option value="169">Japan</option>
				 <option value="238">Jordan</option>
				 <option value="170">Kuwait</option>
				 <option value="237">Lebanon</option>
				 <option value="252">Macau</option>
				 <option value="171">Malaysia</option>
				 <option value="172">Maldives</option>
				 <option value="173">Mauritius</option>
				 <option value="174">Mexico</option>
				 <option value="175">Nepal</option>
				 <option value="176">Netherlands</option>
				 <option value="177">New Zealand</option>
				 <option value="178">Oman</option>
				 <option value="179">Pakistan</option>
				 <option value="249">Philippines</option>
				 <option value="180">Qatar</option>
				 <option value="181">Russia</option>
				 <option value="182">Saudi Arabia</option>
				 <option value="183">Singapore</option>
				 <option value="184">South Africa</option>
				 <option value="185">South Korea</option>
				 <option value="186">Spain</option>
				 <option value="187">SriLanka</option>
				 <option value="188">Sweden</option>
				 <option value="189">Switzerland</option>
				 <option value="253">Taiwan</option>
				 <option value="190">Thailand</option>
				 <option value="191">UK</option>
				 <option value="192">United Arab Emirates</option>
				 <option value="193">US</option>
				 <option value="254">Vietnam</option>
				 <option value="194">Yemen</option>
				 <option value="195">Zimbabwe</option>
				 <option value="197">Other International</option></select></span>
			  </p>		<div></div>  </td>
		</tr>
		
			<tr class="r7"> 
			<td valign="top"><strong>Employment Type:</strong></td>
			<td colspan="2" valign="top" height="53"> 
				<table  border="0" cellpadding="2" cellspacing="0" width="385">

					<tbody><tr> 
						<td  valign="top"> 
							<input name="tunnel_employment_type[]" value="full_time" id="full_1" type="checkbox"></td>
							<td width="30%"><label for="full_1">Full Time</label>						</td>
						<td> 
							<input name="tunnel_employment_type[]" value="part_time" id="part_time_1" type="checkbox"></td>
							<td width="30%"><label for="part_time_1">Part Time</label>						</td>

						<td> 
						<input name="tunnel_employment_type[]" value="contract" id="contract_1" type="checkbox"></td>
						<td width="30%"><label for="contract_1">Contract/Freelance</label></td>
					</tr>
				</tbody></table>							</td>
		</tr><tr> 
			<td colspan="2"  style="border-top: 0px none;" valign="top">&nbsp;</td>
		    <td>&nbsp;</td>
	     </tr><tr> 
			<td  valign="top"><strong>Relevant Professional Experience that matches the desired job:</strong></td>
			<td colspan="2"  valign="top"> 
				<table border="0" cellpadding="0" cellspacing="0">
					<tbody><tr><td colspan="4"></td></tr><tr></tr><tr>
						<td>
							<select name="tunnel_work_experience_year">
							<option value="VOID">00</option>	
														<option value="1">

							1							</option>
														<option value="2">
							2							</option>
														<option value="3">
							3							</option>
														<option value="4">
							4							</option>

														<option value="5">
							5							</option>
														<option value="6">
							6							</option>
														<option value="7">
							7							</option>
														<option value="8">

							8							</option>
														<option value="9">
							9							</option>
														<option value="10">
							10							</option>
														<option value="11">
							11							</option>

														<option value="12">
							12							</option>
														<option value="13">
							13							</option>
														<option value="14">
							14							</option>
														<option value="15">

							15							</option>
														<option value="16">
							16							</option>
														<option value="17">
							17							</option>
														<option value="18">
							18							</option>

														<option value="19">
							19							</option>
														<option value="20">
							20							</option>
														<option value="21">
							21							</option>
														<option value="22">

							22							</option>
														<option value="23">
							23							</option>
														<option value="24">
							24							</option>
														<option value="25">
							25							</option>

														<option value="26">
							26							</option>
														<option value="27">
							27							</option>
														<option value="28">
							28							</option>
														<option value="29">

							29							</option>
														<option value="30">
							30							</option>
														<option value="31">
							31							</option>
														<option value="32">
							32							</option>

														<option value="33">
							33							</option>
														<option value="34">
							34							</option>
														<option value="35">
							35							</option>
														<option value="36">

							36							</option>
														<option value="37">
							37							</option>
														<option value="38">
							38							</option>
														<option value="39">
							39							</option>

														<option value="40">
							40							</option>
							</select>
							Years &nbsp;&nbsp;&nbsp;&nbsp;						</td> 
						<td>
							<select name="tunnel_work_experience_month">
							<option value="VOID">00</option>										
							<option value="1">1</option>

							<option value="2">2</option>
							<option value="3">3</option>
							<option value="4">4</option>
							<option value="5">5</option>
							<option value="6">6</option>
							<option value="7">7</option>

							<option value="8">8</option>
							<option value="9">9</option>
							<option value="10">10</option>
							<option value="11">11</option>
							</select>
							Months						</td>

					</tr>
				</tbody></table></td>
		</tr>
				<tr><tr> 
			<td colspan="2"  style="border-top: 0px none;" valign="top">&nbsp;</td>
		    <td>&nbsp;</td>
	     </tr> <tr>
			<td  valign="top"><strong>Type of Salary expected:</strong></td>

			<td colspan="2"  valign="top"> 
				<p><span class="hintanchor" onclick="showhint('Select the type of salary structure that you are seeking; e.g., fixed monthly package, commission basis, hourly remuneration, etc.', this, event, '200px')">
				  <select name="tunnel_salary_type" >
				    <option value="VOID">Select</option> 
				    <option value="fixed">Fixed salary</option>
				    <option value="salary_incentives">Salary plus incentives</option>
				    <option value="commission">On commission basis</option>
				    <option value="hourly_wages">Factory wages</option>
				    
				    <option value="working_hours">According to hours worked</option>
				    <option value="compensation">Compensation of expenses</option>
				    <option value="nopayment">No payment</option>
			      </select></span>
			  </p>
				</td>
		</tr><tr> 
			<td colspan="2"  style="border-top: 0px none;" valign="top">&nbsp;</td>
		    <td>&nbsp;</td>
	     </tr>
		<tr> 
			<td valign="top"><p><strong>Copy &amp; paste Resume</strong></p>
			  <p><strong> or</strong></p>
			  <p><strong> Attach Resume here:</strong> </p></td>

			<td colspan="2"  valign="top"> 
			  <p><span class="hintanchor" onclick="showhint('     A detailed Resume that effectively profiles your key professional strengths and academic credentials should be copy-pasted orattach Resume here', this, event, '200px')">
			    <textarea name="tunnel_candidate_bio_data" class="txtfield" rows="7" cols="40" ></textarea></span>
		    or <span class="hintanchor" onmouseover="showhint(' the file must be __ KB', this, event, '200px')"><input type="file" name="tunnel_candidate_bio_data" /></span></p>
		</td>
		</tr><tr> 
			<td colspan="2"  style="border-top: 0px none;" valign="top">&nbsp;</td>
		    <td>&nbsp;</td>
	     </tr>
	<tr>
			<td style="padding-top: 4px;" valign="top"><strong>Please attach your recent photograph to be displayed along with the Resume (optional):</strong></td>
			<td colspan="2">
			<div id="old_image">
				
			<img src="images/sillhouse_detailview.jpg" id="image_upload_old"><div style="margin-top: 6px;" id="div_check_reset_image"><a name="tunnel_reset_image" ihref="">Delete the above image.</a></div>
			  </div>
			<table border="0" cellpadding="0" cellspacing="0">

                         <tbody>
                     </tbody></table>			</td>
		</tr>
		<tr >
	<td valign="top">&nbsp;</td>

			<td colspan="2" class="formline-right" style="padding-top: 0px;"><span class="hintanchor" onmouseover="showhint(' the file must be __ KB', this, event, '200px')"><input name="tunnel_reset_image" id="tunnel_reset_image1" value="Upload" type="file" /></span>
			  <div style="display: none; font-size: 12px;" id="remove_text_check"><a >Delete and select again</a></div>    </td> 
		</tr>
<tr> 
			<td class="formline" valign="top"><strong>Additional Information:</strong></td>
			<td colspan="2" class="formline-right" valign="top"> 
			  <p>
			  <span class="hintanchor" onclick="showhint(' If there is any additional information that may be relevant to your search, please elaborate here.', this, event, '200px')">
			    <textarea name="tunnel_kommentar" class="txtfield" rows="7" cols="40"></textarea></span>
		      </p>
			 </td>
		</tr>
	
						
  
   


 
				
        <TR><TD colspan="2" align="center"> <label>
 
  
            <input type="submit" name="Create" value="Create My Account" /></label></TD>
          <td>&nbsp;</td>
        </TR>
</table>
	</form>
       
		
          <script type="text/javascript">

var countries=new ddajaxtabs("countrytabs", "countrydivcontainer")
countries.setpersist(true)
countries.setselectedClassTarget("link") //"link" or "linkparent"
countries.init()

</script>           </div> <div class="clr"></div> <div class="clr">
        </div>
</body>
</html>