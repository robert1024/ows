<html>
<head>
 <title>If 3</title>
</head>

<body>

<!--- Is it the weekend? --->
<cfif (DayOfWeek(Now()) IS 1) OR (DayOfWeek(Now()) IS 7)>
 <!--- Yes it is, great! --->
 It is the weekend, yeah!
<cfelse>
 <!--- No it is not :-( --->
 No, it's not the weekend yet, sorry!
</cfif>

</body>
</html>
