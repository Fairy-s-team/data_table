-- MySQL dump 10.13  Distrib 8.0.19, for Win64 (x86_64)
--
-- Host: localhost    Database: evaluation_system
-- ------------------------------------------------------
-- Server version	8.0.19

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
-- Table structure for table `evaluation`
--

DROP TABLE IF EXISTS `evaluation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `evaluation` (
  `stuId` char(10) COLLATE utf8_bin NOT NULL,
  `teacherId` char(10) COLLATE utf8_bin NOT NULL,
  `courseId` varchar(10) COLLATE utf8_bin NOT NULL,
  `rankQ1` char(1) COLLATE utf8_bin NOT NULL COMMENT '讲课思路和概念清楚',
  `rankQ2` char(1) COLLATE utf8_bin NOT NULL COMMENT '教师上课认真，课堂纪律好',
  `rankQ3` char(1) COLLATE utf8_bin NOT NULL COMMENT '使用现代化教学手段',
  `rankQ4` char(1) COLLATE utf8_bin NOT NULL COMMENT '批改作业认真，辅导答疑热情',
  `rankQ5` char(1) COLLATE utf8_bin NOT NULL COMMENT '上课不迟到，不提前下课，不随便停课',
  `rankQ6` char(1) COLLATE utf8_bin NOT NULL COMMENT '教材和辅导资料适用',
  PRIMARY KEY (`stuId`,`teacherId`,`courseId`),
  KEY `FK_teacherId_teacherInfo_evaluation` (`teacherId`),
  KEY `FK_courseId_course_evaluation` (`courseId`),
  CONSTRAINT `FK_courseId_course_evaluation` FOREIGN KEY (`courseId`) REFERENCES `course` (`courseId`),
  CONSTRAINT `FK_stuId_studentInfo_evaluation` FOREIGN KEY (`stuId`) REFERENCES `student_info` (`stuId`),
  CONSTRAINT `FK_teacherId_teacherInfo_evaluation` FOREIGN KEY (`teacherId`) REFERENCES `teacher_info` (`teacherId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='评价信息';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `evaluation`
--

LOCK TABLES `evaluation` WRITE;
/*!40000 ALTER TABLE `evaluation` DISABLE KEYS */;
/*!40000 ALTER TABLE `evaluation` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-13 23:24:24
