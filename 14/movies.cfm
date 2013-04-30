<cfinvoke 
	component="ows.14.movies" 
	method="list"  
	returnVariable="movies" >
</cfinvoke>

<cfinclude template="header.cfm">

<table align="center" bgcolor="orange">
	<cfoutput query="movies">
		<tr>
			<td><strong>#MovieTitle#</strong></td>
			<td>
				[<a href="movie_edit.cfm?FilmID=#FilmID#">Edit</a>]
			</td>
			<td>
				[<a href="movie_delete.cfm?FilmID=#FilmID#">Delete</a>]
			</td>
		</tr>
	</cfoutput>
	<tr>
		<td></td>
		<td colspan="2" align="center">
			[<a href="movie_edit.cfm">Add</a>]
		</td>
	</tr>
</table>

<cfinclude template="footer.cfm" >