<!DOCTYPE html>
<%@page import="com.sivalabs.springapp.web.controllers.UserController"%>
<%@include file="taglib.jsp"%>
<html>
	<head>
		<title>Welcome</title>
		<link   rel="stylesheet" type="text/css" href="${rootURL}resources/themes/start/jquery-ui-min.css"  />
		<link   rel="stylesheet" type="text/css" href="${rootURL}resources/themes/start/theme-min.css"  />
		<script type="text/javascript"           src="${rootURL}resources/jquery/jquery-min.js"></script>
		<script type="text/javascript"           src="${rootURL}resources/jquery/jquery-ui-min.js"></script>
		<script type="text/javascript"           src="${rootURL}resources/jquery/jquery.jcarousel-min.js"></script>
	</head>
	<body>
		<h2>Welcome <%=UserController.getCurrentUser().getName() %> </h2>
		<h3>Email: <sec:authentication property="name"/></h3>
		<h3>
			<sec:authorize access="hasRole('ROLE_ADMIN')">
				<a href="${rootUrl}admin">Administration</a>
			</sec:authorize>
		</h3>
		<p>	<a href="${rootUrl}logout">Logout</a></p>
	</body>
</html>
