<%@ page language="java" contentType="text/html; charset=US-ASCII"
    pageEncoding="US-ASCII"%>
<%@ page import="whattodo.DatabaseMgr,java.sql.*" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=US-ASCII">
	<title>I Don't Know What To Do</title>
	<link href='http://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
	<link rel="stylesheet" type="text/css" href="style.css"/>
</head>
<body>
	<a href="index.html"><h1>I Don't Know What To Do</h1></a>
	
	<div id="suggestion"><%= DatabaseMgr.misc() %></div>
	
	<div id="directions">Click again to get another random suggestion</div>
	<div><a href="random.jsp"><img src="images/random.png"/></a></div>
	
	<div>Or choose a category</div>
		<div class="button">&nbsp;</div> <!-- this is a placeholder -->
		<div class="button"><a href="learn.jsp">
			Learn something new<br>
			<img src="images/learn.png"/>
		</a></div>
		<div class="button"><a href="food.jsp">
			Cook something<br>
			<img src="images/food.png"/>
		</a></div>
		<div class="button"><a href="misc.jsp">
			Miscellaneous<br>
			<img src="images/misc.png"/>
		</a></div>

		<div style="clear:both;"><a href="add.html">Click here to add your own suggestion</a></div>
</body>
</html>