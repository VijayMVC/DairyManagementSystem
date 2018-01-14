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

<div class="col-sm-9"  style="height: 500px; color:#1a5f64;">
<div class="container-fluid">
  <div class="panel panel-default">
  <div class="panel-heading"><div class="panel-title">Supplier List </div></div>
    <div class="panel-body">
    <table id="example" class="table table-striped table-bordered">
  
        <thead>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Add Milk to Supplier</th>
                <th>Action</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>First Name</th>
                <th>Last Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Add Milk to Supplier</th>
                <th>Action</th>
            </tr>
        </tfoot>
        <tbody>
          <c:forEach var="s" items="${list}">
            <tr>
                <td>${s.splfname}</td>
                <td>${s.spllname}</td>
                <td>${s.spllocation }</td>
                <td>${s.splcontact}</td>
                <td>
           <!--    <button type="button" class="btn btn-info btn-sm" data-toggle="modal" data-target="#myModal">Add Import Milk</button> -->
              <a href="./addmilkshow.dairy?splid=${s.splid}" class="btn btn-info" role="button">Add Milk</a>
  <!-- Modal -->
  <div class="modal fade" id="myModal" role="dialog">
    <div class="modal-dialog">
    
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title"></h4>
        </div>
        <div class="modal-body">
         <%@include file="../common/milkimport.jsp" %>
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
        </div>
      </div>
      
    </div>
  </div>
  

       
                </td>
                <td>
                <div class="dropdown">
        <button class="btn btn-danger dropdown-toggle" type="button" data-toggle="dropdown">Action
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="update.dairy?splid=${s.splid}">Update</a></li>
    <li><a href="delete.dairy?splid=${s.splid}">Delete</a></li>
   
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