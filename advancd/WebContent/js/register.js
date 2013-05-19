// JavaScript Document

//ajax functions
/*1*/


	/*	function ajaxLogin()
				{	
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
 											if(xmlhttp.responseText=="correct")
  												{
  												//alert("login ki syee")
  												return true;
  												}
  											else
  												{
  												document.getElementById("dontAllow").innerHTML=xmlhttp.responseText;
  												return false;
  												}
  											}
									}
						xmlhttp.open("GET","check.jsp?username="+document.getElementById("username").value+"&password="+document.getElementById("password").value,true);
						xmlhttp.send(null);
			}*/

//2
var regsd=/wrong/;
var namecheck;
					function usernameAjax(usrname,USER)
					{
						
						var xmlhttp;
						if (window.XMLHttpRequest)
  							{
							  xmlhttp=new XMLHttpRequest();
  							}
						else	
  							{
 	  						xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  							}
							xmlhttp.onreadystatechange=function()
							{
							if(xmlhttp.readyState==0||xmlhttp.readyState==1||xmlhttp.readyState==2||xmlhttp.readyState==3){
								document.getElementById("req").innerHTML="<img id='req' src='images/loading.gif'/>";
							}
							if(xmlhttp.readyState==4)
  								{
  								document.getElementById("req").innerHTML="<div id='req'></div>";
  								document.getElementById("emaillab1").innerHTML=xmlhttp.responseText;
  								namecheck=xmlhttp.responseText;
  								}
						}
						xmlhttp.open("GET","CheckUser.jsp?uname="+usrname+"&user="+USER,true);
						xmlhttp.send(null);
						}
						function captchaAjax(code)
					{
						
						var xmlhttp;
						if (window.XMLHttpRequest)
  							{
							  xmlhttp=new XMLHttpRequest();
  							}
						else	
  							{
 	  						xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
  							}
							xmlhttp.onreadystatechange=function()
							{
							if(xmlhttp.readyState==0||xmlhttp.readyState==1||xmlhttp.readyState==2||xmlhttp.readyState==3){
								document.getElementById("req2").innerHTML="<img id='req2' src='images/loading.gif'/>";
							}
							if(xmlhttp.readyState==4)
  								{
  								document.getElementById("req2").innerHTML="<div id='req2'></div>";
  								document.getElementById("captchalab").innerHTML=xmlhttp.responseText;
  								namecheck=xmlhttp.responseText;
  								}
						}
					
						xmlhttp.open("POST","http://localhost:8080/advancd/CheckCaptcha?code="+code,true);
						xmlhttp.send(null);
						}
				
function removeTag(what){
	
		switch(what){
			case  "fname":{
					if(document.getElementById("fname").value=="first name")
					{
					document.getElementById("fname").value="";
					document.getElementById("fname").style.color="#000000"
					 }
			break;
			}
			
			case "lname":{
					if(document.getElementById("lname").value=="last name")
					{
					document.getElementById("lname").value="";
					document.getElementById("lname").style.color="#000000"
					}	
					break;		
			}
			case "email":{
					if(document.getElementById("email").value=="email ID")
					{
					document.getElementById("email").value="";
					document.getElementById("email").style.color="#000000";	
					}
					break;		
			}		
	case "email1":{
					if(document.getElementById("email1").value=="email ID")
					{
					document.getElementById("email1").value="";
					document.getElementById("email1").style.color="#000000";	
					}
					break;		
			}		


		}
}

function donotmakenull(){
return true;
}
//removing tags

function testtest(){


if(regsd.test(namecheck)){
return false;
}
else{
return true;
}
/*if(regsd.test(document.getElementById("testtestcheck").value)){
return false;
}
else{
return true;
}*/

}



function checkAll(){
if(putTag("fname")&&putTag("lname")&&putTag("email1")&&putTag("pwd1")&&putTag("rpwd")&&putTag("year")&&putTagcompadd("compadd")&&checkCity()&&checkState()&&checkCountry()&&putTagpin_code()&&putTag("mobile")&&checkCountrycode()&&putTag("code")&&putTag("mob3")&&putTag("faxnum")&&putTagcourse()&&checkUniversity()&&putTaggrade()&&putTagdesg()&&checkCategory()&&checklocation()&&putTag("captcha"))
{
return true;
}
else{
return false;
}
}

