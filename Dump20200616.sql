-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: marozasalon
-- ------------------------------------------------------
-- Server version	8.0.20

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `appointmentNo` int NOT NULL,
  `dateOfAppointment` date NOT NULL,
  `timeOfAppointment` varchar(45) NOT NULL,
  `Customer_customerID` int NOT NULL,
  PRIMARY KEY (`appointmentNo`),
  KEY `fk_Appointment_Customer1_idx` (`Customer_customerID`),
  CONSTRAINT `fk_Appointment_Customer1` FOREIGN KEY (`Customer_customerID`) REFERENCES `customer` (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1011,'2020-06-08','09:00 am',2011),(1012,'2020-06-12','11:30 am',2012),(1013,'2020-06-13','12:45 pm',2013),(1014,'2020-07-02','14:30 pm',2014),(1015,'2020-07-04','16:30 pm',2015);
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `customerID` int NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `address` varchar(45) NOT NULL,
  `cellNo` varchar(10) NOT NULL,
  `emailAddress` varchar(45) NOT NULL,
  `dateOfBirth` date NOT NULL,
  PRIMARY KEY (`customerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (2011,'Roxanne','Smith','7 Blackwood Street, Bellair','0865975245','annesmith@gmail.com','2001-03-28'),(2012,'Constance ','Moloi','4 Leicester Square, Uitzicht','0785421596','cmoloi@gmail.com','1996-02-14'),(2013,'Angela','Bacon','10 Viognier Security Estate, 17 Viognier','0632458542','angela@gmail.com','2002-06-03'),(2014,'Buhle','Khumalo','12 Edwards Street, Vygeboom','0721548896','bkhumalo@gmail.com','1995-12-01'),(2015,'Akhona','Peterson','17 Azalea Road, Durbanville','0852158452','petersonakhona@gmail.com','1994-03-12');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `customerdetails`
--

DROP TABLE IF EXISTS `customerdetails`;
/*!50001 DROP VIEW IF EXISTS `customerdetails`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `customerdetails` AS SELECT 
 1 AS `appointmentNo`,
 1 AS `name`,
 1 AS `surname`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `employeeID` int NOT NULL,
  `employeeName` varchar(45) NOT NULL,
  `employeeSurname` varchar(45) NOT NULL,
  `employeeAddress` varchar(45) NOT NULL,
  `employeeCellNo` varchar(10) NOT NULL,
  `employeeDateOfBirth` date NOT NULL,
  `salary` int NOT NULL,
  PRIMARY KEY (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (3011,'Aphiwe','Makhubalo','40 Rondebosch Oaks, Rondebosch','0521549862','1992-03-28',3000),(3012,'Fezeka','Nozulu','2 Constantiaberg Close, Constantia','0659785456','2000-08-14',2000),(3013,'Khethiwe','Fezela','8 Sailsbury Gardens, Kenilworth','0854266695','1995-05-05',2000),(3014,'Sisipho','Shezi','1 Ninth Avenue, Fairways','0758215469','1995-02-16',3500),(3015,'Thandiwe','Langa','59 Bilston Street, Crawford','0826445525','2001-12-14',2000);
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `employee_services`
--

DROP TABLE IF EXISTS `employee_services`;
/*!50001 DROP VIEW IF EXISTS `employee_services`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `employee_services` AS SELECT 
 1 AS `employeeID`,
 1 AS `employeeName`,
 1 AS `employeeSurname`,
 1 AS `serviceName`,
 1 AS `servicePrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productNo` int NOT NULL,
  `type` varchar(45) NOT NULL,
  `productName` varchar(45) NOT NULL,
  `productPrice` int NOT NULL,
  `Service_serviceID` int NOT NULL,
  `Customer_customerID` int NOT NULL,
  PRIMARY KEY (`productNo`),
  KEY `fk_Product_Service_idx` (`Service_serviceID`),
  KEY `fk_Product_Customer1_idx` (`Customer_customerID`),
  CONSTRAINT `fk_Product_Customer1` FOREIGN KEY (`Customer_customerID`) REFERENCES `customer` (`customerID`),
  CONSTRAINT `fk_Product_Service` FOREIGN KEY (`Service_serviceID`) REFERENCES `service` (`serviceID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (5011,'hair relaxer','Dark n Lovely relaxer',120,4012,2011),(5012,'nail polishes','Revlon nail polishes',100,4011,2012),(5013,'hair food','Black pearl hair jelly',70,4013,2013),(5014,'hair conditioner','Black pearl hydrating conditioner',100,4012,2014),(5015,'sulfate free shampoo','Black pearl shampoo',120,4012,2015);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary view structure for view `product_services`
--

DROP TABLE IF EXISTS `product_services`;
/*!50001 DROP VIEW IF EXISTS `product_services`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `product_services` AS SELECT 
 1 AS `serviceID`,
 1 AS `serviceName`,
 1 AS `servicePrice`,
 1 AS `productName`,
 1 AS `type`,
 1 AS `productPrice`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `service`
--

DROP TABLE IF EXISTS `service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service` (
  `serviceID` int NOT NULL,
  `serviceName` varchar(45) NOT NULL,
  `servicePrice` int NOT NULL,
  `Employee_employeeID` int NOT NULL,
  PRIMARY KEY (`serviceID`),
  KEY `fk_Service_Employee1_idx` (`Employee_employeeID`),
  CONSTRAINT `fk_Service_Employee1` FOREIGN KEY (`Employee_employeeID`) REFERENCES `employee` (`employeeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service`
--

LOCK TABLES `service` WRITE;
/*!40000 ALTER TABLE `service` DISABLE KEYS */;
INSERT INTO `service` VALUES (4011,'manicure & pedicure',145,3011),(4012,'hair relaxing',120,3012),(4013,'hair curling',100,3013),(4014,'hair weaving',1200,3014),(4015,'facial',167,3015);
/*!40000 ALTER TABLE `service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'marozasalon'
--

--
-- Dumping routines for database 'marozasalon'
--
/*!50003 DROP FUNCTION IF EXISTS `customer_benefit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `customer_benefit`(

totalSpent DECIMAL(20,0)

) RETURNS varchar(200) CHARSET utf8mb4
    DETERMINISTIC
BEGIN

DECLARE customerBenefit VARCHAR(200);

IF totalSpent>200 THEN
SET customerBenefit= 'YOU APPLY FOR THE FREE FACIAL';

ELSEIF totalSpent>=200 THEN 
SET customerBenefit='APPLIES FOR FREE FACIAL';

ELSEIF totalSpent<200 THEN
SET customerBenefit='SPEND MORE THAN R200 TO APPLY FOR BENEFIT';

END IF;


RETURN customerBenefit;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `discounted_price` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `discounted_price`(discount DECIMAL(0.2)) RETURNS varchar(20) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
DECLARE customerDiscount VARCHAR(20);

IF discount>150 THEN
SET customerDiscount='APPROVED';
ELSEIF (discount>=150 AND 

discount<=450) THEN 

SET customerDiscount='YES';



END IF;
 
 

RETURN customerDiscount;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `access_all_customers` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `access_all_customers`()
BEGIN

SELECT * FROM customer;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `access_all_services_and_products_tables` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `access_all_services_and_products_tables`()
BEGIN

SELECT * FROM service,product;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `employee_details` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `employee_details`()
BEGIN
SELECT * FROM employee

WHERE salary<3000;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `customerdetails`
--

/*!50001 DROP VIEW IF EXISTS `customerdetails`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `customerdetails` AS select `appointment`.`appointmentNo` AS `appointmentNo`,`customer`.`name` AS `name`,`customer`.`surname` AS `surname` from (`appointment` join `customer`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `employee_services`
--

/*!50001 DROP VIEW IF EXISTS `employee_services`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `employee_services` AS select `employee`.`employeeID` AS `employeeID`,`employee`.`employeeName` AS `employeeName`,`employee`.`employeeSurname` AS `employeeSurname`,`service`.`serviceName` AS `serviceName`,`service`.`servicePrice` AS `servicePrice` from (`employee` join `service`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `product_services`
--

/*!50001 DROP VIEW IF EXISTS `product_services`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `product_services` AS select `service`.`serviceID` AS `serviceID`,`service`.`serviceName` AS `serviceName`,`service`.`servicePrice` AS `servicePrice`,`product`.`productName` AS `productName`,`product`.`type` AS `type`,`product`.`productPrice` AS `productPrice` from (`service` join `product`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-06-16 22:55:30
