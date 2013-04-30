<cfset EditMode=IsDefined("URL.FilmID")>

<cfif EditMode>

 <cfquery datasource="ows" name="film">
 SELECT FilmID, MovieTitle, PitchText,
        AmountBudgeted, RatingID,
        Summary, ImageName, DateInTheaters
 FROM Films
 WHERE FilmID=#URL.FilmID#
 </cfquery>

 <cfset MovieTitle=Trim(film.MovieTitle)>
 <cfset PitchText=Trim(film.PitchText)>
 <cfset AmountBudgeted=Int(film.AmountBudgeted)>
 <cfset RatingID=film.RatingID>
 <cfset Summary=Trim(film.Summary)>
 <cfset ImageName=Trim(film.ImageName)>
 <cfset DateInTheaters=DateFormat(film.DateInTheaters, "MM/DD/YYYY")>
 
 <cfset FormTitle="Update a Movie">
 <cfset ButtonText="Update">
 
<cfelse>

 <cfset MovieTitle="">
 <cfset PitchText="">
 <cfset AmountBudgeted="">
 <cfset RatingID="">
 <cfset Summary="">
 <cfset ImageName="">
 <cfset DateInTheaters="">

 <cfset FormTitle="Add a Movie">
 <cfset ButtonText="Insert">

</cfif>

<cfquery datasource="ows" name="ratings">
SELECT RatingID, Rating
FROM FilmsRatings
ORDER BY RatingID
</cfquery>

<cfinclude template="header.cfm">

<cfform action="edit2.cfm">

<cfif EditMode>
 <cfinput type="hidden" name="FilmID" value="#Film.FilmID#">
</cfif>

<table align="center" bgcolor="orange">
 <tr>
  <th colspan="2">
   <cfoutput>
   <font size="+1">#FormTitle#</font>
   </cfoutput>
  </th>
 </tr>
 <tr>
  <td>
   Movie:
  </td>
  <td>
   <cfinput type="Text"
            name="MovieTitle"
            value="#MovieTitle#"
            message="MOVIE TITLE is required!"
            required="Yes"
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
   <cfinput type="Text"
            name="PitchText"
            value="#PitchText#"
            message="TAG LINE is required!"
            required="Yes"
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
     <option value="#RatingID#" <cfif ratings.RatingID IS VARIABLES.RatingID>selected</cfif>>#Rating#</option>
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
             wrap="virtual">#Summary#</textarea>
   </cfoutput>
  </td>
 </tr>
 <tr>
  <td>
   Budget:
  </td>
  <td>
   <cfinput type="Text"
            name="AmountBudgeted"
            value="#AmountBudgeted#"
            message="BUDGET must be a valid numeric amount!"
            required="NO"
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
   <cfinput type="Text"
            name="DateInTheaters"
            value="#DateInTheaters#"
            message="RELEASE DATE must be a valid date!"
            required="NO"
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
   <cfinput type="Text"
            name="ImageName"
            value="#ImageName#"
            required="NO"
            size="20"
            maxlength="50">
  </td>
 </tr>
 <tr>
  <td colspan="2" align="center">
   <cfoutput>
   <input type="submit" value="#ButtonText#">
   </cfoutput>
  </td>
   </tr>
</table>

</cfform>

<cfinclude template="footer.cfm">
