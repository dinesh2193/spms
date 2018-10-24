<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
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
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />

<!-- font-awesome icons CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome icons CSS -->

 <!-- side nav css file -->
 <link href='css/SidebarNav.min.css' media='all' rel='stylesheet' type='text/css'/>
 <!-- side nav css file -->
 
 <!-- js-->
<script src="js/jquery-1.11.1.min.js"></script>
<script src="js/modernizr.custom.js"></script>

<!--webfonts-->
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i&amp;subset=cyrillic,cyrillic-ext,latin-ext" rel="stylesheet">
<!--//webfonts--> 

<!-- Metis Menu -->
<script src="js/metisMenu.min.js"></script>
<script src="js/custom.js"></script>
<link href="css/custom.css" rel="stylesheet">
<!--//Metis Menu -->
  </head>
  
<body class="cbp-spmenu-push">
	<div class="main-content">
	<div class="cbp-spmenu cbp-spmenu-vertical cbp-spmenu-left" id="cbp-spmenu-s1">
		<!--left-fixed -navigation-->
		<aside class="sidebar-left">
      <nav class="navbar navbar-inverse">
          <div class="navbar-header">
            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".collapse" aria-expanded="false">
            <span class="sr-only">Toggle navigation</span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            </button>
            <h1><a class="navbar-brand" href="index.html"><span class="fa fa-area-chart"></span>Texas<span class="dashboard_text">Employee page</span></a></h1>
          </div>
          <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
            <ul class="sidebar-menu">
              <li class="treeview">
                <a href="#">
                <i class="fa fa-home"></i><span>Home</span> 
                </a>
              </li>
              <li class="treeview">
                <a href="index.html">
                <i class="fa fa-user circle"></i> <span>Profile</span>
                </a>
              </li>
			  <li class="treeview">
                <a href="#">
                <i class="fa fa-pie-chart"></i>
                <span>Attendance</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href=""><i class="fa fa-angle-right"></i> View Attendance</a></li>
                  <li><a href=""><i class="fa fa-angle-right"></i> Give Attendance</a></li>
                </ul>
              </li>
              <li class="treeview">
                <a href="#">
                <i class="fa fa-folder"></i>
                <span>Documents</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href=""><i class="fa fa-angle-right"></i> View Documents</a></li>
                  <li><a href=""><i class="fa fa-angle-right"></i> Edit Documents</a></li>
                </ul>
              </li>
               <li class="treeview">
                <a href="#">
                <i class="fa fa-inr"></i><span>Payroll</span> 
                </a>
              </li>
               <li class="treeview">
                <a href="#">
                <i class="fa fa-book"></i>
                <span>Projects</span>
                <i class="fa fa-angle-left pull-right"></i>
                </a>
                <ul class="treeview-menu">
                  <li><a href=""><i class="fa fa-angle-right"></i>Running Projects</a></li>
                  <li><a href="jsp/pastprojects.jsp"><i class="fa fa-angle-right"></i>Past Projects</a></li>
                </ul>
              </li>
              <li class="treeview">
                <a href="#">
                <i class="fa fa-calendar-check-o"></i><span>Schedule</span> 
                </a>
              </li>
			  </ul>
          </div>
          <!-- /.navbar-collapse -->
      </nav>
    </aside>
	</div>
	<!-- header-starts -->
		<div class="sticky-header header-section ">
			<div class="header-right">
			<div class="profile_details">		
					<ul>
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images/2.jpg" alt=""> </span> 
									<div class="user-name">
										<p><%=session.getAttribute("emp_email") %></p>
										<span>Administrator</span>
									</div>
									<i class="fa fa-angle-down lnr"></i>
									<i class="fa fa-angle-up lnr"></i>
									<div class="clearfix"></div>	
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<form action="Logout" method="post"> 
								<button type="submit" style="background-color: Transparent;border: none;cursor:pointer;"><li> <a href="jsp/login.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
								</form>
							</ul>
						</li>
					</ul>
				</div>
				<div class="clearfix"> </div>				
			</div>
			<div class="clearfix"> </div>	
		</div>
		<!-- main content start-->
		<div id="page-wrapper">
			<div class="main-page" style="margin:5% 1% 0% 1%;height:100%">
				<div class="tables">
					<h2 class="title1">Past projects</h2>
					<table class="table" id="mytable">
							<thead>
								<tr>
								  <th>#</th>
								  <th>First Name</th>
								  <th>Last Name</th>
								  <th>Username</th>
								</tr>
							</thead>
							<tbody>
							<%for(int i=0;i<50;i++){ %>
								<tr>
								  <th scope="row">1</th>
								  <td>Mark</td>
								  <td>Otto</td>
								  <td>@mdo</td>
								</tr>
								<tr>
								  <th scope="row">2</th>
								  <td>Jacob</td>
								  <td>Thornton</td>
								  <td>@fat</td>
								</tr>
								<tr>
								  <th scope="row">3</th>
								  <td>Larry</td>
								  <td>the Bird</td>
								  <td>@twitter</td>
								</tr><%} %>
							</tbody>
						</table>
					<script src="https://code.jquery.com/jquery-3.3.1.js"></script>
					<script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.min.js"></script>
					<script>$(document).ready(function() {
    				$('#mytable').DataTable({  "scrollY":        "300px",
        "scrollCollapse": true});
					} );
					</script>
				</div>
			</div>
		</div>
	</div>
	
	<!-- side nav js -->
	<script src='js/SidebarNav.min.js' type='text/javascript'></script>
	<script>
      $('.sidebar-menu').SidebarNav()
    </script>
	<!-- //side nav js -->
	
	<!-- Classie --><!-- for toggle left push menu script -->
		<script src="js/classie.js"></script>
		<script>
			var menuLeft = document.getElementById( 'cbp-spmenu-s1' ),
				showLeftPush = document.getElementById( 'showLeftPush' ),
				body = document.body;
				
			showLeftPush.onclick = function() {
				classie.toggle( this, 'active' );
				classie.toggle( body, 'cbp-spmenu-push-toright' );
				classie.toggle( menuLeft, 'cbp-spmenu-open' );
				disableOther( 'showLeftPush' );
			};
			
			function disableOther( button ) {
				if( button !== 'showLeftPush' ) {
					classie.toggle( showLeftPush, 'disabled' );
				}
			}
		</script>
	<!-- //Classie --><!-- //for toggle left push menu script -->
	
	<!--scrolling js-->
	<script src="js/jquery.nicescroll.js"></script>
	<script src="js/scripts.js"></script>
	<!--//scrolling js-->
	
	<!-- Bootstrap Core JavaScript -->
	<script src="js/bootstrap.js"> </script>
	
</body>
</html>
