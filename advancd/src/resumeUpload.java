

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;

import org.apache.commons.fileupload.DiskFileUpload;
import org.apache.commons.fileupload.FileItem;

/**
 * Servlet implementation class for Servlet: resumeUpload
 *
 */
 public class resumeUpload extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public resumeUpload() {
		super();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Statement pst;
		HttpSession hs=request.getSession();
					if (hs.isNew()) {
						response.sendRedirect("http://localhost:8080/advancd");
					}
						response.setContentType("text/html");
						PrintWriter pw = response.getWriter();
						String ends="";
						ResultSet check=null;
						String str=null,loc=null,loc2=null ,biodata=null ,info=null , loc1 = null, dir = null, dir1 = null,dir2 = null;
						int id = 0, age = 0;File fFile=null;FileInputStream isFile=null;File fFile1=null;FileInputStream isFile1=null;
						File uploadFile = null;
System.out.println("start");
		try{
				pst=con.createStatement();
			check=pst.executeQuery("select * from SONY.RESUMEINFO where  EMAILID= '"+(String)hs.getAttribute("emailid")+"'");
			System.out.println("2");
			if(check.next()){
				pst.executeUpdate("DELETE FROM SONY.RESUMEINFO RESUMEINFO    WHERE RESUMEINFO.EMAILID = '"+(String)hs.getAttribute("emailid")+"'");
				}
			System.out.println("3");
			
			int newid = id + 1;
			DiskFileUpload upload = new DiskFileUpload();
			List items = upload.parseRequest(request);
			Iterator iter = items.iterator();
			System.out.println("one");
			while (iter.hasNext()) {
				FileItem item = (FileItem) iter.next();
				if (item.isFormField()) {
					String name = item.getFieldName();
					if(name.equals("bio_data"))
					{
						biodata=item.getString();
					}
					if(name.equals("info"))
					{
						info=item.getString();
					}

				} else if (item.getFieldName().equals("image")) {

					System.out.println("3");
					dir = "C:\\onlinejobporta\\" + "test" + "\\Photos\\";
					new File(dir).mkdirs();
					System.out.println("in file upload");
					if (item.getName().endsWith("gif")||item.getName().endsWith("GIF")){
						loc = dir + newid + ".gif";ends="gif";}
					else {
						if (item.getName().endsWith("jpg")|| item.getName().endsWith("JPG")	|| item.getName().endsWith("JPEG")|| item.getName().endsWith("jpeg")){
							loc = dir + newid + ".jpg";ends="jpg";}
						else {
							if (item.getName().endsWith("bmp")|| item.getName().endsWith("BMP")){
								loc = dir + newid + ".bmp";ends="bmp";}
							else {
								if (item.getName().endsWith("PNG")|| item.getName().endsWith("png")){
									loc = dir + newid + ".PNG";ends="png";}
								else if (!(item.getName().equals(""))) {
									ends="";
									loc = "";
									throw new FileNotFoundException();									
								}
							}
						}
					}
					if (!(loc == "")&&!(loc==null)) {
						uploadFile = new File(loc);
						if (!(item.getName().equals("")))
							item.write(uploadFile);
					}

				}
else if (item.getFieldName().equals("resume")) {

	System.out.println("5");
					dir = "C:\\onlinejobporta\\" + "test" + "\\Resumes\\";
					new File(dir).mkdirs();
					System.out.println("in file upload");
					if (item.getName().endsWith("gif")||item.getName().endsWith("GIF")){
						loc2 = dir + newid + ".gif";ends="gif";}
					else {
						if (item.getName().endsWith("txt")|| item.getName().endsWith("JPG")	|| item.getName().endsWith("JPEG")|| item.getName().endsWith("jpeg")){
							loc2 = dir + newid + ".txt";ends="txt";}
						else {
							if (item.getName().endsWith("doc")|| item.getName().endsWith("BMP")){
								loc2 = dir + newid + ".doc";ends="doc";}
							else {
								if (item.getName().endsWith("mdi")|| item.getName().endsWith("mdi")){
									loc2 = dir + newid + ".mdi";ends="mdi";}
								else if (!(item.getName().equals(""))) {
									ends="";
									loc2 = "";
									throw new FileNotFoundException();									
								}
							}
						}
					}
					if (!(loc2 == "")&&!(loc2==null)) {
						uploadFile = new File(loc2);
						if (!(item.getName().equals("")))
							item.write(uploadFile);
					}

			}}

			System.out.println("two");
			System.out.println(loc+loc2);
			PreparedStatement pstmt = con.prepareStatement("INSERT INTO SONY.RESUMEINFO values (?,?,?,?)");
			pstmt.setString(1,biodata);pstmt.setString(2,info);
			pstmt.setString(3,(String)hs.getAttribute("emailid"));
			
				fFile = new File(loc2);
				isFile = new FileInputStream(fFile);
				pstmt.setBinaryStream(4, isFile, isFile.available());
			
			
			
			pstmt.executeUpdate();
			System.out.println("7");
			if(!(isFile==null))
			isFile.close();
			if(!(isFile1==null))
			isFile1.close();
			
			pstmt.close();
			 pstmt = con.prepareStatement("INSERT INTO SONY.IMAGES values (?,?,?)");
			
				fFile = new File(loc);
				isFile = new FileInputStream(fFile);
				pstmt.setBinaryStream(1, isFile, isFile.available());
		
			
			pstmt.setString(2,(String)hs.getAttribute("User"));
			pstmt.setString(3,(String)hs.getAttribute("emailid"));
			
			pstmt.executeUpdate();
			System.out.println("8");
			if(!(isFile==null))
			isFile.close();
			if(!(isFile1==null))
			isFile1.close();
			
			pstmt.close();
			DeleteDirs.delTree("C:\\onlinejobporta");
	
			response.sendRedirect("http://localhost:8080/advancd/jobseeker.jsp");
			System.out.println("three");
		} catch (Exception e) {
			//	response.sendRedirect("jobseeker.jsp?file='notfound'");
			e.printStackTrace();
		}
	}   	  	  
	
	/* (non-Javadoc)
	 * @see javax.servlet.GenericServlet#init()
	 */
	Connection con;
	PreparedStatement st;
	public void init() throws ServletException {
		// TODO Auto-generated method stub
		super.init();
		try{			
			ServletContext ctx=getServletContext();
		con=(Connection)ctx.getAttribute("Connection");
		
			}catch(Exception e){
				e.printStackTrace();
			}
	}
 }
