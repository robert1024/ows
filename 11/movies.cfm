﻿<cfinvoke 
	component="movies" 
	method="List"
	returnvariable="movies">

<html>
<head>
	<title>Orange Whip Studios - Movie List</title>
</head>
<body>
	<h1>Movie List</h1>
	<table>
		<tr>
			<th colspan="2">
				<font size="+2">
				<cfoutput>
					Movie List(#movies.RecordCount# movies)
				</cfoutput>
				</font>
			</th>
		</tr>
		<cfoutput query="movies">
			<tr bgcolor="##cccccc">
				<td>
					<strong>#CurrentRow#:
					<a href="details3.cfm?FilmID=#URLEncodedFormat(Trim(FilmID))#">#MovieTitle#</a>
					</strong>
					<br>
					#PitchText#
				</td>
				<td>
					#Dateformat(DateInTheaters)#
				</td>
			</tr>
			<tr>
				<td colspan="2">
					#Summary#
				</td>
			</tr>
		</cfoutput>	
	</table>
</body>
</html>	