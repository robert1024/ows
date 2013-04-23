<cfset FilmID=1>

<cfquery name="movie"
		 datasource="ows"  
		 result="results">
	SELECT FilmID, MovieTitle, PitchText
	FROM Films
	WHERE FilmID=#FilmID#
</cfquery>		 	 

<h1>Dump Returned Query (NAME)</h1>
<cfdump var="#movie#">
<h1>Dump Returned Result (Result)</h1>
<cfdump var="#results#">