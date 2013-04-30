<cfif NOT IsDefined("FilmID")>
<h1>You did not specify the FilmID</h1>
<cfabort>
</cfif>

<cfquery datasource="ows">
DELETE FROM Films
WHERE FilmID=#FilmID#
</cfquery>

<cfinclude template="header.cfm" >

<h1>Movie deleted</h1>

<cfinclude template="footer.cfm" >