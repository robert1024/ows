<html>
<head>
	<title>Orange Whip Studios - Intranet</title>
</head>
<body>
<cfinclude template="header.cfm">

<cfif Len(Trim(LoginID)) IS 0>
	<h1>ERROR! ID can't be left blank!</h1>
	<cfabort>
</cfif>

<cfif IsNumeric(LoginID) IS "No">
	<h1>ERROR! Invalid ID specified!</h1>
	<cfabort>
</cfif>	

<cfif Len(Trim(LoginPassword)) IS 0>
	<h1>ERROR! Password can't be left blank!</h1>
	<cfabort>
</cfif>	

<p align="center">
	<h1>Intranet</h1>
</p>
Intranet would go here.
</body>
</html>