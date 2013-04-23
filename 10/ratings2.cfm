<cfquery name="movies" datasource="ows" >
	SELECT MovieTitle, RatingID
	FROM Films
	ORDER BY RatingID, MovieTitle
</cfquery>

<html>
	<title>
		<head>Orange Whip Studios - Movie List</head>
	</title>
	
	<body>
		<h1>Movie List</h1>
		<table>
			<cfoutput query="movies" group="RatingID">
				<tr valign="top">
					<td bgcolor="##000000">
						<font color="##FFFFFF">Rating #RatingID#</font>
					</td>
					<td>
						<cfoutput>
							#MovieTitle#<br>
						</cfoutput>
					</td>
				</tr>
			</cfoutput>
		</table>		
	</body>
</html>