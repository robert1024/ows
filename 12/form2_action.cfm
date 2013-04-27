<html>
	<head>
		<title>Learning ColdFusion 2</title>
	</head>
	<body>
		<cfoutput>
			Hello,<br>
			You selected <strong>#FORM.PaymentType#</strong> as your payment type.<br>
			<cfif FORM.MailingList IS "Yes">
				You will be added to our mailing list.
			<cfelse>
				You will not be added to our mailing list.	
			</cfif>	
		</cfoutput>
	</body>		
</html>