function checkAlle(){
if(putTag("fname")&&putTag("lname")&&putTag("email1")&&putTag("pwd1")&&putTag("rpwd")&&putTag("year")&&putTagcompadd("compadd")&&checkCity()&&checkState()&&checkCountry()&&putTagpin_code()&&putTag("mobile")&&checkCountrycode()&&putTag("code")&&putTag("mob3")&&putTag("faxnum")&&putTagcomp()&&putTagdesg()&&putTag("c_email")&&putTag("captcha"))
{
return true;
}
else{
return false;
}
}


function putTag(what){
		switch(what){
			case  "fname":{
					var fl=/^[a-z|A-Z]{3,20}$/;
if(document.getElementById("fname").value==""||document.getElementById("fname").value=="first name")		{
			document.getElementById("fname").value="first name";
			document.getElementById("fname").style.color="#999999";
			document.getElementById("fnameimg").src="images/wrong3.png";
			document.getElementById("labfn").style.visibility="visible";
			document.getElementById("fnamelab").style.visibility="visible";
			document.getElementById("fnamelab").innerHTML="<label id='fnamelab'><font face='Calibri' color='#FF0000' size='-1'>Enter first name in correct format. <br>Ex.john</font></label>";
			return false;
		}
		else if(!fl.test(document.getElementById("fname").value)){
			document.getElementById("fname").value="first name";
			document.getElementById("fname").style.color="#999999";
			document.getElementById("fnameimg").src="images/wrong3.png";
			document.getElementById("labfn").style.visibility="visible";
			document.getElementById("fnamelab").style.visibility="visible";
			document.getElementById("fnamelab").innerHTML="<label id='fnamelab'><font face='Calibri' color='#FF0000' size='-1'>First name must have atleast 3 characters.<br>Do not include any special symbols.</font></label>";
			return false;
		}
		else{
			document.getElementById("fnameimg").src="images/right.png";
			document.getElementById("labfn").style.visibility="visible";
			document.getElementById("fnamelab").innerHTML="<div id='fnamelab'></div>";
			return true;
		}

			break;
			}
			
			case "lname":{
						var ll=/^[a-z|A-Z]{3,15}$/;
if(document.getElementById("lname").value==""||document.getElementById("lname").value=="last name")
		{
			document.getElementById("lname").value="last name";
			document.getElementById("lname").style.color="#999999"
		    document.getElementById("lnameimg").src="images/wrong3.png";
			document.getElementById("labln").style.visibility="visible";
			document.getElementById("lnamelab").style.visibility="visible";
			document.getElementById("lnamelab").innerHTML="<label id='lnamelab'><font face='Calibri' color='#FF0000' size='-1'>Enter last name in correct format. <br>Ex.Cena</font></label>";
			return false;
		}
		else if(!ll.test(document.getElementById("lname").value)){
		
			document.getElementById("lname").value="last name";
			document.getElementById("lname").style.color="#999999"
		    document.getElementById("lnameimg").src="images/wrong3.png";
			document.getElementById("labln").style.visibility="visible";
			document.getElementById("lnamelab").style.visibility="visible";
			document.getElementById("lnamelab").innerHTML="<label id='lnamelab'><font face='Calibri' color='#FF0000' size='-1'>Last name must have atleast 3 characters.<br>Do not include any special symbols.</font></label>";
			return false;
		}
		else{
			document.getElementById("lnameimg").src="images/right.png";
			document.getElementById("labln").style.visibility="visible";
						document.getElementById("lnamelab").innerHTML="<div id='lnamelab'></div>";
						return true;
		}
	
					break;		
			}
			case "email1":{
						var email1=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/;
						if(document.getElementById("email1").value==""||document.getElementById("email1").value=="email ID"||!email1.test(document.getElementById("email1").value)){
						
						document.getElementById("emaillab1").style.visibility="visible";
						document.getElementById("emaillab1").innerHTML="<label id='emaillab1'><font face='Calibri' color='#FF0000' size='-1'>Enter EmailID in correct format. Ex.someone@someone.com</font></label>";
						return false;
						}
							
				else if(email1.test(document.getElementById("email1").value)){
					document.getElementById("emaillab1").innerHTML="<div id='emaillab1'></div>";
					document.getElementById("emaillab1").style.visibility="visible";
					usernameAjax(document.getElementById("email1").value,document.getElementById("USER").value);
					return testtest();
							
					}			
			break;
			}
			case "email":{
						var email=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/;
						if(document.getElementById("email").value==""||document.getElementById("email").value=="email ID"||!email1.test(document.getElementById("email").value)){
						document.getElementById("email").value="email ID";
						document.getElementById("email").style.color="#999999";
						document.getElementById("emailimg").src="images/wrong3.png";
						document.getElementById("labemail").style.visibility="visible";
						document.getElementById("emaillab").style.visibility="visible";
						document.getElementById("emaillab").innerHTML="<label id='emaillab'><font face='Calibri' color='#FF0000' size='-1'>Enter email ID in correct format. <br>Ex.someone@someone.com</font></label>";
						return false;
						}
						else{
						document.getElementById("emailimg").src="images/right.png";
						document.getElementById("labemail").style.visibility="visible";
						document.getElementById("emaillab").innerHTML="<div id='emaillab'></div>";
						return true;
						}
					break;		
			}
			case "c_email":{
						var email=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/;
						if(document.getElementById("c_email").value==""||document.getElementById("c_email").value=="email ID"||!email.test(document.getElementById("c_email").value)){
						document.getElementById("c_email").value="email ID";
						document.getElementById("c_email").style.color="#999999";
						document.getElementById("cemailimg").src="images/wrong3.png";
						document.getElementById("comemail").style.visibility="visible";
						document.getElementById("cemaillab").style.visibility="visible";
						document.getElementById("cemaillab").innerHTML="<label id='cemaillab'><font face='Calibri' color='#FF0000' size='-1'>Enter email ID in correct format. <br>Ex.someone@company.com</font></label>";
						return false;
						}
						else{
						document.getElementById("cemailimg").src="images/right.png";
						document.getElementById("comemail").style.visibility="visible";
						document.getElementById("cemaillab").innerHTML="<div id='cemaillab'></div>";
						return true;
						}
					break;		
			}
			
			case "pwd":{
			var pwd=/^.{6,40}$/;
			if(document.getElementById("pass_word").value==""||!pwd.test(document.getElementById("pass_word").value)){			
			document.getElementById("pwdimg").src="images/wrong3.png";
			document.getElementById("labpwd").style.visibility="visible";
			document.getElementById("pwdlab").style.visibility="visible";
			document.getElementById("pwdlab").innerHTML="<label id='pwdlab'><font face='Calibri' color='#FF0000' size='-1'>Password must be of more than 6 characters.</font></label>";
			return false;
			}
			else{
			document.getElementById("pwdimg").src="images/right.png";
			document.getElementById("labpwd").style.visibility="visible";
			document.getElementById("pwdlab").innerHTML="<div id='pwdlab'></div>";
			return true;
			}			
			break;
			}
			case "pwd1":{
			var pwd1=/^.{6,40}$/;
			if(document.getElementById("pass_word1").value==""||!pwd1.test(document.getElementById("pass_word1").value)){			
			document.getElementById("pwdimg1").src="images/wrong3.png";
			document.getElementById("labpwd1").style.visibility="visible";
			document.getElementById("pwdlab1").style.visibility="visible";
			document.getElementById("pwdlab1").innerHTML="<label id='pwdlab1'><font face='Calibri' color='#FF0000' size='-1'>Password must be of more than 6 characters.</font></label>";
			return false;
			}
			else{
			document.getElementById("pwdimg1").src="images/right.png";
			document.getElementById("labpwd1").style.visibility="visible";
			document.getElementById("pwdlab1").innerHTML="<div id='pwdlab1'></div>";
			return true;
			}			
			break;
			}
			case "rpwd":{
			
			if(document.getElementById("rpwd").value==""){			
			document.getElementById("rpwdimg").src="images/wrong3.png";
			document.getElementById("rlabpwd").style.visibility="visible";
			document.getElementById("rpwdlab").style.visibility="visible";
			document.getElementById("rpwdlab").innerHTML="<label id='rpwdlab'><font face='Calibri' color='#FF0000' size='-1'>Re-enter the password</font></label>";
			return false;}
			else if(document.getElementById("rpwd").value!=document.getElementById("pass_word1").value){			
			document.getElementById("rpwdimg").src="images/wrong3.png";
			document.getElementById("rlabpwd").style.visibility="visible";
			document.getElementById("rpwdlab").style.visibility="visible";
			document.getElementById("rpwdlab").innerHTML="<label id='rpwdlab'><font face='Calibri' color='#FF0000' size='-1'>Password should match</font></label>";
			return false;
			}
			else{
			document.getElementById("rpwdimg").src="images/right.png";
			document.getElementById("rlabpwd").style.visibility="visible";
			document.getElementById("rpwdlab").innerHTML="<div id='rpwdlab'></div>";
			return true;
			}			
			break;
			}
			case "mobile":{
			var mobile=/^.{10}$/;
			if(document.getElementById("mobile").value==""||!mobile.test(document.getElementById("mobile").value)){			
			document.getElementById("mobimg").src="images/wrong3.png";
			document.getElementById("labmob").style.visibility="visible";
			document.getElementById("moblab").style.visibility="visible";
			document.getElementById("moblab").innerHTML="<label id='moblab'><font face='Calibri' color='#FF0000' size='-1'>Mobile number must be of 10 numbers.</font></label>";
			return false;
			}
			else{
			document.getElementById("mobimg").src="images/right.png";
			document.getElementById("labmob").style.visibility="visible";
			document.getElementById("moblab").innerHTML="<div id='moblab'></div>";
			return true;
			}			
			break;
			}
			case "code":{
			var mob2=/^.{3}$/;
			if(document.getElementById("mob2").value==""||!mob2.test(document.getElementById("mob2").value)){			
			document.getElementById("telnumimg").src="images/wrong3.png";
			document.getElementById("labtelnum").style.visibility="visible";
			document.getElementById("telnumlab").style.visibility="visible";
			document.getElementById("telnumlab").innerHTML="<label id='telnumlab'><font face='Calibri' color='#FF0000' size='-1'>Area code must 3 numbers.</font></label>";
			return false;
			}
			else{
			document.getElementById("telnumimg").src="images/right.png";
			document.getElementById("labtelnum").style.visibility="hidden";
			document.getElementById("telnumlab").innerHTML="<div id='telnumlab'></div>";
			return true;
			}		
						
			break;
			}
			case "mob3":{
			var mob3=/^.{8}$/;
			var mob2=/^.{3}$/;
			if(document.getElementById("mob3").value==""||!mob3.test(document.getElementById("mob3").value)||document.getElementById("mob2").value==""||!mob2.test(document.getElementById("mob2").value)){			
			document.getElementById("telnumimg").src="images/wrong3.png";
			document.getElementById("labtelnum").style.visibility="visible";
			document.getElementById("telnumlab").style.visibility="visible";
			document.getElementById("telnumlab").innerHTML="<label id='telnumlab'><font face='Calibri' color='#FF0000' size='-1'>phone number must be of 8 numbers.</font></label>";
			return false;
			}
			else{
			document.getElementById("telnumimg").src="images/right.png";
			document.getElementById("labtelnum").style.visibility="visible";
			document.getElementById("telnumlab").innerHTML="<div id='telnumlab'></div>";
			return true;
			}			
			break;
			}
			case "captcha":{
			var user=/\s+/;
					if(document.getElementById("captcha").value==""){
					document.getElementById("captchalab").style.visibility="visible";
					document.getElementById("captchalab").innerHTML="<label id='captchalab'><font face='Calibri' color='#FF0000' size='-1'>Cannot be left blank. <br></font></label>";
					return false;
					}
					
					else if(!user.test(document.getElementById("captcha").value)){
					document.getElementById("captchalab").innerHTML="<div id='captchalab'></div>";
					document.getElementById("captchalab").style.visibility="visible";
					captchaAjax(document.getElementById("captcha").value);
					return testtest();
							
					}			
			break;
			}
			case "faxnum":{
			var mob4=/^.{8}$/;
			if(document.getElementById("mob4").value==""||!mob4.test(document.getElementById("mob4").value)){			
			document.getElementById("telnumimg2").src="images/wrong3.png";
			document.getElementById("labtelnum2").style.visibility="visible";
			document.getElementById("telnumlab2").style.visibility="visible";
			document.getElementById("telnumlab2").innerHTML="<label id='telnumlab2'><font face='Calibri' color='#FF0000' size='-1'>fax number must be of 8 numbers.</font></label>";
			return false;
			}
			else{
			document.getElementById("telnumimg2").src="images/right.png";
			document.getElementById("labtelnum2").style.visibility="visible";
			document.getElementById("telnumlab2").innerHTML="<div id='telnumlab2'></div>";
			return true;
			}			
			break;
			}
			case "year":{
				var yr=document.getElementById("year").value;
if(yr>1991)
		{
			document.getElementById("dobimg").src="images/wrong3.png";
			document.getElementById("labdob").style.visibility="visible";
			document.getElementById("doblab").style.visibility="visible";
			document.getElementById("doblab").innerHTML="<label id='doblablab'><font face='Calibri' color='#FF0000' size='-1'>You are not eligible for registration if you are below 18 years of age.</font></label>";
			return false;
		}
else {
document.getElementById("doblab").innerHTML="<div id='doblab'></div>";
document.getElementById("labdob").style.visibility="hidden";
document.getElementById("doblab").style.visibility="hidden";
	return true;
}
			
			break;
			}		


		}
}


