

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Blob;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: image
 *
 */
 public class image extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public image() {
		super();
	} 
	
	/* (non-Javadoc)
	 * @see javax.servlet.Servlet#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
		super.destroy();
	}   	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String req = "" ;
	    Blob img;
	    byte[] imgData = null ;
	    System.out.println("in image java");
	      try{
        req = "Select photo From srinivas.testupload";
	    ResultSet rset  = st.executeQuery ( req ); 
	    
	    while (rset.next ())
	    {    
	      img = rset.getBlob(1);
	      imgData = img.getBytes(1,(int)img.length());
	    }    
	    
	    //conn = …………;
	    //conn.setAutoCommit (false);  
	    // get the image from the database
	    //byte[] imgData = photo.getPhoto( conn, iNumPhoto  ) ;   
	       // display the image
	     PrintWriter out=response.getWriter();
	    	response.setContentType("image/gif");
	    //	out.print(img.getBytes(1,(int)img.length()));
	       //OutputStream o = response.getOutputStream();
	    
	    
	      }catch (Exception e) {
			// TODO: handle exception
	    	  e.printStackTrace();
		}
	}  	
	
	/* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
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