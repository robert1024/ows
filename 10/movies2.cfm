<cfquery name="movies" datasource="ows">
	SELECT MovieTitle,PitchText
	FROM Films
	ORDER BY MovieTitle
</cfquery>

<html>
<head>
	<title>Orange Whip Studios - Movie List</title>
</head>
<body>
	<h1>Movie List</h1>
	<cfoutput query="movies">
		<p><strong>#MovieTitle#</strong><br>
		#PitchText#</p>
	</cfoutput>
</body>
</html>