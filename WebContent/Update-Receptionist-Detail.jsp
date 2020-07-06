<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Update Receptionist</title>
<link rel="stylesheet" type="text/css" href="assets/boots/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/CSS/update-receptionist-data-style.css">
</head>
<body>
<div class="head">
       <div class="container">
       	   <p class="font-weight-normal text-light">Update Receptionist </p>
       	   
       </div>
</div>

 <div class="container"> 
	<form action="UpdateReceptionistDetail" method="post"> 
	<%
	try
	{
		  ResultSet rs=(ResultSet)request.getAttribute("receptionistdata");
	       while(rs.next())
	       {
	   %>
	    	<div class="row rowspace">
      	         <div class="col-xl-2">  
      	              <label for="r-id" class="text-label">Receptionist Id</label>	  	      	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" value="<%=rs.getString("rid")%>" name="r-id" class="form-control">	 	
      	         </div>
      	          <div class="col-xl-2"> 
	  	           	
      	         </div>
	  	           	 
      	          <div class="col-xl-4">  
      	          <input type="submit" class="btn-sm bt-back" value="Update">
      	          <button class="btn-sm bt-back"><a href="Receptionist-Home-Page.html">Home</a></button>	 
      	          <button class="btn-sm bt-back"><a href="Search-Receptionist.html">Back</a></button>	 
      	         </div>
      	        
      	       
            </div>
             <div class="row rowspace">
      	         <div class="col-xl-2">  
      	             <label for="r-first-name" class="text-label">First Name</label> 	      	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" name="r-first-name" value="<%=rs.getString("firstname")%>" class="form-textbox form-control">	 	
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	 <label for="r-last-name" class="text-label">Last Name</label>	
      	         </div>
      	          <div class="col-xl-4">  
      	            <input type="text" name="r-last-name" value="<%=rs.getString("lastname")%>" class="form-textbox form-control">
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
	  	           	 <label for="r-blood-group" class="text-label">Blood Group</label>
      	         </div>
      	         <div class="col-xl-4">  
      	            <%
      	             String bloodgrp=rs.getString("bloodgroup");
      	             if(bloodgrp.equals("O+"))
      	             {
      	          %>  	 
      	            	 <select class="form-control" name="blood-grp">
      	     	               <option value="">-Select-Please-</option>
 	   	       	     	              <option value="O+" selected>O+</option>
 	   	       	     	              <option value="A+">A+</option>
 	   	       	     	              <option value="B+">B+</option>
 	   	       	     	              <option value="O-">O-</option>
 	   	       	     	              <option value="A-">A-</option>
 	   	       	     	              <option value="B-">B-</option>
 	   	       	     	              <option value="AB+">AB+</option>
 	   	       	     	              <option value="AB-">AB-</option>
      	                </select>
      	         <%      
      	             }
      	             else if(bloodgrp.equals("A+"))
      	             {
      	            	 %>  	 
      	            	 <select class="form-control">
      	     	              <option>-Select-Please-</option>
      	     	              <option  >O+</option>
      	     	              <option selected>A+</option>
      	     	              <option>B+</option>
      	     	              <option>O-</option>
      	     	              <option>A-</option>
      	     	              <option>B-</option>
      	     	              <option>AB+</option>
      	     	              <option>AB-</option>
      	                </select>
      	         <%      
      	             }
      	           else if(bloodgrp.equals("B+"))
    	             {
    	            	 %>  	 
    	            	 <select class="form-control">
    	     	              <option>-Select-Please-</option>
    	     	              <option  >O+</option>
    	     	              <option >A+</option>
    	     	              <option selected>B+</option>
    	     	              <option>O-</option>
    	     	              <option>A-</option>
    	     	              <option>B-</option>
    	     	              <option>AB+</option>
    	     	              <option>AB-</option>
    	                </select>
    	         <%      
    	             }
      	         else if(bloodgrp.equals("O-"))
  	             {
  	            	 %>  	 
  	            	 <select class="form-control">
  	     	              <option>-Select-Please-</option>
  	     	              <option  >O+</option>
  	     	              <option >A+</option>
  	     	              <option>B+</option>
  	     	              <option selected>O-</option>
  	     	              <option>A-</option>
  	     	              <option>B-</option>
  	     	              <option>AB+</option>
  	     	              <option>AB-</option>
  	                </select>
  	         <%      
  	             }
      	       else if(bloodgrp.equals("A-"))
	             {
	            	 %>  	 
	            	 <select class="form-control">
	     	              <option>-Select-Please-</option>
	     	              <option  >O+</option>
	     	              <option >A+</option>
	     	              <option>B+</option>
	     	              <option>O-</option>
	     	              <option selected>A-</option>
	     	              <option>B-</option>
	     	              <option>AB+</option>
	     	              <option>AB-</option>
	                </select>
	         <%      
	             }
      	     else if(bloodgrp.equals("B-"))
	             {
	            	 %>  	 
	            	 <select class="form-control">
	     	              <option>-Select-Please-</option>
	     	              <option  >O+</option>
	     	              <option >A+</option>
	     	              <option>B+</option>
	     	              <option>O-</option>
	     	              <option>A-</option>
	     	              <option selected>B-</option>
	     	              <option>AB+</option>
	     	              <option>AB-</option>
	                </select>
	         <%      
	             }
      	   else if(bloodgrp.equals("AB+"))
             {
            	 %>  	 
            	 <select class="form-control">
     	              <option>-Select-Please-</option>
     	              <option  >O+</option>
     	              <option >A+</option>
     	              <option>B+</option>
     	              <option>O-</option>
     	              <option>A-</option>
     	              <option>B-</option>
     	              <option selected>AB+</option>
     	              <option>AB-</option>
                </select>
         <%      
             }
      	 else if(bloodgrp.equals("AB-"))
           {
          	 %>  	 
          	 <select class="form-control">
   	              <option>-Select-Please-</option>
   	              <option >O+</option>
   	              <option >A+</option>
   	              <option>B+</option>
   	              <option>O-</option>
   	              <option>A-</option>
   	              <option>B-</option>
   	              <option>AB+</option>
   	              <option selected>AB-</option>
              </select>
       <%      
           }
      	 else
         {
        	 %>  	 
        	 <select class="form-control" name="blood-grp">
      	     	                       <option value="">-Select-Please-</option>
 	   	       	     	              <option value="O+" selected>O+</option>
 	   	       	     	              <option value="A+">A+</option>
 	   	       	     	              <option value="B+">B+</option>
 	   	       	     	              <option value="O-">O-</option>
 	   	       	     	              <option value="A-">A-</option>
 	   	       	     	              <option value="B-">B-</option>
 	   	       	     	              <option value="AB+">AB+</option>
 	   	       	     	              <option value="AB-">AB-</option>
      	    </select>
     <%      
         }
        %>
       </div>
   </div>    
            <div class="row rowspace">
      	         <div class="col-xl-2">  
      	            <label for="r-dob" class="text-label">D.O.B</label>      	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="date" name="r-dob" value="<%=rs.getString("dob")%>" class="form-textbox form-control">	
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	<label for="r-date-of-joining" class="text-label">Date of Joining</label>  
      	         </div>
      	          <div class="col-xl-4">  
      	          <input type="date" name="r-date-of-joining" value="<%=rs.getString("datejoining")%>" class="form-textbox form-control">	
      	         </div>
      	       
            </div>
            
             <div class="row rowspace">
      	         <div class="col-xl-2">  
      	            <label for="r-qualification" class="text-label">Qualification</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" name="r-qualification" value="<%=rs.getString("qualification")%>" class="form-textbox form-control">
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	  <label for="r-marital-status" class="text-label">Marital Status</label>
      	         </div>
      	          <div class="col-xl-4">  
      	              <%
      	               String maritalstatus=rs.getString("maritalstatus");
      	                 if(maritalstatus.equals("yes"))
      	                 {
      	             %> 	
      	                  <select class="form-control" name="marital-status">
 	   	       	     	              <option>-Select-Please-</option>
 	   	       	     	              <option value="yes" selected>Yes</option>
 	   	       	     	              <option value="no">No</option>
 	   	       	          </select>
      	              <%
      	                 }
      	                 else
      	                 {
      	               %> 	
        	                  <select class="form-control" name="marital-status">
   	   	       	     	              <option>-Select-Please-</option>
   	   	       	     	              <option value="yes">Yes</option>
   	   	       	     	              <option value="no" selected >No</option>
   	   	       	          </select>
        	              <%
      	                 }
      	            %>
      	         </div>
      	       
            </div>
              <div class="row rowspace">
      	         <div class="col-xl-2">  
      	           <label for="r-mobile" class="text-label">Mobile</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" name="r-mobile" value="<%=rs.getString("mobile")%>" class="form-textbox form-control">
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	  <label for="r-address" class="text-label">Address</label>    	
      	         </div>
      	          <div class="col-xl-4">  
      	             <input type="text" name="r-address" value="<%=rs.getString("address")%>" class="form-textbox form-control">
      	         </div>
      	       
            </div>  
              <div class="row rowspace">
      	         <div class="col-xl-2">  
      	           <label for="r-email" class="text-label">Email</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="email" name="r-email" value="<%=rs.getString("email")%>" class="form-textbox form-control">
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