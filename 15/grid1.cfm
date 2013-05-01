<cfinvoke 
	component="ows.15.movies" 
	method="list"  
	returnVariable="movies" >
</cfinvoke>

<cfinclude template="header.cfm">

<cfform>
	<cfgrid name="movieGrid"
			width="400"
			format="html"
			query="movies" />
</cfform>

<cfinclude template="footer.cfm" >