<%
	Cookie cookies[] = request.getCookies();
	String nama = null;
	String nim = null;
	String akses = null;
	if (cookies != null) {
		nama = cookies[1].getValue();
		nim = cookies[2].getValue();
		akses = cookies[3].getValue();
	}
%>

<html>
<head>
	<title>Show Saved Cookie</title>
</head>
<body>
	<%
		if (cookies == null) {
	%>
			Cookie Tidak Ada,
			<a href="index.jsp"> << embali ke form</a>
	<%
		} else {
	%> 
			<p>Welcome: <b><%= nama %></b>. Dengan NIM anda : <b><%= nim %></b></p>
			<p>Anda Mengakses pada: <%= akses %></p>
			<br>
			<a href="hapuscookies.jsp"><BUTTON onclick="return confirm('Apakah anda yakin?')">Hapus cookies?</BUTTON></a>
	<%
		}
	%>
</body>