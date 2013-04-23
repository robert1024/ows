<cfquery name="movies" datasource="ows" >
	SELECT MovieTitle, PitchText
	From FILMS
	ORDER BY MovieTitle
</cfquery>

<html>
<head>
	<title>Orange Whip Studios - Movie List</title>
</head>
<body>
	<h1>Movie List</h1>
	<ul>
		<cfoutput query="movies">
			<li><strong>#MovieTitle#</strong> - #PitchText#</li>
		</cfoutput>
	</ul>
</body>
</html>