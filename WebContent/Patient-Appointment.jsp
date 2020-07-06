<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="HMS.Connection.MyConnection"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="assets/boots/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/CSS/confirm-appointment-style.css">
<title>Confirm Appointment</title>
</head>
<body>
<div class="head">
 <br> <p class="font-weight-normal text-light">Appointment</p>
</div>
<div class="container"> 
	<form action="Appointment" method="post">
		  
             <div class="row rowspace">
      	         <div class="col-xl-2">  
      	             <label for="p-name" class="text-label">Patient Name</label> 	      	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" name="p-name" class="form-textbox form-control">	 	
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	 <label for="d-name" class="text-label">Doctor Name</label>	
      	         </div>
      	          <div class="col-xl-4">      	            
      	            <select class="form-textbox form-control" name="d-name">
      	            	<option>-Select-Please-</option>
      	            	<%
      	            	      Connection con=MyConnection.getMyConnetion();
      	            	   try
      	            	    {     	            		
      	            	       Statement stmt=con.createStatement();
      	            	       String query="select firstname,lastname from adddoctor";
      	            	       ResultSet rs=stmt.executeQuery(query);
      	            	       while(rs.next())
      	            	       {
      	            	 %>  

      	                       
      	                       <option value="<%=rs.getString("firstname")+rs.getString("lastname")%>">Dr. <%=rs.getString("firstname")+rs.getString("lastname")%></option>                

      	                 <%  	 
      	                        }
      	                     }
      	                   catch(Exception e)
      	                     {
      	           	          response.getWriter().print(e);
      	                     }
      	                 %>
      	            </select>
      	         </div>
      	       
            </div>
             <div class="row rowspace">
      	         <div class="col-xl-2">  
      	            <label for="gender" class="text-label">Gender</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <select class="form-control" name="p-gender">
 	   	       	     	              <option value="">-Select-Please-</option>
 	   	       	     	              <option value="male">Male</option>
 	   	       	     	              <option value="female">Female</option>
 	   	       	                  </select>
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	 <label for="p-age" class="text-label">Age</label>
      	         </div>
      	          <div class="col-xl-4">  
      	           <input type="text" name="p-age" class="form-textbox form-control">
      	         </div>
      	       
            </div>
            <div class="row rowspace">
      	         <div class="col-xl-2">  
      	            <label for="p-date" class="text-label">Date</label>      	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="date" name="p-date" class="form-textbox form-control">	
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	 <label for="p-mobile" class="text-label">Mobile</label>
      	         </div>
      	          <div class="col-xl-4">  
      	            <input type="text" name="p-mobile" class="form-textbox form-control">
      	         </div>
      	       
            </div>
             <div class="row rowspace">
      	         <div class="col-xl-2">  
      	            <label for="p-visitreasons" class="text-label">Visit Reasons</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" name="p-visitreasons" class="form-textbox form-control">
      	         </div>
      	         <div class="col-xl-2">  
      	            <label for="p-address" class="text-label">Address</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" name="p-address" class="form-textbox form-control">
      	         </div>
      	       
            </div>         
             <div class="row rowspace">
      	         <div class="col-xl-6">   	           		
      	         </div>
      	          <div class="col-xl-2"> 
	  	           	
      	         </div>
	  	           	 
      	          <div class="col-xl-4">  
      	             <input type="submit" value="Confirm" class="btn-sm bt-appointment-patient" name="">  
      	             <input type="reset" value="clear" class="btn-sm bt-clear-appointment" name="">  
      	             <button class="btn-sm bt-back"><a href="Appointment-Home-Page.html">Back</a></button>	 
      	         </div> 
            </div>
	</form>

</div>
</body>
</html>