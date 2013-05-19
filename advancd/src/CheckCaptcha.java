

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class for Servlet: CheckCaptcha
 *
 */
 public class CheckCaptcha extends javax.servlet.http.HttpServlet implements javax.servlet.Servlet {
   static final long serialVersionUID = 1L;
   
    /* (non-Java-doc)
	 * @see javax.servlet.http.HttpServlet#HttpServlet()
	 */
	public CheckCaptcha() {
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
		// TODO Auto-generated method stub
		final String captcha = (String) request.getSession().getAttribute("captcha");
		final String code = (String) request.getParameter("code");
PrintWriter  out =response.getWriter();
		if (captcha != null && code != null) {

		if (captcha.equals(code)) {
		request.setAttribute("result",
		"Congratulations, You Passed The Captcha Test");
		out.println("<label id='captchalab'><input type='hidden' value='right' id='testcheck' /><img src='images/right1.png' height='25' width='25' onload='donotmakenull();'/><br></label>");
		} else {
		request.setAttribute("result",
		"Sorry, You Failed The Captcha Test");
		out.println("<label id='captchalab'><input type='hidden' value='wrong' id='testcheck' /><img src='images/wrong2.png' height='25' width='25' /><br><font face='Calibri' color='#FF0000' size='-1'>enter captcha correctly</font></label>");
		}
		
		}

		}
	  	  	    
}