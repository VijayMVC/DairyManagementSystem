<%@page import="java.time.LocalDate"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.util.List"%>
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
  <script src="../js/myfile.js"></script>
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
      <c:forEach var="cus" items="${cus}">
     <div class="panel panel-info">
            <div class="panel-heading">
         
                <div class="panel-title">Customer Record Form of ${cus.cusfname}</div>
             
            </div>  
            <div class="panel-body" >
                <form method="post" action="addmilkwithcustomer.dairy">
                    <%
               Class.forName("com.mysql.jdbc.Driver");
               Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/db_dairy","root","");
               Statement stmt=con.createStatement();
               ResultSet rs=stmt.executeQuery("select *from product");
          
              
               %>
                 
               
                       <div id="div_id_username" class="form-group required">
                            <label for="id_username" class="control-label col-md-4  requiredField">Product Name:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                    
                              <select class="form-control" id="sel1" name="cpdname" style="margin-bottom: 10px;">
                                     <%while(rs.next())
                              {
                              %>
                                 <option><%=rs.getString(4) %></option>
                              <%} %>
                                     </select>
                                  
                            </div>
                        </div>
                        <%
                        
                     LocalDate date=LocalDate.now();
                     String date1= date.toString();
                        
                        %>
                        <div id="div_id_email" class="form-group required">
                            <label for="id_email" class="control-label col-md-4  requiredField">Import Date:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md emailinput form-control" id="id_email" value="<%=date1 %>" name="cpdate" placeholder="Rate" style="margin-bottom: 10px" type="date" />
                            </div>     
                        </div>
               
                        <div id="div_id_number" class="form-group required">
                             <label for="id_number" class="control-label col-md-4  requiredField">Quantity of milk:<span class="asteriskField">*</span> </label>
                             <div class="controls col-md-8 ">
                                 <input class="input-md textinput textInput form-control" id="pdquantity" name="cpdquantity" placeholder="Quantity of milk" style="margin-bottom: 10px" type="text" />
                            </div> 
                        </div> 
       
                            <div id="div_id_location" class="form-group required">
                            <label for="id_location" class="control-label col-md-4  requiredField">Quantity of Fat:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md textinput textInput form-control" id="pdfatquan" name="cuspdfat" placeholder="Quantity of fat" style="margin-bottom: 10px" type="text" />
                            </div> 
                        </div>
                              <div id="div_id_location" class="form-group required">
                            <label for="id_location" class="control-label col-md-4  requiredField">Rate of Fat/lit:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md textinput textInput form-control" id="pdfatlit" value="${cus.cid}"  name="cpdfatl" placeholder="" style="margin-bottom: 10px" type="text" />
                            </div> 
                        </div>
                                 <div id="div_id_location" class="form-group required">
                            <label for="id_location" class="control-label col-md-4  requiredField">Total Amount:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md textinput textInput form-control" onmouseenter="calMilkAmount()"  id="tamount" name="ctotamount" placeholder="" style="margin-bottom: 10px" type="text" />
                            </div> 
                        </div>
                        <input type="hidden" value="${cus.cid}" name="cid"/>
                   
                        <div class="form-group"> 
                            <div class="aab controls col-md-4 "></div>
                            <div class="controls col-md-8 ">
                                <input type="submit" name="Signup" onclick="calMilkAmount()" value="Save" class="btn btn-primary btn btn-primary" id="submit-id-signup" />
                                 <input type="button" name="Signup" value="Clear" class="btn btn btn-primary" id="button-id-signup" />
                            </div>
                        </div> 
                            
                    </form>

             
            </div>



</div>
   </c:forEach>
</div>

</div>

</div>

  <script src="../js/jquery-3.2.1.min.js"></script> 
  <script src="../js/bootstrap.min.js"></script>

</body>
</html>