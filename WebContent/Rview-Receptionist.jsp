<%@page import="HMS.Connection.MyConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="assets/boots/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/CSS/view-receptionist-style.css">
<title>View Patients</title>
</head>
<body>
<div class="head">
       <div class="container">
       	   <p class="font-weight-normal text-center ">View Receptionist</p>	    
       </div>
</div>

<div class="container">
     
       <table class="table-responsive-lg"  border="2px" cellpadding="20px">
 	           <thead>
 	           	      <tr class="text-center text-heading">
 	           	      	    <td>R-Id</td>
 	           	      	    <td>First Name</td>
 	           	            <td>Last Name</td>
 	           	            <td>Gender</td>
                            <td>Blood Group</td> 
 	           	      	    <td>Date of Joining</td>
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
                         String query="select * from addreceptionist";
                         ResultSet rs=stmt.executeQuery(query);
                         while(rs.next())
                         {
                 %>
                         <tr>
                                <td><%=rs.getString("rid")%> </td> 
                                 <td><%=rs.getString("firstname")%></td>
                          	     <td><%=rs.getString("lastname")%></td>
                          	     <td><%=rs.getString("gender")%></td>
                          	     <td><%=rs.getString("bloodgroup")%></td>                         	    
                          	     <td><%=rs.getString("datejoining")%></td>                        	    
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
 <button class="btn-lg bt-back"><a href="Home-Receptionist-Page.html">Back</a></button></td>

</body>
</html>