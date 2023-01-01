function validateform(){  
var name=document.myform.username.value;  
var password=document.myform.pwd.value;  
var conpass=document.myform.pwdrepeat.value;
var email=document.myform.email.value; 

var atpos = email.indexOf("@");
			var dotpos = email.lastIndexOf(".");
			if (atpos < 1 || dotpos < atpos + 2 || dotpos + 2 >= email.length) {
				alert("Not a valid Email Format");
				document.myform.email.focus();
				return false;
			}
if(name==null || name==""){  
  alert("Please enter your name!");
   
  return false;  
}
		if(password.length<6){  
  			alert("Password must be at least 6 characters long.");  
  			return false;  
  							}  
		if(password!=conpass){
			alert("Password and confirm-passsword must be match!");  
  			return false; 
							}
if(password==null || password==""){  
  alert("Please enter your password!");  
  return false;  
}
if(conpass==null || conpass==""){  
  alert("Please enter your confirm-passsword!");  
  return false;  
}
if(email==null || email==""){  
  alert("Please enter your email!");  
  return false;  
}



}  