<cfif NOT IsDefined("URL.FilmID")>
	<h1>You did not specify the FilmID</h1>
	<cfabort>
</cfif>	

<cfquery datasource="ows" name="film">
SELECT FilmID, MovieTitle, PitchText,
		AmountBudgeted, RatingID,
		Summary, ImageName, DateInTheaters
FROM Films
WHERE FilmID=#URL.FilmID#
</cfquery>	

<cfquery datasource="ows" name="ratings">
SELECT RatingID, Rating
FROM FilmsRatings
ORDER BY RatingID
</cfquery>	

<cfinclude template="header.cfm">

<cfform action="update3.cfm">
	
<cfoutput>
	<input type="hidden" name="FilmID" value="#Film.FilmID#">
</cfoutput>	

<table algin="center" bgcolor="orange">
	<tr>
		<th colspan="2">
			<font size="1">Update a Movie</font>
		</th>
	</tr>
	<tr>
		<td>
			Movie:
		</td>
		<td>
			<cfinput type="text" 
					 name="MovieTitle"
					 value="#Trim(film.MovieTitle)#"
					 message="Movie Title is required!"
					 requried="Yes" 
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
					 value="#Trim(film.PitchText)#"
					 message="TAG LINE is requried!"
					 required="yes"
					 validateAt="onSubmit,onServer"
					 size="50"
					 maxlength="100" > 
		</td>
	</tr>
	<tr>
		<td>
			Rating:
		</td>
		<td>
			<select name="RatingID">
				<cfoutput query="ratings">
					<option value="#RatingID#"
							<cfif ratings.RatingID IS film.RatingID>
							selected
							</cfif>>#Rating#
							</option>
				</cfoutput>	
			</select>
		</td>
	</tr>
	<tr>
		<td>
			Summary:
		</td>
		<td>
			<cfoutput>
				<textarea name="summary"
						 cols="40"
						 rows="5"
						 wrap="virtual">#Trim(Film.Summary)#</textarea>
			</cfoutput>	
		</td>
	</tr>
	<tr>
		<td>
			Budget:
		</td>
		<td>
			<cfinput type="text" 
					 name="AmountBudgeted"
					 value="#Int(film.AmountBudgeted)#"
					 message="BUDGET must be a valid numeric amount"
					 requried="no"
					 validate="integer"
					 validateAt="onSubmit,onServer"
					 size="20"
					 maxlength="50" > 
		</td>
	</tr>
	<tr>
		<td>
			Release Date:
		</td>
		<td>
			<cfinput type="text" 
					 name="DateInTheaters"
					 value="#DateFormat(film.DateInTheaters,"MM/DD/YYYY")#"
					 message="RELEASE DATE must be a valid date!"
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
					 value="#Trim(film.ImageName)#"
					 required="no"
					 size="20"
					 maxlength="50" > 
		</td>
	</tr>
	<tr>
		<td colspan="2" align="center">
			<input type="submit" value="Update">
		</td>
	</tr>	
</table>	
		
</cfform>
<cfinclude template="footer.cfm" >	