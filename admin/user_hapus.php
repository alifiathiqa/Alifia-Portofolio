<?php 
include '../koneksi.php';

if (isset($_GET['id'])) {
    $id = $_GET['id'];

    $qry_delete = mysqli_query($konek, "DELETE FROM tbl_user WHERE kode='$id'");
    
    if ($qry_delete) {
      
        header('location: user_list.php');
        exit(); 
    } else {
        echo "Gagal menghapus data."; 
     
    }
} else {
    echo "Parameter 'id' tidak tersedia."; 
    
}
?>
