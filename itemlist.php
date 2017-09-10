<html>
<head>

<!-- Include meta tag to ensure proper rendering and touch zooming -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Include jQuery Mobile stylesheets -->
<link rel="stylesheet" href="assets\css\jquery.mobile-1.4.5.css">

</head>
<body>


<div data-role="page" id="pageBarang">
  <div data-role="header">
  <?php $b = $_GET['kategori'];
    echo "<h1>List Barang dengan Kategori ".$b."</h1>";?>
  </div>

  <div data-role="main" class="ui-content">
    <h2>Pilih Barang</h2>
		<ul data-role="listview">
			
			<?php
		include("koneksi.php");
		
		// jalankan query
	$result = $dbh->query("SELECT Nama FROM Barang WHERE Kategori = '".$b."'");
	
	$a = null;
		
	
	// tampilkan data
	while($row = $result->fetch()) {
		if($row!=$a){
		echo "<li> <a href='description.php?nama=$row[0]'>$row[0]</a></li>";
		$a = $row;
		}		
		}
 
	// hapus koneksi
	$dbh = null;
	?>
		</ul>
  </div>

  <div data-role="footer">
    <h1>Dibuat oleh Rizal Hidayat</h1>
  </div>
</div> 





<!-- Include the jQuery library -->
<!--script src="assets\js\jquery-1.11.3.min.js"></script -->
<script src="assets\js\jquery-1.11.3.min.js"></script>
<!-- Include the jQuery Mobile library -->
<script src="assets\js\jquery.mobile-1.4.5.min.js"></script>

</body>


</html>