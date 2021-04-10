<!DOCTYPE html>
<html>
<head>
	<title>Input Data</title>
</head>
<body>

	<fieldset style="width: 450px;">
		<legend><h2>Input</h2></legend>
		<form action="tampil.jsp" method="post">
			<pre><b>Masukan Username  :</b> <input type="text" name="nama" required></pre>
			<pre><b>Waktu / TimeZone  :</b> <select name="waktu">
				<option value="Asia/Jakarta">Asia/Jakarta (WIB)</option>
				<option value="Asia/Bangkok">Asia/Bangkok (ICT)</option>
				<option value="Asia/Hong_Kong">Asia/Hong_Kong (HKT)</option>
				<option value="Asia/Singapore">Asia/Singapore (SGT)</option>
				<option value="America/Los_Angeles">America/Los_Angeles (PDT)</option>
				<option value="Australia/Sydney">Australia/Sydney (AEDT)</option>
				<option value="Europe/Amsterdam">Europe/Amsterdam (CEST)</option>
				<option value="Europe/London">Europe/London (GMT)</option>
			</select></pre>
			<br>
			<input type="Submit">
			<input type="reset">
		</form>
	</fieldset>

</body>
</html>