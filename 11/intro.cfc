<cfcomponent>

<cffunction name="today" rentruntype="date">
	<cfreturn Now()>
</cffunction>

<cffunction name="tomorrow" returntype="date">
	<cfset result=Dateadd("d",1,Now())>
	<cfreturn result>
</cffunction>

<cffunction name="yesterday" returntype="date" >
	<cfreturn DateAdd("d",-1,Now())>
</cffunction>

<cffunction name="geometry" returntype="struct">
	<cfargument name="radius" type="numeric" required="yes">
	<cfset var result=Structnew()>
	<cfset result.radius=radius>
	<cfset result.circle=structnew()>
	<cfset result.circle.circumference=2*Pi()*radius>
	<cfset result.circle.area=pi()*(radius^2)>
	<cfset result.sphere=structnew()>
	<cfset result.sphere.volume=(4/3)*pi()*(radius^3)>
	<cfset result.sphere.surface=4*result.circle.area>
	<cfreturn result>
</cffunction>
</cfcomponent>