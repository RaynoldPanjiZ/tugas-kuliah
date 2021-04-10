<!DOCTYPE html>
<html>
<head>
	<title>Program Pendaftaran Mahasiswa</title>
</head>
<body>
	<!-- tag Standart action untuk mengambil form inputan dari form "myform" -->
	<!-- Membuat parameter untuk melakukan redirecting ke data_regist.jsp untuk digunakan pada ${param.page} pada atribut action tersebut pada form -->
	<jsp:include page="form.jsp">
		<jsp:param name="page" value="data_tampil.jsp" /> 
	</jsp:include>
	<br>
	<input type="Submit" form="myform">
	<input type="reset" form="myform">
</body>
</html>





