<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Service Discovery</title>
<%-- <link rel='stylesheet'
	href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap.min.css") %>'>
<link rel='stylesheet'
	href='<%= org.webjars.AssetLocator.getWebJarPath("css/bootstrap-theme.min.css") %>'>
<script type='text/javascript'
	src='<%= org.webjars.AssetLocator.getWebJarPath("jquery.min.js") %>'></script>
<script type='text/javascript'
	src='<%= org.webjars.AssetLocator.getWebJarPath("js/bootstrap.min.js") %>'></script>
 --%>

<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<script type="text/javascript" src="/Scripts/ATF.js"></script>
</head>
<body>
	<div class="main-content" align="center">

		

		<form class="form-basic" method="post" action="#">

			<div class="form-title-row">
				<h1>Service Discovery</h1>
			</div>


			<div class="form-row">
				<label> <span>RFS</span> <select name="county" id="county"
					onchange="configureDropDownLists(this,'city');">
						<option value=""></option>
						<option value="tamilnadu">tamilnadu</option>
						<option value="andra">andra</option>
				</select>
				</label>
			</div>
		</form>
	</div> 
	</body>
	</html>
	