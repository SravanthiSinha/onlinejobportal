
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;


public class MyListener implements ServletContextListener {

	public void contextDestroyed(ServletContextEvent sce) {
		Connection con;
		ServletContext ctx1=sce.getServletContext();
		System.out.println("before con initialization");
		con=(Connection)ctx1.getAttribute("Connection");
		try {
			System.out.println("connected 2 db");
			con.close();
		} catch (SQLException e) {
			e.printStackTrace();
		}


	}

	public void contextInitialized(ServletContextEvent sce) {
	
		Connection con;
						{
			ServletContext ctx=sce.getServletContext();
			try {
				Class.forName(ctx.getInitParameter("Driver"));
			} catch (ClassNotFoundException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			try {
				con=DriverManager.getConnection(ctx.getInitParameter("url"),ctx.getInitParameter("username"),ctx.getInitParameter("passwd"));
				ctx.setAttribute("Connection",con);
				
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			
		}

	}

}
