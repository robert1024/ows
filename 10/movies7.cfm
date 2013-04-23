<cfquery name="movies" datasource="ows" >
	SELECT MovieTitle, PitchText
	FROM Films
	ORDER BY MovieTitle
</cfquery>	

<html>
<head>
	<title>Orange Whip Studios - Movies List</title>
</head>

<body>
	<h1>Movie List</h1>
	
	<table>
		<cfoutput query="movies">
			<!--- set bgcolor based on row --->
			<cfif CurrentRow MOD 2 IS 1>
				<cfset bgcolor="MediumSeaGreen">
			<cfelse>
				<cfset bgcolor="white">	
			</cfif>	
			
			<tr bgcolor="#bgcolor#">
				<td>#MovieTitle#</td>
				<td>#PitchText#</td>
			</tr>	
		</cfoutput>	
	</table>
</body>
</html>