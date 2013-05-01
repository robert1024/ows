<cfinclude template="header.cfm" >

<cfform>
<cfgrid name="movieGrid"
		width="600"
		format="html"
		pagesize="10"
		striperows="yes"
		bind="cfc:movies.browse({cfgridpage},
							   {cfgridpagesize},
							   {cfgridsortcolumn},
							   {cfgridsortdirection})">
		<cfgridcolumn name="FilmID"
					  display="no">
		<cfgridcolumn name="MovieTitle"
					  header="Title"
					  width="20">
		<cfgridcolumn name="Rating"
					  header="Rating"
					  width="100">
		<cfgridcolumn name="Summary"
					  header="Summary"
					  width="400" >
	
</cfgrid>
</cfform>