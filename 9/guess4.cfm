<html>
	<head>
		<title>Guess the number -4</title>
	</head>
	<body>
		<cfset GuessLow=1>
		<cfset GuessHigh=10>
		
		<cfset RandomNumber=RandRange(GuessLow,GuessHigh)>
		<cfset HaveGuess=IsDefined("URL.guess")>
		
		<cfset Match=(HaveGuess) AND (RandomNumber IS URL.guess)>
		
		<cfoutput>
			<cfif match>
				You got it, I picked #RandomNumber#! Good job!
			<cfelseif HaveGuess>
				Sorry, I picked #RandomNumber#! Try again!
			<cfelse>
				You did not guess a number.<BR>
				To guess a number, reload this page adding
				<B>?guess=n</B> (where n is the guess, for
				example, ?guess=5). Number should be between
				#GuessLow# and #GuessHigh#.	
			</cfif>	
		</cfoutput>
	</body>
</html>