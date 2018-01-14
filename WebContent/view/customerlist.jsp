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

<div class="col-sm-9"  style="height: 500px; color: black;">
<div class="container-fluid">
  <div class="panel panel-default">
  <div class="panel-heading"><div class="panel-title">Customer List</div></div>
    <div class="panel-body">
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
            <tr>
                <td>Mukesh Yadav</td>
                <td>System Architect</td>
                <td>Edinburgh</td>
                <td>61</td>
                <td>
                <input type="submit" name="Signup" value="Add Milk" class="btn btn-info btn btn-info" id="submit-id-signup" />
                </td>
                <td>
                <div class="dropdown">
        <button class="btn btn-danger dropdown-toggle" type="button" data-toggle="dropdown">Action
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="#">Update</a></li>
    <li><a href="#">Delete</a></li>
   
  </ul>
</div>
                
                </td>
            </tr>
            <tr>
                <td>Garrett Winters</td>
                <td>Accountant</td>
                <td>Tokyo</td>
                <td>63</td>
                <td> <input type="submit" name="Signup" value="Add Milk" class="btn btn-info btn btn-info" id="submit-id-signup" /></td>
                <td>
                             <div class="dropdown">
        <button class="btn btn-danger dropdown-toggle" type="button" data-toggle="dropdown">Action
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="#">Update</a></li>
    <li><a href="#">Delete</a></li>
   
  </ul>
</div>
                
                </td>
            </tr>
            <tr>
                <td>Ashton Cox</td>
                <td>Junior Technical Author</td>
                <td>San Francisco</td>
                <td>66</td>
                <td> <input type="submit" name="Signup" value="Add Milk" class="btn btn-info btn btn-info" id="submit-id-signup" /></td>
                <td>
                             <div class="dropdown">
        <button class="btn btn-danger dropdown-toggle" type="button" data-toggle="dropdown">Action
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="#">Update</a></li>
    <li><a href="#">Delete</a></li>
   
  </ul>
</div>
                
                
                </td>
            </tr>
            <tr>
                <td>Cedric Kelly</td>
                <td>Senior Javascript Developer</td>
                <td>Edinburgh</td>
                <td>22</td>
                <td> <input type="submit" name="Signup" value="Add Milk" class="btn btn-info btn btn-info" id="submit-id-signup" /></td>
                <td>
                             <div class="dropdown">
        <button class="btn btn-danger dropdown-toggle" type="button" data-toggle="dropdown">Action
  <span class="caret"></span></button>
  <ul class="dropdown-menu">
    <li><a href="#">Update</a></li>
    <li><a href="#">Delete</a></li>
   
  </ul>
</div>
                
                
                
                </td>
            </tr>
       
           
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