<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	<title>File Upload widget a Flat Responsive Widget Template :: w3layouts</title>
	<link rel="stylesheet" href="css/fileupload.css">
	<link href='//fonts.googleapis.com/css?family=Open+Sans:400,300italic,300,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css'>
	<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>


		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<meta name="keywords" content="File Upload widget Widget Responsive, Login Form Web Template, Flat Pricing Tables, Flat Drop-Downs, Sign-Up Web Templates, Flat Web Templates, Login Sign-up Responsive Web Template, Smartphone Compatible Web Template, Free Web Designs for Nokia, Samsung, LG, Sony Ericsson, Motorola Web Design" />
		<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>		

  </head>
  
  <body>
   <h1>Files Upload</h1>
	<h4>Enter number of projects : <input type="text" id="project-number">        <input type="button"  class="choose" id="project-num-button" value="Submit"></h4>
	<div class="agile-its" >
	<h2>PROJECT NAME</h2>
	<!--<input type="button" value="add" onclick="display()">-->
	<div class="w3layouts">
	<!--<p>File Upload widget with multiple file selection, drag&drop support. You can drag & drop files from your desktop on this webpage.</p>-->
		<div class="photos-upload-view">
			<form id="upload" action="index.html" method="POST" enctype="multipart/form-data">
				<input type="hidden" id="MAX_FILE_SIZE" name="MAX_FILE_SIZE" value="300000" />
					<div class="agileinfo">
					<input type="submit" class="choose" value="Choose files..">
					<!--<h3>OR</h3>-->
						<input type="file" id="fileselect" name="fileselect[]" multiple="multiple" />
						<!--<div id="filedrag">drag and drop files here</div>-->
					</div>
			</form>
			<div id="messages">
				<p>Status Messages</p>
			</div>
		</div>
		<div class="clearfix"></div>
		<script src="js/filedrag.js"></script>


		</div>
	</div>
<!--<div class="footer">
	<p> � 2016 File Upload widget. All Rights Reserved | Design by  <a href="http://w3layouts.com/"> W3layouts</a></p>
</div>-->

	<script type="text/javascript" src="js/jquery.min.js"></script>

  </body>
</html>
