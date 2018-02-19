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
</head>
<body>
<div class="container">
<%@include file="../common/header.jsp" %>
<%@include file="../common/nav.jsp" %>
<div class="row">
<%@include file="../common/sidebar.jsp" %>

<div class="col-sm-9"  style="height: 500px; color: black;">
<div class="alert alert-success">
  <strong>Success!</strong> Your data successfully inserted .<br/><a href="../view/addnewcustomer.jsp">Do you want to add customer? </a>
${test }
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