<%@ taglib uri="/WEB-INF/tlds/struts-html.tld" prefix="html"%>  
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript" src="scripts/purify.min.js"></script>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<form action="/search.jsp">
	  <label for="fname">First name:</label><br>
	  <input type="text" id="fname" name="fname" value="John"/><br>
	  <label for="lname">Last name:</label><br>
	  <input type="text" id="lname" name="lname" value="Doe"/><br><br>
	  <input type="submit" value="Submit"/>
	</form> 
</body>
</html>