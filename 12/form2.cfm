<!---
	Using Check Boxes and Radio Buttons.
--->

<html>
	<head>
		<title>Learning ColdFusion 2</title>
	</head>
	<body>
		<form action="form2_action.cfm" method="post">
			<p>
				Payment type:<br>
				<input type="radio" name="PaymentType" value="Cash">Cash<br>
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