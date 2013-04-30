<cfquery datasource="ows">
UPDATE Films
SET MovieTitle		=	'#Trim(FORM.MovieTitle)#',
	PitchText		=	'#Trim(FORM.PitchText)#',
	AmountBudgeted	=	#FORM.AmountBudgeted#,
	RatingID		=	#FORM.RatingID#,
	Summary			=	'#Trim(FORM.Summary)#',
	ImageName		=	'#Trim(FORM.ImageName)#',
	DateInTheaters	=	#CreateODBCDate(FORM.DateInTheaters)#
WHERE FilmID = #FORM.FilmID#
</cfquery>

<cfinclude template="header.cfm">

<cfoutput>
<h1>Movie '#FORM.MovieTitle#' updated</h1>
</cfoutput>

<cfinclude template="footer.cfm">
	
