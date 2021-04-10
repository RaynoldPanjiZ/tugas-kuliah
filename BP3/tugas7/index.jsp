<!DOCTYPE html>
<html>
<head>
	<title>GuestBook</title>
</head>
<body>

	<fieldset style="padding-bottom: 40px; width: 60px">
		<legend><h1>Buku Tamu</h1></legend>
		<form action="tampil.jsp" method="post">
			<table>
				<tr>
					<td class="title">Nama Lengkap :</td>
					<td><input type="text" name="nama" placeholder="Nama Lengkap" required title="Masukan Nama Lengkap" size="55"></td>
				</tr>
				<tr>
					<td class="title">Alamat Email :</td>
					<td><input type="email" name="email" placeholder="username@uniku.ac.id" pattern=".+@uniku.ac.id" required title="Masukan email kampus !!" size="55"></td>
				</tr>
				<tr>
					<td colspan="2" class="title">Pesan :<br><textarea name="pesan" required cols="80" rows="8"></textarea></td>
				</tr>
				<tr>
					<td><input type="submit"></td>
					<td><input type="reset"></td>
				</tr>
			</table>
		</form>
	</fieldset>

</body>
</html>

<style type="text/css">
	table{
		margin: 20px;
	}
	td.title{
		font-weight: bold;
	}
	input{
		margin: 5px
	}
</style>

