function isNumberKey(evt)
{
    var charCode = (evt.which) ? evt.which : event.keyCode
    if (charCode > 31 && (charCode < 48 || charCode > 57))
        return false;
    return true;
}

function validate_editprofile()
{
	//gender validation
	return true;
	var gender=$("#gender").val();
	if(gender=="select_gender")
		{
			alert("Select Gender");
			$("#gender").focus();
			return false;
		}
	
	
	//mobile number validation
	
	var mob = /^[6-9]{1}[0-9]{9}$/;
	var txtMobile = $("#.w3l-num").val();
	if (mob.test(txtMobile.toString()) == false) {
	    alert("Please enter valid mobile number.");
	    $("#mobile").focus();
	    return false;
	}
      
   
	return true;
}