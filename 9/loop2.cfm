<html>
	<head>
		<title>Loop 2</title>
	</head>
	<body>
		<cfset fruit="apple,banana,cherry,grape,mango,orange,pineapple">
		
		<u1>
			<cfloop list="#fruit#" index="i">
				<cfoutput><li>#i#</li></cfoutput>
			</cfloop>	
		</u1>
	</body>
</html>