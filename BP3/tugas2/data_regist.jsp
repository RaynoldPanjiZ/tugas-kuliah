<html>
<head>
	<title>data hasil register</title>
</head>
<body>

<% if (request.getParameter("pass").equals(request.getParameter("pass_conf"))) { %>

<fieldset style="width: 450px">
	<legend align=center><h2>data register</h2></legend>
	<div style="margin-left: 10px">
		<h><b>Nama Anda :</b></h>
		<pre><%= request.getParameter("nama") %></pre><br>
		<h><b>Email Anda :</b></h> 
		<pre><%= request.getParameter("email") %></pre><br>
		
		<h><b>Tempat/Tanggal Lahir	:</b></h> 
		<pre><%= request.getParameter("temp") + ", " + request.getParameter("tgl") %></pre><br>
		<h><b>Asal Sekolah :</b></h> 
		<pre><%= request.getParameter("asal_skolah") %></pre><br>
		<h><b>Jurusan :</b></h> 
		<pre><%= request.getParameter("jurusan") %></pre><br>
	</div><br>
</fieldset>
<a href="index.jsp"> << kembali </a>

<% } else {
	// redirect ke index.jsp jika pass dan pass_conf tidak sama
	response.sendRedirect("index.jsp?message=error_pass_not_match");
} %>

</body>
</html>

