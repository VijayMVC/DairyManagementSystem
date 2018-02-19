<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/style.css" rel="stylesheet">
<%
String pwd=(String)session.getAttribute("tsession");
if(pwd==null)
{
	response.sendRedirect("login.jsp");
}

%>
</head>
<body>
<div class="container">
<%@include file="common/header1.jsp" %>
<%@include file="common/nav.jsp" %>
<%@include file="common/sidebar1.jsp" %>
</div>

  <script src="js/jquery-3.2.1.min.js"></script> 
  <script src="js/bootstrap.min.js"></script>
</body>
</html>