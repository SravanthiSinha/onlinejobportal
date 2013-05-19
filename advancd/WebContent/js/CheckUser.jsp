
<%@page import="java.sql.ResultSet"%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%!Connection con; Statement st;%>
<%!public void jspInit(){
	try{
	ServletContext ctx=getServletContext();
con=(Connection)ctx.getAttribute("Connection");
st=con.createStatement();
	}catch(Exception e){
		e.printStackTrace();
	}	
}%>
<%


		String uname=request.getParameter("uname");String user=request.getParameter("user");
		String frm=request.getParameter("frm");
		String pwd=request.getParameter("pawd");
		System.out.println(uname);System.out.print(user);
		try{ 
					if(frm.equals("main")){
						ResultSet rs=st.executeQuery("SELECT USERS.EMAILID, USERS.USERID  FROM SONY.USERS AS USERS  WHERE USERS.EMAILID = '"+uname+"' AND USERS.USERID = '"+user+"'AND USERS.PASSWORD = '"+pwd+"'"  );
						if(rs.next()){
								
						}
						else{
							out.println("<label id='emaillab2'><input type='hidden' value='wrong' id='testcheck' /><img src='images/wrong2.png' height='25' width='25' /><br><font face='Calibri' color='#FF0000' size='-1'>kindly check ur emailid and password</font></label>");
						}			
					}
					System.out.println("statement created");
					ResultSet rs=st.executeQuery("SELECT USERS.EMAILID, USERS.USERID  FROM SONY.USERS AS USERS  WHERE USERS.EMAILID = '"+uname+"' AND USERS.USERID = '"+user+"'"  );
					if(rs.next()){
							out.println("<label id='emaillab'><input type='hidden' value='wrong' id='testcheck' /><img src='images/wrong2.png' height='25' width='25' /><br><font face='Calibri' color='#FF0000' size='-1'>Aw! Someone has already taken this emailid.</font></label>");
					}
					else{
							out.println("<label id='emaillab'><input type='hidden' value='right' id='testcheck' /><img src='images/right1.png' height='25' width='25' onload='donotmakenull();'/><br><font face='Calibri' color='#0066FF' size='-1'>Congrats! You can use this as your emailid.</font></label>");
					}			
			}catch(Exception e){
				e.printStackTrace();
			}



	
	
	%>