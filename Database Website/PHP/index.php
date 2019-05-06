<?php 
	include("header.php");
	include("db_connection.php");
?>
<head>
	<?php include("navbar.php"); ?>
		<link rel="stylesheet" type="text/css" href="../CSS/index.css">
		<link rel="stylesheet" type="text/css" href="../CSS/navbar.css">
		<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
</head>

<body>
	<div class = "row justify-content-center headerRow">
		<div class = "col-xs-12 TSP">
		TOP-SELLING PRODUCTS
		</div>
	</div>
	<div class = "row justify-content-around TSPRow">
	<?php $conn = OpenCon();
		$top_sell_1;
		$top_sell_2;
		$top_sell_3;
		$top_sell_4;
		$top_sell_5;
		if ($result = $conn->query("SELECT p1.product_id, p1.manufacturer, p1.name 
									FROM (
									SELECT amt_sold
									FROM product 
									ORDER BY amt_sold DESC
									LIMIT 5) AS a1 JOIN product AS p1
									ON p1.amt_sold = a1.amt_sold
									ORDER BY p1.amt_sold DESC"))
		{
			$top_sell_1 = $result->fetch_assoc();
			$top_sell_2 = $result->fetch_assoc();
			$top_sell_3 = $result->fetch_assoc();
			$top_sell_4 = $result->fetch_assoc();
			$top_sell_5 = $result->fetch_assoc();
		}
		CloseCon($conn);
	?>
		<div class = "col-xs-4 TSPslide">
			<a href="product.php?product=<?php echo $top_sell_1['product_id'];?>">
			<?php echo "{$top_sell_1['manufacturer']} {$top_sell_1['name']}";?>
			</a>
		</div>
		<div class = "col-xs-4 TSPslide">
			<a href="product.php?product=<?php echo $top_sell_2['product_id'];?>">
			<?php echo "{$top_sell_2['manufacturer']} {$top_sell_2['name']}";?>
			</a>
		</div>
		<div class = "col-xs-4 TSPslide">
			<a href="product.php?product=<?php echo $top_sell_3['product_id'];?>">
			<?php echo "{$top_sell_3['manufacturer']} {$top_sell_3['name']}";?>
			</a>
		</div>
		<div class = "col-xs-4 TSPslide">
			<a href="product.php?product=<?php echo $top_sell_4['product_id'];?>">
			<?php echo "{$top_sell_4['manufacturer']} {$top_sell_4['name']}";?>
			</a>
		</div>
		<div class = "col-xs-4 TSPslide">
			<a href="product.php?product=<?php echo $top_sell_5['product_id'];?>">
			<?php echo "{$top_sell_5['manufacturer']} {$top_sell_5['name']}";?>
			</a>
		</div>
	</div>
</div>
</body>
</html>
