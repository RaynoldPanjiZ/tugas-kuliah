<!-- Import Library java.util -->
<%@page import="java.util.*" %>


<!-- Deklarasi -->
<%!
	int years = Calendar.getInstance().get(Calendar.YEAR); //mengambil Tahun untuk menentukan prefix NIM
	
	Random rd = new Random(); // Deklarasi object Random untuk menciptakan nilai acak

	int id = 10000000 + rd.nextInt(900000); // menentukan id id atau index NIM dengan 8 digit dengan batasan hingga 899999
	
	String kls = "ABCDE"; // Menentukan batasan kelas A s/d E
	char letter = kls.charAt(rd.nextInt(kls.length())); // Mengambil salah satu karakter dari variabel ksl, kemudian diambil secara acak dengan batasan jumlahnya
%>

<html>
<head>
	<title>Data hasil register</title>
</head>
<body>

	<a href="index.jsp"> << kembali </a>
	<fieldset style="float: left;  width: 450px; margin-left: 100px; margin-top: 100px">
		<legend align=center><h2>Asal sekolah</h2></legend>
		<div style="margin-left: 10px">
			<h><b>Nama Anda :</b></h>
			<pre><%= request.getParameter("nama") %></pre><br>
			<h><b>Asal Sekolah :</b></h> 
			<pre><%= request.getParameter("asal_skolah") %></pre><br>
			<h><b>Jurusan :</b></h> 
			<pre><%= request.getParameter("jurusan") %></pre><br>
		</div><br>
	</fieldset>
	<fieldset style=" width: 450px; float: right; margin-right: 100px; margin-top: 50px">
		<legend align=center><h2>Registrasi Calon Mahasiswa</h2></legend>
		<div style="margin-left: 10px">
			<h><b>NIM Anda :</b></h>
			<!-- mencetak NIM dengan awalan tahun pendaftaran dan akhiran bernilai acak -->
			<pre><%= years + "" + id %></pre><br> 
			<h><b>Nama Anda :</b></h>
			<pre><%= request.getParameter("nama") %></pre><br>
			<h><b>Kelas :</b></h> 
			<!-- Mencetak Kelas dengan Awalan Dari Prodi dan Akhiran berupa Karakter Acak dari variabel kls -->
			<pre><%= request.getParameter("prodi") + " " + letter %></pre><br>
			<h><b>Prodi :</b></h> 
			<pre><%= request.getParameter("prodi") %></pre><br>
		</div><br>
	</fieldset>

</body>
</html>




