<?php
include '../koneksi.php';

if (isset($_GET['id'])) {
    $kode = $_GET['id'];

    // Hapus data dari tabel
    $hapus = mysqli_query($konek, "DELETE FROM tbl_jadwal_solat WHERE kode='$kode'");
    
    // Redirect ke halaman skil_add.php setelah penghapusan
    if ($hapus) {
        header('Location: skil_add.php');
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
