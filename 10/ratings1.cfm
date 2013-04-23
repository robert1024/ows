<cfquery name="movies" datasource="ows">
	SELECT MovieTitle, RatingID
	FROM Films
	ORDER BY RatingID,MovieTitle
</cfquery>

<html>
	<head>
		<title>Orange Whip Studios - Movie List</title>
	</head>
	<body>
		<h1>Movie List</h1>
		<ul>
			<cfoutput query="movies" group="RatingID">
				<li>#RatingID#</li>
				<ul>
					<cfoutput>
						<li>#MovieTitle#</li>
					</cfoutput>	
				</ul>
			</cfoutput>		
		</ul>
	</body>
</html>