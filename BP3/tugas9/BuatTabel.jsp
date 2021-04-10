<%@ page import="java.sql.*" %>

<!-- Koneksi ke database  -->
<%
	Connection con = null;
	// String dbname="jdbc:odbc:db_buku";
	String dbname = "jdbc:mysql://localhost/db_buku"; 
	String timezoneparam = "?serverTimezone=UTC";
	String status1 = "";
	
	try {
		// Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(dbname+timezoneparam,"root","");
		if (con == null) status1 = "gagal koneksi kosong";
		else status1 = "berhasil";
	} catch(ClassNotFoundException ex) {
		status1 = "Driver Error : " + ex;
	} catch(SQLException ex) {
		status1 = "gagal karena : " + ex;
	}
%>


<!-- Melakukan query -->
<%
	String status2 = "";
	Statement st = null;
	String kueri = null;
	int hasil = -1;
	try { 
		st = con.createStatement();
		kueri = "CREATE TABLE BUKU("
					+ "JUDUL_BUKU VARCHAR(40),"
					+ "ID_PENERBIT INTEGER,"
					+ "HARGA REAL,"
					+ "PENJUALAN INTEGER"
				+ ")";
		hasil = st.executeUpdate(kueri);
	} catch(SQLException ex) {
		status2 = "gagal dibuat : " + ex;
	}
	st.close();
	con.close();
%>
	

<HTML>
	<HEAD>
		<TITLE>Membuat Tabel</TITLE>
	</HEAD>
	<BODY>
	
		<h3>Koneksi ke database <%=dbname%> <i><%=status1%></i></h3>

		<!-- Cek hasil query -->
		<%
			if (hasil == -1) out.println("Tabel BUKU " + status2);
			else out.println("Tabel BUKU berhasil dibuat " + status2);
		%>
	</BODY>
</HTML>