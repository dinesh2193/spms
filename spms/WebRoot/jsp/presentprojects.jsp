<%@page import="objects.EmpDetails"%>
<%@page import="databases.ProjectDetailsDao"%>
<%@page import="objects.EmpProj"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%-- <%@page import="objects.EmpDetails"%> --%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%--  <%
ArrayList<EmployeeObj> l=RegisterDao.get_empdetails_table();
 %> --%>
 
 
 
 <%EmpDetails emp_details = (EmpDetails)session.getAttribute("emp_details");%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>Present Projects</title>
	<link rel="stylesheet" type="text/css" href="css/style1.css">
	<link rel="stylesheet" type="text/css" href="css/style2.css">
	<link rel="stylesheet" type="text/css" href="css/pp.css">
	<script src="js/pp1.js"></script>
	<%-- <%EmpDetails emp_details = (EmpDetails)session.getAttribute("emp_details");%> --%>
<style>

.center-on-page {
  position: absolute;
  top: 50%;
  left: 50%;
  transform: translate(-50%,-50%);
}



/* Transition */
.tbm
{
 position:relative;
 left:5%;
 top:0%;
 right:5%;
 width:90%;
}
 
.app{

 font-size:x-large;
 position:absolute;
 left:5%;
 top:10%;
 color:orange;
}
table th 
{
    background-color:#343a40;
    color: white;
}
.r{
position:relative;
background-color:orange;
border-radius:4px;
color:white;
padding:10px 20px;
cursor: pointer;
font-size: 16px;
 border: none;
}
.r:hover{
background-color:black;}

</style>


</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
	<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
	
	<script src="https://cdn.datatables.net/1.10.19/js/dataTables.bootstrap4.min.js "></script>

<script type="text/javascript">

 $(function(){
 
					$('#erase').hide();
					$('#erase').show(1000);
					$('#erase1').hide();
					$('#erase1').show(1000);
});


$(document).ready(function() {
    $('#example').DataTable();
} );
 </script>
  
  <body>
    <h1>Present Projects</h1>
	<div id="erase" class="tbm" class="blue-square-container">
	<table id="example" class="table table-striped table-bordered" style="width:100%">
	
	<div id="tbl">
								<thead id="hd">
									<tr>
									<th>S.no</th>
									
									<th>Project Name</th>
									<th>Employee ID</th>
									<th>Employee</th>
									<th>Position</th>
									<th>Module</th>
									<th>Status</th>
									</tr>
								</thead>
								<tbody id="bd">
								<%ArrayList<EmpProj> data = ProjectDetailsDao.get_from_emp_project_table((String)session.getAttribute("emp_email"));%>
								<%
								for(int j=0;j<) %>
								<%for(int i=0;i<data.size();i++){EmpProj obj = data.get(i); %>
								<tr>
		 						<td><%=i+1%></td>
								 <td><%=obj.getP_name() %></td>
								 <td>1234</td>
								 <td>dileep</td>
								 <td>team lead</td>
								 <td><%=obj.getModule()%></td>
								 <td><%=obj.getM_status() %></td>
								</tr>
								<%} %>
	<!-- 							<tr>
								 <td>1</td>
								 <td>bhaskar</td>
								 <td>bhaskar@gmail.com</td>
								 <td>9490452155</td>
								 <td>web dev</td>
								<td>
									
									
	  <input type="radio" name="rb1" id="rb1"></input>
	  <label for="rb1">Approve</label>
	  <input type="radio" name="rb1" id="rb2"></input>
	  <label for="rb2">Deny</label>
								</td>
								</tr>
								<tr>
								 <td>1</td>
								 <td>bhaskar</td>
								 <td>bhaskar@gmail.com</td>
								 <td>9490452155</td>
								 <td>web dev</td>
								<td>
									
									
	  <input type="radio" name="rb1" id="rb1"></input>
	  <label for="rb1">Approve</label>
	  <input type="radio" name="rb1" id="rb2"></input>
	  <label for="rb2">Deny</label>
								</td>
								</tr>
								<tr>
								 <td>1</td>
								 <td>bhaskar</td>
								 <td>bhaskar@gmail.com</td>
								 <td>9490452155</td>
								 <td>web dev</td>
								<td>
									
									
	  <input type="radio" name="rb1" id="rb1"></input>
	  <label for="rb1">Approve</label>
	  <input type="radio" name="rb1" id="rb2"></input>
	  <label for="rb2">Deny</label>
								</td>
								</tr>
								<tr>
								 <td>1</td>
								 <td>bhaskar</td>
								 <td>bhaskar@gmail.com</td>
								 <td>9490452155</td>
								 <td>web dev</td>
								<td>
									
									
	  <input type="radio" name="rb1" id="rb1"></input>
	  <label for="rb1">Approve</label>
	  <input type="radio" name="rb1" id="rb2"></input>
	  <label for="rb2">Deny</label>
								</td>
								</tr>
							
								<tr>
								 <td>1</td>
								 <td>bhaskar</td>
								 <td>bhaskar@gmail.com</td>
								 <td>9490452155</td>
								 <td>web dev</td>
								<td>
									
									
	  <input type="radio" name="rb1" id="rb1"></input>
	  <label for="rb1">Approve</label>
	  <input type="radio" name="rb1" id="rb2"></input>
	  <label for="rb2">Deny</label>
								</td> -->
								
								 </tbody>
	</div>
	</table>
	</div>
<%-- 	<%if(emp_details.getPosition().equals("project_manager")){ %> --%>
	<div class="pro_man">
					<div>
 					 <button onclick="myFunction1()" class="button1">Add project</button>
 					 <div id="sel" class="dp1">
 					 <select name="t_id" style="min-width: 30%" onchange="addp()">
 					 <option value="default" >--select teamlead--</option>
 					 <option value="value1" >teamlead 1</option>
 					 <option value="value2" >teamlead 2</option>
 					 </select>
  					 </div>
					</div>
						<div id="pro">
							<form action="">
  							Project Name:
 							<input type="text" name="p_name"  placeholder=" Enter Project Name" style="min-width: 40%">
  							<br><br>
 							<input class="savebtn" type="submit" value="Submit">
 							<input type="button" value="cancel" onclick="cncl1()" class="cnlbtn">
							</form>	 
						</div>
					</div><%-- <%}%> --%>
<%-- 	<%if(emp_details.getPosition().equals("team_leader")){ %> --%>
	<div class="team_lead">
					<div class="dropdown">
 					 <button onclick="myFunction()" class="dropbtn">Assign Modules</button>
 					 <div id="sel1" class="dp2">
 					 <select name="p_id" style="min-width: 30%" onchange="module()">
 					 <option value="default" >--select project--</option>
 					 <option value="value1" >project1</option>
 					 <option value="value2" >project2</option>
 					 </select>
  					 </div>
					</div>
						<div id="mod">
							<form action="">
  							Employee name:
 							<input type="text" name="emp1" placeholder=" Enter Module" style="min-width: 40%">
  							<br><br>
 							<input class="savebtn" type="submit" value="Submit">
 							<input type="button" value="cancel" onclick="cncl()" class="cnlbtn">
							</form>
						</div>
					</div>
	<%-- <%}%> --%>
  </body>
</html>
