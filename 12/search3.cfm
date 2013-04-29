<html>
<head>
	<title>Orange Whip Studios - Movies</title>
</head>
<body>
<cfinclude template="header.cfm">

<form action="results3.cfm" method="post">
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
			Tag Line:
		</td>
		<td>
			<input type="text" name="PitchText">
		</td>
	</tr>
	<tr>
		<td>
			Rating:
		</td>
		<td>
			<select name="RatingID">
				<option value=""></option>
				<option value="1">General</option>
				<option value="2">Kids</option>
				<option value="3">Accompanied</option>
				<option value="4">Teens</option>
				<option value="5">Adults</option>
				<option value="6">Mature Audiences</option>
			</select>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="Search">
		</td>
	</tr>
</table>	
</form>
</body>
</html>