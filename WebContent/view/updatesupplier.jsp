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
     <div class="panel panel-info">
            <div class="panel-heading">
                <div class="panel-title">Supplier Update Form</div>
            </div>  
            <div class="panel-body" >
                <form method="post" action="./updte.dairy">
                 <c:forEach var="s" items="${list}">
                 <input type="hidden" name="splid" value="${s.splid}"/>
               
                      <div id="div_id_username" class="form-group required">
                            <label for="id_username" class="control-label col-md-4  requiredField">First Name:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md  textinput textInput form-control" id="id_username" maxlength="30" name="splfname" value="${s.splfname}" placeholder="Choose your First Name" style="margin-bottom: 10px" type="text" />
                            </div>
                        </div>
                        
                       <div id="div_id_username" class="form-group required">
                            <label for="id_username" class="control-label col-md-4  requiredField">Last Name:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md  textinput textInput form-control" id="id_username" maxlength="30" name="spllname" value="${s.spllname}" placeholder="Choose your Last Name" style="margin-bottom: 10px" type="text" />
                            </div>
                        </div>
                        <div id="div_id_email" class="form-group required">
                            <label for="id_email" class="control-label col-md-4  requiredField"> E-mail:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md emailinput form-control" id="id_email" name="splemail" value="${s.splemail}" placeholder="Your current email address" style="margin-bottom: 10px" type="email" />
                            </div>     
                        </div>
                        <div id="div_id_gender" class="form-group required">
                            <label for="id_gender"  class="control-label col-md-4  requiredField"> Gender<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 "  style="margin-bottom: 10px">
                                 <label class="radio-inline"> <input type="radio" name="splgender" id="id_gender_1" value="M"  style="margin-bottom: 10px">Male</label>
                                 <label class="radio-inline"> <input type="radio" name="splgender" id="id_gender_2" value="F"  style="margin-bottom: 10px">Female </label>
                            </div>
                        </div> 
                        <div id="div_id_number" class="form-group required">
                             <label for="id_number" class="control-label col-md-4  requiredField"> Contact number<span class="asteriskField">*</span> </label>
                             <div class="controls col-md-8 ">
                                 <input class="input-md textinput textInput form-control" id="id_number" name="splcontact" value="${s.splcontact}" placeholder="provide your number" style="margin-bottom: 10px" type="text" />
                            </div> 
                        </div> 
                        <div id="div_id_location" class="form-group required">
                            <label for="id_location" class="control-label col-md-4  requiredField"> Your Location<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md textinput textInput form-control" id="id_location" name="spllocation" value="${s.spllocation}" placeholder="Your Village and City" style="margin-bottom: 10px" type="text" />
                            </div> 
                        </div>
                   
                        <div class="form-group"> 
                            <div class="aab controls col-md-4 "></div>
                            <div class="controls col-md-8 ">
                                <input type="submit" name="Signup" value="Save" class="btn btn-primary btn btn-primary" id="submit-id-signup" />
                                 <input type="button" name="Signup" value="Clear" class="btn btn btn-primary" id="button-id-signup" />
                            </div>
                        </div> 
                        
                      </c:forEach>
                            
                    </form>

             
            </div>
        </div>





</div>

</div>



</div>

  <script src="../js/jquery-3.2.1.min.js"></script> 
  <script src="../js/bootstrap.min.js"></script>
  <script src="../js/myfile.js"></script>
</body>
</html>