<?php 
	include("db_connection.php");
?>
<head>
	<?php include("navbar.php"); ?>
		<link rel="stylesheet" type="text/css" href="../CSS/product.css">
		<link rel="stylesheet" type="text/css" href="../CSS/navbar.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
	<title><?php $conn = OpenCon();
			$name;
			$manufacturer;
			$category;
			$price;
			$description;
			$in_stock;
			if ($result = $conn->query("SELECT * FROM product WHERE product_id = {$_GET['product']}"))
			{
				$product = $result->fetch_assoc();
				$name = $product['name'];
				$manufacturer = $product['manufacturer'];
				$category = $product['category'];
				$price = $product['price'];
				$description = $product['description'];
				$in_stock = $product['no_in_stock'];
				echo $name;
			}
			CloseCon($conn);
			?>
	</title>
</head>

<body>
	<div>
		Category >> <?php echo $category; ?>
	</div>
	<div>
		<h1>
			<?php echo "$manufacturer $name"; ?> <br/>
		</h1>
			<?php echo "\${$price}"; ?> <br/>
			<?php echo $description; ?> <br/>
			<?php echo "Left in stock: $in_stock"; ?> <br/>
		
</body>