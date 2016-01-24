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
<!-- <script type="text/javascript" src="/scripts/ATF.js"></script> -->
<script type="text/javascript">
args = {
		IPV4:['1', '2','3'],
		IPV6:['1', '2'],
		L3VPN:['1'],
		BGP:['0', '1'],
		}

	function clearOpts(target){
		sel = document.info[target].options;
		for (i = sel.length - 1; i >= 0; i--)
			sel.remove(i);
	}

	function configureDropDownLists(o,tech2) {
		if(document.info[tech2].options.length!=0) clearOpts(tech2);
		selected = o.selectedIndex;
		if(selected==0) return;
	 	tech2 = o.options[selected].value;
		for (i = 0; i < args[tech2].length; i++) {
					createOption('tech2', args[tech1.value][i], args[tech1.value][i]) 
				}
				
	}

	function createOption(target, label, value) {
		opts = document.info[target];
		opts.options.add(new Option(label,value) );
	}
</script>
</head>
<body bgcolor="green">
	<div class="main-content" align="center">



		<form class="form-basic" method="post" action="#">

			<div class="form-title-row">
				<h1>Service Discovery</h1>
			</div>
			<div></div>

			<div class="form-row">
				<label> <span>RFS</span> <select name="tech1" id="tech1"
					onchange="configureDropDownLists(this,'tech2');">
						<option value=""></option>
						<option value="IPV4">IPV4</option>
						<option value="IPV6">IPV6</option>
						<option value="L3VPN">L3VPN</option>
						<option value="BGP">BGP</option>
				</select>
				</label>
			</div>
			<div class="form-row">
				<label><span>ARGS</span></label> <select name="tech2" id="tech2"></select>
			</div>
		</form>
	</div>
</body>
</html>
