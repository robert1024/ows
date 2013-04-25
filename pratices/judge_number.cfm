<!--- read a number from URL adn check if it is same as random
	  http://localhost/ows/pratices/judge_number.cfm?num=5
 --->


<cfif not IsDefined("URL.num")>
	<cflocation url="http://www.google.com">
</cfif>

<cfset ranNum = RandRange(1,7)>

<cfoutput>
	<cfif ranNum IS URL.num>
		You got it!
	<cfelse>
		NO,you missed it.	
	</cfif>	
</cfoutput>