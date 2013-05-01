<cfinclude template="header.cfm" >

<cfform>
	
<table align="center" bgcolor="orange">
	<tr>
		<th colspan="2">
			<font size="1">Find a movie</font>
		</th>
	</tr>
	<tr>
		<td>
			Movie:
		</td>
		<td>
			<cfinput type="text" 
					 name="MovieTitle"
					 autosuggest="cfc:movies.lookupMovie({cfautosuggestvalue})"
					 size="50"
					 maxlength="100" >
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="Search">
		</td>
	</tr>
</table>
	
</cfform>