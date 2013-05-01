<cfinclude template="header.cfm" >

<cfform>
<table align="center" bgcolor="orange">
	<tr>
		<th colspan="2">
			<font size="1">Find a Movie</font>
		</th>
	</tr>
	<tr>
		<td>
			Rating:<br>
			<cfselect name="RatingID"
					  bind="cfc:movies.getRatings()"
					  display="Rating"
					  value="RatingID"
					  bindonload="true" >
			</cfselect>
		</td>
		<td>
			Movie:<br>
			<cfselect name="FilmID"
					  bind="cfc:movies.getFilms({RatingID})"
					  display="MovieTitle"
					  bindonload="true" >
					  
			</cfselect>
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="Search">
		</td>
	</tr>
</table>	
</cfform>

<cfinclude template="footer.cfm" >