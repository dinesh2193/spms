package databases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import objects.Employee;
import objects.EmployeeObj;

public class LoginDao {

	
	static String sql="select * from registered_table where email=?";
	public static boolean Check_reg_table(String email)
	{
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","dinesh","dinesh");
			
			PreparedStatement stmt=con.prepareStatement(sql);
			
			stmt.setString(1,email);
		
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next())
			{
				rs.close();
				con.close();
				return true;
			}
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return false;
	}
	
	public static void insert_to_reg_table(EmployeeObj obj) {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","dinesh","dinesh");
			
			sql="insert into registered_table values (?,?,?,?,?,?,?)";
			
			PreparedStatement stmt=con.prepareStatement(sql);
			
			stmt.setString(1,obj.getF_name());
			stmt.setString(2,obj.getL_name());
			stmt.setString(3,obj.getGender());
			stmt.setString(4,obj.getEmail());
			stmt.setString(5,obj.getMobile());
			stmt.setString(6,obj.getPswd());
			stmt.setString(7,obj.getPos());
			stmt.executeUpdate();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
	}
	
	public static boolean check_in_login_table(Employee emp)
	{
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","dinesh","dinesh");
			
			sql="select * from login_table where email = ? and pswd = ?";
			
			PreparedStatement stmt=con.prepareStatement(sql);
			
			stmt.setString(1,emp.getEmail());
			stmt.setString(2, emp.getPswd());
		
			ResultSet rs = stmt.executeQuery();
			
			if(rs.next())
			{
				rs.close();
				con.close();
				return true;
			}
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		
		return false;
	}
}