//putting tags






var x;

function change()
{
	
	x=0;
	if(document.getElementById("year").value=="yyyy"||document.getElementById("year").value%4==0)
	{
		x=1;
	}
	
	if(document.getElementById("month").value==12||document.getElementById("month").value==10||document.getElementById("month").value==1||document.getElementById("month").value==3||document.getElementById("month").value==5||document.getElementById("month").value==7||document.getElementById("month").value==8){
	document.getElementById("ddid").innerHTML="<select name='date' ><option value='1' >1</option><option value='2' >2</option>     <option value='3' >3</option><option value='4' >4</option><option value='5' >5</option><option value='6' >6</option><option value='7' >7</option><option value='8' >8</option><option value='9' >9</option><option value='10' >10</option><option value='11' >11</option>       <option value='12' >12</option><option value='13' >13</option><option value='14' >14</option><option value='15' >15</option><option value='16' >16</option><option value='17' >17</option><option value='18' >18</option><option value='19' >19</option><option value='20' >20</option><option value='21' >21</option><option value='22' >22</option><option value='23' >23</option><option value='24' >24</option><option value='25' >25</option><option value='26' >26</option><option value='27' >27</option><option value='28' >28</option>  <option value='29' >29</option><option value='30' >30</option><option value='31' >31</option></select>	";
	}
	else if(document.getElementById("month").value==4||document.getElementById("month").value==6||document.getElementById("month").value==9||document.getElementById("month").value==11)
	{
		document.getElementById("ddid").innerHTML="<select name='date' ><option value='1' >1</option><option value='2' >2</option>     <option value='3' >3</option><option value='4' >4</option><option value='5' >5</option><option value='6' >6</option><option value='7' >7</option><option value='8' >8</option><option value='9' >9</option><option value='10' >10</option><option value='11' >11</option>       <option value='12' >12</option><option value='13' >13</option><option value='14' >14</option><option value='15' >15</option><option value='16' >16</option><option value='17' >17</option><option value='18' >18</option><option value='19' >19</option><option value='20' >20</option><option value='21' >21</option><option value='22' >22</option><option value='23' >23</option><option value='24' >24</option><option value='25' >25</option><option value='26' >26</option><option value='27' >27</option><option value='28' >28</option>  <option value='29' >29</option><option value='30' >30</option></select>	";
	}
	else if(document.getElementById("month").value==2&&x==1)
	{
		document.getElementById("ddid").innerHTML="<select name='date' ><option value='1' >1</option><option value='2' >2</option>     <option value='3' >3</option><option value='4' >4</option><option value='5' >5</option><option value='6' >6</option><option value='7' >7</option><option value='8' >8</option><option value='9' >9</option><option value='10' >10</option><option value='11' >11</option>       <option value='12' >12</option><option value='13' >13</option><option value='14' >14</option><option value='15' >15</option><option value='16' >16</option><option value='17' >17</option><option value='18' >18</option><option value='19' >19</option><option value='20' >20</option><option value='21' >21</option><option value='22' >22</option><option value='23' >23</option><option value='24' >24</option><option value='25' >25</option><option value='26' >26</option><option value='27' >27</option><option value='28' >28</option>  <option value='29' >29</option></select>";
	} else if(document.getElementById("month").value==2&&x==0)
	{
		document.getElementById("ddid").innerHTML="<select name='date' ><option value='1' >1</option><option value='2' >2</option>     <option value='3' >3</option><option value='4' >4</option><option value='5' >5</option><option value='6' >6</option><option value='7' >7</option><option value='8' >8</option><option value='9' >9</option><option value='10' >10</option><option value='11' >11</option>       <option value='12' >12</option><option value='13' >13</option><option value='14' >14</option><option value='15' >15</option><option value='16' >16</option><option value='17' >17</option><option value='18' >18</option><option value='19' >19</option><option value='20' >20</option><option value='21' >21</option><option value='22' >22</option><option value='23' >23</option><option value='24' >24</option><option value='25' >25</option><option value='26' >26</option><option value='27' >27</option><option value='28' >28</option>  </select>";
	}
}
/*function gtest()
{
	document.getElementById("test1").innerHTML="<td><img src='wrong.png' id='' /></td><td></td><td>kachika</td>";
	
}*/

	var regcity=/^[a-z||A-Z]{3,35}$/;
	

