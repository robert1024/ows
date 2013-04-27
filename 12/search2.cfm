<html>
<head>
	<title>Orange Whip Studios - Movies</title>
</head>
<body>
<cfinclude template="header.cfm" >
<form action="results2.cfm" method="post">
<table align="center" border="1">
	<tr>
		<td>
		Movie:	
		</td>
		<td>
		<input type="text" name="MovieTitle">	
		</td>
	</tr>
	<tr>
		<td>
			Tag line:
		</td>
		<td>
			<input type="text" name="PitchText"
		</td>
	</tr>
	<tr>
		<td>
			Rating:
		</td>
		<td>
			<input type="text" name="RatingID">(1-6)
		</td>
	</tr>	
	<tr>
		<td colspan="2" align="center"/>
		<input type="submit" value="Search">
	</tr>
</table>	
</form>
</body>
</html>