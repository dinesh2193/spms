package databases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import objects.EmpDetails;

public class EmpDetailsDao {

public static int insert_to_reg_table(EmpDetails obj) {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","dinesh","dinesh");
			
			String sql="update empdetails_table set F_NAME=?,L_NAME=?,MOBILE=?,DOB=?,GENDER=?,POS=?,ADDRESS=?,CITY=?,STATE=?,PINCODE=?,COUNTRY=?,RESUME=? where EMAIL=?";
			
			PreparedStatement stmt=con.prepareStatement(sql);
			
			/*System.out.println(sql);*/
			stmt.setString(1,obj.getFname());
			stmt.setString(2,obj.getLname());
			stmt.setString(3,obj.getMobile());
			stmt.setString(4,obj.getDob());
			stmt.setString(5,obj.getGender());
			stmt.setString(6,obj.getPosition());
			stmt.setString(7,obj.getAddress());
			stmt.setString(8,obj.getCity());
			stmt.setString(9,obj.getState());
			stmt.setString(10,obj.getPincode());
			stmt.setString(11,obj.getCountry());
			stmt.setString(12,obj.getResume());
			stmt.setString(13,obj.getEmail());
			if(stmt.executeUpdate()>0)
			{
				return 1;
			}
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
		
	}
}
