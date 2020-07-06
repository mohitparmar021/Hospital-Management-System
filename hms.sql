-- MySQL dump 10.10
--
-- Host: localhost    Database: hms
-- ------------------------------------------------------
-- Server version	5.0.22-community-nt

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
-- Table structure for table `adddoctor`
--

DROP TABLE IF EXISTS `adddoctor`;
CREATE TABLE `adddoctor` (
  `did` int(5) NOT NULL auto_increment,
  `firstname` varchar(20) default NULL,
  `lastname` varchar(20) default NULL,
  `gender` varchar(6) default NULL,
  `bloodgroup` varchar(4) default NULL,
  `dateofjoining` varchar(12) default NULL,
  `specialization` varchar(20) default NULL,
  `maritalstatus` varchar(5) default NULL,
  `mobile` varchar(13) default NULL,
  `address` varchar(30) default NULL,
  `dob` varchar(12) default NULL,
  `email` varchar(30) default NULL,
  `username` varchar(30) default NULL,
  `password` varchar(30) default NULL,
  `qualification` varchar(30) default NULL,
  PRIMARY KEY  (`did`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adddoctor`
--


/*!40000 ALTER TABLE `adddoctor` DISABLE KEYS */;
LOCK TABLES `adddoctor` WRITE;
INSERT INTO `adddoctor` VALUES (6,'Mohit','Parmar','male','B+','2019-08-25','heart Surgen','no','9856742536','sagore','2019-07-31','mohit@gmail.com','mohit@gmail.com','mohit','MBBS'),(7,'Sachin','Yadav','male','B+','2019-08-15','heart Surgen','no','8957456982','indore','2019-07-27','sachin@gmail.com','sachin@gmail.com','2019-08-15','MBBS'),(8,'Ankit','Parmar','male','B+','2019-08-13','abab','no','5588996677','Indore','1988-04-12','ankit@gmail.com','ankit@gmail.com','1988-04-12','MBBS'),(9,'Rohit','Parmar','male','O-','2019-08-14','Surgen','yes','7788996622','Indore','1990-09-11','rohit11@gmail.com','rohit11@gmail.com','rohit','MBBS'),(10,'Amrita','sharma','female','B-','2019-08-14','heart Surgen','yes','9857486958','Indore','1885-08-04','amritasharma12@gmail.com','amritasharma12@gmail.com','amrita','MBBS');
UNLOCK TABLES;
/*!40000 ALTER TABLE `adddoctor` ENABLE KEYS */;

--
-- Table structure for table `addpatient`
--

DROP TABLE IF EXISTS `addpatient`;
CREATE TABLE `addpatient` (
  `id` int(5) NOT NULL auto_increment,
  `firstname` varchar(25) default NULL,
  `lastname` varchar(25) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `age` varchar(3) NOT NULL,
  `date` varchar(15) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `ward` varchar(5) NOT NULL,
  `bed` varchar(5) default NULL,
  `address` varchar(30) NOT NULL,
  `problem` varchar(30) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addpatient`
--


/*!40000 ALTER TABLE `addpatient` DISABLE KEYS */;
LOCK TABLES `addpatient` WRITE;
INSERT INTO `addpatient` VALUES (1,'mohit','parmar','male','21','2019-08-12','9856742563','2','222','Pithampur','fever'),(4,'Shivam','Yadav','male','45','2019-08-12','4758693252','1','25','Indore','fever'),(5,'Ram','Chouhan','male','34','2019-08-14','9988774455','4','45','qqqq','htht'),(6,'Ramesh','saha','male','78','2019-08-14','5689741258','5','45','tyt','fever'),(7,'Rahul','Singh','male','55','2019-08-14','7898654569','2','55','Sagore','Fever');
UNLOCK TABLES;
/*!40000 ALTER TABLE `addpatient` ENABLE KEYS */;

--
-- Table structure for table `addreceptionist`
--

DROP TABLE IF EXISTS `addreceptionist`;
CREATE TABLE `addreceptionist` (
  `rid` int(5) NOT NULL auto_increment,
  `firstname` varchar(20) default NULL,
  `lastname` varchar(20) default NULL,
  `gender` varchar(10) default NULL,
  `bloodgroup` varchar(5) default NULL,
  `dob` varchar(10) default NULL,
  `datejoining` varchar(10) default NULL,
  `qualification` varchar(20) default NULL,
  `maritalstatus` varchar(5) default NULL,
  `mobile` varchar(10) default NULL,
  `address` varchar(30) default NULL,
  `username` varchar(30) default NULL,
  `password` varchar(15) default NULL,
  `email` varchar(25) default NULL,
  PRIMARY KEY  (`rid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addreceptionist`
--


/*!40000 ALTER TABLE `addreceptionist` DISABLE KEYS */;
LOCK TABLES `addreceptionist` WRITE;
INSERT INTO `addreceptionist` VALUES (6,'Rani','Yadav','female','B-','1999-07-27','2019-08-12','BCA','no','4455669988','Indore','rani123@gmail.com','rani','rani123@gmail.com'),(7,'Isha','sharma','female','O-','1996-08-04','2019-08-13','BSC','no','7799885566','Pithampur','isha@gmail.com','1996-08-04','isha@gmail.com'),(8,'Shivani','Mishra','female','B+','1995-09-12','2019-08-14','BSC','no','8899665577','Indore','shivani123@gmail.com','1995-09-12','shivani123@gmail.com'),(9,'Divya','Yadav','female','A+','1995-11-08','2019-08-14','Nursing','no','8877556699','Pithampur','divyayadav@gmail.com','1995-11-08','divyayadav@gmail.com');
UNLOCK TABLES;
/*!40000 ALTER TABLE `addreceptionist` ENABLE KEYS */;

--
-- Table structure for table `adminlogin`
--

DROP TABLE IF EXISTS `adminlogin`;
CREATE TABLE `adminlogin` (
  `username` varchar(15) default NULL,
  `password` varchar(10) default NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `adminlogin`
--


/*!40000 ALTER TABLE `adminlogin` DISABLE KEYS */;
LOCK TABLES `adminlogin` WRITE;
INSERT INTO `adminlogin` VALUES ('admin','123');
UNLOCK TABLES;
/*!40000 ALTER TABLE `adminlogin` ENABLE KEYS */;

--
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
CREATE TABLE `appointment` (
  `app_id` int(5) NOT NULL auto_increment,
  `name` varchar(30) default NULL,
  `gender` varchar(6) default NULL,
  `age` int(3) default NULL,
  `mobile` varchar(10) default NULL,
  `address` varchar(30) default NULL,
  `visitreason` varchar(20) default NULL,
  `date` varchar(15) default NULL,
  `doctor` varchar(30) default NULL,
  PRIMARY KEY  (`app_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `appointment`
--


/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
LOCK TABLES `appointment` WRITE;
INSERT INTO `appointment` VALUES (1,'Mahesh Babu','male',45,'8899966584','indore','fever','2019-08-13','MohitParmar'),(2,'Ram Chouhan','male',78,'1122336655','Indore','fever','2019-08-13','SachinYadav'),(3,'Shiv Gole','male',56,'4455668877','Indore','Heart surgery','2019-08-14','RohitParmar'),(4,'Ramdev Mishra','male',32,'7845126598','Sagore','Fever','2019-08-14','RohitParmar'),(5,'Amit Nath','male',34,'7898564569','Indore','Fever','2019-08-14','Amritasharma');
UNLOCK TABLES;
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

