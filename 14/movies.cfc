<cfcomponent hint="OWS movie database access">

 <cfset ds="ows">

 <cffunction name="list"
             returntype="query"
             hint="List all movies">

  <cfquery datasource="#ds#"
           name="movies">
  SELECT FilmID, MovieTitle
  FROM Films
  ORDER BY MovieTitle
  </cfquery>
  <cfreturn movies>
  
 </cffunction>

 <cffunction name="get"
             returntype="query"
             hint="Get movie details">
  <cfargument name="FilmID"
              type="numeric"
              required="yes"
              hint="Movie ID">

  <cfquery datasource="#ds#"
           name="movie">
  SELECT FilmID, MovieTitle,
         PitchText, AmountBudgeted,
         RatingID, Summary,
         ImageName, DateInTheaters
  FROM Films
  WHERE FilmID=#ARGUMENTS.FilmID#
  </cfquery>
  <cfreturn movie>
  
 </cffunction>


 <cffunction name="add"
             returntype="boolean"
             hint="Add a movie">
  
  <cfargument name="MovieTitle"
              type="string"
              required="yes"
              hint="Movie title">
  <cfargument name="PitchText"
              type="string"
              required="yes"
              hint="Movie tag line">
  <cfargument name="AmountBudgeted"
              type="numeric"
              required="yes"
              hint="Projected movie budget">
  <cfargument name="RatingID"
              type="numeric"
              required="yes"
              hint="Movie rating ID">
  <cfargument name="Summary"
              type="string"
              required="yes"
              hint="Movie summary">
  <cfargument name="DateInTheaters"
              type="date"
              required="yes"
              hint="Movie release date">
  <cfargument name="ImageName"
              type="string"
              required="no"
              default=""
              hint="Movie image file name">

  <cfquery datasource="#ds#">
  INSERT INTO Films(MovieTitle,
                    PitchText,
                    AmountBudgeted,
                    RatingID,
                    Summary,
                    ImageName,
                    DateInTheaters)
  VALUES('#Trim(ARGUMENTS.MovieTitle)#',
         '#Trim(ARGUMENTS.PitchText)#',
         #ARGUMENTS.AmountBudgeted#,
         #ARGUMENTS.RatingID#,
         '#Trim(ARGUMENTS.Summary)#',
         '#Trim(ARGUMENTS.ImageName)#',
         #CreateODBCDate(ARGUMENTS.DateInTheaters)#)
  </cfquery>
  <cfreturn true>

 </cffunction>

 
 <cffunction name="update"
             returntype="boolean"
             hint="Update a movie">
  <cfargument name="FilmID"
              type="numeric"
              required="yes"
              hint="Movie ID">
  <cfargument name="MovieTitle"
              type="string"
              required="yes"
              hint="Movie title">
  <cfargument name="PitchText"
              type="string"
              required="yes"
              hint="Movie tag line">
  <cfargument name="AmountBudgeted"
              type="numeric"
              required="yes"
              hint="Projected movie budget">
  <cfargument name="RatingID"
              type="numeric"
              required="yes"
              hint="Movie rating ID">
  <cfargument name="Summary"
              type="string"
              required="yes"
              hint="Movie summary">
  <cfargument name="DateInTheaters"
              type="date"
              required="yes"
              hint="Movie release date">
  <cfargument name="ImageName"
              type="string"
              required="no"
              default=""
              hint="Movie image file name">

  <cfquery datasource="#ds#">
  UPDATE Films
  SET MovieTitle='#Trim(ARGUMENTS.MovieTitle)#',
      PitchText='#Trim(ARGUMENTS.PitchText)#',
      AmountBudgeted=#ARGUMENTS.AmountBudgeted#,
      RatingID=#ARGUMENTS.RatingID#,
      Summary='#Trim(ARGUMENTS.Summary)#',
      ImageName='#Trim(ARGUMENTS.ImageName)#',
      DateInTheaters=#CreateODBCDate(ARGUMENTS.DateInTheaters)#
  WHERE FilmID=#ARGUMENTS.FilmID#
  </cfquery>
  <cfreturn true>

 </cffunction>
 
 
 <cffunction name="delete"
             returntype="boolean"
             hint="Delete a movie">
  <cfargument name="FilmID"
              type="numeric"
              required="yes"
              hint="Movie ID">

  <cfquery datasource="#ds#">
  DELETE FROM Films
  WHERE FilmID=#ARGUMENTS.FilmID#
  </cfquery>
  <cfreturn true>
  
 </cffunction>


 <cffunction name="getRatings"
             returntype="query"
             hint="Get movie ratings list">

  <cfquery datasource="#ds#"
           name="ratings">
  SELECT RatingID, Rating
  FROM FilmsRatings
  ORDER BY RatingID
  </cfquery>
  <cfreturn ratings>

 </cffunction>


</cfcomponent>