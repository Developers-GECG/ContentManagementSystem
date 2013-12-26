CREATE DATABASE  IF NOT EXISTS `cms` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `cms`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: cms
-- ------------------------------------------------------
-- Server version	5.7.2-m12

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendance_master`
--

DROP TABLE IF EXISTS `attendance_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `attendance_master` (
  `id` int(11) NOT NULL,
  `performance_id` int(11) DEFAULT NULL,
  `term_master_id` int(11) DEFAULT NULL,
  `batch` varchar(45) DEFAULT NULL,
  `isLab` binary(1) DEFAULT NULL,
  `date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance_master`
--

LOCK TABLES `attendance_master` WRITE;
/*!40000 ALTER TABLE `attendance_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `attendance_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept_master`
--

DROP TABLE IF EXISTS `dept_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dept_name` varchar(45) DEFAULT NULL,
  `intake` varchar(10) DEFAULT NULL,
  `hasDivisions` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept_master`
--

LOCK TABLES `dept_master` WRITE;
/*!40000 ALTER TABLE `dept_master` DISABLE KEYS */;
INSERT INTO `dept_master` VALUES (1,'EC','120','1'),(2,'Metallurgy','60','0'),(3,'IT','60','0'),(4,'CE','120','1'),(5,'BM','120','1'),(6,'IC','120','1');
/*!40000 ALTER TABLE `dept_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel_details`
--

DROP TABLE IF EXISTS `hostel_details`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostel_details` (
  `id` int(11) NOT NULL,
  `type` varchar(10) DEFAULT NULL,
  `rector` varchar(45) DEFAULT NULL,
  `co_ordinator_id` varchar(12) DEFAULT NULL,
  `warden` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel_details`
--

LOCK TABLES `hostel_details` WRITE;
/*!40000 ALTER TABLE `hostel_details` DISABLE KEYS */;
/*!40000 ALTER TABLE `hostel_details` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hostel_master`
--

DROP TABLE IF EXISTS `hostel_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hostel_master` (
  `id` int(11) NOT NULL,
  `hostel_id` varchar(45) DEFAULT NULL,
  `enrl_no` varchar(12) DEFAULT NULL,
  `joining_date` varchar(45) DEFAULT NULL,
  `block_no` varchar(3) DEFAULT NULL,
  `room_no` varchar(3) DEFAULT NULL,
  `isHostelFeesPaid` binary(1) DEFAULT NULL,
  `receipt_no` varchar(45) DEFAULT NULL,
  `key_code` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hostel_master`
--

LOCK TABLES `hostel_master` WRITE;
/*!40000 ALTER TABLE `hostel_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `hostel_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_acc`
--

DROP TABLE IF EXISTS `library_acc`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_acc` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `books_id` int(11) NOT NULL,
  `ACC_no (B1)` int(11) NOT NULL,
  `ACC_no (B2)` int(11) NOT NULL,
  `ACC_no (B3)` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_acc`
--

LOCK TABLES `library_acc` WRITE;
/*!40000 ALTER TABLE `library_acc` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_acc` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_billing`
--

DROP TABLE IF EXISTS `library_billing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_billing` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `supplier_id` int(11) NOT NULL,
  `purchased_date` date NOT NULL,
  `item_description` varchar(30) DEFAULT NULL,
  `bill_no` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `price_per_piece` double NOT NULL,
  `price_total` double NOT NULL,
  `approved_by` int(11) NOT NULL,
  `order_no.` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_billing`
--

LOCK TABLES `library_billing` WRITE;
/*!40000 ALTER TABLE `library_billing` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_billing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_books`
--

DROP TABLE IF EXISTS `library_books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `author` varchar(20) NOT NULL,
  `publication` varchar(45) NOT NULL,
  `edition` int(11) DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `type` varchar(15) NOT NULL,
  `ISBN no.` int(11) NOT NULL,
  `price` double NOT NULL,
  `description` varchar(100) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `supplier_id` int(11) NOT NULL,
  `purchased_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_books`
--

LOCK TABLES `library_books` WRITE;
/*!40000 ALTER TABLE `library_books` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_magazines`
--

DROP TABLE IF EXISTS `library_magazines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_magazines` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(45) NOT NULL,
  `category` varchar(15) DEFAULT NULL,
  `price` int(11) NOT NULL,
  `subscribed_date` date NOT NULL,
  `valid_upto` date DEFAULT NULL,
  `frequency` varchar(10) DEFAULT NULL,
  `publisher` varchar(20) NOT NULL,
  `supplier_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_magazines`
--

LOCK TABLES `library_magazines` WRITE;
/*!40000 ALTER TABLE `library_magazines` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_magazines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_staff`
--

DROP TABLE IF EXISTS `library_staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_staff` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_masterID` int(11) NOT NULL,
  `status` varchar(10) NOT NULL,
  `registered_date` date NOT NULL,
  `valid_upto` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_staff`
--

LOCK TABLES `library_staff` WRITE;
/*!40000 ALTER TABLE `library_staff` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_students`
--

DROP TABLE IF EXISTS `library_students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_students` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `student_masterID` int(11) DEFAULT NULL,
  `registered_date` date NOT NULL,
  `valid_upto` date NOT NULL,
  `status` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='							s';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_students`
--

LOCK TABLES `library_students` WRITE;
/*!40000 ALTER TABLE `library_students` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_students` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_supplier`
--

DROP TABLE IF EXISTS `library_supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_supplier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `contact_no` varchar(15) NOT NULL,
  `e-mail` varchar(40) NOT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_supplier`
--

LOCK TABLES `library_supplier` WRITE;
/*!40000 ALTER TABLE `library_supplier` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_supplier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `library_transaction`
--

DROP TABLE IF EXISTS `library_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `library_transaction` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ACC_no` int(11) NOT NULL,
  `books_id` int(11) NOT NULL,
  `issued_date` date NOT NULL,
  `return_date` date NOT NULL,
  `expected_return_date` date NOT NULL,
  `issued-id` int(11) NOT NULL,
  `penalty_amount` double NOT NULL,
  `fined_amount` double NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `library_transaction`
--

LOCK TABLES `library_transaction` WRITE;
/*!40000 ALTER TABLE `library_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `library_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `performance_master`
--

DROP TABLE IF EXISTS `performance_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `performance_master` (
  `id` int(11) NOT NULL,
  `enrl_no` varchar(12) DEFAULT NULL,
  `sub_id` varchar(6) DEFAULT NULL,
  `dept_id` varchar(6) DEFAULT NULL,
  `int_marks` varchar(3) DEFAULT NULL,
  `ext_marks` varchar(3) DEFAULT NULL,
  `hasBacklog` binary(1) DEFAULT NULL,
  `hasKT` binary(1) DEFAULT NULL,
  `ext_viva` varchar(3) DEFAULT NULL,
  `int_viva` varchar(3) DEFAULT NULL,
  `hasBacklogExt` binary(1) DEFAULT NULL,
  `hasKTExt` binary(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `performance_master`
--

LOCK TABLES `performance_master` WRITE;
/*!40000 ALTER TABLE `performance_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `performance_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `placement_master`
--

DROP TABLE IF EXISTS `placement_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `placement_master` (
  `id` int(11) NOT NULL,
  `job_title` varchar(45) DEFAULT NULL,
  `job_function` varchar(45) DEFAULT NULL,
  `specialization` varchar(45) DEFAULT NULL,
  `job_posted_date` varchar(45) DEFAULT NULL,
  `website` varchar(45) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `job_type` varchar(45) DEFAULT NULL,
  `skills` varchar(160) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  `req_qualification` varchar(45) DEFAULT NULL,
  `des_qualification` varchar(45) DEFAULT NULL,
  `industry` varchar(45) DEFAULT NULL,
  `training_period` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `placement_master`
--

LOCK TABLES `placement_master` WRITE;
/*!40000 ALTER TABLE `placement_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `placement_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result_master`
--

DROP TABLE IF EXISTS `result_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `result_master` (
  `id` int(11) NOT NULL,
  `enrl_no` varchar(12) DEFAULT NULL,
  `SPI` varchar(7) DEFAULT NULL,
  `CPI` varchar(7) DEFAULT NULL,
  `isDetained` binary(1) DEFAULT NULL,
  `CGPA` varchar(7) DEFAULT NULL,
  `current_year` varchar(10) DEFAULT NULL,
  `sem` varchar(1) DEFAULT NULL,
  `KT_count` varchar(2) DEFAULT NULL,
  `ext_fees` binary(1) DEFAULT NULL,
  `int_fees` binary(1) DEFAULT NULL,
  `ext_ref_no` varchar(12) DEFAULT NULL,
  `int_ref_no` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result_master`
--

LOCK TABLES `result_master` WRITE;
/*!40000 ALTER TABLE `result_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `result_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `skills_master`
--

DROP TABLE IF EXISTS `skills_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `skills_master` (
  `id` int(11) NOT NULL,
  `tech_skills` varchar(160) DEFAULT NULL,
  `tech_lacking_skills` varchar(160) DEFAULT NULL,
  `achievements` varchar(160) DEFAULT NULL,
  `no_of_projects` int(11) DEFAULT NULL,
  `non_tech_skills` varchar(160) DEFAULT NULL,
  `enrl_no` varchar(12) DEFAULT NULL,
  `hobbies` varchar(160) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `skills_master`
--

LOCK TABLES `skills_master` WRITE;
/*!40000 ALTER TABLE `skills_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `skills_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff_master`
--

DROP TABLE IF EXISTS `staff_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `staff_master` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `dob` varchar(45) DEFAULT NULL,
  `address` varchar(110) DEFAULT NULL,
  `contact_no` varchar(45) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `joining_year` varchar(4) DEFAULT NULL,
  `role` varchar(45) DEFAULT NULL,
  `designation` varchar(45) DEFAULT NULL,
  `dept_id` varchar(45) DEFAULT NULL,
  `gender` varchar(2) DEFAULT NULL,
  `category` varchar(45) DEFAULT NULL,
  `blood_group` varchar(45) DEFAULT NULL,
  `emergency_contact_no` varchar(45) DEFAULT NULL,
  `isTeachingStaff` binary(1) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff_master`
--

LOCK TABLES `staff_master` WRITE;
/*!40000 ALTER TABLE `staff_master` DISABLE KEYS */;
INSERT INTO `staff_master` VALUES (1,'Kuntesh jani','1988-01-02','Gandhinagar','1234564564','kk@jani.com','k','2010','Regular','Assistant Professor','Information Technology','M','General','A+','1234567890',NULL),(2,'Nikhil','1993-08-25','Sabarmati','8460048986','n','n','2010','New','Associate Professor','Information Technology','F','SC','A+','9016828817',NULL),(3,'Rajat','1993-11-22','Somewhere Around You','8866225760','admin@technotravel.in','r','2012','Regular','Professor','Information Technology','M','General','B+','1231231230',NULL),(4,'Rishubh','1993-11-22','Somewhere Around You','8866225760','rishubhjain@yahoo.com','r','2012','Regular','Assistant Professor','Computer Engineering','M','General','B+','1231231230',NULL),(5,'Akruti','1993-07-21','Gandhinagar','8866225760','akritiptl@yahoo.com','a','2011','Regular','Associate Professor','Information Technology','F','General','B+','1231231230',NULL),(6,'Vicky','1993-07-21','Bapunagar','8866225760','v@v.v','v','2010','Regular','Associate Professor','Information Technology','M','General','B+','1231231230',NULL),(7,'Namrata Shroff','1980-01-01','baroda','5435435454','namrata@shroff.com','n','2010','New','Professor','Information Technology','M','General','A+','5464665464','1'),(8,'Hardik Patel','1992-05-08','Satadhar','8866240072','h','h','2010','Regular','Professor','Information Technology','M','General','A+','8866240072','0');
/*!40000 ALTER TABLE `staff_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student_master`
--

DROP TABLE IF EXISTS `student_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `enroll_no` varchar(15) DEFAULT NULL,
  `name` varchar(60) NOT NULL,
  `dob` varchar(11) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `contact_no` varchar(12) DEFAULT NULL,
  `email_id` varchar(45) DEFAULT NULL,
  `pwd` varchar(45) DEFAULT NULL,
  `department` varchar(200) DEFAULT NULL,
  `admission_year` varchar(4) DEFAULT NULL,
  `semester` varchar(1) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `isTFW` binary(1) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `merit_rank` varchar(7) DEFAULT NULL,
  `board` varchar(5) DEFAULT NULL,
  `blood_group` varchar(3) DEFAULT NULL,
  `emergency_contact_no` varchar(12) DEFAULT NULL,
  `isDelete` binary(1) DEFAULT NULL,
  `isShuffled` binary(1) DEFAULT NULL,
  `isDefence` binary(1) DEFAULT NULL,
  `isPH` binary(1) DEFAULT NULL,
  `division` varchar(10) DEFAULT NULL,
  `batch` varchar(10) DEFAULT NULL,
  `passport_no` varchar(25) DEFAULT NULL,
  `unique_id` varchar(25) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `Enrlollment_No_UNIQUE` (`enroll_no`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student_master`
--

LOCK TABLES `student_master` WRITE;
/*!40000 ALTER TABLE `student_master` DISABLE KEYS */;
INSERT INTO `student_master` VALUES (1,'100130116012','Nikhil Menghani','1990-02-25','fshfghr','1234567897','n','n','Information Technology','2010','7','M','General','0','Regular','6121','GSEB','A+','1234567898',NULL,NULL,'0','0','A','CE-A1','',''),(3,'100130116011','Rishubh','1993-07-18','ahmedabad','1234567897','r','r','Computer Engineering','2010','3','M','General','0','Regular','6121','GSEB','A+','1234567898',NULL,NULL,'0','0','N/A','IT-1','',''),(4,'100130111028','Samkit Jain','1992-07-10','sabarmati','8460048983','s','s','Electronics & Comminication Engineering','2010','7','M','General','0','Regular','6000','GSEB','O+','8460048983',NULL,NULL,'0','0','A','EC-A1','',''),(5,'100130116027','Yogesh Sharma','1992-12-22','No Idea','8866631719','y@y.y','y','Information Technology','2010','7','M','General','0','Regular','6000','GSEB','O+','8866631719',NULL,NULL,'0','0','N/A','IT-2','',''),(6,'100110011001','Niks','25-08-1993','Ahmedabad','8460048986','niks','p','IT',NULL,'7','Male','General','0','Regular','6121','GSEB','A+','9016828817',NULL,NULL,'0','0','A','IT-1','',''),(7,'100130116029','Niks','25-08-1993','Ahmedabad','8460048986','rahul','q','IT',NULL,'7','Male','General','0','','6121','GSEB','A+','9016828817',NULL,NULL,'0','0','A','IT-1','',''),(8,'100130116039','Niks','25-08-1993','Ahmedabad','8460048986','ankit','q','IT','2010','7','Male','General','0','','6121','GSEB','A+','9016828817',NULL,NULL,'0','0','A','IT-1','',''),(9,'100130116010','Rutvij','1992-10-27','Baroda','1234567897','r@r.r','r','Information Technology','2010','7','M','General','0','Regular','','GSEB','A+','1234567898',NULL,NULL,'0','0','N/A','IT-1','','');
/*!40000 ALTER TABLE `student_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject_master`
--

DROP TABLE IF EXISTS `subject_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject_master` (
  `id` int(11) NOT NULL,
  `teaching_scheme_id` int(11) DEFAULT NULL,
  `sub_name` varchar(45) DEFAULT NULL,
  `sub_code` varchar(6) DEFAULT NULL,
  `dept_id` int(11) DEFAULT NULL,
  `semester` varchar(1) DEFAULT NULL,
  `credits` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject_master`
--

LOCK TABLES `subject_master` WRITE;
/*!40000 ALTER TABLE `subject_master` DISABLE KEYS */;
INSERT INTO `subject_master` VALUES (1,1,'java','122',4,'5','6'),(2,1,'adj java','54',4,'5','6'),(3,1,'adv .net','55',3,'7','6'),(4,1,'dbms','12',3,'5','6');
/*!40000 ALTER TABLE `subject_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `teaching_scheme_master`
--

DROP TABLE IF EXISTS `teaching_scheme_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `teaching_scheme_master` (
  `id` int(11) NOT NULL,
  `lec_hour` varchar(1) DEFAULT NULL,
  `lab_hr` varchar(1) DEFAULT NULL,
  `int_marks` varchar(2) DEFAULT NULL,
  `ext_marks` varchar(2) DEFAULT NULL,
  `viva_marks` varchar(2) DEFAULT NULL,
  `isIE` binary(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `teaching_scheme_master`
--

LOCK TABLES `teaching_scheme_master` WRITE;
/*!40000 ALTER TABLE `teaching_scheme_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `teaching_scheme_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `term_master`
--

DROP TABLE IF EXISTS `term_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `term_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `staff_id` int(11) DEFAULT NULL,
  `sub_id` int(11) DEFAULT NULL,
  `sem_id` int(11) DEFAULT NULL,
  `division` varchar(3) DEFAULT NULL,
  `year` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `term_master`
--

LOCK TABLES `term_master` WRITE;
/*!40000 ALTER TABLE `term_master` DISABLE KEYS */;
INSERT INTO `term_master` VALUES (1,1,1,1,'A','2010'),(2,2,2,2,'B','2011');
/*!40000 ALTER TABLE `term_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_master`
--

DROP TABLE IF EXISTS `video_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(300) DEFAULT NULL,
  `class_id` int(11) DEFAULT NULL,
  `key` varchar(45) DEFAULT NULL,
  `description` varchar(10000) DEFAULT NULL,
  `thumbnail_path` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_master`
--

LOCK TABLES `video_master` WRITE;
/*!40000 ALTER TABLE `video_master` DISABLE KEYS */;
INSERT INTO `video_master` VALUES (1,'Nagada Sang Dhol Song - Ram-leela ft. Deepika Padukone, Ranveer Singh',1,'cLIQzxgFeNE','This Navratri &quotcelebrate garba like no other with the most awaited song of the year &quotNagada Sang&quotDhol from Ram-leela featuring the stunning Deepika Padukone and Ranveer Singh. The song is sung in the melodious voice of Shreya Ghoshal & Osman Mir.','thumbnail.jpg'),(2,'Comedy Nights with kapil: \'Shadi Ke Side Effects\'',1,'P2D6h0z0DR0','This one is comedy nights with kapil.','thumbnail.jpg'),(3,'KAPIL playing as Rajkumar and Sumona as Rajkumari in Comedy Circus 2013 Video in HD',1,'bbgoT7jq3x0','KAPIL playing as Rajkumar and Sumona as Rajkumari in Comedy Circus 2013 Video in HD','thumbnail.jpg'),(4,'The Script - Hall of Fame ft. will.i.am ',1,'mk48xRzuNvA','Music video by The Script feat. will.i.am performing Hall of Fame.','thumbnail.jpg'),(5,'Test',1,'yh2SrzCkNQA','ghvyufy8','thumbnail.jpg'),(6,'First Video',0,'yh2SrzCkNQA','','thumbnail.jpg'),(7,'First Video',0,'yh2SrzCkNQA','','thumbnail.jpg');
/*!40000 ALTER TABLE `video_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `virtualclass_master`
--

DROP TABLE IF EXISTS `virtualclass_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `virtualclass_master` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `class_name` varchar(45) DEFAULT NULL,
  `title` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `staff_id` int(11) DEFAULT NULL,
  `courtesy` varchar(45) DEFAULT NULL,
  `key` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `virtualclass_master`
--

LOCK TABLES `virtualclass_master` WRITE;
/*!40000 ALTER TABLE `virtualclass_master` DISABLE KEYS */;
INSERT INTO `virtualclass_master` VALUES (1,'Java','java the complete reference','this is a higher level computer language',1,'kk jani',NULL),(2,'Mathematics','Maths','It is Mathematics',2,'Nikhil','gge'),(3,NULL,'Advanced .Net Technology','This is 7th sem subject.',2,'Nikhil Menghani','yh2SrzCkNQA');
/*!40000 ALTER TABLE `virtualclass_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'cms'
--
/*!50003 DROP FUNCTION IF EXISTS `getDeptID` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getDeptID`(dep_name VARCHAR(45)) RETURNS int(11)
BEGIN
declare dep_id int;
select id into dep_id from dept_master where dept_name = dep_name;
RETURN dep_id;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `getStudentId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `getStudentId`(username varchar(50), pwd varchar (50)) RETURNS int(11)
BEGIN
declare idd int;
select id into idd from cms.student_master where email_id = username and pwd = pwd;
RETURN idd;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `isStudentRegistered` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `isStudentRegistered`(enrol_no varchar(45)) RETURNS int(11)
BEGIN
select count(*) into @count from cms.student_master where enroll_no = enrol_no;
RETURN @count;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getDeptId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getDeptId`(in dep_name varchar(50), out dep_id int(45))
BEGIN
declare dep_id int;
select id into dep_id from dept_master where dept_name = dep_name;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `getStaffId` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `getStaffId`(in username varchar(50), out idd int(45))
BEGIN
declare idd int;
select id into idd from staff_master where email_id = username;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `SetStudentDetails` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `SetStudentDetails`(in fullname varchar(60) , in enroll_no varchar(12), in department varchar(60) , in email_id varchar(60) , in pwd varchar(45) , in address varchar(150) , in contact_no varchar(10) , in emergency_contact_no varchar(10) , in dob varchar(10) , in admission_year varchar(4) , in semester varchar(10) , in division varchar(4) , in batch varchar(5) , in gender varchar(7) , in category varchar(15) , in typ varchar(15) , in merit_rank varchar(6) , in board varchar(5), in passport_no varchar(25) , in unique_id varchar(25) , in blood_group varchar(3) , in isTFW binary(1) , in isDefence binary(1), in isPH binary(1))
BEGIN

Set @count = isStudentRegistered(enroll_no);
Set @id = getStudentId(email_id,pwd);
if(@count=0) then insert into cms.student_master (`name`, enroll_no, department, email_id, pwd, address, contact_no, emergency_contact_no, dob, admission_year, semester, division, batch, gender, category, `type`, merit_rank, board, passport_no, unique_id, blood_group, isTFW, isDefence, isPH ) values (fullname, enroll_no, department, email_id, pwd, address, contact_no, emergency_contact_no, dob, admission_year, semester, division, batch, gender, category, typ, merit_rank, board, passport_no, unique_id, blood_group, isTFW, isDefence, isPH );
else UPDATE `cms`.`student_master` SET `name` = fullname, `enroll_no` = enroll_no, `department` = department, `address` = address, `contact_no` = contact_no, `emergency_contact_no` = emergency_contact_no, `dob` = dob, `admission_year` = admission_year, `semester` = semester, `division` = division, `batch` = batch, `gender` = gender, `category` = category, `type` = typ, `merit_rank` = merit_rank, `board` = board, `passport_no` = passport_no, `unique_id` = unique_id, `blood_group` = blood_group, `isTFW` = isTFW, `isDefence` = isDefence, `isPH` = isPH where id = @id;
end if;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2013-10-26 21:37:58
