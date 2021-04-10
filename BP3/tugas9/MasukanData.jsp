<%@ page import="java.sql.*" %>
<%
	Connection con = null;
	String dbname = "jdbc:mysql://localhost/db_buku?serverTimezone=UTC";
	String status = "";
	Statement st = null;

	int isiTabel = 0;
	try {
		// mengkoneksikan ke database
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(dbname,"root","");
		if (con == null)	status = "gagal";
		else	status = "berhasil";

		// memasukan data ke database
		String kueri = "INSERT INTO BUKU"
					+ "(JUDUL_BUKU, ID_PENERBIT, HARGA, PENJUALAN)"
						+ "VALUES"
					+ "('PemrogramanWeb', '111', '27000', '14');";
		st = con.createStatement();
		isiTabel = st.executeUpdate(kueri);
	}catch (ClassNotFoundException ex) {
		status = "Driver Error, <i>" + ex + "</>";
	}catch (SQLException ex) {
		status = "Memasukan data gagal, dengan pesan : <i>" + ex + "</>";
	}
	st.close();
	con.close();
%>

<HTML>
	<HEAD>
		<TITLE>Membuat Tabel</TITLE>
	</HEAD>
	<BODY>
		<!-- Cek status -->
		<%
			if (isiTabel == 1)	out.println("Penambahan data berhasil");
			else	out.println(status);
		%>
		<br><br>
	</BODY>
</HTML>
