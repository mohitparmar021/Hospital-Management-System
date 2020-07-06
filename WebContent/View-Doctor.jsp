<%@page import="HMS.Connection.MyConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="assets/boots/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/CSS/view-doctor-style.css">
<title>View Doctor</title>
</head>
<body>
<div class="head">
       <div class="container">
       	   <p class="font-weight-normal text-center ">View Doctor</p>	    
       </div>
</div>

<div class="container">
       
       <table class="table-responsive-lg"  border="2px" cellpadding="12px">
 	           <thead>
 	           	      <tr class="text-center text-heading">
 	           	      	    <td>D-Id</td>
 	           	      	    <td>First Name</td>
 	           	            <td>Last Name</td>
 	           	            <td>Gender</td>
                            <td>Blood Group</td> 
                            <td>Date of Birth</td>
 	           	      	    <td>Date of Joining</td>
 	           	      	    <td>Qualification</td>
 	           	      	    <td>Specialization</td>
 	           	      	    <td>Email</td>
 	           	      	    <td>Marital Status</td>
 	           	      	    <td>Mobile</td>
 	           	      	    <td>Address</td>
 	           	      	    
 	           	      </tr>
 	           </thead> 
               <tbody>
               	
                <%
                     Connection con=MyConnection.getMyConnetion();
                     try
                     {
                         Statement stmt=con.createStatement();
                         String query="select * from adddoctor";
                         ResultSet rs=stmt.executeQuery(query);
                         while(rs.next())
                         {
                 %>
                         <tr>
                                <td><%=rs.getString("did")%> </td> 
                                 <td><%=rs.getString("firstname")%></td>
                          	     <td><%=rs.getString("lastname")%></td>
                          	     <td><%=rs.getString("gender")%></td>
                          	     <td><%=rs.getString("bloodgroup")%></td>    
                          	     <td><%=rs.getString("dob")%></td>
                          	     <td><%=rs.getString("dateofjoining")%></td>
                          	     <td><%=rs.getString("qualification")%></td>
                          	     <td><%=rs.getString("specialization")%></td>
                          	     <td><%=rs.getString("email")%></td>
                          	     <td><%=rs.getString("maritalstatus")%></td>
                                 <td><%=rs.getString("mobile")%></td>
                          	     <td><%=rs.getString("address")%></td>
                          	      
                         </tr>
                            
                 <%
                         }
                     } 
                     catch(Exception e)
                     {

                     }
                %>
               
               </tbody>

      </table>
	
</div>
 <button class="btn-lg bt-back"><a href="Doctor-Home-Page.html">Back</a></button></td>

</body>
</html>