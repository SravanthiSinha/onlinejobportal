<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Online Crime Branch</title>
<script type="text/javascript">
function displayHidden(){
var tab = document.getElementById('t1');
tab.className = (tab.className == 't') ? '' : 't';}
</script>
<style type="text/css">
#l1{cursor:pointer}
.t{display:none}
</style>
</head>
<body >

 <%
 out.println(request.getRemoteUser());
        	
 session.invalidate();

         %>
        <jsp:forward page="homepage.jsp"/>
</body>
</html>