function putTagcompadd(){

if(document.getElementById("compadd").value=="")
		{
			document.getElementById("compaddimg").src="images/wrong3.png";
			document.getElementById("labcompadd").style.visibility="visible";
			document.getElementById("compaddlab").style.visibility="visible";
			document.getElementById("compaddlab").innerHTML="<label id='compaddlab'><font face='Calibri' color='#FF0000' size='-1'>Please give company/home your address </font></label>";
			return false;
		}
		else{
			document.getElementById("compaddlab").style.visibility="visible";
			document.getElementById("labcompadd").style.visibility="hidden";
			document.getElementById("compaddlab").innerHTML="<div id='compaddlab'></div>";
			return true;
		}
}
function putTagcomp(){

if(document.getElementById("company").value=="")
		{
			document.getElementById("compimg").src="images/wrong3.png";
			document.getElementById("labcomp").style.visibility="visible";
			document.getElementById("complab").style.visibility="visible";
			document.getElementById("complab").innerHTML="<label id='complab'><font face='Calibri' color='#FF0000' size='-1'>Please give company name </font></label>";
			return false;
		}
		else{
			document.getElementById("complab").style.visibility="visible";
			document.getElementById("labcomp").style.visibility="hidden";
			document.getElementById("complab").innerHTML="<div id='complab'></div>";
			return true;
		}
}
function putTagdesg(){

if(document.getElementById("desg").value=="")
		{
			document.getElementById("desgimg").src="images/wrong3.png";
			document.getElementById("labdesg").style.visibility="visible";
			document.getElementById("desglab").style.visibility="visible";
			document.getElementById("desglab").innerHTML="<label id='desglab'><font face='Calibri' color='#FF0000' size='-1'>Please give your designation  </font></label>";
			return false;
		}
		else{
			document.getElementById("desglab").style.visibility="visible";
			document.getElementById("labdesg").style.visibility="hidden";
			document.getElementById("desglab").innerHTML="<div id='desglab'></div>";
			return true;
		}
}
function checkCity(){
		if(document.getElementById("city").value=="none"){
				document.getElementById("cityimg").src="images/wrong3.png";
				document.getElementById("labcity").style.visibility="visible";
				document.getElementById("citylab").style.visibility="visible";
				document.getElementById("citylab").innerHTML="<label id='citylab'><font face='Calibri' color='#FF0000' size='-1'>Please select any option.</font></label>";
				return false;
		}
		else{
				document.getElementById("cityimg").src="images/right.png";
				document.getElementById("labcity").style.visibility="visible";
				document.getElementById("citylab").style.visibility="visible";
				document.getElementById("citylab").innerHTML="<div id='citylab'></div>";
				return true;
		
		}

}
function checkState(){
		if(document.getElementById("state").value=="none"){
				document.getElementById("stateimg").src="images/wrong3.png";
				document.getElementById("labstate").style.visibility="visible";
				document.getElementById("statelab").style.visibility="visible";
				document.getElementById("statelab").innerHTML="<label id='statelab'><font face='Calibri' color='#FF0000' size='-1'>Please select any option.</font></label>";
				return false;
		}
		else{
				document.getElementById("stateimg").src="images/right.png";
				document.getElementById("labstate").style.visibility="visible";
				document.getElementById("statelab").style.visibility="visible";
				document.getElementById("statelab").innerHTML="<div id='statelab'></div>";
				return true;
		
		}

}
function checkCountry(){
		if(document.getElementById("country").value=="none"){
				document.getElementById("countryimg").src="images/wrong3.png";
				document.getElementById("labcountry").style.visibility="visible";
				document.getElementById("countrylab").style.visibility="visible";
				document.getElementById("countrylab").innerHTML="<label id='countrylab'><font face='Calibri' color='#FF0000' size='-1'>Please select any option.</font></label>";
				return false;
		}
		else{
				document.getElementById("countryimg").src="images/right.png";
				document.getElementById("labcountry").style.visibility="visible";
				document.getElementById("countrylab").style.visibility="visible";
				document.getElementById("countrylab").innerHTML="<div id='countrylab'></div>";
				return true;
		
		}
		}
		function checkCountrycode(){
		if(document.getElementById("country_code").value=="none")
		{
				document.getElementById("telnumimg").src="images/wrong3.png";
			document.getElementById("labtelnum").style.visibility="visible";
			document.getElementById("telnumlab").style.visibility="visible";
			document.getElementById("telnumlab").innerHTML="<label id='telnumlab'><font face='Calibri' color='#FF0000' size='-1'>Please select any option.</font></label>";
				return false;
		}
		else{
				document.getElementById("telnumimg").src="images/right.png";
			document.getElementById("labtelnum").style.visibility="visible";
			document.getElementById("telnumlab").style.visibility="visible";
			document.getElementById("telnumlab").innerHTML="<div id='telnumlab'></div>";
			return true;
					}
					}

