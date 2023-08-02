<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Echoing HTML Request Parameters</title>
</head>
<body>
	<h3>Choose an author: </h3>
	<form method="get">
		<input type="checkbox" name="author" value="Tan Cen Hoe">Tan
		<input type="checkbox" name="author" value="Rajagopal">Raja
		<input type="checkbox" name="author" value="Kim Pan Goh">Kim
		<input type="submit" value="Query">
	</form>
	
	<%
	String[] authors = request.getParameterValues("author");
	if(authors != null){
	%>
	<h3>You have selected authors:</h3>
	<ul>
	<%
		for(int i=0; i<authors.length; i++){
	%>
		<li><%= authors[i] %></li>
	<%
		}
	%>		
	</ul>
	<a href="<%= request.getRequestURI() %>">Back</a>
	<%
	}
	%>
</body>
</html>