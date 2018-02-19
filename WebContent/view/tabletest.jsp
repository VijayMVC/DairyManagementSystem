<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body>
<div id="tabulator-example">Hello</div>



<script type="text/javascript">
$("#tabulator-example").tabulator({
	layout:"fitColumns",
	tooltips:true,
	addRowPos:"top",
	history:true,
	pagination:"local",
	paginationSize:7,
	movableColumns:true,
	initialSort:[
		{column:"name", dir:"asc"},
	],
	columns:[
		{title:"Name", field:"name", editor:"input"},
		{title:"Task Progress", field:"progress", align:"left", formatter:"progress", editor:true},
		{title:"Activity", field:"activity", width:160, formatter:lineFormatter, headerSort:false},
		{title:"Gender", field:"gender", width:90, editor:genderEditor},
		{title:"Rating", field:"rating", formatter:"star", align:"center", width:100, editor:true},
		{title:"Color", field:"col", width:130, editor:"input"},
		{title:"Date Of Birth", field:"dob", width:130, sorter:"date", align:"center"},
		{title:"Car", field:"car", width:80,  align:"center", formatter:"tickCross", sorter:"boolean", editor:true},
	],
});


</script>
</body>
</html>