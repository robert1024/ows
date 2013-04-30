<cfquery name="ratings" datasource="ows">
SELECT RatingID,Rating
FROM FilmsRatings
ORDER BY RatingID
</cfquery>

<cfinclude template="header.cfm">

<form action="insert2.cfm" method="post">
<table align="center" bgcolor="orange">
	<tr>
		<th colspan="2">
			<font size="1">Add a Movie</font>
		</th>
	</tr>
	<tr>
		<td>
			Movie:
		</td>
		<td>
			<input type="text"
					name="MovieTitle"
					size="50"
					maxlength="100">
		</td>
	</tr>
	<tr>
		<td>
			Tag line:
		</td>
		<td>
			<input type="text"
					name="PitchText"
					size="50"
					maxlength="100"
		</td>
	</tr>
	<tr>
		<td>
			Rating:	
		</td>
		<td>
			<select name="RatingID">
				<cfoutput query="ratings">
					<option value="#RatingID#">#Rating#</option>
				</cfoutput>	
			</select>
		</td>
	</tr>
	<tr>
		<td>
			Summary:
		</td>
		<td>
			<textarea name="summary"
						cols="40"
						rows="5"
						wrap="virtual"></textarea>
		</td>
	</tr>
	<tr>
		<td>
			Budget:
		</td>
		<td>
			<input type="text"
					name="AmountBudgeted"
					size="10"
					maxlength="10">
		</td>
	</tr>
	<tr>
		<td>
			Release Date:
		</td>
		<td>
			<input type="text"
					name="DateInTheaters"
					size="10"
					maxlength="10">
		</td>
	</tr>
	<tr>
		<td>
			Image File:
		</td>
		<td>
			<input type="text"
					name="ImageName"
					size="20"
					maxlength="50">
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="Insert">
		</td>
	</tr>
</table>
</form>
<cfinclude template="footer.cfm">