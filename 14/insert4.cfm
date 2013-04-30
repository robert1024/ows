<cfinsert datasource="ows"
		  tablename="FILMS" 
		  >

<cfinclude template="header.cfm">

<cfoutput>
<h1>New Movie '#FORM.MovieTitle#' added</h1>
</cfoutput>	

<cfinclude template="footer.cfm">