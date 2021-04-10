<title>Tampil Data</title>

<body>
	<!-- import library yang dibutuhkan -->
	<%@ page import="java.util.Date"%>
	<%@ page import="java.text.SimpleDateFormat"%>
	<%@ page import="java.text.DateFormat"%>
	<%@ page import="java.util.TimeZone"%>

	<!-- Deklarasi variabel date untuk waktu saat ini dengan tipe Date() -->
	<%! Date date = new Date(); %>

	<!-- Format waktu tanggal dan jam-->
	<%!
        DateFormat format_tgl = new SimpleDateFormat("dd MMMM yyyy");
        DateFormat format_jam = new SimpleDateFormat("HH:mm:ss z");
    %>
    
    <!-- Set TimeZone berdasarkan request parameternya -->
    <%    
        format_tgl.setTimeZone(TimeZone.getTimeZone(request.getParameter("waktu")));
        format_jam.setTimeZone(TimeZone.getTimeZone(request.getParameter("waktu")));

        String tanggal = format_tgl.format(date);
        String jam = format_jam.format(date);
    %>

<fieldset style="width: 450px">
	<legend align=center><h2>Data Tampil</h2></legend>
	<div style="margin: 10px">
		<h><b>User Name :</b></h>
		<p style="margin-left: 20px; margin-right: 30px"><%= request.getParameter("nama") %></p><br>
		
		<hr>
		<h3><b>Tanggal/Waktu Berdasarkan TimeZone Anda :</b></h3>
		<hr><br>
		<div>
			<div align="center">
				<h><b>TimeZone :</b></h>
				<pre><%= request.getParameter("waktu") %></pre><br>
			</div>

			<div align="center" style="float: left; margin-left: 30px">
				<h><b>Tanggal :</b></h> 
				<pre><%= tanggal %></pre><br>
			</div>
			
			<div align="center" style="float: right; margin-right: 30px">
				<h><b>Waktu :</b></h> 
				<pre><%= jam %></pre><br>
			</div>
		</div>
	</div><br>
</fieldset>
</body>