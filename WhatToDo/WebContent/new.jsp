<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ page import="whattodo.DatabaseMgr,java.sql.*" %>

<!DOCTYPE html>
<html>
	<head>
		<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="style.css"/>
		<title>I Don't Know What To Do | Add Suggestion</title>
	</head>
	<body>
		<a href="index.html"><h1>I Don't Know What To Do</h1></a>
		<h2>Add your own suggestion</h2>

		<% if(DatabaseMgr.add(request.getParameter("sugg"), request.getParameter("link"), request.getParameter("cat"))) {%>
			<div>Thank you! Your suggestion has been added.</div>
			<div><a href="add.html">Click here to add another one.</a></div>
		<% } else { %>
			<div>Sorry. Something went wrong. <a href="add.html">Try again?</a></div>
		<%} %>

	</body>
</html>