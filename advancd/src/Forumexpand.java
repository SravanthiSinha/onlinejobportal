

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class for Servlet: Forumexpand
 *
 */
 public class Forumexpand extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public Forumexpand() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out=response.getWriter();
		String subject=request.getParameter("subject");
		int num=Integer.parseInt(request.getParameter("num"));
		System.out.println(num+":1the number");
		String type=request.getParameter("type");
		int a,b=0,c=0;
		if(num>10)
		{
			a=num/10;
			if(a!=0&&a>1){
			b=1;
			}
		num=a*10;
		}else{
			a=num/10;
			num=a*10;
		}
		
		
		System.out.println(num+":2the number");
		int i=0;
		int total=0;
		out.print("<table>");
		   try{
			   	ResultSet rs=st.executeQuery("SELECT * FROM SONY.FORUM WHERE FORUM_SUBJECT ='"+subject+"' ORDER BY SNUM ASC ");
				if(rs.next()){
					out.println("<div bgcolor='#003300' align='center'>");
					out.print("<table bgcolor='#003300' width='500px' align='center'>");
					out.print("<tr><td id='sub'><label><font color='#ffffff'>subject</font></label></td><td class='subvalue'><label><font color='#ffffff'>"+subject+"</font></label></td></tr></table>" +
							"<table align='center' class='suba'><tr><td>" +
							"<div class='suba'><a href='javascript:showpan()'>Add comment</a>"+
							"<div id='addcomm' style='z-index:+2;background=#838383;'></div>"+
							"</td></tr>" +
							"<tr><td>" +
							"" +
							"</td></tr>" +
							"</table>");
					out.print("<div id='comments'>");
					do{
						total=rs.getInt(8);
						if(type.equalsIgnoreCase("plus")){
						if(rs.getInt(8)>num&&rs.getInt(8)<(num+11)){
							if(c==0){
								c=rs.getInt(8);
							}
							out.print("<table border='1' width='500' style='table-layout:fixed' align='center' >");
							out.print("<tr><td width='500' >"+rs.getString(5)+" a "+rs.getString(6)+"</td></tr>");
							out.print("<tr><td align='center' width='500' > <textarea readonly='readonly' rows='3' cols='40'  style='border:0;'> "+rs.getString(4)+"</textarea></td></tr>");
							out.print("<tr><td align='right'>on "+rs.getString(7)+"</td></tr>");
							out.print("</table>");

							 
						i=rs.getInt(8);
						}}else if(type.equalsIgnoreCase("minus")){
							if(rs.getInt(8)<(num+1)&&rs.getInt(8)>(num-11)){
								
								out.print("<table border='1' width='500' style='table-layout:fixed' >");
								out.print("<tr><td width='500' >"+rs.getString(5)+" a "+rs.getString(6)+"</td></tr>");
								out.print("<tr><td align='center' width='500' >"+rs.getString(4)+"</td></tr>");
								out.print("<tr><td align='right'>on "+rs.getString(7)+"</td></tr>");
								out.print("</table>");

								 
							i=rs.getInt(8);
							}	
						}
						
					}while(rs.next());
					out.print("</div>");
					out.print("<input type='hidden' id='subject' name='subject' value='"+subject+"' /> ");
					out.print("<input type='hidden' id='posttotal' name='posttotal' value='"+total+"' /> <input type='hidden' value='"+i+"' id='"+subject+"num'/>");
					out.print("<table><tr>");
					if(num<11){
						out.print("<td><input type='button' value='first' disabled='disabled' onclick='expand(\""+subject+"\",\"plus\",4)'/></td>");
						out.print("<td><input type='button' value='Previous' disabled='disabled' onclick='expand(\""+subject+"\",\"minus\",\""+c+"\")'/></td>");
						
					}else{
						out.print("<td><input type='button' value='first'  onclick='expand(\""+subject+"\",\"plus\",4)'/></td>");
						out.print("<td><input type='button' value='Previous'  onclick='expand(\""+subject+"\",\"minus\","+c+")'/></td>");
						
					}
					if(b==1){
					out.print("<td><input type='button' value='next' disabled='disabled' onclick='expand(\""+subject+"\",\"plus\","+i+")'/></td>");
					out.print("<td><input type='button' value='last' disabled='disabled' onclick='expand(\""+subject+"\",\"plus\","+i+")'/></td>");
					}else{
						out.print("<td><input type='button' value='next' onclick='expand(\""+subject+"\",\"plus\","+i+")'/></td>");
						out.print("<td><input type='button' value='last' onclick='expand(\""+subject+"\",\"plus\","+total+")'/></td>");
					}
					out.print("</tr></table></div>");
				}
			}catch(Exception e){
				e.printStackTrace();
			}
		   
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		try{
		HttpSession hs=request.getSession();
		String subject=request.getParameter("subject");
		String date=request.getParameter("date");
		int snum=Integer.parseInt(request.getParameter("posttotal"));
		snum=snum+1;
		String message=request.getParameter("comment");
		ResultSet rs=st.executeQuery("select * from sony.forum where forum_subject='"+subject+"' ");
		rs.next();
		st.executeUpdate("INSERT INTO SONY.FORUM ( FORUM_SUBJECT, FORUM_BY, FORUM_BY_TYPE, FORUM_COMMENT, FORUM_COMMENT_BY, FORUM_COMMENT_BY_TYPE, DATE, SNUM) VALUES ( '"+subject+"', '"+rs.getString(2)+"', '"+rs.getString(3)+"', '"+message+"', '"+(String)hs.getAttribute("emailid")+"', '"+(String)hs.getAttribute("User")+"', '"+date+"',"+snum+")");
		}catch (Exception e) {
			// TODO: handle exception
			e.printStackTrace();
		}
	}   	  	  
	
	/* (non-Javadoc)
	 * @see javax.servlet.GenericServlet#init()
	 */
	Connection con;
	Statement st;
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		try{			
			ServletContext ctx=getServletContext();
		con=(Connection)ctx.getAttribute("Connection");
		st=con.createStatement();
			}catch(Exception e){
				e.printStackTrace();
			}
	}   
}