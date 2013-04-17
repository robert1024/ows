<html>
	<head>
		<title>Loop 3</title>
	</head>
	<body>
		<cfset hex="00,33,66,99,CC,FF">
		
		<table>
			<cfloop index="red" list="#hex#">
				<cfloop index="green" list="#hex#">
				<tr>
					<cfloop index="blue" list="#hex#">
						<cfset rgb=red&green&blue>
						<cfoutput>
						<td bgcolor="###rgb#" width="100" align="center">#rgb#</td>								
						</cfoutput>	
					</cfloop>	
				</tr>
				</cfloop>
			</cfloop>	
		</table>
	</body>
</html>