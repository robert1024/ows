<html>
	<head>
		<title>Learning ColdFusion 3</title>
	</head>
	<body>
		<form action="form3_action.cfm" method="post">
			<p>
				Payment type:<br>
				<input type="radio" name="PaymentType" value="Cash" checked>Cash<br>
				<input type="radio" name="PaymentType" value="Check">Check<br>
				<input type="radio" name="PaymentType" vaule="Credit Car">Credit card<br>
				<input type="radio" name="PaymentType" value="P.O.">P.O.<br>
			</p>
			<p>
				Would you like to be added to your mailing list?
				<input type="checkbox" name="MailingList" value="Yes">
			</p>
			<p>
				<input type="submit" value="Process">
			</p>
		</form>
	</body>
</html>