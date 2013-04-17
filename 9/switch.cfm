<html>
	<head>
		<title>Switch</title>
	</head>
	<body>
		<cfset dow=DayofWeek(Now())>
		
		<cfswitch expression="#dow#">
			<cfcase value="1">
				It is the weekend! But make the most of it, tomorrow it’s back to work. 	
			</cfcase>
			<cfcase value="7">
				It is the weekend! And even better, tomorrow is the weekend too!
			</cfcase>
			<cfdefaultcase>
				No, it’s not the weekend yet, sorry!
			</cfdefaultcase>			
		</cfswitch>	 
	</body>
</html>