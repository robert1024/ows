<cfquery name="movies" datasource="ows">
SELECT MovieTitle
From Films
ORDER BY MovieTitle
</cfquery>	

<html>
<head>
	<title>Orange Whip Studios - Movie List</title>
</head>
<body>
	<h1>Movie List</h1>
	<cfoutput query="movies">
		#MovieTitle#<br>
	</cfoutput>
</body>
</html>