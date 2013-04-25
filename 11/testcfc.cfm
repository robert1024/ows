<h1>Testing intro.cfc</h1>

<cfinvoke component="intro"
		  method="today"
		  returnvariable="todayRet">

<cfinvoke 
	component="ows.11.intro" 
	method="tomorrow"  
	returnVariable="tomorrowRet" >
</cfinvoke>

<cfinvoke 
	component="ows.11.intro" 
	method="geometry"  
	returnVariable="geometryRet" >
	<cfinvokeargument name="radius" value="10" />
</cfinvoke>


<cfoutput>
	Today is #dateformat(todayRet)#<br>
	Tomorrow is #dateformat(tomorrowRet)#<br>
</cfoutput>

<cfdump var="#geometryRet#">

