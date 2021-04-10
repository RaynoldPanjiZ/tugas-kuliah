### Tugas 1
1. Buat context baru yang bernama coba!
2. Membuat program seperti pada Listing 1.2. Simpan dengan nama Pertama.jsp
   ```
   <HTML>
   <HEAD>
      <TITLE>Contoh JSP</TITLE>
   </HEAD>
   <BODY>
      <H1> <%= "Program JSP Pertamaku!" %> </H1>
   </BODY>
   </HTML>
   ```
   [_**Jawaban^**_](https://github.com/RaynoldPanjiZ/tugas-kuliah/tree/main/BP3/coba)

### Tugas 2
1. Buat sebuah program registrasi online yang diproses oleh suatu file JSP dan nilainya langsung dikembalikan. Data yang dimasukkan dalam registrasi online meliputi : nama, tempat tanggal lahir, asal sekolah, jurusan.
   [_**Jawaban^**_](https://github.com/RaynoldPanjiZ/tugas-kuliah/tree/main/BP3/tugas2)

### Tugas 3
1. Buat sebuah program masukan user dengan memanfaatkan tag deklaratif dan deklarasi. Data yang dimasukkan adalah nama user dan waktu saat ini.
   [_**Jawaban^**_](https://github.com/RaynoldPanjiZ/tugas-kuliah/tree/main/BP3/tugas3)

### Tugas 4
1.	Buat sebuah program pendaftaran mahasiswa dengan menggunakan standard action. Data yang dimasukkan adalah nama mahasiswa, asal sekolah dan jurusan.
   [_**Jawaban^**_](https://github.com/RaynoldPanjiZ/tugas-kuliah/tree/main/BP3/tugas4)
2.	Buat program untuk menampilkan halaman JSP di dalam sebuah halaman JSP lain dengan memanfaatkan tag _<jsp:include page=”” />_
   [_**Jawaban^**_](https://github.com/RaynoldPanjiZ/tugas-kuliah/tree/main/BP3/tugas4)

### Tugas 7
1.	Buat sebuah program aplikasi form guestbook
   [_**Jawaban^**_](https://github.com/RaynoldPanjiZ/tugas-kuliah/tree/main/BP3/tugas7)

### Tugas 8
1.	Buatlah form yang dapat mengenali masukan data dengan Cookie Form ?
   [_**Jawaban^**_](https://github.com/RaynoldPanjiZ/tugas-kuliah/tree/main/BP3/tugas8)
   
### Tugas 9
1.	Buat sebuah program yang membuat tabel bernama BUKU dengan truktur tabel sebagai berikut:

    | Nama kolom	| Tipe data |
    | ------------- | --------- |
    | JUDUL_BUKU	| VARCHAR |
    | ID_PENERBIT	| INTEGER |
    | HARGA	| REAL |
    | PENJUALAN	| INTEGER |
    Berikut ini adalah query untuk membuat tabel BUKU:
    ~~~
    CREATE TABLE BUKU(
        JUDUL_BUKU VARCHAR(40),
        ID_PENERBIT INTEGER,
        HARGA REAL,
        PENJUALAN INTEGER)
    ~~~
    [_**Jawaban^**_](https://github.com/RaynoldPanjiZ/tugas-kuliah/blob/main/BP3/tugas9/BuatTabel.jsp)

2. 	Buat program yang digunakan untuk memasukkan data tanpa menggunakan form dengan data sebagai berikut:
    | NAMA_BUKU |	ID_PENERBIT |	HARGA | PENJUALAN  |
    | --------- | ------------ | -------- | -----|
    | PemrogramanWeb | 	111 | 	27000 | 	14 | 
    
    Gunakan template kueri sebagai berikut:
    ```
    INSERT INTO BUKU (
        NAMA_BUKU, ID_PENERBIT, HARGA, PENJUALAN
    ) VALUES (
        ’nama_buku’, ’penerbit’, ’harga’, penjualan
    );
    ```
    [_**Jawaban^**_](https://github.com/RaynoldPanjiZ/tugas-kuliah/blob/main/BP3/tugas9/MasukanData.jsp)

3.	Setelah membuat tabel pada nomor 1 diatas. Buatlah program yang digunakan untuk mengisi tabel BUKU tersebut dengan menggunakan form masukan data dengan data masukan sebagai berikut:

    | NAMA_BUKU |	ID_PENERBIT	| HARGA |	PENJUALAN |
    | --------- | -------- | ----- | ----- |
    | E-Learning |	101 |	25000 |	10 |
    | Jaringan | Tanpa | Hardisk | 	203 | 	23000 | 8 | 
    | Oracle9i |	311 |	54000 |	20 |
    | Pemrograman Java |	101 |	49000 |	35 | 
    
    [_**Jawaban^**_](https://github.com/RaynoldPanjiZ/tugas-kuliah/blob/main/BP3/tugas9/MasukanDataDenganForm.jsp)
