<cfset list_page="movies.cfm">

<cfif not IsDefined("URL.filmid")>
	<cflocation url="#list_page#">
</cfif>

<cfinvoke
	component="movies" 
	method="GetDetails"
	returnvariable="movie"
	FilmID="#URL.FilmID#" >

<cfquery name="movie" datasource="ows" result="result">
	SELECT FilmID, MovieTitle,
		PitchText, Summary,
		DateInTheaters, AmountBudgeted
	FROM Films
	WHERE FilmID=#URL.FilmID#
</cfquery>

<cfif result.RecordCount IS 0>
	<cflocation url="#list_page#">
</cfif>

<cfset image_src="../images/f#movie.FilmID#.gif">
<cfset image_path=ExpandPath(image_src)>

<html>
	<head>
		<title>Orange Whip Studios - Movie Details</title>
	</head>
	
	<body>
		<cfoutput query="movie">
			<table>
				<tr>
					<td colspan="2">
					<cfif Fileexists(image_path)>
							<img src="#image_src#"
							alt="#movietitle#"
							align="middle">
					</cfif>	
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
			
			<p>
			
			[<a href="#list_page#">Movie List</a>]
		</cfoutput>
	</body>
</html>