<%@page import="databases.EmpDetailsDao"%>
<%@page import="objects.EmpDetails"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%ArrayList<String> names = EmpDetailsDao.get_all_downline((String)session.getAttribute("em[p_email"));
	
ArrayList<EmpDetails> det = EmpDetailsDao.get_all_downline_details(names);

 %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <title>Projects</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	
	<link rel="stylesheet" type="text/css" href="css/downline.css">
	

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>



<!--webfonts-->
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!--//webfonts--> 

<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel="stylesheet" type="text/css">
  </head>
  
<body>

  <div class="btnn">
						<button type="submit" onclick='show(2)'>View</button>
						
						<button type="submit" onclick='edit()'>Edit</button>
					
				<!--  	<button type="submit" onclick='add()'>Add</button> -->
					</div>
					
				
						
					<div>&nbsp;</div>
					
					<div id="table2" style="display:none;width:100%">
					<h2 style="color:red;">DataTable</h2>
	<table id="mytable1" class="display">
							<thead>
                    <tr>
                      <th>Name</th>
                      <th>Position</th>
                      <th>Gender</th>
                      <th>ID</th>
                      <th>Mobile</th>
                      <th>Team</th>
                    </tr>
                  </thead>
                  <tfoot>
                    <tr>
                      <th>Name</th>
                      <th>Position</th>
                      <th>Gender</th>
                      <th>ID</th>
                      <th>Mobile</th>
                      <th>Team</th>
                    </tr>
                  </tfoot>
                  <tbody>
                    <tr>
                      
                   <td>Tiger Nixon</td>
                      <td>Admin</td>
                      <td>Male</td>
                      <td>yoyo</td>
                      <td>847847983798</td>
                      <td>NA</td>
                     
                    </tr>
                    <tr>
                     
                      <td>Garrett Winters</td>
                      <td>Project Manager</td>
                      <td>Female</td>
                      <td>ooiuoi</td>
                      <td>28374982734</td>
                      <td>Garrett Winters</td>
                     
                    </tr>
                    <tr>
                      
                      <td>Ashton Cox</td>
                      <td>Team Leader</td>
                      <td>Female</td>
                      <td>kjdshf</td>
                      <td>398493</td>
                      <td>Garrett Winters</td>
                     </tr>
                    <tr>
                    
                      <td>Cedric Kelly</td>
                      <td>Software Engineer</td>
                      <td>Male</td>
                      <td>sddf</td>
                      <td>201435435</td>
                      <td>Garrett Winters</td>
                     </tr>
                    <tr>
                    
                      <td>Airi Satou</td>
                      <td>Software Engineer </td>
                      <td>Male</td>
                      <td>dsdsd</td>
                      <td>2984793475</td>
                      <td>Garrett Winters</td>
                     </tr>
                    <tr>
                      
                      <td>Brielle Williamson</td>
                      <td>Project Manager</td>
                      <td>Male</td>
                      <td>sdffgd</td>
                      <td>20456466</td>
                      <td>Brielle Williamson</td>
                     </tr>
                    <tr>
                    
                      <td>Herrod Chandler</td>
                      <td>Team Leader</td>
                      <td>Male</td>
                      <td>sdfsdf</td>
                      <td>2012454645</td>
                      <td>Brielle Williamson</td>
                     </tr>
                    <tr>
                      
                      <td>Rhona Davidson</td>
                      <td>Software Engineer</td>
                      <td>Female</td>
                      <td>sddfdfss</td>
                      <td>9384934795</td>
                      <td>Brielle Williamson</td>
                     </tr>
                    <tr>
                    
                      <td>Colleen Hurst</td>
                      <td>Software Engineer</td>
                      <td>Male</td>
                      <td>sddfsdfsd</td>
                      <td>2009456456</td>
                      <td>Brielle Williamson</td>
                     </tr>
            
                  </tbody>
                  </table>
                  </div>
					<div id="table1" style="display:none;width:100%">
					<h2 style="color:red;">DataTable</h2>

	<table id="mytable" class="display">
					  <thead>
                    <tr>
                    <th>Check</th>
                      <th>Name</th>
                      <th>Position</th>
                      <th>Gender</th>
                      <th>ID</th>
                      <th>Mobile</th>
                      <th>Team</th>
                      
                    </tr>
                  </thead>
                 <!--  <button id="button" class="poi"> x</button>-->
                  <tbody>
                    <tr>
                      <td><input type="checkbox" ></td>
                   <td>Tiger Nixon</td>
                      <td>Admin</td>
                      <td>Male</td>
                      <td>yoyo</td>
                      <td>847847983798</td>
                      <td>NA</td>
                     
                    </tr>
                    <tr>
                      <td><input type="checkbox" ></td>
                      <td>Garrett Winters</td>
                      <td>Project Manager</td>
                      <td>Female</td>
                      <td>ooiuoi</td>
                      <td>28374982734</td>
                      <td>Garrett Winters</td>
                     
                    </tr>
                    <tr>
                      <td><input type="checkbox" ></td>
                      <td>Ashton Cox</td>
                      <td>Team Leader</td>
                      <td>Female</td>
                      <td>kjdshf</td>
                      <td>398493</td>
                      <td>Garrett Winters</td>
                     </tr>
                    <tr>
                      <td><input type="checkbox" ></td>
                      <td>Cedric Kelly</td>
                      <td>Software Engineer</td>
                      <td>Male</td>
                      <td>sddf</td>
                      <td>201435435</td>
                      <td>Garrett Winters</td>
                     </tr>
                    <tr>
                      <td><input type="checkbox" ></td>
                      <td>Airi Satou</td>
                      <td>Software Engineer </td>
                      <td>Male</td>
                      <td>dsdsd</td>
                      <td>2984793475</td>
                      <td>Garrett Winters</td>
                     </tr>
                    <tr>
                      <td><input type="checkbox" ></td>
                      <td>Brielle Williamson</td>
                      <td>Project Manager</td>
                      <td>Male</td>
                      <td>sdffgd</td>
                      <td>20456466</td>
                      <td>Brielle Williamson</td>
                     </tr>
                    <tr>
                      <td><input type="checkbox" ></td>
                      <td>Herrod Chandler</td>
                      <td>Team Leader</td>
                      <td>Male</td>
                      <td>sdfsdf</td>
                      <td>2012454645</td>
                      <td>Brielle Williamson</td>
                     </tr>
                    <tr>
                      <td><input type="checkbox" ></td>
                      <td>Rhona Davidson</td>
                      <td>Software Engineer</td>
                      <td>Female</td>
                      <td>sddfdfss</td>
                      <td>9384934795</td>
                      <td>Brielle Williamson</td>
                     </tr>
                    <tr>
                      <td><input type="checkbox" ></td>
                      <td>Colleen Hurst</td>
                      <td>Software Engineer</td>
                      <td>Male</td>
                      <td>sddfsdfsd</td>
                      <td>2009456456</td>
                      <td>Brielle Williamson</td>
                     </tr>
                    
                  
                  </tbody>
						</table>
				<!--  <INPUT type="button" value="Delete Row" onclick="deleteRow("mytable")" />-->
				<!--  <input type="button" id="btnDelete" value="Delete Selected Rows" onclick="removeSampleRow('mytable')">-->
					 <button id="btnDelete" onclick="deleteRows();">Delete Row</button>	
						</div>
						   <div id="three-col" style="display:none;width:100%">
    <div class="col1">
        <label for="Name"></label> 
        <input id="name" name="Name" type="text" placeholder="Name">
    

    
        <label for="designation"></label>
        <input id="designation" name="Designation" type="text" placeholder="Designation" >
    
   
        <label for="team"></label>
        <input id="team" name="Team" type="text" placeholder="Team" >
    </div>
    <div>&nbsp</div>
    <div class="btnn">
    <button type="submit">Submit</button>
    </div>
