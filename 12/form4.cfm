<html>
	<head>
		<title>Learning ColdFusion Forms 4</title>
	</head>
	<body>
		<form action="form3_action.cfm" method="post">
			Please fill in this form and then click <strong>Process</strong>
			<p>
				Payment type:<br>
				<select name="PaymentType">
					<option value="Cash">Cash</option>
					<option value="Check">Check</option>
					<option value="Credit card">Credit Card</option>
					<option value="P.O.">P.O.</option>					
				</select>
			</p>
			<p>
				Would you like to be added to our mailing list?
				<input type="checkbox" name="MailingList" value="Yes">
			</p>
			<p>
				<input type="submit" value="Process">
			</p>
		</form>
	</body>
</html>