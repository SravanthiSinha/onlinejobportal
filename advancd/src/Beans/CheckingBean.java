package Beans;
import java.sql.*;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

public class CheckingBean {

	
	public boolean Check(Connection con,String emailid,String pwd,String User){
		int p=0;
		System.out.print("in beans");
		try		
		{	 
			Statement st=con.createStatement();
			System.out.print("statment created");
			System.out.print(User);
			
			if(User.equalsIgnoreCase("Jobseeker")){
		ResultSet rs=st.executeQuery("select USERS.EMAILID, USERS.USERID, USERS.PASSWORD from   SONY.USERS AS USERS WHERE USERS.EMAILID = '"+emailid+"'" );
		System.out.print("in res");
		while(rs.next())
		{
			if((rs.getString(3).equalsIgnoreCase(pwd))&& (rs.getString(2).equalsIgnoreCase(User))){
			p++;
			}		
		}
		} 
			else if(User.equalsIgnoreCase("Employeer")){
				
				ResultSet rs=st.executeQuery("select USERS.EMAILID, USERS.USERID, USERS.PASSWORD from   SONY.USERS AS USERS WHERE USERS.EMAILID = '"+emailid+"'" );
			
				System.out.print("in res");
				while (rs.next())
				{	
					if((rs.getString(3).equalsIgnoreCase(pwd))&& (rs.getString(2).equalsIgnoreCase(User))){
				p++;}}
				} 
			}catch(Exception e1)
		{
			e1.printStackTrace();
		}
		if (p!=0){
	return true;
	}
		else 
			return false;
	}
}