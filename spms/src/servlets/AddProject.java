package servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import databases.EmpDetailsDao;
import databases.ProjectDetailsDao;

public class AddProject extends HttpServlet {

	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		
		String e_id=(String)session.getAttribute("emp_email");
		
		
		String t_id=request.getParameter("t_id");
		
		String p_name=request.getParameter("p_name");
		ProjectDetailsDao.insert_in_emp_project_table(e_id,p_name);
		ProjectDetailsDao.insert_in_emp_project_table(t_id,p_name);
		ArrayList<String> l = EmpDetailsDao.get_downline(t_id);
		
		int f=0;
		for(int i=0;i<l.size();i++)
		{
			if(ProjectDetailsDao.insert_in_emp_project_table(l.get(i),p_name)==1)
			{
				f++;
			}
			
		}
		
		if(f==l.size())
		{
			request.setAttribute("project_update", "true");
			
			RequestDispatcher rd = request.getRequestDispatcher("jsp/presentprojects.jsp");
			rd.forward(request, response);
		}
		else
		{
			request.setAttribute("project_update", "false");
			
			RequestDispatcher rd = request.getRequestDispatcher("jsp/presentprojects.jsp");
			rd.forward(request, response);
		}
		
		
		
		
		
		
	}

	
}
