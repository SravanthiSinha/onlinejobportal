<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> <%@ taglib prefix="c" uri = "http://java.sun.com/jstl/core"%>
  <%@ taglib prefix="c" uri = "http://java.sun.com/jstl/core"%>
<%@ taglib prefix="fmt" uri = "http://java.sun.com/jstl/fmt"%>

     <%@ page import ="java.util.*,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.*,java.io.IOException.*,javax.servlet.ServletException,java.io.*" %>
     <fmt:setLocale value="hi"/>
<fmt:setBundle basename="resource_en"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
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
-->

</style>
</head><fmt:setLocale value="hi"/>
<fmt:setBundle basename="resource_en"/>
<body>
<table>
  
       <tr>
        <td height="247" width="444"><div align="left"><h2><i> <fmt:message key="benfit"/>...</i></h2>
            <table border="0" cellpadding="0" cellspacing="0" width="90%">
          <tbody>
            <tr>
              <td valign="top" width="7%"><div></div></td>
              <td width="94%"><span class="style6 "><fmt:message key="post"/></span><br />
               <ul >
			  <li><fmt:message key="postj"/></li>
			  <li><fmt:message key="savet"/> .</li>
			  </ul></td>

            </tr>
           <tr>
              <td colspan="2" height="23">&nbsp;</td>
            </tr>
            <tr>
              <td valign="top"><div></div></td>
              <td><span class="style6 "><fmt:message key="manag"/></span><br />
               <ul >
                          <li><fmt:message key="created"/>.</li>
                          <li><fmt:message key="relav"/>.</li>
              </ul></td>
            </tr>
           
            
            
            
          </tbody>
        </table>
</body>
</html>