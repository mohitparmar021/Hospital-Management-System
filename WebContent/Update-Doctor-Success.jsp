<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="assets/boots/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/CSS/update-successfully-style.css">
<title>Update Doctor</title>
</head>
<body>

<div class="head">
       <div class="container">
       	   <p class="font-weight-normal text-center ">Updation Status</p>	    
       </div>
</div>

<div class="data">
	  <center>
	  			 <h1>Doctor Id No.<%=request.getAttribute("did")%> is Updated Successfully</h1>
                 <button class="btn-lg bt-back"><a href="Update-Doctor.html">Back</a></button>
	  </center>
	  
</div>
</body>
</html>