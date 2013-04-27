<cfparam name="MailingList" default="No">
<html>
	<head>
		<title>Learning ColdFusion 3</title>
	</head>
	<body>
		<cfoutput>
			Hello,<br>
			You selected <strong>#FORM.PaymentType#</strong> as your payment type.<br>
			<cfif MailingList IS "Yes">
				You will be added to our mailing list.
			<cfelse>
				You will not be added to our mailing list.	
			</cfif>	
		</cfoutput>
	</body>		
</html>