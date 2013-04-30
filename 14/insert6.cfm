<cfinsert datasource="ows"
		  tablename="FILMS" 
		  formfields="MovieTitle,
		  			  PitchText,
		  			  AmountBudgeted,
		  			  RatingID,
		  			  Summary,
		  			  ImageName,
		  			  DateInTheaters">

<cfinclude template="header.cfm">

<cfoutput>
<h1>New Movie '#FORM.MovieTitle#' added</h1>
</cfoutput>	

<cfinclude template="footer.cfm">