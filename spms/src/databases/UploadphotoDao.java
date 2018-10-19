package databases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import objects.EmpDetails;

public class UploadphotoDao {
public static int insert_photo(String email,String pic) {
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","dinesh","dinesh");
			
			String sql="update photo_table set photo=? where email=?";
			
			PreparedStatement stmt=con.prepareStatement(sql);
			
			/*System.out.println(sql);*/
			stmt.setString(1,pic);
			stmt.setString(2,email);
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
