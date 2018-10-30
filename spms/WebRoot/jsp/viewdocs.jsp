<%@page import="methods.ProjectDetails"%>
<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%ArrayList<String> l = ProjectDetails.get_project_details("spms"); %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'viewdocs.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<meta charset="UTF-8">
  <title>Fixed table header</title>
  
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/meyer-reset/2.0/reset.min.css">

  
      <link rel="stylesheet" href="css/viewdocs.css">
  </head>
  
  <body>
	    <section>
	  <!--for demo wrap-->
	  <h1>VIEW DOCUMENTS</h1>
	  <br>
	  <div class="tbl-header">
	    <table cellpadding="0" cellspacing="0" border="0">
	      <thead>
	        <tr>
	          <th>PROJECT NAME</th>
	          <th>DOCUMENTS</th>
	        </tr>
	      </thead>
	    </table>
	  </div>
	  <div class="tbl-content">
	    <table cellpadding="0" cellspacing="0" border="0">
	      <tbody>
	        <tr>
	          <td>AAC</td>
	          <td>AUSTRALIAN COMPANY </td>
	        </tr>
	        <tr>
	          <th id="proj-name" rowspan="2">AAD</th>
	          <td>AUSENCO</td>
	        </tr>
	        <tr>
	          <td>AUSENCO1</td>
	        </tr>
	      </tbody>
	    </table>
	  </div>
	</section>
	 <script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>

    <script src="js/viewdocs.js"></script>
  </body>
</html>
