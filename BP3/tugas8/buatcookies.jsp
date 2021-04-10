<%@ page language="java" import="java.util.*"%>
<html>
	<head>
		<title>Cookie</title>
	</head>
	<body>
		<%
			Cookie cNama = new Cookie("nama","Raynold Panji Zulfiandi" );
			Cookie cNim = new Cookie("nim","20180810078" );
			Date now = new Date();
			Cookie cAkses = new Cookie("akses",now.toString() );

			response.addCookie(cNama);
			response.addCookie(cNim);
			response.addCookie(cAkses);
		%>
		<p>Anda berhasil login !!</p>
		<p><a href="tampilcookie.jsp">Cek Cookies >></a><p>
	</body>
</html>