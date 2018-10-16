<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>TEXAS EMPLOYEE PAGE</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<style>
		.blue-square-container {
  		text-align: center;
		}
		.blue-square {
 		 background-color: #0074D9;
  		width: 100px;
  		height: 100px;
  		display: inline-block;
		}
		.button1 {
		border-radius:4px;
	    background-color: orange;
	    border: none;
	    color: white;
	    padding: 15px 25px;
	    text-align: center;
	    font-size: 16px;
		position:absolute;
		 left: 15%;
	   top: 20%;
		  transform: translate(-50%, -50%);
		    cursor: pointer;
		}

		.button2 {
		border-radius:4px;
		    background-color: orange;
		    border: none;
		    color: white;
		    padding: 15px 25px;
		    text-align: center;
		    font-size: 16px;
			position:absolute;
			 left: 50%;
			  top: 50%;
		  transform: translate(-50%, -50%);
		    cursor: pointer;
		}
		
		.button1:hover {
		    background-color: black;
		}
		.button2:hover {
		    background-color: black;
		}

		 .inp{
		 border-radius:4px;
		   padding: 15px 15px;
		   position:absolute;
			 left: 15%;
			  top: 50%;
			  transform: translate(-50%, -50%);
		 
		   }
		   .inp1{
		 border-radius:4px;
		   padding: 15px 15px;
		   position:absolute;
			 left: 30%;
			  top: 50%;
			  transform: translate(-50%, -50%);
		 
		   }
		
		 .text1
		 {
		     position:absolute;
		   left: 10%;
			  top: 40%;
			  transform: translate(-50%, -50%);
		 }
		 
		 .text2
		 {
		     position:absolute;
		   left: 24%;
			  top: 40%;
			  transform: translate(-50%, -50%);
		 }
		 
		/* The Modal (background) */
		.modal {
		    display: none; /* Hidden by default */
		    position: fixed; /* Stay in place */
		    z-index: 1; /* Sit on top */
		    padding-top: 100px; /* Location of the box */
		    left: 0;
		    top: 0;
		    width: 100%; /* Full width */
		    height: 100%; /* Full height */
		    overflow: auto; /* Enable scroll if needed */
		    background-color: rgb(0,0,0); /* Fallback color */
		    background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
		}
		
		/* Modal Content */
		.modal-content {
		    background-color: #fefefe;
		    margin: auto;
		    padding: 20px;
		    border: 1px solid #888;
		    width: 50%;
		}
		
		/* The Close Button */
		.close {
		    color: #aaaaaa;
		    float: right;
		    font-size: 28px;
		    font-weight: bold;
		}
		
		.close:hover,
		.close:focus {
		    color: #000;
		    text-decoration: none;
		    cursor: pointer;
		}
</style>
  </head>
  
  <body>
    <div class="blue-square-container">
	<button id="myBtn" class="button1">mark presence</button>
	<button class="button2">view attendance</button>
	
	 
	
	  <!-- The Modal -->
	<div id="myModal" class="modal">
	
	  <!-- Modal content -->
	  <div class="modal-content">
	    <span class="close">&times;</span>
	    <p>Attendance Updated</p>
	  </div>
	
	</div>
	<span class="text1">From</span><span class="text2">To</span>
	<input class="inp" type="date" ></input>
	<input class="inp1" type="date" ></input>
	</div> 
	
				
	
	<script>
	// Get the modal
	var popup = document.getElementById('myModal');
	
	// Get the button that opens the modal
	var btn = document.getElementById("myBtn");
	
	// Get the <span> element that closes the modal
	var span = document.getElementsByClassName("close")[0];
	
	// When the user clicks the button, open the modal 
	btn.onclick = function() {
	    popup.style.display = "block";
	}
	
	// When the user clicks on <span> (x), close the popup
	span.onclick = function() {
	    popup.style.display = "none";
	}
	
	// When the user clicks anywhere outside of the popup, close it
	window.onclick = function(event) {
	    if (event.target == popup) {
	        popup.style.display = "none";
	    }
	}
	 
	</script>			
    
  </body>
</html>
