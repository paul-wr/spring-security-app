<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/main.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Login Page</title>
</head>
<body onload='document.f.username.focus();'>
	<h3>Login with Username and Password</h3>
	
	
	<c:if test="${param.error != null}">
		<p class="error">Login failed. Check that your username and password are correct.</p>
	</c:if>
	
	<form name='f'
		action='${pageContext.request.contextPath}/j_spring_security_check'
		method='POST'>
		<table class="formtable">
			<tr>
				<td>User:</td>
				<td><input type='text' name='j_username' value=''></td>
			</tr>
			<tr>
				<td>Password:</td>
				<td><input type='password' name='j_password' /></td>
			</tr>
			<tr>
				<td>Remember me:</td>
				<td><input type='checkbox' name='_spring_security_remeber_me' checked="checked" /></td>
			</tr>
			<tr>
				<td colspan='2'><input name="submit" type="submit"
					value="Login" /></td>
			</tr>
		</table>
	</form>
	<p><a href="<c:url value="/newaccount"/>">Create new account</a></p>
</body>
</html>
