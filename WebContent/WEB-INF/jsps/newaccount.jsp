<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/main.css" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Offer</title>
</head>
<body>
<h2>New Account</h2>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/createaccount" commandName="user">
		<table class="formtable">
			<tr>
				<td>Username: <sf:input type="text"  path="username" name="username" /><br/><sf:errors path="username" cssClass="error"></sf:errors>
				</td>
			</tr>
			<tr>
				<td>Email: <sf:input type="text" path="email" name="email" /><br/><sf:errors path="email" cssClass="error"></sf:errors>
				</td>
			</tr>
			<tr>
				<td>Password: <sf:input type="text" path="password" name="password" /><br/><sf:errors path="password" cssClass="error"></sf:errors>
				</td>
			</tr>
			<tr>
				<td>Confirm Password: <input type="text" name="confirmpass" /><br/>
				</td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td></td>
			</tr>
			<tr>
				<td><input value="Create advert" type="submit" /></td>
			</tr>
		</table>
	</sf:form>
</body>
</html>