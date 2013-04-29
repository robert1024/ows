<cfquery name="ratings" datasource="ows" >
SELECT RatingID, Rating
FROM FilmsRatings
ORDER BY RatingID	
</cfquery>

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
				<cfoutput query="ratings">
					<option value="#RatingID#">#Rating#</option>
				</cfoutput>
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