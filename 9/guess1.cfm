<html>
<head>
 <title>Guess the Number - 1</title>
</head>

<body>

<!--- Pick a random number --->
<cfset RandomNumber=RandRange(1, 10)>

<!--- Check if matched --->
<cfif RandomNumber IS URL.guess>
 <!--- It matched --->
 <cfoutput>
 You got it, I picked #RandomNumber#! Good job!
 </cfoutput>
<cfelse>
 <!--- No match --->
 <cfoutput>
 Sorry, I picked #RandomNumber#! Try again!
 </cfoutput>
</cfif>

</body>
</html>
