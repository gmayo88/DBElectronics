
<?php 
	include("header.php");
	include("db_connection.php");
?>
<head>
	<?php include("navbar.php"); ?>
		<link rel="stylesheet" type="text/css" href="../CSS/search.css">
		<link rel="stylesheet" type="text/css" href="../CSS/navbar.css">
		<link rel="stylesheet" type="text/css" href="../CSS/header.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
	<div style="align:center;">
	<?php $conn = OpenCon();
		if ($result = $conn->query("SELECT * 
									FROM product 
									WHERE name like '%{$_GET['search']}%' or 
									manufacturer like '%{$_GET['search']}%' or 
									category like '%{$_GET['search']}%'"))
		{
			while ($row = $result->fetch_assoc())
			{
				?> <p><a href="product.php?product=<?php echo $row['product_id'];?>"><?php echo "{$row['manufacturer']} {$row['name']}";?></a>
				Price: <?php echo $row['price']; ?></p>
				<p><?php echo substr($row['description'], 0, 50); 
				if (strlen($row['description']) > 50)
				{
					echo "...";
				}
				?></p>
				<?php
			}
		}
		CloseCon($conn);
	?>
	</div>
</body>