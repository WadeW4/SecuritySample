<!DOCTYPE html>
<%@include file="taglib.jsp"%>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0" />
		<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
		<title>Welcome</title>
		<link   rel="stylesheet" type="text/css" href="${rootURL}resources/themes/start/jquery-ui-min.css"  />
		<link   rel="stylesheet" type="text/css" href="${rootURL}resources/themes/start/theme-min.css"  />
		<link   rel="stylesheet" type="text/css" href="${rootURL}resources/css/jqueryslidemenu-min.css"  />
		<link   rel="stylesheet" type="text/css" href="${rootURL}resources/css/SecuritySample-min.css"  />
		<script type="text/javascript"           src="${rootURL}resources/js/jquery-min.js"></script>
		<script type="text/javascript"           src="${rootURL}resources/js/jquery-ui-min.js"></script>
		<script type="text/javascript"           src="${rootURL}resources/js/jquery.jcarousel-min.js"></script>
		<script type="text/javascript"           src="${rootURL}resources/js/jqueryslidemenu-min.js"></script>
	</head>
	<body>
		<div id="header-wrapper">
			<div id="myslidemenu" class="jqueryslidemenu">
				<ul>
				<li><a href="http://www.dynamicdrive.com">Item 1</a></li>
				<li><a href="#">Item 2</a></li>
				<li><a href="#">Folder 1</a>
				  <ul>
				  <li><a href="#">Sub Item 1.1</a></li>
				  <li><a href="#">Sub Item 1.2</a></li>
				  <li><a href="#">Sub Item 1.3</a></li>
				  <li><a href="#">Sub Item 1.4</a></li>
				  </ul>
				</li>
				<li><a href="#">Item 3</a></li>
				<li><a href="#">Folder 2</a>
				  <ul>
				  <li><a href="#">Sub Item 2.1</a></li>
				  <li><a href="#">Folder 2.1</a>
				    <ul>
				    <li><a href="#">Sub Item 2.1.1</a></li>
				    <li><a href="#">Sub Item 2.1.2</a></li>
				    <li><a href="#">Folder 3.1.1</a>
						<ul>
				    		<li><a href="#">Sub Item 3.1.1.1</a></li>
				    		<li><a href="#">Sub Item 3.1.1.2</a></li>
				    		<li><a href="#">Sub Item 3.1.1.3</a></li>
				    		<li><a href="#">Sub Item 3.1.1.4</a></li>
				    		<li><a href="#">Sub Item 3.1.1.5</a></li>
						</ul>
				    </li>
				    <li><a href="#">Sub Item 2.1.4</a></li>
				    </ul>
				  </li>
				  </ul>
				</li>
				<li><a href="http://www.dynamicdrive.com/style/">Item 4</a></li>
				</ul>
				<br style="clear: left" />
			</div>
		    <p>You have been logged out.</p>
		</div>
	</body>
</html>
