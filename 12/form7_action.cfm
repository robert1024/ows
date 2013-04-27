<html>
<head>
	<title>Learing ColdFusion Forms 7</title>
</head>
<body>
<cfoutput>
<cfif FORM.Operation IS "Update">
You opted to <strong>update</strong> #MovieTitle#
<cfelseif FORM.Operation IS "Delete">
You opted to <strong>delete</strong> #MovieTitle#
</cfif>		
</cfoutput>	
</body>
</html>