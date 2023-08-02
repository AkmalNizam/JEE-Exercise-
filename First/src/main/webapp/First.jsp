<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>First JSP</title>
</head>
<body>
	<%
		double num = Math.random();
		if (num > 0.95){
	%>
		<h2>You'll hae a lucky day!</h2><p>(<%= num %>)</p>	
	<%
		} else {
	%>
		<h2>WELL, life must goes on...</h2><p>(<%= num %>)</p>
	<%
		}
	%>
	<a href = "<%= request.getRequestURI() %>"><h2>Try Again</h2></a>
</body>
</html>