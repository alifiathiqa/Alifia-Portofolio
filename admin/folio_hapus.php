<?php
include '../koneksi.php';

if (isset($_GET['id'])) {
    $kode = $_GET['id'];

    // Mengambil data sebelum menghapus
    $qry = mysqli_query($konek, "SELECT * FROM tbl_folio WHERE kode='$kode'");
    $data = mysqli_fetch_array($qry);

    // Hapus data dari tabel
    $hapus = mysqli_query($konek, "DELETE FROM tbl_folio WHERE kode='$kode'");
    
    // Jika penghapusan berhasil, hapus juga gambar terkait
    if ($hapus) {
        $lokasi = $data['gambar'];
        $hapus_gambar = "../gambar/galeri/$lokasi";
        
        // Hapus gambar dari direktori
        if (file_exists($hapus_gambar)) {
            unlink($hapus_gambar);
        }

        // Redirect ke halaman folio_add.php setelah penghapusan
        header('Location: folio_add.php');
        exit(); // Penting: keluar dari skrip setelah melakukan redirect
    } else {
        // Jika penghapusan gagal, bisa tambahkan penanganan error di sini
        echo "Gagal menghapus data.";
    }
} else {
    // Jika $_GET['id'] tidak diatur, berikan pesan kesalahan atau tindakan yang sesuai
    echo "ID tidak ditemukan.";
}
?>
