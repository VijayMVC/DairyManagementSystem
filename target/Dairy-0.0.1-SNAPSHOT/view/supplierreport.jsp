<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<div class="col-sm-9"  style="height: 500px;">
<ul class="nav nav-pills nav-tabs" style="background: white;">
  <li class="active"><a href="#">Home</a></li>
  <li class="dropdown">
    <a class="dropdown-toggle" data-toggle="dropdown" href="#">Each Supplier Report
    <span class="caret"></span></a>
    <ul class="dropdown-menu">
      <li><a href="#" data-toggle="modal" data-target="#myModal">Monthly Report</a></li>
      <li><a href="#">15-days Report</a></li>
      <li><a href="#">7-days Report</a></li> 
    </ul>
  </li>
  <li><a href="supplierreport.dairy">All Supplier Report</a></li>
  <li><a href="#">Other</a></li>
</ul>




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