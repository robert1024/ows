<cfquery datasource="ows">
INSERT INTO Films(MovieTitle,
				  PITCHTEXT,
				  AMOUNTBUDGETED,
				  RATINGID,
				  SUMMARY,
				  IMAGENAME,
				  DATEINTHEATERS)
VALUES('#Trim(FORM.MovieTitle)#',
	   '#Trim(FORM.PitchText)#',
	   #FORM.AmountBudgeted#,
	   #FORM.RatingID#,
	   '#Trim(FORM.Summary)#',
	   '#Trim(FORM.ImageName)#',
	   #CreateODBCDate(FORM.DateInTheaters)#)	
</cfquery>

<cfinclude template="header.cfm">

<cfoutput>
<h1>New Movie '#FORM.MovieTitle#' added</h1>
</cfoutput>	

<cfinclude template="footer.cfm">