<cfquery name="movies" datasource="ows">
	SELECT MovieTitle, PitchText
	From Films
	ORDER BY MovieTitle
</cfquery>


<html>
<head>
	<title>Orange Whip Studios - Movie List</title>
</head>
<body>
	<h1>Movie List</h1>
	<table border="1">
		<cfoutput query="movies">
			<tr>
				<td>#MovieTitle#</td>
				<td>#PitchText#</td>
			</tr>
		</cfoutput>	
	</table>
</body>
</html>	