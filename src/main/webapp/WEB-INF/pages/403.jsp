<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<title>Access Denied | Beingjavaguys.com</title>
	<link href="${pageContext.request.contextPath}/resources/css/jquery-ui.css" type="text/css" rel="stylesheet"/>
	<link href="${pageContext.request.contextPath}/resources/css/jquery.dataTables.css" type="text/css" rel="stylesheet"/>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-ui.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery.dataTables.js"></script>
</head>
<body>
	<center>
		<br /> <br /> <br />
		<h1>
			Access Denied for User : <span style="color: red;">${username}</span>
		</h1>
		<c:url var="logoutUrl" value="j_spring_security_logout" />
		<form action="${logoutUrl}" method="post">
			<input type="submit" value="Log out" /> <input type="hidden"
				name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
	</center>

</body>
</html>