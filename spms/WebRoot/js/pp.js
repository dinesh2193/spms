function myFunction() {
    document.getElementById("sel1").classList.toggle("show");
}
function myFunction1() {
    document.getElementById("sel").classList.toggle("show1");
}

function module(){
	document.getElementById("sel1").classList.toggle("show");
	var x=document.getElementById("sel1");
	if(x.value!="--select project--")
		{
		  x = document.getElementById("mod");
		  $("#mod").show();
		}
	else
		{
		  x = document.getElementById("mod");
		  $("#mod").hide();
		}
}
function addp(){
	document.getElementById("sel").classList.toggle("show1");
	var x=document.getElementById("sel");
	if(x.value!="--select teamlead--")
		{
		  x = document.getElementById("pro");
		  x.style.display = "block";
		}
	else
		{
		  x = document.getElementById("pro");
		  x.style.display = "none";
		}
}
function cncl(){
	 var x = document.getElementById("mod");
	  x.style.display = "none";
}
function cncl1(){
	 var x = document.getElementById("pro");
	  x.style.display = "none";
}