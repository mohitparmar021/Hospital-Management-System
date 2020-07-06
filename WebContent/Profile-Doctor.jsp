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
<title>Doctor Profile</title>
<link rel="stylesheet" type="text/css" href="assets/boots/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/CSS/profile-doctor-data-style.css">
</head>
<body>
<div class="head">
       <div class="container">
       	   <p class="font-weight-normal text-light">Profile</p>
       	    
       </div>
</div>

<div class="container"> 
	<form>
<%
    HttpSession dsession=request.getSession();

    String email=(String)dsession.getAttribute("username");
    String password=(String)dsession.getAttribute("password");
    
    try
    {
    	Connection con=MyConnection.getMyConnetion();
    	Statement stmt=con.createStatement();
    	String query="select * from adddoctor where email='"+email+"'";
    	ResultSet rs=stmt.executeQuery(query);
    	while(rs.next())
    	{
    %>
         <div class="row rowspace">
      	         <div class="col-xl-2">  
      	              <label for="r-id" class="text-label">Doctor Id</label>	  	      	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" value="<%=rs.getString("did")%>" name="d-id" class="form-control">	 	
      	         </div>
      	          <div class="col-xl-2"> 
	  	           	
      	         </div>
	  	           	 
      	          <div class="col-xl-4">  
      	          <button class="btn-lg bt-back"><a href="Home-Doctor-Page.html">Home</a></button>	 
      	          
      	         </div>
      	        
      	       
            </div>
             <div class="row rowspace">
      	         <div class="col-xl-2">  
      	             <label for="d-first-name" class="text-label">First Name</label> 	      	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" name="d-first-name" value="<%=rs.getString("firstname")%>" class="form-textbox form-control">	 	
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	 <label for="d-last-name" class="text-label">Last Name</label>	
      	         </div>
      	          <div class="col-xl-4">  
      	            <input type="text" name="d-last-name" value="<%=rs.getString("lastname")%>" class="form-textbox form-control">
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
      	            	 <select class="form-control">
 	   	       	     	         <option>-Select-Please-</option>
 	   	       	     	         <option selected value="male">Male</option>
 	   	       	     	         <option value="female">Female</option>
 	   	       	          </select>   
      	          <% 	 
      	             }
      	             else if(gender.equals("female"))
      	             {
      	            %>
      	                  <select class="form-control">
 	   	       	     	         <option>-Select-Please-</option>
 	   	       	     	         <option  value="male">Male</option>
 	   	       	     	         <option selected value="female">Female</option>
 	   	       	          </select>   
      	            <%  
      	             }
      	           else
    	             {
    	            %>
    	                  <select class="form-control">
	   	       	     	         <option selected >-Select-Please-</option>
	   	       	     	         <option  value="male">Male</option>
	   	       	     	         <option  value="female">Female</option>
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
      	            	 <select class="form-control">
      	     	              <option>-Select-Please-</option>
      	     	              <option selected >O+</option>
      	     	              <option>A+</option>
      	     	              <option>B+</option>
      	     	              <option>O-</option>
      	     	              <option>A-</option>
      	     	              <option>B-</option>
      	     	              <option>AB+</option>
      	     	              <option>AB-</option>
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
            	 <select class="form-control">
     	              <option>-Select-Please-</option>
     	              <option >O+</option>
     	              <option >A+</option>
     	              <option>B+</option>
     	              <option>O-</option>
     	              <option>A-</option>
     	              <option>B-</option>
     	              <option>AB+</option>
     	              <option >AB-</option>
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
	  	           	  <input type="date" name="d-dob" value="<%=rs.getString("dob")%>" class="form-textbox form-control">	
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	<label for="d-date-of-joining" class="text-label">Date of Joining</label>  
      	         </div>
      	          <div class="col-xl-4">  
      	          <input type="date" name="d-date-of-joining" value="<%=rs.getString("dateofjoining")%>" class="form-textbox form-control">	
      	         </div>
      	       
            </div>
             <div class="row rowspace">
      	         <div class="col-xl-2">  
      	            <label for="d-specialization" class="text-label">Specialization</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" name="d-specialization" value="<%=rs.getString("specialization")%>" class="form-textbox form-control">
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	  <label for="d-marital-status" class="text-label">Marital Status</label>
      	         </div>
      	          <div class="col-xl-4">  
      	            <%
      	               String maritalstatus=rs.getString("maritalstatus");
      	                 if(maritalstatus.equals("yes"))
      	                 {
      	             %> 	
      	                  <select class="form-control" value="">
 	   	       	     	              <option>-Select-Please-</option>
 	   	       	     	              <option selected>Yes</option>
 	   	       	     	              <option>No</option>
 	   	       	          </select>
      	              <%
      	                 }
      	                 else if(maritalstatus.equals("no"))
      	                 {
      	               %> 	
        	                  <select class="form-control" value="">
   	   	       	     	              <option>-Select-Please-</option>
   	   	       	     	              <option>Yes</option>
   	   	       	     	              <option selected>No</option>
   	   	       	          </select>
        	              <%
      	                 }
      	               else
    	                 {
    	               %> 	
      	                  <select class="form-control" value="">
 	   	       	     	              <option selected>-Select-Please-</option>
 	   	       	     	              <option>Yes</option>
 	   	       	     	              <option >No</option>
 	   	       	          </select>
      	              <%
    	                 }
      	            %>
      	            
      	         </div>
      	       
            </div>
              <div class="row rowspace">
      	         <div class="col-xl-2">  
      	           <label for="d-mobile" class="text-label">Mobile</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="text" name="d-mobile" value="<%=rs.getString("mobile")%>" class="form-textbox form-control">
      	         </div>
      	         <div class="col-xl-2"> 
	  	           	  <label for="d-address" class="text-label">Address</label>    	
      	         </div>
      	          <div class="col-xl-4">  
      	             <input type="text" name="d-address" value="<%=rs.getString("address")%>" class="form-textbox form-control">
      	         </div>
      	       
            </div> 
             <div class="row rowspace">
      	         <div class="col-xl-2">  
      	           <label for="d-email" class="text-label">Email</label>    	     
      	         </div>
      	         <div class="col-xl-4"> 
	  	           	  <input type="email" name="d-email" value="<%=rs.getString("email")%>"  class="form-textbox form-control">
      	         </div>
	            <div class="col-xl-2"> 
	  	           	  <label for="d-qualification" class="text-label">Qualification</label>    	
      	         </div>
      	          <div class="col-xl-4">  
      	             <input type="text" name="d-qualification" value="<%=rs.getString("qualification")%>"  class="form-textbox form-control">
      	         </div>
            </div>          
    <% 
    	}
    }
    catch(Exception e)
    {
    	response.getWriter().print(e);
    }    
    %>
</form>              
</div>
</body>
</html>