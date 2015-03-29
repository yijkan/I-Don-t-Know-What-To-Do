<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ page import="whattodo.DatabaseMgr,java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>I Don't Know What To Do</title>
<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
	<div><h1>I Don't Know What To Do</h1></div>
	
	<div id="suggestion"><%= DatabaseMgr.random() %></div>
	
	<div id="directions">Click again to get another random suggestion</div>
	<a href="random.jsp"><button type="button" id="random">Generate Random Activity</button></a>
	<div>Or choose a category</div>
	<a href="learn.jsp"><button type="button" id="learn">Learn something new</button></a>
	<a href="food.jsp"><button type="button" id="food">Cook something</button></a>
	<a href="misc.jsp"><button type="button" id="misc">Miscellaneous</button></a>
</body>
</html>