<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%><%@ page import ="java.util.*,javax.servlet.http.HttpServletRequest,javax.servlet.http.HttpServletResponse,java.sql.*,java.io.IOException.*,javax.servlet.ServletException,java.io.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Onlinejobportal</title>
</head>
<body>
<%!  Connection con;

 
ResultSet rs; Statement st;

%>
			<%try 
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
				   	
				     Statement st=con.createStatement();FileOutputStream fos=null;
				   			 InputStream is=null;
				   			  String sql = "SELECT * FROM SONY.RESUMEINFO WHERE EMAILID='"+session.getAttribute("ff")+"'";
				   		// String sql = "SELECT * FROM SONY.RESUMEINFO WHERE EMAILID='sravani.sinha@gmail.com'";
				   	            PreparedStatement stmt = con.prepareStatement(sql); System.out.print(2);
				   	            ResultSet rs = stmt.executeQuery();
				   	            while(rs.next()){
				   				 is=rs.getBinaryStream(4);
				   				 fos =new FileOutputStream("C:\\cv.doc");System.out.print(3);
				   				 int i= is.read();
				   				 while(i!=-1){
				   					 fos.write((byte)i);fos.flush();
				   					 i=is.read();
				   					 }
				   				 }
				    fos.close();
				                  
				         
				 String fileName="C:\\cv.doc";
					    	
File f=new File("C:\\cv.doc");
/* Code for download */
 fileName = f.getName();
String fileType = fileName.substring(fileName.indexOf(".")+1,fileName.length());


System.out.print(4);
if (fileType.trim().equalsIgnoreCase("txt"))
{
response.setContentType( "text/plain" );
}
else if (fileType.trim().equalsIgnoreCase("doc"))
{
response.setContentType( "application/msword" );
}
else if (fileType.trim().equalsIgnoreCase("xls"))
{
response.setContentType( "application/vnd.ms-excel" );
}
else if (fileType.trim().equalsIgnoreCase("pdf"))
{
response.setContentType( "application/pdf" );
}
else if (fileType.trim().equalsIgnoreCase("ppt"))
{
response.setContentType( "application/ppt" );
}
else
{
response.setContentType( "application/octet-stream" );
}
response.setHeader("Content-Disposition","attachment; filename=\""+fileName+"\"");
response.setHeader("cache-control", "no-cache");
 is = new FileInputStream(f);

// Get the size of the file
long length = f.length();

if (length > Integer.MAX_VALUE) {
    // File is too large
}

// Create the byte array to hold the data
byte[] bytes = new byte[(int)length];

// Read in the bytes
int offset = 0;
int numRead = 0;
while (offset < bytes.length
       && (numRead=is.read(bytes, offset, bytes.length-offset)) >= 0) {
    offset += numRead;
}

// Ensure all the bytes have been read in
if (offset < bytes.length) {
    throw new IOException("Could not completely read file "+f.getName());
}

// Close the input stream and return bytes
is.close();



ServletOutputStream outs = response.getOutputStream();
outs.write(bytes);
outs.flush();
outs.close(); 
}

 catch(Exception e){
e.printStackTrace();
}
 finally {
     //  con.close();
}


  %>
</body>
</html>