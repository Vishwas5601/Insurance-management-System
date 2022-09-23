-- MySQL dump 10.13  Distrib 8.0.24, for Win64 (x86_64)
--
-- Host: localhost    Database: ins
-- ------------------------------------------------------
-- Server version	8.0.24

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `branchtable`
--

DROP TABLE IF EXISTS `branchtable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `branchtable` (
  `branchId` int NOT NULL,
  `branchcode` varchar(50) NOT NULL,
  `branchname` varchar(50) NOT NULL,
  `branchaddress` varchar(150) NOT NULL,
  PRIMARY KEY (`branchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `branchtable`
--

LOCK TABLES `branchtable` WRITE;
/*!40000 ALTER TABLE `branchtable` DISABLE KEYS */;
INSERT INTO `branchtable` VALUES (101,'branch101','insurance1','Location1'),(102,'branch102','insurance2','Location2'),(103,'branch103','insurance3','Location3'),(104,'branch104','insurance4','Location4'),(105,'branch105','insurance5','Location5');
/*!40000 ALTER TABLE `branchtable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clienttable`
--

DROP TABLE IF EXISTS `clienttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clienttable` (
  `client_no` int NOT NULL,
  `branchId` int NOT NULL,
  `clientname` varchar(50) NOT NULL,
  `clientcontact` varchar(50) NOT NULL,
  `clientaddress` varchar(50) NOT NULL,
  `clientaadhar` varchar(50) NOT NULL,
  PRIMARY KEY (`clientname`),
  KEY `Id` (`branchId`),
  CONSTRAINT `clienttable_ibfk_1` FOREIGN KEY (`branchId`) REFERENCES `branchtable` (`branchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clienttable`
--

LOCK TABLES `clienttable` WRITE;
/*!40000 ALTER TABLE `clienttable` DISABLE KEYS */;
INSERT INTO `clienttable` VALUES (13,103,'Abhinav','7998923143','Location-11','234168'),(17,105,'Aryan','8797145363','Location-14','234172'),(19,105,'Darren','9894597673','Location-19','348932'),(3,101,'Dr.Watson','9448687070','Location-23','123125'),(10,102,'Frankenstein','8978879865','Location-39','432149'),(16,104,'Ganesha','9876451239','Location-14','234171'),(18,105,'Harsha','8996345883','Location-17','348931'),(8,102,'Howard','8978879803','Location-33','432154'),(15,104,'Karthik','9567810890','Location-13','234170'),(7,102,'Leonard ','8978879801','Location-32','432142'),(5,101,'Molly Hooper','9448697090','Location-24','123127'),(4,101,'Mrs hudson','9448687060','Location-21','123126'),(2,101,'Mycroft Holmes','9448687080','Location-22','123124'),(14,104,'Rahul','9667891034','Location-15','234169'),(12,103,'Sharath','8971245670','Location-12','234166'),(6,102,'Sheldon Cooper','8978879800','Location-31','432141'),(1,101,'Sherlock Holmes','9448687090','Location-21','123123'),(11,103,'Suprith','7891245663','Location-11','234165'),(20,105,'Sushanth','9886345883','Location-18','348933'),(9,102,'Will Whedon','8978879832','Location-45','432146');
/*!40000 ALTER TABLE `clienttable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employeetable`
--

DROP TABLE IF EXISTS `employeetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employeetable` (
  `emp_no` int NOT NULL,
  `Id` int NOT NULL,
  `Employee_name` varchar(50) NOT NULL,
  `Employee_contact` varchar(15) NOT NULL,
  `Employee_address` varchar(150) NOT NULL,
  PRIMARY KEY (`Employee_name`),
  KEY `Id` (`Id`),
  CONSTRAINT `employeetable_ibfk_1` FOREIGN KEY (`Id`) REFERENCES `branchtable` (`branchId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employeetable`
--

LOCK TABLES `employeetable` WRITE;
/*!40000 ALTER TABLE `employeetable` DISABLE KEYS */;
INSERT INTO `employeetable` VALUES (8,104,'Amith','8971234645','Location-30'),(2,101,'Euros Holmes','9447822445','Location-34'),(1,101,'James Moriarty','9447822995','Location-33'),(4,102,'Jon Jones','9506276737','Location-51'),(3,102,'Max Holloway','9606789829','Location-50'),(7,104,'Nagendra','9612347655','Location-36'),(6,103,'Nagraj','9634122454','Location-36'),(9,105,'Prashanth','7881234645','Location-30'),(5,103,'Rajesh','9543286590','Location-35'),(10,105,'Sudhansh','9655123456','Location-33');
/*!40000 ALTER TABLE `employeetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `insurancetable`
--

DROP TABLE IF EXISTS `insurancetable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `insurancetable` (
  `client_no` int NOT NULL,
  `id` int NOT NULL,
  `clientname` varchar(50) NOT NULL,
  `insurance_num` varchar(50) NOT NULL,
  `insurance_type` varchar(50) NOT NULL,
  `Amount_paid` double NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `EmployeeName` varchar(50) NOT NULL,
  PRIMARY KEY (`insurance_num`),
  KEY `Id` (`id`),
  KEY `Client_name` (`clientname`),
  KEY `EmployeeName` (`EmployeeName`),
  CONSTRAINT `insurancetable_ibfk_1` FOREIGN KEY (`id`) REFERENCES `branchtable` (`branchId`),
  CONSTRAINT `insurancetable_ibfk_2` FOREIGN KEY (`clientname`) REFERENCES `clienttable` (`clientname`),
  CONSTRAINT `insurancetable_ibfk_3` FOREIGN KEY (`EmployeeName`) REFERENCES `employeetable` (`Employee_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `insurancetable`
--

LOCK TABLES `insurancetable` WRITE;
/*!40000 ALTER TABLE `insurancetable` DISABLE KEYS */;
INSERT INTO `insurancetable` VALUES (1,101,'Sherlock Holmes','36901','Life-Insurance',44000,'2022-01-01','2026-01-01','James Moriarty'),(2,101,'Mycroft Holmes','36902','Life-Insurance',44000,'2022-02-01','2026-02-01','Euros Holmes'),(3,101,'Mrs hudson','36903','Vehicle-Insurance',30000,'2022-09-04','2027-09-04','James Moriarty'),(4,101,'Dr.Watson','36904','House-Insurance',60000,'2022-11-23','2032-11-23','Euros Holmes'),(11,103,'Suprith','36905','House-Insurance',60000,'2022-08-01','2032-08-01','Rajesh'),(6,102,'Sheldon Cooper','37001','Health-Insurance',40000,'2022-08-08','2027-08-08','Max Holloway'),(7,102,'Leonard ','37002','Vehicle-Insurance',30000,'2021-09-09','2025-09-09','Jon Jones'),(8,102,'Howard','37003','House-Insurance',60000,'2023-05-08','2033-05-08','Max Holloway'),(9,102,'Will Whedon','37004','Life-Insurance',44000,'2022-02-23','2026-02-23','Jon Jones'),(10,102,'Frankenstein','37005','Life-Insurance',44000,'2023-06-01','2027-06-01','Max Holloway'),(12,103,'Sharath','38101','Life-Insurance',44000,'2022-01-24','2027-01-24','Nagraj'),(13,103,'Abhinav','38102','Vehicle-Insurance',30000,'2022-02-24','2027-02-24','Nagraj'),(14,104,'Ganesha','38201','Life-Insurance',44000,'2022-08-24','2027-08-24','Nagendra'),(15,104,'Rahul','38202','Vehicle-Insurance',30000,'2021-09-12','2025-09-12','Nagendra'),(16,104,'Karthik','38203','Health-Insurance',40000,'2021-12-21','2026-12-21','Amith'),(17,105,'Aryan','38301','Health-Insurance',40000,'2022-11-10','2027-11-10','Sudhansh'),(19,105,'Darren','38302','Property-Insurance',55000,'2023-01-08','2033-01-08','Prashanth'),(18,105,'Harsha','38303','House-Insurance',60000,'2023-02-01','2033-02-01','Prashanth'),(20,105,'Sushanth','38304','Property-Insurance',55000,'2023-02-11','2033-02-11','Sudhansh'),(5,101,'Molly Hooper','39905','Property-Insurance',55000,'2023-09-08','2033-09-08','James Moriarty');
/*!40000 ALTER TABLE `insurancetable` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `paymenttable`
--

DROP TABLE IF EXISTS `paymenttable`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `paymenttable` (
  `Payment_no` int NOT NULL,
  `Id` int NOT NULL,
  `paid_date` date NOT NULL,
  `clientname` varchar(50) NOT NULL,
  `insurance_num` varchar(50) NOT NULL,
  `Paid_month` varchar(50) NOT NULL,
  `Paid_year` varchar(50) NOT NULL,
  `amountpaid` double NOT NULL DEFAULT '0',
  KEY `insurance_num` (`insurance_num`),
  KEY `Id` (`Id`),
  KEY `clientname` (`clientname`),
  CONSTRAINT `paymenttable_ibfk_1` FOREIGN KEY (`insurance_num`) REFERENCES `insurancetable` (`insurance_num`),
  CONSTRAINT `paymenttable_ibfk_2` FOREIGN KEY (`Id`) REFERENCES `branchtable` (`branchId`),
  CONSTRAINT `paymenttable_ibfk_3` FOREIGN KEY (`clientname`) REFERENCES `clienttable` (`clientname`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `paymenttable`
--

LOCK TABLES `paymenttable` WRITE;
/*!40000 ALTER TABLE `paymenttable` DISABLE KEYS */;
INSERT INTO `paymenttable` VALUES (1,101,'2022-01-01','Sherlock Holmes','36901','Jan','2022',44000),(2,101,'2022-02-01','Mycroft Holmes','36902','Feb','2022',44000),(3,101,'2022-09-04','Mrs hudson','36903','Sep','2022',30000),(4,101,'2022-07-23','Dr.Watson','36904','Jul','2022',60000),(5,101,'2023-09-08','Molly Hooper','39905','Sep','2023',55000),(6,102,'2022-08-08','Sheldon Cooper','37001','Aug','2022',40000),(7,102,'2021-09-09','Leonard ','37002','Sep','2021',30000),(8,102,'2023-05-08','Howard','37003','May','2023',60000),(9,102,'2022-02-23','Will Whedon','37004','Feb','2022',44000),(10,102,'2023-06-01','Frankenstein','37005','Jun','2023',44000),(11,103,'2022-08-01','Suprith','36905','Aug','2022',60000),(12,103,'2022-01-24','Sharath','38101','Jan','2022',44000),(13,103,'2022-02-24','Abhinav','38102','Feb','2022',30000),(14,104,'2022-08-24','Ganesha','38201','Aug','2022',44000),(15,104,'2021-09-12','Rahul','38202','Sep','2021',30000),(16,104,'2021-12-21','Karthik','38203','Dec','2022',40000),(17,105,'2022-11-10','Aryan','38301','Nov','2022',40000),(18,105,'2023-01-08','Darren','38302','Jan','2023',55000),(19,105,'2023-02-01','Harsha','38303','Feb\n','2022',60000),(20,105,'2023-02-11','Sushanth','38304','Feb','2023',55000);
/*!40000 ALTER TABLE `paymenttable` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-07-01 11:51:58
