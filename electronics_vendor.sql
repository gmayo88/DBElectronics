-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 05, 2019 at 02:36 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `electronics_vendor`
--

-- --------------------------------------------------------

--
-- Table structure for table `business`
--

CREATE TABLE `business` (
  `business_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `balance` decimal(8,2) NOT NULL,
  `payment_due` decimal(8,2) NOT NULL,
  `payment_due_date` date NOT NULL,
  `last_payment_received` decimal(8,2) NOT NULL,
  `last_payment_date` date NOT NULL,
  `street` varchar(30) NOT NULL,
  `street2` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_contract`
--

CREATE TABLE `business_contract` (
  `business` int(11) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `cont_first_name` varchar(20) NOT NULL,
  `cont_last_name` varchar(20) NOT NULL,
  `cont_phone` int(10) NOT NULL,
  `cont_email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_order`
--

CREATE TABLE `business_order` (
  `order_id` int(11) NOT NULL,
  `business` int(11) NOT NULL,
  `date` date NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `shipping_option` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_order_products`
--

CREATE TABLE `business_order_products` (
  `order` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_shipment`
--

CREATE TABLE `business_shipment` (
  `shipment_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `shipping_option` int(11) NOT NULL,
  `tracking_number` int(11) NOT NULL,
  `est_delivery` date NOT NULL,
  `delivery_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `business_shipment_contents`
--

CREATE TABLE `business_shipment_contents` (
  `shipment` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `credit_card`
--

CREATE TABLE `credit_card` (
  `customer` int(11) NOT NULL,
  `option_number` int(11) NOT NULL,
  `name_on_card` varchar(20) NOT NULL,
  `cc_no` int(12) NOT NULL,
  `security_code` int(3) NOT NULL,
  `billing_street` varchar(30) NOT NULL,
  `billing_street2` varchar(30) NOT NULL,
  `billing_city` varchar(30) NOT NULL,
  `billing_state` varchar(2) NOT NULL,
  `billing_zip` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `customer_id` int(11) NOT NULL,
  `first_name` varchar(20) NOT NULL,
  `last_name` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone_number` int(10) NOT NULL,
  `street` varchar(30) NOT NULL,
  `street2` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `online_customer`
--

CREATE TABLE `online_customer` (
  `customer_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(32) NOT NULL,
  `date_of_birth` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `order_id` int(11) NOT NULL,
  `customer` int(11) NOT NULL,
  `date` date NOT NULL,
  `total` decimal(8,2) NOT NULL,
  `payment` int(11) NOT NULL,
  `shipping_option` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `order_products`
--

CREATE TABLE `order_products` (
  `order` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `package`
--

CREATE TABLE `package` (
  `package_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `package_products`
--

CREATE TABLE `package_products` (
  `package` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `product_id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `manufacturer` varchar(30) NOT NULL,
  `category` varchar(30) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `description` mediumtext NOT NULL,
  `no_in_stock` int(11) NOT NULL,
  `amt_sold` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipment`
--

CREATE TABLE `shipment` (
  `shipment_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `shipping_option` int(11) NOT NULL,
  `tracking_number` int(11) NOT NULL,
  `est_delivery` date NOT NULL,
  `delivery_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipment_contents`
--

CREATE TABLE `shipment_contents` (
  `shipment` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `product` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipper`
--

CREATE TABLE `shipper` (
  `shipper_id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `phone` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shipping_option`
--

CREATE TABLE `shipping_option` (
  `option_id` int(11) NOT NULL,
  `shipper` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `price` decimal(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store`
--

CREATE TABLE `store` (
  `store_id` int(11) NOT NULL,
  `street` varchar(30) NOT NULL,
  `street2` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(5) NOT NULL,
  `warehouse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_inv`
--

CREATE TABLE `store_inv` (
  `store` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_order`
--

CREATE TABLE `store_order` (
  `store_order_id` int(11) NOT NULL,
  `store` int(11) NOT NULL,
  `order_date` date NOT NULL,
  `fill_date` date NOT NULL,
  `warehouse` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `store_order_product`
--

CREATE TABLE `store_order_product` (
  `store_order` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse`
--

CREATE TABLE `warehouse` (
  `warehouse_id` int(11) NOT NULL,
  `street` varchar(30) NOT NULL,
  `street2` varchar(30) NOT NULL,
  `city` varchar(30) NOT NULL,
  `state` varchar(2) NOT NULL,
  `zip` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `warehouse_inv`
--

CREATE TABLE `warehouse_inv` (
  `warehouse` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `business`
--
ALTER TABLE `business`
  ADD PRIMARY KEY (`business_id`);

--
-- Indexes for table `business_contract`
--
ALTER TABLE `business_contract`
  ADD PRIMARY KEY (`business`);

--
-- Indexes for table `business_order`
--
ALTER TABLE `business_order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `business` (`business`),
  ADD KEY `shipping_option` (`shipping_option`);

--
-- Indexes for table `business_order_products`
--
ALTER TABLE `business_order_products`
  ADD PRIMARY KEY (`order`,`product`),
  ADD KEY `product` (`product`);

--
-- Indexes for table `business_shipment`
--
ALTER TABLE `business_shipment`
  ADD PRIMARY KEY (`shipment_id`),
  ADD KEY `order` (`order`),
  ADD KEY `shipping_option` (`shipping_option`);

--
-- Indexes for table `business_shipment_contents`
--
ALTER TABLE `business_shipment_contents`
  ADD PRIMARY KEY (`shipment`,`order`,`product`),
  ADD KEY `order` (`order`,`product`);

--
-- Indexes for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD PRIMARY KEY (`customer`,`option_number`);

--
-- Indexes for table `customer`
--
ALTER TABLE `customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `online_customer`
--
ALTER TABLE `online_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`order_id`),
  ADD KEY `shipping_option` (`shipping_option`),
  ADD KEY `customer` (`customer`,`payment`);

--
-- Indexes for table `order_products`
--
ALTER TABLE `order_products`
  ADD PRIMARY KEY (`order`,`product`),
  ADD KEY `product` (`product`);

--
-- Indexes for table `package`
--
ALTER TABLE `package`
  ADD PRIMARY KEY (`package_id`);

--
-- Indexes for table `package_products`
--
ALTER TABLE `package_products`
  ADD PRIMARY KEY (`package`,`product`),
  ADD KEY `product` (`product`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `shipment`
--
ALTER TABLE `shipment`
  ADD PRIMARY KEY (`shipment_id`),
  ADD KEY `order` (`order`),
  ADD KEY `shipping_option` (`shipping_option`);

--
-- Indexes for table `shipment_contents`
--
ALTER TABLE `shipment_contents`
  ADD PRIMARY KEY (`shipment`,`order`,`product`),
  ADD KEY `order` (`order`,`product`);

--
-- Indexes for table `shipper`
--
ALTER TABLE `shipper`
  ADD PRIMARY KEY (`shipper_id`);

--
-- Indexes for table `shipping_option`
--
ALTER TABLE `shipping_option`
  ADD PRIMARY KEY (`option_id`),
  ADD KEY `shipper` (`shipper`);

--
-- Indexes for table `store`
--
ALTER TABLE `store`
  ADD PRIMARY KEY (`store_id`),
  ADD KEY `warehouse` (`warehouse`);

--
-- Indexes for table `store_inv`
--
ALTER TABLE `store_inv`
  ADD PRIMARY KEY (`store`,`product`),
  ADD KEY `product` (`product`);

--
-- Indexes for table `store_order`
--
ALTER TABLE `store_order`
  ADD PRIMARY KEY (`store_order_id`),
  ADD KEY `store` (`store`),
  ADD KEY `warehouse` (`warehouse`);

--
-- Indexes for table `store_order_product`
--
ALTER TABLE `store_order_product`
  ADD PRIMARY KEY (`store_order`,`product`),
  ADD KEY `product` (`product`);

--
-- Indexes for table `warehouse`
--
ALTER TABLE `warehouse`
  ADD PRIMARY KEY (`warehouse_id`);

--
-- Indexes for table `warehouse_inv`
--
ALTER TABLE `warehouse_inv`
  ADD PRIMARY KEY (`warehouse`,`product`),
  ADD KEY `product` (`product`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `business`
--
ALTER TABLE `business`
  MODIFY `business_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `business_shipment`
--
ALTER TABLE `business_shipment`
  MODIFY `shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `customer`
--
ALTER TABLE `customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `package`
--
ALTER TABLE `package`
  MODIFY `package_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipment`
--
ALTER TABLE `shipment`
  MODIFY `shipment_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipper`
--
ALTER TABLE `shipper`
  MODIFY `shipper_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shipping_option`
--
ALTER TABLE `shipping_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store`
--
ALTER TABLE `store`
  MODIFY `store_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_order`
--
ALTER TABLE `store_order`
  MODIFY `store_order_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `warehouse`
--
ALTER TABLE `warehouse`
  MODIFY `warehouse_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `business_contract`
--
ALTER TABLE `business_contract`
  ADD CONSTRAINT `business_contract_ibfk_1` FOREIGN KEY (`business`) REFERENCES `business` (`business_id`);

--
-- Constraints for table `business_order`
--
ALTER TABLE `business_order`
  ADD CONSTRAINT `business_order_ibfk_1` FOREIGN KEY (`business`) REFERENCES `business` (`business_id`),
  ADD CONSTRAINT `business_order_ibfk_2` FOREIGN KEY (`shipping_option`) REFERENCES `shipping_option` (`option_id`);

--
-- Constraints for table `business_order_products`
--
ALTER TABLE `business_order_products`
  ADD CONSTRAINT `business_order_products_ibfk_1` FOREIGN KEY (`order`) REFERENCES `business_order` (`order_id`),
  ADD CONSTRAINT `business_order_products_ibfk_2` FOREIGN KEY (`product`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `business_shipment`
--
ALTER TABLE `business_shipment`
  ADD CONSTRAINT `business_shipment_ibfk_1` FOREIGN KEY (`order`) REFERENCES `business_order` (`order_id`),
  ADD CONSTRAINT `business_shipment_ibfk_2` FOREIGN KEY (`shipping_option`) REFERENCES `shipping_option` (`option_id`);

--
-- Constraints for table `business_shipment_contents`
--
ALTER TABLE `business_shipment_contents`
  ADD CONSTRAINT `business_shipment_contents_ibfk_1` FOREIGN KEY (`shipment`) REFERENCES `business_shipment` (`shipment_id`),
  ADD CONSTRAINT `business_shipment_contents_ibfk_2` FOREIGN KEY (`order`,`product`) REFERENCES `business_order_products` (`order`, `product`);

--
-- Constraints for table `credit_card`
--
ALTER TABLE `credit_card`
  ADD CONSTRAINT `credit_card_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `online_customer` (`customer_id`);

--
-- Constraints for table `online_customer`
--
ALTER TABLE `online_customer`
  ADD CONSTRAINT `online_customer_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`customer_id`);

--
-- Constraints for table `order`
--
ALTER TABLE `order`
  ADD CONSTRAINT `order_ibfk_1` FOREIGN KEY (`customer`) REFERENCES `customer` (`customer_id`),
  ADD CONSTRAINT `order_ibfk_2` FOREIGN KEY (`shipping_option`) REFERENCES `shipping_option` (`option_id`),
  ADD CONSTRAINT `order_ibfk_3` FOREIGN KEY (`customer`,`payment`) REFERENCES `credit_card` (`customer`, `option_number`);

--
-- Constraints for table `order_products`
--
ALTER TABLE `order_products`
  ADD CONSTRAINT `order_products_ibfk_1` FOREIGN KEY (`order`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `order_products_ibfk_2` FOREIGN KEY (`product`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `package_products`
--
ALTER TABLE `package_products`
  ADD CONSTRAINT `package_products_ibfk_1` FOREIGN KEY (`package`) REFERENCES `package` (`package_id`),
  ADD CONSTRAINT `package_products_ibfk_2` FOREIGN KEY (`product`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `shipment`
--
ALTER TABLE `shipment`
  ADD CONSTRAINT `shipment_ibfk_1` FOREIGN KEY (`order`) REFERENCES `order` (`order_id`),
  ADD CONSTRAINT `shipment_ibfk_2` FOREIGN KEY (`shipping_option`) REFERENCES `shipping_option` (`option_id`);

--
-- Constraints for table `shipment_contents`
--
ALTER TABLE `shipment_contents`
  ADD CONSTRAINT `shipment_contents_ibfk_1` FOREIGN KEY (`shipment`) REFERENCES `shipment` (`shipment_id`),
  ADD CONSTRAINT `shipment_contents_ibfk_2` FOREIGN KEY (`order`,`product`) REFERENCES `order_products` (`order`, `product`);

--
-- Constraints for table `shipping_option`
--
ALTER TABLE `shipping_option`
  ADD CONSTRAINT `shipping_option_ibfk_1` FOREIGN KEY (`shipper`) REFERENCES `shipper` (`shipper_id`);

--
-- Constraints for table `store`
--
ALTER TABLE `store`
  ADD CONSTRAINT `store_ibfk_1` FOREIGN KEY (`warehouse`) REFERENCES `warehouse` (`warehouse_id`);

--
-- Constraints for table `store_inv`
--
ALTER TABLE `store_inv`
  ADD CONSTRAINT `store_inv_ibfk_1` FOREIGN KEY (`store`) REFERENCES `store` (`store_id`),
  ADD CONSTRAINT `store_inv_ibfk_2` FOREIGN KEY (`product`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `store_order`
--
ALTER TABLE `store_order`
  ADD CONSTRAINT `store_order_ibfk_1` FOREIGN KEY (`store`) REFERENCES `store` (`store_id`),
  ADD CONSTRAINT `store_order_ibfk_2` FOREIGN KEY (`warehouse`) REFERENCES `warehouse` (`warehouse_id`);

--
-- Constraints for table `store_order_product`
--
ALTER TABLE `store_order_product`
  ADD CONSTRAINT `store_order_product_ibfk_1` FOREIGN KEY (`store_order`) REFERENCES `store_order` (`store_order_id`),
  ADD CONSTRAINT `store_order_product_ibfk_2` FOREIGN KEY (`product`) REFERENCES `product` (`product_id`);

--
-- Constraints for table `warehouse_inv`
--
ALTER TABLE `warehouse_inv`
  ADD CONSTRAINT `warehouse_inv_ibfk_1` FOREIGN KEY (`warehouse`) REFERENCES `warehouse` (`warehouse_id`),
  ADD CONSTRAINT `warehouse_inv_ibfk_2` FOREIGN KEY (`product`) REFERENCES `product` (`product_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
