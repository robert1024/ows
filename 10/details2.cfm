<cfif not IsDefined("URL.filmid")>
	<cflocation url="movies6.cfm">
</cfif>

<cfquery name="movie" datasource="ows">
	SELECT FilmID, MovieTitle,
		PitchText, Summary,
		DateInTheaters, AmountBudgeted
	FROM Films
	WHERE FilmID=#URL.FilmID#
</cfquery>

<html>
	<head>
		<title>Orange Whip Studios - Movie Details</title>
	</head>
	
	<body>
		<cfoutput query="movie">
			<table>
				<tr>
					<td colspan="2">
					<img src="../images/f#filmid#.gif"
							alt="#movietitle#"
							align="middle">
					<strong>#MovieTitle#</strong>
					</td>
				</tr>
				<tr valign="top">
					<th align="right">Tag line:</th>
					<td>#PitchText#</td>
				</tr>
				<tr valign="top">
					<th align="right">Summary:</th>
					<td>#Summary#</td>
				</tr>
				<tr valign="top">
					<th align="right">Released:</th>
					<td>#Dateformat(DateInTheaters)#</td>
				</tr>
				<tr valign="top">
					<th align="right">Budget:</th>
					<td>#DollarFormat(AmountBudgeted)#</td>
				</tr>
			</table>
		</cfoutput>
	</body>
</html>
	