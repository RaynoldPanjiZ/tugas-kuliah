<!-- Form awal dengan fieldset -->
	<fieldset style="width: 450px;">
		<legend><h2>Form Pendaftaran Mahasiswa</h2></legend>
		<!-- 
			Pada tag form, ${param.page} pada attribut action sama halnya dengan request.getParameter() pada jsp.
			Gunanya untuk mengambil parameter yang diinputkan di index.jsp
		 -->
		<form action=${param.page} method="post" id="myform"> 
			<pre><b>Nama Lengkap		:</b> <input type="text" name="nama" required> </pre>
			<pre><b>Sekolah/Jurusan		:</b> <select id="my-select" name="jurusan">
				<option disabled selected>--- Sekolah - Jurusan ---</option>
				<optgroup label="Sekolah Menengah Atas">
					<option value="SMA - IPA">SMA - IPA</option>
					<option value="SMA - IPS">SMA - IPS</option>
					<option value="lainSMA">Lainnya..</option>
				</optgroup>
				<optgroup label="Madrasah Aliyah">
					<option value="MA - IPA">MA - IPA</option>
					<option value="MA - IPS">MA - IPS</option>
					<option value="lainMA">Lainnya..</option>
				</optgroup>
				<optgroup label="Sekolah Menengah Kejuruan">
					<option value="SMK - TKJ">SMK - TKJ</option>
					<option value="SMK - RPL">SMK - RPL</option>
					<option value="SMK - Otomotif">SMK - Otomotif</option>
					<option value="lainSMK">Lainnya..</option>
				</optgroup>
			</select>	<input type="text" id="lainnya" name="jurusan" style="visibility: hidden;" placeholder="Masukan Jurusan" pattern="[A-Z]{2,3} - [a-zA-Z_ ]*" title="Format Input harus eq: [SMA - IPA]" ></pre>
			<!-- attribut pattern digunakan untuk menentukan ekspresi reguler yg berguna untuk menentukan batasan pada inputannya -->
			<pre><b>Asal Sekolah		:</b> <input type="text" id="asal" name="asal_skolah" style="visibility: hidden;" pattern="[A-Z]{2,4}[\s]+[a-zA-Z0-9_ ]+" title="Format Input harus eq: [SMAN 1 Cilimus]" required></pre>
			<br>
		</form>
	</fieldset>


<!-- Program javascript untuk membuat inputan langsung -->
<script>
	document.getElementById('my-select').addEventListener('change', function() {
		console.log('You selected: ', this.value);
		// Kondisi Jika pada option pada Jurusan SMA memilih Lainnya..
		if(this.value == "lainSMA"){ 
			document.getElementById("lainnya").style.visibility = 'visible'; // ubah visibility jadi visible agar terlihat input jurusan (ini merupakan inputan pengganti dari select option karena memilih lainnya)
			document.getElementById("lainnya").value = 'SMA - '; // set nilai dari inputan pengganti agar yg di input dengan Awalan 'SMA - '
			document.getElementById("my-select").value = ''; //hilangkan value select option agar nilai nya tidak bentrok
		} else if(this.value == "lainMA"){
			document.getElementById("lainnya").style.visibility = 'visible';
			document.getElementById("lainnya").value = 'MA - ';
			document.getElementById("my-select").value = '';
		} else if(this.value == "lainSMK"){
			document.getElementById("lainnya").style.visibility = 'visible';
			document.getElementById("lainnya").value = 'SMK - ';
			document.getElementById("my-select").value = '';
		} else {
			// jika pada select option tidak memilih lainnya maka jadikan tag input pengganti option menjadi hidden
			document.getElementById("lainnya").style.visibility = 'hidden';
		}

		// ubah visibility pada tag input asal sekolah menjadi visible
		document.getElementById("asal").style.visibility = 'visible';

		// ubah juga nilai awal dari tag tersebut agar mengambil 3 karakter awalan dari select option jurusan.
		document.getElementById("asal").value = document.getElementById('my-select').value.substring(0,3);  
		// begitu juga input pengganti option jurusan jika visibilitynya bernilai visible
		if (document.getElementById("lainnya").style.visibility == 'visible') {
			document.getElementById("asal").value = document.getElementById('lainnya').value.substring(0,3);  
		}
	});
</script>

