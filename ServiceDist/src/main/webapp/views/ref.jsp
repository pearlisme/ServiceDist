<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<body>
<script type="text/javascript">
place = {
	tamilnadu:['chennai', 'coimbatore'],
	andra:['kundur', 'vijaywada']
	}

function clearOpts(target){
	sel = document.info[target].options;
	for (i = sel.length - 1; i >= 0; i--)
		sel.remove(i);
}

function configureDropDownLists(o,city) {
	if(document.info[city].options.length!=0) clearOpts(city);
	selected = o.selectedIndex;
	if(selected==0) return;
	city = o.options[selected].value;
	for (i = 0; i < place[city].length; i++) {
				createOption('city', place[county.value][i], place[county.value][i]) 
			}
			
}

function createOption(target, label, value) {
	opts = document.info[target];
	opts.options.add(new Option(label,value) );
}

</script>
<form name="info">
<tr>
<td>County Name: </td>
<td><select name="county" id="county" onchange="configureDropDownLists(this,'city');">
<option value=""></option>
<option value="tamilnadu">tamilnadu</option>
<option value="andra">andra</option>
</select></td>
</tr><br>
<tr>
<td>City: </td>
<td><select name="city" id="city">
</select></td>
</tr>

</form>
</body>
</html>
</body>
</html>