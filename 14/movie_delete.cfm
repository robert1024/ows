<cfif NOT IsDefined("URL.FilmID")>
 <h1>You did not specify the FilmID</h1>
 <cfabort>
</cfif>

<cfinvoke component="movies"
          method="delete"
          filmid="#URL.FilmID#">

<!--- When done go back to movie list --->
<cflocation url="movies.cfm">
