<cfset EditMode=IsDefined("FORM.FilmID")>

<cfif EDItMode>
<cfupdate datasource="ows" tablename="FILMS" >
<cfset action="updated">
<cfelse>
<cfinsert datasource="ows" tablename="FILMS" >
<cfset action="added">	
</cfif>

<cfinclude template="header.cfm" >

<cfoutput>
	<h1>Movie #FORM.MoiveTitle# #action#</h1>
</cfoutput>

<cfinclude template="footer.cfm" >