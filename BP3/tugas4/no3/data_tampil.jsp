<html>
<head>
	<title>Data Hasil Pendaftaran Mahasiswa</title>
</head>
<body>


<fieldset style="width: 450px">
	<legend align=center><h2>Data Pendaftaran Mahasiswa</h2></legend>
	<div style="margin-left: 10px">
		<h><b>Nama Anda :</b></h>
		<pre><%= request.getParameter("nama") %></pre><br>
		<h><b>Asal Sekolah :</b></h> 
		<pre><%= request.getParameter("asal_skolah") %></pre><br>
		<h><b>Jurusan :</b></h> 
		<pre><%= request.getParameter("jurusan") %></pre><br>
	</div><br>
</fieldset>
<a href="index.jsp"> << kembali </a>


</body>
</html>

