<cfquery datasource="ows" name="ratings">
SELECT Rating
FROM FilmsRatings
ORDER BY RATING	
</cfquery>

<cfset list=ValueList(ratings.Rating)>

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
			Raiting:
		</td>
		<td>
			<cfinput type="text" 
					 name="Rating"
					 autosuggest="#list#"
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

<cfinclude template="footer.cfm" >