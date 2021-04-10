<!DOCTYPE html>
<html>
<head>
	<title>Program Register</title>
</head>
<body>
	<fieldset style="width: 450px;">
		<legend><h2>Form Register</h2></legend>
		<form action="data_regist.jsp" method="post">
			<pre><b>Nama Lengkap		:</b> <input type="text" name="nama" required> </pre>
			<pre><b>Email			:</b> <input type="text" name="email" required></pre>
			<pre><b>Temp/Tgl Lahir		:</b> <input type="text" name="temp" style="width: 60px" placeholder="Tempat" required>, <input type="date" name="tgl" required></pre>
			<pre><b>Asal Sekolah		:</b> <input type="text" name="asal_skolah" required></pre>
			<pre><b>Jurusan			:</b> <select name="jurusan">
				<option value="Teknik Informatika">Teknik Informatika</option>
				<option value="Sistem Informatika">Sistem Informatika</option>
				<option value="Desain Komunikasi Visual">Desain Komunikasi Visual</option>
			</select></pre>
			<br>
			<pre><b>Password		:</b> <input type="password" name="pass" required></pre>
			<pre><b>Confirm Password	:</b> <input type="password" name="pass_conf" required></pre>
			<br>
			<input type="Submit">
			<input type="reset">
		</form>
	</fieldset>
</body>
</html>

<!-- Mengambil parameter url -->
<script type="text/javascript">
	const queryString = window.location.search;
	const urlParams = new URLSearchParams(queryString);
	if (urlParams.get('message') == 'error_pass_not_match') {
		alert('Password Tidak sama!!');
	} 
</script>




