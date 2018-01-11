<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
 <link href="../css/bootstrap.min.css" rel="stylesheet">
 <link href="../css/style.css" rel="stylesheet">
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
                <div class="panel-title">Milk Export Record Form</div>
            </div>  
            <div class="panel-body" >
                <form method="post" action=".">
               
               
                       <div id="div_id_username" class="form-group required">
                            <label for="id_username" class="control-label col-md-4  requiredField">Product Name:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                              <select class="form-control" id="sel1" style="margin-bottom: 10px;">
                                  <option>Cow milk</option>
                                  <option>Buffalow milk</option>
                                  <option>Sugar</option>
                                   <option>others</option>
                                     </select>
                            </div>
                        </div>
                        <div id="div_id_email" class="form-group required">
                            <label for="id_email" class="control-label col-md-4  requiredField">Export Date:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md emailinput form-control" id="id_email" name="email" placeholder="Rate" style="margin-bottom: 10px" type="date" />
                            </div>     
                        </div>
               
                        <div id="div_id_number" class="form-group required">
                             <label for="id_number" class="control-label col-md-4  requiredField">Quantity:<span class="asteriskField">*</span> </label>
                             <div class="controls col-md-8 ">
                                 <input class="input-md textinput textInput form-control" id="id_number" name="number" placeholder="Quantity" style="margin-bottom: 10px" type="text" />
                            </div> 
                        </div> 
                        <div id="div_id_location" class="form-group required">
                            <label for="id_location" class="control-label col-md-4  requiredField">Rate/litre:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md textinput textInput form-control" id="id_location" name="location" placeholder="Rate/litre" style="margin-bottom: 10px" type="text" />
                            </div> 
                        </div>
                            <div id="div_id_location" class="form-group required">
                            <label for="id_location" class="control-label col-md-4  requiredField">Quantity of Fat:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md textinput textInput form-control" id="id_location" name="location" placeholder="Quantity of fat" style="margin-bottom: 10px" type="text" />
                            </div> 
                        </div>
                              <div id="div_id_location" class="form-group required">
                            <label for="id_location" class="control-label col-md-4  requiredField">Rate of Fat/lit:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md textinput textInput form-control" id="id_location" name="location" placeholder="" style="margin-bottom: 10px" type="text" />
                            </div> 
                        </div>
                              <div id="div_id_location" class="form-group required">
                            <label for="id_location" class="control-label col-md-4  requiredField">Rate of Lacto:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md textinput textInput form-control" id="id_location" name="location" placeholder="Quantity of Lacto" style="margin-bottom: 10px" type="text" />
                            </div> 
                        </div>
                              <div id="div_id_location" class="form-group required">
                            <label for="id_location" class="control-label col-md-4  requiredField">Rate of Lacto/lit:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md textinput textInput form-control" id="id_location" name="location" placeholder="" style="margin-bottom: 10px" type="text" />
                            </div> 
                        </div>
                                 <div id="div_id_location" class="form-group required">
                            <label for="id_location" class="control-label col-md-4  requiredField">Total Amount:<span class="asteriskField">*</span> </label>
                            <div class="controls col-md-8 ">
                                <input class="input-md textinput textInput form-control" id="id_location" name="location" placeholder="" style="margin-bottom: 10px" type="text" />
                            </div> 
                        </div>
                   
                        <div class="form-group"> 
                            <div class="aab controls col-md-4 "></div>
                            <div class="controls col-md-8 ">
                                <input type="submit" name="Signup" value="Save" class="btn btn-primary btn btn-primary" id="submit-id-signup" />
                                 <input type="button" name="Signup" value="Clear" class="btn btn btn-primary" id="button-id-signup" />
                            </div>
                        </div> 
                            
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