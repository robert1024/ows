<cfquery name="movies" datasource="ows" result="result">
	SELECT MovieTitle, PitchText, Summary, DateInTheaters
	From Films
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
				<h2>
				<cfoutput>
					Movie List(#result.RecordCount# movies)
				</cfoutput>
				</h2>
			</th>
		</tr>
		<cfoutput query="movies">
			<tr bgcolor="##cccccc">
				<td>
					<strong>#CurrentRow#: #MovieTitle#</strong>
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