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
  								document.getElementById("emaillab").innerHTML=xmlhttp.responseText;
  								namecheck=xmlhttp.responseText;
  								}
						}
						xmlhttp.open("GET","CheckUser.jsp?uname="+usrname+"&user="+USER,true);
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
if(putTag("fname")&&putTag("lname")&&putTag("year")&&putTag("email")&&putTag("pwd")&&putTag("rpwd"))
{
return true;
}
else{
return false;
}
}

function checkProfile(){
if(putTag("fname")&&putTag("lname")&&putTag("year")&&putTag("email")&&putTag("pwd")&&putTag("rpwd"))
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
			case "email":{
						var email=/^\w+[\+\.\w-]*@([\w-]+\.)*\w+[\w-]*\.([a-z]{2,4}|\d+)$/;
						if(document.getElementById("email").value==""||document.getElementById("email").value=="email ID"||!email.test(document.getElementById("email").value)){
						
						document.getElementById("emaillab").style.visibility="visible";
						document.getElementById("emaillab").innerHTML="<label id='emaillab'><font face='Calibri' color='#FF0000' size='-1'>Enter EmailID in correct format. Ex.someone@someone.com</font></label>";
						return false;
						}
							
				else if(!email.test(document.getElementById("email").value)){
					document.getElementById("emaillab").innerHTML="<div id='emaillab'></div>";
					document.getElementById("emaillab").style.visibility="visible";
					usernameAjax(document.getElementById("email").value,document.getElementById("USER").value);
					return testtest();
							
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
			case "rpwd":{
			
			if(document.getElementById("rpwd").value==""){			
			document.getElementById("rpwdimg").src="images/wrong3.png";
			document.getElementById("rlabpwd").style.visibility="visible";
			document.getElementById("rpwdlab").style.visibility="visible";
			document.getElementById("rpwdlab").innerHTML="<label id='pwdlab'><font face='Calibri' color='#FF0000' size='-1'>Re-enter the password</font></label>";
			return false;}
			else if(document.getElementById("rpwd").value!=document.getElementById("pass_word").value){			
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

////
	var telnum=/^[0-9]{10}$/;
	var regcity=/^[a-z||A-Z]{3,35}$/;
	var regpin=/^[0-9]{6}$/;



function removeTagtelnum(num){
switch(num){
	case "mobnum":{
		if(document.getElementById("mob1").value=="Mobile")
			{
					document.getElementById("mob1").value="";
					document.getElementById("mob1").style.color="#000000"
			 }
			 break;
	}
	case "offnum":{
		if(document.getElementById("mob2").value=="Office")
			{
				document.getElementById("mob2").value="";
				document.getElementById("mob2").style.color="#000000"
			 }
			 break;
	}
	case "faxnum":{
		if(document.getElementById("mob3").value=="Fax number")
			{
				document.getElementById("mob3").value="";
				document.getElementById("mob3").style.color="#000000"
			 }
			 break;
		}
}
}
function checkMoreDetails(){
if(checktelnum()&&putTagcompadd()&&putTagpin_code()&&putTagcity()){
return true;
}
else{
return false;
}
}

function putTagtelnum(num){
switch(num){
	case "mobnum":{
		if(document.getElementById("mob1").value=="")
			{
					document.getElementById("mob1").value="Mobile";
					document.getElementById("mob1").style.color="#999999"					
			 }
		else if(telnum.test(document.getElementById("mob1").value)){
			document.getElementById("telnumlab").style.visibility="visible";
			document.getElementById("telnumlab").innerHTML="";
			
			if(telnum.test(document.getElementById("mob2").value)){
			document.getElementById("labtelnum").style.visibility="hidden";
			document.getElementById("telnumlab").innerHTML="<div id='telnumlab'></div>";
		}					
		}
		
		
			 break;
	}
	case "offnum":{
		if(document.getElementById("mob2").value=="")
			{
				document.getElementById("mob2").value="Office";
				document.getElementById("mob2").style.color="#999999"
		    }
		else if(telnum.test(document.getElementById("mob2").value)){
			document.getElementById("telnumlab").style.visibility="visible";
			document.getElementById("telnumlab").innerHTML="";
		if(telnum.test(document.getElementById("mob1").value)){
			document.getElementById("labtelnum").style.visibility="hidden";
			document.getElementById("telnumlab").innerHTML="<div id='telnumlab'></div>";
		}			
		}
			 break;
	}
	case "faxnum":{
		if(document.getElementById("mob3").value=="")
			{
				document.getElementById("mob3").value="Fax number";
				document.getElementById("mob3").style.color="#999999"
			 }
			 break;
		}
}
}


function checktelnum(){

if(document.getElementById("mob1").value=="Mobile"||document.getElementById("mob2").value=="Office")
		{
			document.getElementById("telnumimg").src="images/wrong3.png";
			document.getElementById("labtelnum").style.visibility="visible";
			document.getElementById("telnumlab").style.visibility="visible";
			document.getElementById("telnumlab").innerHTML="<label id='telnumlab'><font face='Calibri' color='#FF0000' size='-1'>Enter two phone numbers</font></label>";
			return false;
		}
		else if(!telnum.test(document.getElementById("mob1").value)||!telnum.test(document.getElementById("mob2").value)){
			document.getElementById("telnumimg").src="images/wrong3.png";
			document.getElementById("labtelnum").style.visibility="visible";
			document.getElementById("telnumlab").style.visibility="visible";
			document.getElementById("telnumlab").innerHTML="<label id='telnumlab'><font face='Calibri' color='#FF0000' size='-1'>Enter  phone numbers in correct format.<br>Ex.9876543210</font></label>";
			return false;
		}
		else{
						document.getElementById("labtelnum").style.visibility="hidden";
						document.getElementById("telnumlab").innerHTML="<div id='telnumlab'></div>";
						return true;
		}
}

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



function putTagcity(){

if(document.getElementById("city").value==""||!regcity.test(document.getElementById("city").value))
		{
			document.getElementById("cityimg").src="images/wrong3.png";
			document.getElementById("labcity").style.visibility="visible";
			document.getElementById("citylab").style.visibility="visible";
			document.getElementById("citylab").innerHTML="<label id='citylab'><font face='Calibri' color='#FF0000' size='-1'>Enter city</font></label>";
			return false;
		}
		else{
						document.getElementById("cityimg").src="images/right.png";
						document.getElementById("citylab").innerHTML="<div id='citylab'></div>";
						return true;
		}
}

function putTagpin_code(){

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





