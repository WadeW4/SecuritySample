<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Login | Beingjavaguys.com</title>
	<link href="${pageContext.request.contextPath}/resources/css/jquery-ui.css" type="text/css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath}/resources/css/jquery.dataTables.css" type="text/css" rel="stylesheet"/>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.js"></script>
</head>
<body>
	<center>
		<br /> <br /> <br />
		<div style="border: 1px solid black; width: 300px; padding-top: 10px;">
			<br /> Please enter your username and password to login ! <br /> <span
				style="color: red">${message}</span> <br />
			<form:form method="post" action="j_spring_security_check"
				modelAttribute="users">
				<table>
					<tr>
						<td>Username:</td>
						<td><form:input path="username" /></td>
					</tr>
					<tr>
						<td>Password:</td>
						<td><form:input path="password" /></td>
					</tr>
					<tr>
						<td>&nbsp;</td>
						<td><input type="submit" /></td>
					</tr>
				</table>
			</form:form>
		</div>
	</center>

</body>
</html>