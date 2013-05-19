<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> <%@ page import ="java.util.*,java.sql.*,java.io.IOException.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html><head>
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
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
			<li><a href="Employeer.jsp">Home</a></li>
			
			<li><a href="#"  value="Open Window" onClick="open_win()" >Post Vacancy</a></li>
			<li><a href="Searchresumes.jsp" rel="dropmenu3">Search Resumes</a></li>
			
			<li><a href="#" >Notifications</a></li>
			 <li><a href="forum.jsp" >Forum</a></li>
			 <li><a href="#" value="Open Window" onClick="open_win2()">Help</a></li>
			</ul>
		</div>
<%--  
			 <!--1st drop down menu -->
			 <span class="style4"></span>
			 <div id="dropmenu2" class="dropmenudiv">
			<a href="search.html">Advanced Job Search</a>
			<a href="searchbyfunction.html">Jobs By Function</a>
			<a href="searchbyindustry.html">Jobs By Industry</a>
			<a href="SearchbyCompany.html">Jobs By Company</a>
			<a href="searchbylocation.html">Jobs By Location</a></div>
			
			--%>
			
			<!--2nd drop down menu --> 
				<div id="dropmenu3" class="dropmenudiv" style="width: 150px;">
			<a href="Searchresumes.jsp">Advanced  Search</a>
			<a href="Searchrf.jsp">Search By Function</a>
			<a href="Searchrl.jsp">Search By Location</a>		</div>


			<script type="text/javascript">
			cssdropdown.startchrome("chromemenu")
			</script>
		</div>

		<%!  Connection con;

 
ResultSet rs; Statement st;

%>
			<% try 
					{
				 
						con = (Connection)application.getAttribute("Connection");
				 System.out.print("connected");		
			    //   }catch (SQLException e) {
					//	    e.printStackTrace();
				   }catch (Exception e) {
					    e.printStackTrace();
					    }
				   System.out.println("got coonection in request");
					    try
					    {  
					    	st= con.createStatement();
					    String str=null;
					    String User =(String)session.getAttribute("User"); 
						   String emailid=(String)  session.getAttribute("emailid");
						   System.out.println(emailid);
						   str="SELECT RESUMEINFO.BIODATA, RESUMEINFO.INFO, RESUMEINFO.EMAILID, RESUMEINFO.RESUME FROM SONY.RESUMEINFO AS RESUMEINFO, SONY.JOBSAPPLIED AS JOBSAPPLIED WHERE JOBSAPPLIED.EMPLOYEREMAILID = '"+emailid+"' AND RESUMEINFO.EMAILID = JOBSAPPLIED.EMAILID";
						   System.out.println(str);				    		
							rs= st.executeQuery(str);				    		
	while(rs.next()){%>
				<div class="article">
						  <table width="600" align="left" bordercolordark="#6633FF" frame="box" class="altrowstable" id="alternatecolor" ><!--DWLayoutTable-->
	<tbody>
	<tr>
	<td colspan="3" valign="top" class="headline-tunnel-colors formline1" style="border-top: 0px none;"><strong>Jobseeker's Details:</strong></td>
	</tr>
		<tr class="r2"> 
		<td  valign="top"  width="300">jobseeker's email id&nbsp; </td>
		<td  colspan="2"  valign="top"><p><%=rs.getString(3)%></p></td>
		</tr>
		</tbody></table>  <%   session.setAttribute("ff",rs.getString(3)); %>
		<script type="text/javascript">
function open_win()
{
window.open("http://localhost:8080/advancd/Downloadcv.jsp","_blank","toolbar=yes, location=yes, directories=no, status=no, menubar=yes, scrollbars=yes, resizable=no, copyhistory=yes, width=400, height=400");
}
</script><a href="javascript: void(0)" 
   onclick="window.open('http://localhost:8080/advancd/Downloadcv.jsp', 
  'windowname1', 
  'width=700, height=700'); 
   return false;" ><input name="downloadcv" value="downloadcv" type="button"   /></a><%} %>
						    <input type="submit"  name="back" value="back"/>
						   </div></div>	
				  <%  	
	
    }
					    
					    catch (Exception e) {
	    e.printStackTrace(); }%>

    <div class="clr"></div>
<p class="pages"><small>&nbsp;&nbsp;</small></p>         
      <div class="clr"></div>



</body>
</html>	    		
         
