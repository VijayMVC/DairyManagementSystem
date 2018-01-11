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

 <link href="../advancecs/jquery.dataTables.min.css" rel="stylesheet">
  <link href="../advancecs/buttons.dataTables.min.css" rel="stylesheet">
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
   <table id="example" class="display nowrap">
        <thead>
            <tr>
                <th>Supplier Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Product Name</th>
                <th>Import date</th>
                <th>Quantity</th>
                <th>Total Amount</th>
            </tr>
        </thead>
        <tfoot>
            <tr>
                <th>Supplier Name</th>
                <th>Address</th>
                <th>Contact</th>
                <th>Product Name</th>
                <th>Import date</th>
                <th>Quantity</th>
                <th>Total Amount</th>
            </tr>
        </tfoot>
        <tbody>
           <c:forEach var="s" items="${list}">
            <tr>
                <td>${s.splfname }<%out.print("/"); %>${s.spllname}</td>
                <td>${s.spllocation}</td>
                <td>${s.splcontact}</td>
                <td>${s.pdname}</td>
                <td>${s.pdimpdate }</td>
                <td>${s.pdquantity }</td>
                <td>${s.totalamount }</td>
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
  <script src="../advancejs/bootstrap.min.js"></script>
  <script src="../advancejs/jquery.dataTables.min.js"></script>
  <script src="../advancejs/dataTables.buttons.min.js"></script>
  <script src="../advancejs/buttons.flash.min.js"></script>
  <script src="../advancejs/jszip.min.js"></script>
  <script src="../advancejs/pdfmake.min.js"></script>
  <script src="../advancejs/vfs_fonts.js"></script>
  <script src="../advancejs/buttons.html5.min.js"></script>
  <script src="../advancejs/buttons.print.min.js"></script>
 
 <script type="text/javascript">
   $(document).ready(function() {
	    $('#example').DataTable( {
	        dom: 'Bfrtip',
	        buttons: [
	            'copy', 'csv', 'excel', 'pdf', 'print'
	        ]
	    } );
	} );
 
 </script>
</body>
</html>