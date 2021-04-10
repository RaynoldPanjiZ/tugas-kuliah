<!DOCTYPE html>
<html>
<head>
	<title>Program Pendaftaran Mahasiswa</title>
</head>
<body>
	<!-- Tag standard action untuk mengambil form dari file form.jsp di folder no3 -->
	<!-- Memasukan parameter file data_regist.jsp di direktori ini (direktori no4) -->
	<jsp:include page="../no3/form.jsp">
		<jsp:param name="page" value="data_tampil.jsp" />
	</jsp:include>


	<!-- Menambahkan field set dan select option untuk inputan pilih Prodi, dan menambahkan attribut form="myform" agar inputan dari tag select menjadi bagian dari form "myform" -->
	<fieldset style="width: 450px;">
		<legend><h2>Pilih Prodi dan Fakultas Tujuan</h2></legend>
		<pre><b>Prodi/Fakultas		:</b> <select form="myform" name="prodi">
			<optgroup label="Fakultas Ilmu Komputer">
				<option value="Teknik Informatika">Teknik Informatika</option>
				<option value="Sistem Informatika">Sistem Informatika</option>
				<option value="Desain Komunikasi Visual">Desain Komunikasi Visual</option>
			</optgroup>
			<optgroup label="Fakultas Ilmu Ekonomi">
				<option value="Akuntansi">Akuntansi</option>
				<option value="Manajemen">Manajemen</option>
			</optgroup>
			<optgroup label="Fakultas Keguruan dan Ilmu Pendidikan">
				<option value="Pendidikan Matematika">Pendidikan Matematika</option>
				<option value="Pendidikan Ekonomi">Pendidikan Ekonomi</option>
				<option value="Pendidikan Biologi">Pendidikan Biologi</option>
			</optgroup>
		</select></pre>
	</fieldset>

	<br>
	<input type="Submit" form="myform">
	<input type="reset" form="myform">

</body>
</html>






