<%@page import="HMS.Connection.MyConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="java.sql.*"%>  
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" type="text/css" href="assets/boots/bootstrap.css">
<link rel="stylesheet" type="text/css" href="assets/CSS/view-patient-style.css">
<title>View Patients</title>
</head>
<body>
<div class="head">
       <div class="container">
       	   <p class="font-weight-normal text-center ">View Patients</p>	    
       </div>
</div>

<div class="container">
       
       <table class="table-responsive-lg"  border="2px" cellpadding="20px">
 	           <thead>
 	           	      <tr class="text-center text-heading">
 	           	      	    <td>P-Id</td>
 	           	      	    <td>First Name</td>
 	           	            <td>Last Name</td>
 	           	            <td>Gender</td>
                            <td>Age</td> 
 	           	      	    <td>Date</td>
 	           	      	    <td>Mobile</td>
 	           	      	    <td>Ward</td>
 	           	      	    <td>Bed</td>
 	           	      	    <td>Address</td>
 	           	      	    <td>Problem</td>
 	           	      </tr>
 	           </thead> 
               <tbody>
               	
                <%
                     Connection con=MyConnection.getMyConnetion();
                     try
                     {
                         Statement stmt=con.createStatement();
                         String query="select * from addpatient";
                         ResultSet rs=stmt.executeQuery(query);
                         while(rs.next())
                         {
                 %>
                         <tr>
                                <td><%=rs.getString("id")%> </td> 
                                 <td><%=rs.getString("firstname")%></td>
                          	     <td><%=rs.getString("lastname")%></td>
                          	     <td><%=rs.getString("gender")%></td>
                          	     <td><%=rs.getString("age")%></td>
                          	     <td><%=rs.getString("date")%></td>
                          	     <td><%=rs.getString("mobile")%></td>
                          	     <td><%=rs.getString("ward")%></td>
                          	     <td><%=rs.getString("bed")%></td>
                                 <td><%=rs.getString("address")%></td>
                          	     <td><%=rs.getString("problem")%></td>
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