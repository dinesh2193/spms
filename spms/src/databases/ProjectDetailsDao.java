package databases;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import objects.EmpProj;
import objects.EmployeeObj;

public class ProjectDetailsDao {
static String sql;
public static ArrayList<String> get_from_project_table(String p_name)
{
	ArrayList<String> l=new ArrayList<String>();
	try {
		Class.forName("oracle.jdbc.driver.OracleDriver");
		
		Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","dinesh","dinesh");
		
		sql="select * from project_table where p_name='"+p_name+"'";
		
		Statement stmt=con.createStatement();
		
	
		ResultSet rs = stmt.executeQuery(sql);
		
		
		
		while(rs.next())
		{
			l.add(rs.getString(2));
		}
		rs.close();
		con.close();
	
	} catch (Exception e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	return l;
}

	public static int insert_in_emp_project_table(String e_id,String p_name) {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","dinesh","dinesh");
			
			sql="insert (emp_id,p_name) into emp_project_table values(?,?)";
			
			PreparedStatement stmt=con.prepareStatement(sql);
			stmt.setString(1,e_id);
			stmt.setString(2,p_name);
			
			if(stmt.executeUpdate()>0)
			{
				stmt.close();
				con.close();
				return 1;
			}
	
			
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
		
	}
	
	public static ArrayList<EmpProj> get_from_emp_project_table(String e_id)
	{
		ArrayList<EmpProj> l=new ArrayList<EmpProj>();
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","dinesh","dinesh");
			
			sql="select p_name,module,m_status,p_status from emp_project_table where emp_id='"+e_id+"'";
			
			Statement stmt=con.createStatement();
			
		
			ResultSet rs = stmt.executeQuery(sql);
			
			
			
			while(rs.next())
			{
				EmpProj obj = new EmpProj();
				obj.setP_name(rs.getString(1));
				obj.setP_status(rs.getString(4));
				obj.setM_status(rs.getString(3));
				obj.setModule(rs.getString(2));
				l.add(obj);
			}
			rs.close();
			con.close();
		
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return l;
	}

}
