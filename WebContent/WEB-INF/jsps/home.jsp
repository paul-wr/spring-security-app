<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/main.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Home</title>
</head>
<body>

	<p>
		<a href="<c:url value="/offers"></c:url>">Show current
			offer</a>
	</p>
	<p><a href="<c:url value="/createoffer"></c:url>">Add a new
			offer</a></p>
			
	<p><a href="<c:url value="/j_spring_security_logout"></c:url>">Log out</a></p>		
	



	<!-- the value of id is set in the url paramter ?id=734-->
	<p>ID: ${id}</p>





</body>
</html>