</div>
								<!--	$('body').on('click', 'input.deleteDep', function() {
   $(this).parents('tr').remove().draw();  
});-->
<!--  $(document).ready(function() {
    				$('#mytable').DataTable();
					} );-->
					<!--  	$(document).ready(function() { var table = $('#mytable').DataTable(); $('#mytable tbody').on( 'click', 'tr', function () { if ( $(this).hasClass('selected') ) { $(this).removeClass('selected'); } else { table.$('tr.selected').removeClass('selected'); $(this).addClass('selected'); } } ); $('#button').click( function () { table.row('.selected').remove().draw( false ); } );-->
						<script type="text/javascript" src="http://code.jquery.com/jquery-1.8.3.min.js"></script>
				<!--  	<script src="https://code.jquery.com/jquery-3.3.1.js"></script> -->
					<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
					<script>
					var table1 = $('#mytable1').DataTable();
var table = $('#mytable').DataTable();

	
						function show(nr) {
						
   /* document.getElementById("table2").style.display="none";*/
    document.getElementById("table"+nr).style.display="block";
 /*   document.getElementById("table1").style.visibility="hidden";*/
  document.getElementById("table1").style.display="none";
 
   
}
					function edit()
					{
					
				/*	document.getElementById("table1").style.display="none";*/
					 document.getElementById("table1").style.display="block";
					/* document.getElementById("table2").style.visibility="hidden";*/
					 document.getElementById("table2").style.display="none";
					  document.getElementById("three-col").style.display="none";
					}
		
						 function getSelectedRows() {
					            var selectedRows = []
					            $('input[type=checkbox]').each(function () {
					                if ($(this).is(":checked")) {
					                    selectedRows.push($(this));
					                }
					            });
					            return selectedRows;
					        }
					        function deleteRows() {
					            var selectedRows = getSelectedRows();
					            for (var i = 0; i < selectedRows.length; i++) {
					                $(selectedRows[i]).parent().parent().remove();
					            }
					        }
					</script>
					
</body>
</html>