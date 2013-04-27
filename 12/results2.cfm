﻿<cfquery name="movies" datasource="ows">
SELECT MovieTitle, PitchText,Summary, DateInTheaters
FROM Films
<cfif FORM.MovieTitle IS NOT "">
WHERE MovieTitle Like '%#FORM.MovieTitle#%'
</cfif>	
<cfif FORM.PitchText IS NOT "">
WHERE PitchText Like '%#FORM.PitchText#%'
</cfif>	
<cfif FORM.RatingID IS NOT "">
WHERE RatingID = #FORM.RatingID#
</cfif>
ORDER BY MovieTitle	
</cfquery>	

<html>
<head>
	<title>Orange Whip Studios - Movies</title>
</head>
<body>
<cfinclude template="header.cfm">
<table border="1">
<tr>
	<cfoutput>
	<th colspan="2">
		<font size="3">Movie List (#Movies.RecordCount# movies)</font>
	</th>
	</cfoutput>	
</tr>
<cfoutput query="movies">
<tr>
	<td>
		<font size="2"><strong>#CurrentRow#: #MovieTitle#</strong></font>
		<font size="1"><em>#PitchText#</em></font>
	</td>
	<td>Released: #DateFormat(DateInTheaters)#</td>
</tr>
<tr>
	<td colspan="2">#Summary#</td>
</tr>	
</cfoutput>	
</table>
</body>
</html>