function putTagcourse(){

if(document.getElementById("course").value=="")
		{
			document.getElementById("courseimg").src="images/wrong3.png";
			document.getElementById("labcourse").style.visibility="visible";
			document.getElementById("courselab").style.visibility="visible";
			document.getElementById("courselab").innerHTML="<label id='courselab'><font face='Calibri' color='#FF0000' size='-1'>Please give your COURSE NAME </font></label>";
			return false;
		}
		else{
			document.getElementById("courselab").style.visibility="visible";
			document.getElementById("labcourse").style.visibility="hidden";
			document.getElementById("courselab").innerHTML="<div id='courselab'></div>";
			return true;
		}
}
function putTaggrade(){

if(document.getElementById("grade").value=="")
		{
			document.getElementById("gradeimg").src="images/wrong3.png";
			document.getElementById("labgrade").style.visibility="visible";
			document.getElementById("gradelab").style.visibility="visible";
			document.getElementById("gradelab").innerHTML="<label id='gradelab'><font face='Calibri' color='#FF0000' size='-1'>Please give your grade/marks</font></label>";
			return false;
		}
		else{
			document.getElementById("gradelab").style.visibility="visible";
			document.getElementById("labgrade").style.visibility="hidden";
			document.getElementById("gradelab").innerHTML="<div id='gradelab'></div>";
			return true;
		}
}
function checkUniversity(){
		if(document.getElementById("university").value=="none"){
				document.getElementById("universityimg").src="images/wrong3.png";
				document.getElementById("labuniversity").style.visibility="visible";
				document.getElementById("universitylab").style.visibility="visible";
				document.getElementById("universitylab").innerHTML="<label id='universitylab'><font face='Calibri' color='#FF0000' size='-1'>Please select any option.</font></label>";
				return false;
		}
		else{
				document.getElementById("universityimg").src="images/right.png";
				document.getElementById("labuniversity").style.visibility="visible";
				document.getElementById("universitylab").style.visibility="visible";
				document.getElementById("universitylab").innerHTML="<div id='universitylab'></div>";
				return true;
		
		}

}
function checkCategory(){
		if(document.getElementById("category").value=="none"){
				document.getElementById("catimg").src="images/wrong3.png";
				document.getElementById("labcat").style.visibility="visible";
				document.getElementById("catlab").style.visibility="visible";
				document.getElementById("catlab").innerHTML="<label id='catlab'><font face='Calibri' color='#FF0000' size='-1'>Please select any option.</font></label>";
				return false;
		}
		else{
				document.getElementById("catimg").src="images/right.png";
				document.getElementById("labcat").style.visibility="visible";
				document.getElementById("catlab").style.visibility="visible";
				document.getElementById("catlab").innerHTML="<div id='catlab'></div>";
				return true;
		
		}

}
function checklocation(){
		if(document.getElementById("loc").value=="none"){
				document.getElementById("locimg").src="images/wrong3.png";
				document.getElementById("labloc").style.visibility="visible";
				document.getElementById("loclab").style.visibility="visible";
				document.getElementById("loclab").innerHTML="<label id='loclab'><font face='Calibri' color='#FF0000' size='-1'>Please select any option.</font></label>";
				return false;
		}
		else{
				document.getElementById("locimg").src="images/right.png";
				document.getElementById("labloc").style.visibility="visible";
				document.getElementById("loclab").style.visibility="visible";
				document.getElementById("loclab").innerHTML="<div id='loclab'></div>";
				return true;
		
		}

}
function putTagpin_code(){
var regpin=/^[0-9]{6}$/;
if(document.getElementById("pincode").value=="")
		{
			document.getElementById("pin_codeimg").src="images/wrong3.png";
			document.getElementById("labpin_code").style.visibility="visible";
			document.getElementById("pin_codelab").style.visibility="visible";
			document.getElementById("pin_codelab").innerHTML="<label id='pin_codelab'><font face='Calibri' color='#FF0000' size='-1'>Please enter your pincode number</font></label>";
			return false;
		}
        else if(!regpin.test(document.getElementById("pincode").value))
		{
			document.getElementById("pin_codeimg").src="images/wrong3.png";
			document.getElementById("labpin_code").style.visibility="visible";
			document.getElementById("pin_codelab").style.visibility="visible";
			document.getElementById("pin_codelab").innerHTML="<label id='pin_codelab'><font face='Calibri' color='#FF0000' size='-1'>Enter pincode in correct format</font></label>";
			return false;
		}
		else{
						document.getElementById("labpin_code").style.visibility="hidden";
						document.getElementById("pin_codelab").innerHTML="<div id='pin_codelab'></div>";
						return true;
		}
}