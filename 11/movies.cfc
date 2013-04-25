<cfcomponent>

	<cffunction name="List" access="package" returntype="query">
		<cfset var movies="">
		<cfquery name="movies" datasource="ows" >
			SELECT FilmID, MovieTitle, PitchText,
					Summary, DateInTheaters
			FROM	Films
			ORDER BY MovieTitle
		</cfquery>
		<cfreturn movies>	 
	</cffunction>

	<cffunction name="GetDetails" access="package" returntype="query">
		<cfargument name="FilmID" type="numeric" required="false" />
		<cfset var movie="">
		<cfquery name="movie" datasource="ows">
			SELECT FilmID, MovieTitle
					PithchText, Summary,
					DateInTheaters, AmountBudgeted
			FROM	Films
			WHERE	FilmID=#ARGUMENTS.FilmID#
		</cfquery>	
		<cfreturn movie>
	</cffunction>

</cfcomponent>