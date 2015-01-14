<!DOCTYPE html>
<%@include file="taglib.jsp"%>
<html>
	<head>
        <meta name="viewport" content="width=device-width, initial-scale=1">
		<title>Welcome</title>
		<link  href="${rootURL}resources/css/jquery.ui-1.11.2-min.css"  rel="stylesheet" type="text/css" />
        <link  href="${rootURL}resources/css/jquery.ui.structure-1.11.2-min.css" rel="stylesheet" />
	    <link  href="${rootURL}resources/css/jquery.ui.theme-1.11.2-min.css" rel="stylesheet" />
		<script src="${rootURL}resources/js/jquery-1.11.2-min.js" type="text/javascript"></script>
		<script src="${rootURL}resources/js/jquery-ui-1.11.2-min.js" type="text/javascript"></script>
	</head>
	<body>
		<h2>Welcome ${user.getName()} </h2>
		<h3>Email: <sec:authentication property="name"/></h3>
		<h3>
		<sec:authorize access="hasRole('ROLE_ADMIN')">
			<a href="${rootUrl}admin">Administration</a>
		</sec:authorize>
		</h3>
		<p>	<a href="${rootUrl}logout">Logout</a></p>
	</body>
</html>