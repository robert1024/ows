<cfinvoke 
	component="ows.15.movies" 
	method="list"  
	returnVariable="movies" >
</cfinvoke>

<cfinclude template="header.cfm" >

<cfform>
	<cfgrid name="mvoieGrid"
			width="600"
			format="html"
			query="movies" >
		<cfgridcolumn name="FilmID"
					  display="no" >
		<cfgridcolumn name="MovieTitle"
					  header="Title"
					  width="200" >
		<cfgridcolumn name="Rating"
					  header="Rating"
					  width="100" >
		<cfgridcolumn name="Summary"
					  header="Summary"
					  width="400" >
	</cfgrid>
</cfform>

<cfinclude template="footer.cfm" >