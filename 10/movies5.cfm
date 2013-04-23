<cfquery name="movies" datasource="ows" >
	SELECT MovieTitle, PitchText, Summary, DateInTheaters
	FROM Films
	ORDER BY MovieTitle
</cfquery>

<html>
<head>
	<title>Orange Whip Studios - Movie List</title>
</head>
<body>
	<h1>Movie List</h1>
	<table>
		<tr>
			<th colspan="2">
				<h2>Movie List</h2>
			</th>
		</tr>
		<cfoutput query="movies">
			<tr bgcolor="##cccccc">
				<td>
					<strong>#MovieTitle#</strong>
					<br>
					#PitchText#
				</td>
				<td>
					#Dateformat(DateInTheaters)#
				</td>
			</tr>
			<tr>
				<td colspan="2">
					#Summary#
				</td>
			</tr>
		</cfoutput>	
	</table>
</body>
</html>	