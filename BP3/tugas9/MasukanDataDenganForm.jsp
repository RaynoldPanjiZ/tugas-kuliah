<%@ page import="java.sql.*" %>
<!-- Koneksi -->
<%
	Connection con = null;
	String dbname = "jdbc:mysql://localhost/db_buku?serverTimezone=UTC";
	String status = "";

	try {
		Class.forName("com.mysql.jdbc.Driver");
		con = DriverManager.getConnection(dbname,"root","");
		if (con == null)	status = "gagal";
		else	status = "berhasil";
	} catch(ClassNotFoundException ex) {
		status = "Driver Error : " + ex;
	} catch(SQLException ex) {
		status = "gagal karena : " + ex;
	}
%>

<!-- Form Input -->
<form name="form1" method="post" action="">
<table width="50%" border="1">
	<tr>
		<td colspan="2"><strong>FORM INPUT DATABASE</strong></td>
	</tr>
	<tr>
		<td>Nama Buku</td>
		<td><input name="tf_judul" type="text" id="tf_judul" size="50"></td>
	</tr>
	<tr>
		<td width="22%">ID Penerbit</td>
		<td width="78%"><input name="tf_id" type="number" id="tf_id" size="50"></td>
	</tr>
	<tr>
		<td>Harga</td>
		<td><input name="tf_harga" type="number" id="tf_harga"></td>
	</tr>
	<tr>
		<td>Penjualan</td>
		<td><input name="tf_jual" type="number" id="tf_jual"></td>
	</tr>
	<tr>
		<td><input type="submit" name="Submit" value="Submit"></td>
		<td>&nbsp;</td>
	</tr>
</table>
</form>


<!-- Perintah Query -->
<%
	String judul = request.getParameter("tf_judul");
	String id = request.getParameter("tf_id");
	String harga = request.getParameter("tf_harga");
	String jual = request.getParameter("tf_jual");
	
	int isiTabel = 0;
	Statement st = null;
	
	if (request.getParameter("Submit") != null) {
		if ((id != "") && (judul != "") && (harga != "") && (jual != "")) {
			if ((id != null) && (judul != null) && (harga != null) && (jual != null)) {
				try {
					String kueri = "INSERT INTO BUKU(JUDUL_BUKU, ID_PENERBIT, HARGA, PENJUALAN) VALUES ('"+judul+"','"+id+"','"+harga+"',"+jual+")";
					st = con.createStatement();
					isiTabel = st.executeUpdate(kueri);
				} catch(SQLException ex) {
					status = "sql error : " + ex;
				}
				st.close();
				con.close();
				
				if (isiTabel == 1)	out.println("Penambahan data berhasil");
				else	out.println("Penambahan data gagal<br><i>" + status + "</i>");
			}
		} else out.print("Input masih kosong !!");		
	}
	
%>
