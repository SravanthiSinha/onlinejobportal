
import java.sql.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class CheckingBean {

	
	public boolean Check(Connection con,String emailid,String pwd,String User){
		int p=0;
		System.out.println("in beans");
		try		
		{	 
			Statement st=con.createStatement();
			System.out.println("statment created");
			
			
			if(User.equalsIgnoreCase("Jobseeker")){
		ResultSet rs=st.executeQuery("select * from   SONY.USERS AS USERS WHERE USERS.EMAILID = '"+emailid+"'" );
		System.out.print("in res");
		System.out.print(User);
		while(rs.next())
		{
			if((rs.getString(3).equalsIgnoreCase(pwd))&& (rs.getString(2).equalsIgnoreCase(User))){
			p++;
			}		
		}
		} 
			else if(User.equalsIgnoreCase("Employeer")){
				System.out.print(User);
				ResultSet rs=st.executeQuery("select * from   SONY.USERS AS USERS WHERE USERS.EMAILID = '"+emailid+"'" );
			
				System.out.print("in em");
				while (rs.next())
				{	System.out.print("in res");
					if((rs.getString(3).equalsIgnoreCase(pwd))&& (rs.getString(2).equalsIgnoreCase(User))){
				p++;}}
				} 
			}catch(Exception e1)
		{System.out.print("in res");
			e1.printStackTrace();
		}
		if (p!=0){System.out.print("in res");
	return true;
	}
		else 
			return false;
	}
}