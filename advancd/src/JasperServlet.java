

import java.io.*;
import java.sql.*;
import java.util.*;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import net.sf.jasperreports.engine.JRExporter;
import net.sf.jasperreports.engine.JRExporterParameter;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperExportManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.export.JRHtmlExporter;
import net.sf.jasperreports.engine.export.JRHtmlExporterParameter;
import net.sf.jasperreports.engine.export.JRPdfExporter;
import net.sf.jasperreports.engine.xml.JRXmlLoader;
import net.sf.jasperreports.j2ee.servlets.ImageServlet;
 public class JasperServlet extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   Connection con;
	ResultSet rs;
	Statement st;
	public JasperServlet() {
		super();
	} 
	public void destroy() {
		try {
			con.close();
		} catch (SQLException sqe) {
		}
		super.destroy();
	}   	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String s=request.getParameter("location");
		System.out.println(s);
		
		String rtype="html";
		String rfile="D:\\Report.jrxml";
		
		Map m=new HashMap();
		System.out.println("reached 1");
		m.put("location_name",s);
		try{
			 JasperDesign jasperDesign = JRXmlLoader.load(rfile);
		
			 System.out.println("rfile in doTag()....."+rfile);
	         
			 JasperReport jasperReport = JasperCompileManager.compileReport(jasperDesign);
	         System.out.println("2");
	         JasperPrint jasperPrint = JasperFillManager.fillReport(jasperReport,m,con);
	         System.out.println("i3");
	         List l=jasperPrint.getPages();
	         int i=l.size();
	         System.out.println(i);
	        
	         if(i==0)
	         { PrintWriter out=response.getWriter();
	         
	         out.println("<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'><html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' /><title>Report</title></head><body style=margin:0px;background-attachment:fixed;background-image:url('images/bc.jpg');><img src='images/banner3.jpg' height='130' width='128%'><br><table style=background-image:url('images/back.jpg'); width='128%'>  <tr><td width='15%' align='left'><a href='ViewProfilep.jsp'/><font color='white'><b>View Criminal Profiles</b></font></td><td width='16%' align='center'><a href='ViewReport.jsp'/><font color='white'><b>View Reports</b></font></td><td width='17%' align='center'><a href='ViewSprofile.jsp'/><font color='white'><b>View Suspect Profiles</b></font></td><td width='10%' align='center'><a href='PoliceHome.jsp'/><font color='white'><b>Home</b></font></td><td width='20%' align='center'><a href='ChargeSheet.html'/><font color='white'><b>Build a ChargeSheet</b></font></td><td width='12%' align='center'><a href='ForumPostP.html'/><font color='white'><b>Post a Forum</b></font></td><td width='10%' align='right'><a href='logout.jsp'/><font color='white'><b>Logout</b></font></td></tr></table>");
	        	
	        	 out.println("<br><br><br><br><br><center><font color=black><b>There are no reports submited on this date</b></font></center>");
	         }
	         else if("html".equalsIgnoreCase(rtype))
	         {	  
	        	 PrintWriter out=response.getWriter();
	         
	        	 out.println("<!DOCTYPE html PUBLIC '-//W3C//DTD XHTML 1.0 Transitional//EN' 'http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd'><html><head><meta http-equiv='Content-Type' content='text/html; charset=utf-8' /><title>Report</title></head><body style=margin:0px;background-attachment:fixed;background-image:url('images/bc.jpg');><img src='images/banner3.jpg' height='130' width='128%'><br><table style=background-image:url('images/back.jpg'); width='128%'>  <tr><td width='15%' align='left'><a href='ViewProfilep.jsp'/><font color='white'><b>View Criminal Profiles</b></font></td><td width='16%' align='center'><a href='ViewReport.jsp'/><font color='white'><b>View Reports</b></font></td><td width='17%' align='center'><a href='ViewSprofile.jsp'/><font color='white'><b>View Suspect Profiles</b></font></td><td width='10%' align='center'><a href='PoliceHome.jsp'/><font color='white'><b>Home</b></font></td><td width='20%' align='center'><a href='ChargeSheet.html'/><font color='white'><b>Build a ChargeSheet</b></font></td><td width='12%' align='center'><a href='ForumPostP.html'/><font color='white'><b>Post a Forum</b></font></td><td width='10%' align='right'><a href='logout.jsp'/><font color='white'><b>Logout</b></font></td></tr></table>");
	        
	        	 JRHtmlExporter exporter = new JRHtmlExporter();
	         
	        	 request.getSession().setAttribute(ImageServlet.DEFAULT_JASPER_PRINT_SESSION_ATTRIBUTE, jasperPrint);
	         exporter.setParameter(JRHtmlExporterParameter.IMAGES_URI,"image?image=");
	         exporter.setParameter(JRExporterParameter.JASPER_PRINT, jasperPrint);
	         exporter.setParameter(JRExporterParameter.OUTPUT_WRITER, out);
	         exporter.exportReport();}
		

	         else if("pdf".equalsIgnoreCase(rtype))
	         {
	          	 JasperExportManager.exportReportToHtmlFile(jasperPrint, "C://sample_report.html");
		        OutputStream out=response.getOutputStream();
		        File f=new File("C://sample_report.html");
		        FileInputStream fos=new FileInputStream(f);
		        byte []b=new byte[(int)f.length()];
		        fos.read(b);
		        response.setContentType("text/html");
		        for (int j = 0; j < b.length; j++) {
		        out.write(b[j]);
		        	}
		        fos.close();
		      f.delete();
		        
	        }
	         
		} catch(Exception e){
			e.printStackTrace();
		}
	}  	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	}   	  	  
	public void init() throws ServletException {
		try {
			ServletContext ctx=getServletContext();
			con=(Connection)ctx.getAttribute("Connection");
            st=con.createStatement();
		} catch (Exception e) {
		}
		super.init();
	}   
}