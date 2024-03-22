
<?php include'header.php'; ?>
 <title>Contact Alifia Athiqa Erlin</title>

<div class="social-body">
			<ul>
				<li class="whatsaap"><a href="https://wa.me/qr/MBOR4V2FRTCUL1"><i class="fa fa-whatsapp"></i></a></li>
				<li class="instagram"><a href="https://www.instagram.com/alifiathiqa?igsh=MW52aW1wNXFiN202OA=="><i class="fa fa-instagram"></i></a></li>
			</ul>
		</div>

<section id="contact" class="contact section">
			<div class="container">
				<div class="row">
					<div class="col-md-4 col-sm-12 col-xs-12">
						<div class="contact-info">
							<h4>Tentang Saya</h4>

								<?php
		            				$qry = mysqli_query($konek,"SELECT * FROM tbl_profil limit 1");
		                			while ($data=mysqli_fetch_assoc($qry)) {
		                		?>
							<p>
								<?php echo $data['visi_misi']; ?>
							</p>
							<?php } ?>
							<span><i class="fa fa-phone-square"></i>+6281276092767</span>
							<span><i class="fa fa-map-marker"></i>Universitas Negeri Padang</span>
							<span><i class="fa fa-globe"></i><a href="index.php">Mrs.Alifia</a></span>
						</div>
					</div>
					<div class="col-md-8 col-sm-12 col-xs-12 ">
						<div class="form-head">
							<form class="form" action="#">
								<div class="form-group">
									<input name="name" type="text" placeholder="enter name">
								</div>
								<div class="form-group">
									<input name="email" type="email" placeholder="enter email">
								</div>
								<div class="form-group">
									<textarea name="message" placeholder="enter message"></textarea>
								</div>
								<div class="form-group">
									<div class="button">
										<button type="submit" class="btn primary">KIRIM PESAN</button>

										<p> Not Function</p>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
<?php include'footer.php'; ?>