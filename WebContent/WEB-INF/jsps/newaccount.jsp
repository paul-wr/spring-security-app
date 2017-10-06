<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/static/css/main.css" />
<script type="text/javascript" src="${pageContext.request.contextPath}/static/script/jquery-3.2.1.min.js"></script>
<script type="text/javascript">

	function onLoad() {
		alert("Hello");
	}

	$(document).ready(onLoad);

</script>	
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Create Offer</title>
</head>
<body>
<h2>Create New Account</h2>
	<sf:form method="post"
		action="${pageContext.request.contextPath}/createaccount" commandName="user">
		<table class="formtable">
			<tr>
				<td>Username: <sf:input type="text"  path="username" name="username" /><br/><div class="error"><sf:errors path="username"></sf:errors></div>
				</td>
			</tr>
			<tr>
				<td>Email: <sf:input type="text" path="email" name="email" /><br/><div class="error"><sf:errors path="email"></sf:errors></div>
				</td>
			</tr>
			<tr>
				<td>Password: <sf:input type="text" path="password" name="password" /><br/><div class="error"><sf:errors path="password"></sf:errors></div>
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
				<td><input value="Create account" type="submit" /></td>
			</tr>
		</table>
	</sf:form>
</body>
</html>