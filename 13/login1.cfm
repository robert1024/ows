<html>
<head>
	<title>Orange Whip Studios - Intranet</title>
</head>
<body>
<cfinclude template="header.cfm">
<form action="process1.cfm" method="post">
<table align="center" bgcolor="orange">
	<tr>
		<td align="right">
			ID:
		</td>
		<td>
			<input type="text" name="LoginID" maxlength="5">
		</td>
	</tr>
	<tr>
		<td align="right">
			Password:
		</td>
		<td>
			<input type="password" name="LoginPassword" maxlength="20">
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="Login">
		</td>
	</tr>	
</table>
</form>
</body>
</html>