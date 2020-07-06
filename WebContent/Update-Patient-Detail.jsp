<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.ResultSet"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Patient Detail</title>
<link rel="stylesheet" type="text/css" href="assets/boots/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/CSS/update-patient-data-style.css">
</head>
<body>
<div class="head">
       <div class="container">
       	   <p class="font-weight-normal text-light">Update Patient </p>
       	   
       </div>
</div>

 <div  class="container">
<form action="UpdatePatientDetail" method="post"> 	    
<%
   try
   {
	    ResultSet rs=(ResultSet)request.getAttribute("patientdata");
	    while(rs.next())
	    {
%>     
<div class="row rowspace">
      	         <div class="col-xl-2">  
      	              <label for="p-id" class="text-label">Patient Id</label>	  	      	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	<input type="text" value="<%=rs.getString("id")%>" name="p-id" class="form-textbox1 form-control">
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	
      	         </div>
	  	           	 
      	        <div class="col-xl-4">  
      	               <input type="submit" class="btn-lg bt-update" value="Update">
                       <button class="btn-lg bt-home"><a href="Add-Patient-Home.html">Home</a></button>
                       <button class="btn-lg bt-back"><a href="Update-Patient.html">Back</a></button>
                </div>
     </div>
      <div class="row rowspace">
      	         <div class="col-xl-2">  
      	              <label for="p-first-name" class="text-label">First Name</label>	  	      	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           <input type="text" name="p-first-name" value="<%=rs.getString("firstname")%>" class="form-textbox form-control">
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	 <label for="p-last-name" class="text-label">Last Name</label>
      	         </div>
	  	           	 
      	        <div class="col-xl-4">  
      	               <input type="text" name="p-last-name" value="<%=rs.getString("lastname")%>" class="form-textbox form-control">
                </div>
     </div>
     <div class="row rowspace">
      	         <div class="col-xl-2">  
      	            <label for="gender" class="text-label">Gender</label>  	      	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	         <%
      	             String gender=rs.getString("gender");   	            
      	             if(gender.equals("male"))
      	             {
      	          %>   
      	            	 <select class="form-control" name="gender" >
 	   	       	     	         <option>-Select-Please-</option>
 	   	       	     	         <option selected  value="male">Male</option>
 	   	       	     	         <option value="female">Female</option>
 	   	       	          </select>   
      	          <% 	 
      	             }
      	             else
      	             {
      	            %>
      	                  <select class="form-control" name="gender">
 	   	       	     	         <option>-Select-Please-</option>
 	   	       	     	         <option  value="male">Male</option>
 	   	       	     	         <option selected value="female">Female</option>
 	   	       	          </select>   
      	            <%  
      	             }
      	         %>
      	              
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	<label for="p-age" class="text-label">Age</label>
      	         </div>
	  	           	 
      	        <div class="col-xl-4">  
      	             <input type="text" value="<%=rs.getString("age")%>" name="p-age" class="form-textbox form-control">
                </div>
     </div>
      <div class="row rowspace">
      	         <div class="col-xl-2">  
      	            <label for="p-date" class="text-label">Date</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	         <input type="date" value="<%=rs.getString("date")%>" name="p-date" class="form-textbox form-control">
      	         </div>
      	         <div class="col-xl-2"> 
	  	           <label for="p-mobile" class="text-label">Mobile</label>
      	         </div>
	  	           	 
      	        <div class="col-xl-4">  
      	             <input type="text" name="p-mobile" value="<%=rs.getString("mobile")%>" class="form-textbox form-control">
                </div>
     </div>
      <div class="row rowspace">
      	         <div class="col-xl-2">  
      	            <label for="p-ward" class="text-label">Ward Number</label>     
      	         </div>
      	         <div class="col-xl-4"> 
	  	        <input type="text" value="<%=rs.getString("ward")%>" name="p-ward" class="form-textbox form-control">
      	         </div>
      	         <div class="col-xl-2"> 
	  	         <label for="p-bed" class="text-label">Bed Number</label>
      	         </div>
	  	           	 
      	        <div class="col-xl-4">  
      	            <input type="text" name="p-bed" value="<%=rs.getString("bed")%>" class="form-textbox form-control">
                </div>
     </div>
     <div class="row rowspace">
      	         <div class="col-xl-2">  
      	             <label for="p-address" class="text-label">Address</label>  
      	         </div>
      	         <div class="col-xl-4"> 
	  	           <input type="text" name="p-address"  value="<%=rs.getString("address")%>" class="form-control">
      	         </div>
      	         <div class="col-xl-2"> 
	  	         <label for="p-problem" class="text-label">Problem</label>
      	         </div>
	  	           	 
      	        <div class="col-xl-4">  
      	            <input type="text" name="p-problem" value="<%=rs.getString("problem")%>" class="form-control">
                </div>
     </div>   
<%	    
	    }
   }
   catch(Exception e)
   {
	   
   }
   
%>
</form>    
</div>

</body>
</html>