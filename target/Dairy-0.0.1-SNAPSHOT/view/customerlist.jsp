<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
           <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link href="../css/bootstrap.min.css" rel="stylesheet">
 <link href="../css/style.css" rel="stylesheet">
 <link href="../css/dataTables.bootstrap.min.css" rel="stylesheet">
 <%
String pwd=(String)session.getAttribute("tsession");
if(pwd==null)
{
	response.sendRedirect("../login.jsp");
}

%>
</head>
<body>
<div class="container">
<%@include file="../common/header.jsp" %>
<%@include file="../common/nav.jsp" %>
<div class="row">
<%@include file="../common/sidebar.jsp" %>

<div class="col-sm-9"  style="height: 500px; color: black;">
<div class="container-fluid">
  <div class="panel panel-default">
  <div class="panel-heading"><div class="panel-title">Customer List</div></div>
    <div class="panel-body table-responsive panel-responsive">
    <table id="example" class="table table-striped table-bordered">
        <thead>
            <tr>
                <th>Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Add Milk</th>
                <th>Action</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Email</th>
                <th>Add Milk</th>
                <th>Action</th>
            </tr>
        </tfoot>
        <tbody>
           <c:forEach var="cus" items="${cus}">
            <tr>
                <td>${cus.cusfname}</td>
                <td>${cus.cuslocation}</td>
                <td>${cus.cuscontact}</td>
                <td>${cus.cusemail}</td>
                <td>
             <a href="./customerlist2.dairy?cid=${cus.cid}" class="btn btn-info" role="button">Add Milk</a>
                </td>
                <td>
                <div class="dropdown">
        <button class="btn btn-danger dropdown-toggle" type="button" data-toggle="dropdown">Action
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="./customerlist1.dairy?cid=${cus.cid}">Update</a></li>
    <li><a href="./deleteCustomer.dairy?cid=${cus.cid}">Delete</a></li>
   
  </ul>
</div>
                
                </td>
            </tr>
     
</c:forEach>

       
           
        </tbody>
    </table>
    
    
    
    
    
    
    
    </div>
  </div>
</div>

  
  
</div>
    






</div>

</div>





 <script src="../js/jquery-3.2.1.min.js"></script> 
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/myfile.js"></script>
  <script src="../js/dataTables.bootstrap.min.js"></script>
  <script src="../js/jquery.dataTables.min.js"></script>
    <script type="text/javascript">
 $(document).ready(function() {
	    $('#example').DataTable();
	} );
 
 
 </script>
</body>
</html>