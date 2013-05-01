<cfinclude template="header.cfm" >

<cfform>

<table>
	<tr align="top">
		<td>
			<cfgrid name="movieGrid"
					width="300"
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
							  width="200">
				<cfgridcolumn name="Rating"
							  header="Rating"
							  width="100">
				<cfgridcolumn name="Summary"
							  display="no" >			
			</cfgrid>
		</td>
		<td>
			<cftextarea name="summary" rows="15" cols="50"
						bind="{movieGrid.summary}" >
				
			</cftextarea>
		</td>
	</tr>
</table>
	
</cfform>