<cfquery name="ratings" datasource="ows">
SELECT RatingID,Rating
FROM FilmsRatings
ORDER BY RatingID
</cfquery>

<cfinclude template="header.cfm">

<cfform action="insert4.cfm">

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
			<cfinput type="text"
					 name="MovieTitle"
					 message="Movie Title is required!"
					 required="yes"
					 validateAt="onSubmit,onServer" 
					 size="50"
					 maxlength="100">
		</td>
	</tr>
	<tr>
		<td>
			Tag line:
		</td>
		<td>
			<cfinput type="text"
					name="PitchText"
					message="Tag Line is requried!"
					required="yes"
					validateAt="onSubmit,onServer"
					size="50"
					maxlength="100">
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
			<cfinput type="text"
					 name="AmountBudgeted"
					 message="BUDGET must be a valid numeric amount"
					 requried="no"
					 validate="integer"
					 validateAt="onSubmit,onServer"
					 size="10"
					 maxlength="10">
		</td>
	</tr>
	<tr>
		<td>
			Release Date:
		</td>
		<td>
			<cfinput type="text"
					 name="DateInTheaters"
					 message="Release date must be a valid date!"
					 required="no"
					 validate="date"
					 validateAt="onSubmit,onServer"
					 size="10"
					 maxlength="10">
		</td>
	</tr>
	<tr>
		<td>
			Image File:
		</td>
		<td>
			<cfinput type="text"
					 name="ImageName"
					 required="no"
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
</cfform>
<cfinclude template="footer.cfm">