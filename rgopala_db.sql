-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 10, 2021 at 11:17 PM
-- Server version: 10.3.32-MariaDB-0ubuntu0.20.04.1
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rgopala_db`
--
CREATE DATABASE IF NOT EXISTS `rgopala_db` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `rgopala_db`;

-- --------------------------------------------------------

--
-- Table structure for table `ADOPTION`
--

DROP TABLE IF EXISTS `ADOPTION`;
CREATE TABLE `ADOPTION` (
  `ADOP_NUM` char(5) NOT NULL,
  `ADOP_DATE` date DEFAULT NULL,
  `PET_NUM` char(5) DEFAULT NULL,
  `OWN_NUM` char(5) DEFAULT NULL,
  `ADOP_FEE` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ADOPTION`
--

INSERT INTO `ADOPTION` (`ADOP_NUM`, `ADOP_DATE`, `PET_NUM`, `OWN_NUM`, `ADOP_FEE`) VALUES
('80001', '2021-10-10', '10001', '50001', '50.50'),
('80002', '2021-10-15', '10002', '50003', '60.20'),
('80003', '2021-10-22', '10001', '50001', '50.20'),
('80004', '2021-09-01', '10007', '50004', '60.50'),
('80005', '2021-08-09', '10010', '50005', '60.25');

-- --------------------------------------------------------

--
-- Table structure for table `APPOINTMENT`
--

DROP TABLE IF EXISTS `APPOINTMENT`;
CREATE TABLE `APPOINTMENT` (
  `APP_NUM` char(5) NOT NULL,
  `APP_DATE` date DEFAULT NULL,
  `PET_NUM` char(5) DEFAULT NULL,
  `VET_NUM` char(5) DEFAULT NULL,
  `APP_DIAGNOSIS` varchar(100) DEFAULT NULL,
  `APP_PRESCRIPTION` varchar(100) DEFAULT NULL,
  `INV_NUM` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `APPOINTMENT`
--

INSERT INTO `APPOINTMENT` (`APP_NUM`, `APP_DATE`, `PET_NUM`, `VET_NUM`, `APP_DIAGNOSIS`, `APP_PRESCRIPTION`, `INV_NUM`) VALUES
('32001', '2021-12-01', '10001', '31002', 'Ear Infections', 'Enrofloxacin', '90009'),
('32002', '2021-12-02', '10004', '31001', 'Gingivitis', 'Perioshield', '90010'),
('32003', '2021-12-03', '10005', '31003', 'Fracture', 'Surgery', '90011'),
('32004', '2021-12-04', '10008', '31005', 'Periodontitis', 'metronidazole', '90012'),
('32005', '2021-12-06', '10009', '31003', 'Fracture', 'Surgery', '90013');

-- --------------------------------------------------------

--
-- Table structure for table `ASSIGNMENT`
--

DROP TABLE IF EXISTS `ASSIGNMENT`;
CREATE TABLE `ASSIGNMENT` (
  `ASSI_NUM` char(5) NOT NULL,
  `ASSI_DATE` date DEFAULT NULL,
  `PET_NUM` char(5) DEFAULT NULL,
  `FOS_NUM` char(5) DEFAULT NULL,
  `ASSI_FUND` decimal(6,2) DEFAULT NULL,
  `ASSI_NUM_DAYS` int(11) DEFAULT NULL,
  `INV_NUM` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ASSIGNMENT`
--

INSERT INTO `ASSIGNMENT` (`ASSI_NUM`, `ASSI_DATE`, `PET_NUM`, `FOS_NUM`, `ASSI_FUND`, `ASSI_NUM_DAYS`, `INV_NUM`) VALUES
('52001', '2021-11-10', '10003', '51003', '100.00', 15, '90004'),
('52002', '2021-11-20', '10004', '51001', '0.00', 15, NULL),
('52003', '2021-11-20', '10005', '51001', '0.00', 15, NULL),
('52004', '2021-12-07', '10004', '51002', '0.00', 10, NULL),
('52005', '2021-12-15', '10003', '51003', '150.00', 20, '90008');

-- --------------------------------------------------------

--
-- Table structure for table `BREED`
--

DROP TABLE IF EXISTS `BREED`;
CREATE TABLE `BREED` (
  `BREED_NUM` char(5) NOT NULL,
  `BREED_NAME` varchar(40) DEFAULT NULL,
  `BREED_TYPE` varchar(40) DEFAULT NULL,
  `BREED_VERT_GRP` varchar(40) DEFAULT NULL,
  `BREED_DIET_CLASS` varchar(40) DEFAULT NULL,
  `BREED_LIFE_EXP` int(11) DEFAULT NULL,
  `BREED_QUALITIES` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `BREED`
--

INSERT INTO `BREED` (`BREED_NUM`, `BREED_NAME`, `BREED_TYPE`, `BREED_VERT_GRP`, `BREED_DIET_CLASS`, `BREED_LIFE_EXP`, `BREED_QUALITIES`) VALUES
('11001', 'Golden Retriever', 'Dog', 'Mammal', 'Omnivore', 10, 'gentle, playful, outgoing, kid-friendly, easy to train, frequent grooming needed'),
('11002', 'German Shepherd', 'Dog', 'Mammal', 'Omnivore', 11, 'gentle, intelligent, brave, kid-friendly, easy to train, less grooming needed'),
('11003', 'British Shorthair', 'Cat', 'Mammal', 'Carnivore', 17, 'affectionate, intelligent, kid-friendly, less grooming needed'),
('11004', 'Rottweiler', 'Dog', 'Mammal', 'Omnivore', 10, 'devoted, loyal, loving, intelligent, and protective'),
('11005', 'Siberian Husky', 'Dog', 'Mammal', 'Omnivore', 13, 'athletic, playful, friendly and gentle');

-- --------------------------------------------------------

--
-- Table structure for table `CLINIC`
--

DROP TABLE IF EXISTS `CLINIC`;
CREATE TABLE `CLINIC` (
  `CLI_NUM` char(5) NOT NULL,
  `CLI_NAME` varchar(40) DEFAULT NULL,
  `CLI_ADD_STREET` varchar(40) DEFAULT NULL,
  `CLI_ADD_CITY` varchar(25) DEFAULT NULL,
  `CLI_ADD_STATE` char(2) DEFAULT NULL,
  `CLI_ADD_ZIP` char(5) DEFAULT NULL,
  `CLI_CONTACT_NUM` char(12) DEFAULT NULL,
  `CLI_NUM_VETS` int(11) DEFAULT NULL,
  `CLI_FACILITIES` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `CLINIC`
--

INSERT INTO `CLINIC` (`CLI_NUM`, `CLI_NAME`, `CLI_ADD_STREET`, `CLI_ADD_CITY`, `CLI_ADD_STATE`, `CLI_ADD_ZIP`, `CLI_CONTACT_NUM`, `CLI_NUM_VETS`, `CLI_FACILITIES`) VALUES
('30001', 'City Animal Clinic', '635 N East St', 'Indianapolis', 'IN', '46202', '317-396-0146', 10, 'exam rooms,surgery room, x-ray, dental area'),
('30002', 'All Pet Health Care', '3825 W Washington St', 'Indianapolis', 'IN', '46202', '317-396-1172', 20, 'pharmacy, treatment area, surgery room'),
('30003', 'Paws Health Animal Clinic', '1300 N Emerson Ave', 'Indianapolis', 'IN', '46202', '317-396-3356', 15, 'exam rooms, pharmacy, treatment area, surgery room, x-ray, dental area'),
('30004', 'Harvester Animal Clinic', '899 Village Center Dr,', 'Burr Ridge', 'IL', '60527', '630-528-3389', 25, 'exam rooms, pharmacy, treatment area, vaccinations, blood tests, dental cleaning'),
('30005', 'Johnson Animal Health Clinic', '3825 W Washington St', 'Indianapolis', 'IN', '46202', '317-398-6785', 15, ' dental area, pharmacy, treatment area, surgery room');

-- --------------------------------------------------------

--
-- Table structure for table `DONATION`
--

DROP TABLE IF EXISTS `DONATION`;
CREATE TABLE `DONATION` (
  `DON_NUM` char(5) NOT NULL,
  `DON_DATE` date DEFAULT NULL,
  `DNR_NUM` char(5) DEFAULT NULL,
  `DON_AMOUNT` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `DONATION`
--

INSERT INTO `DONATION` (`DON_NUM`, `DON_DATE`, `DNR_NUM`, `DON_AMOUNT`) VALUES
('71001', '2021-06-01', '70001', '5000.00'),
('71002', '2021-07-05', '70002', '3000.00'),
('71003', '2021-01-01', '70003', '7500.00'),
('71004', '2021-09-10', '70001', '2500.00'),
('71005', '2021-01-01', '70004', '4500.00'),
('71006', '2021-08-14', '70005', '1500.00');

-- --------------------------------------------------------

--
-- Table structure for table `DONATOR`
--

DROP TABLE IF EXISTS `DONATOR`;
CREATE TABLE `DONATOR` (
  `DNR_NUM` char(5) NOT NULL,
  `DNR_ORG_NAME` varchar(40) DEFAULT NULL,
  `DNR_DIRECTOR` varchar(40) DEFAULT NULL,
  `DNR_LIASION` varchar(40) DEFAULT NULL,
  `DNR_CONTACT_NUM` char(12) DEFAULT NULL,
  `DNR_ADD_STREET` varchar(40) DEFAULT NULL,
  `DNR_ADD_CITY` varchar(25) DEFAULT NULL,
  `DNR_ADD_STATE` char(2) DEFAULT NULL,
  `DNR_ADD_ZIP` char(5) DEFAULT NULL,
  `DNR_DOF` date DEFAULT NULL,
  `DNR_NUM_RUN_YRS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `DONATOR`
--

INSERT INTO `DONATOR` (`DNR_NUM`, `DNR_ORG_NAME`, `DNR_DIRECTOR`, `DNR_LIASION`, `DNR_CONTACT_NUM`, `DNR_ADD_STREET`, `DNR_ADD_CITY`, `DNR_ADD_STATE`, `DNR_ADD_ZIP`, `DNR_DOF`, `DNR_NUM_RUN_YRS`) VALUES
('70001', 'Animal Welfare Society', 'Liam Park', 'James Willson', '317-889-7645', '40 And 8 Avenue', 'Indianapolis', 'IN', '46204', '1980-01-01', 41),
('70002', 'Pets Health Group', 'Alice Cooper', 'Rebecca Turner', '618-234-7666', '116th Street, East ', 'Chicago', 'IL', '60628', '1990-05-05', 31),
('70003', 'Alley Cats Aid', 'John Cruz', 'Millie Edwards', '317-112-9876', 'Adams Boulevard East Drive', 'Indianapolis', 'IN', '46220', '2000-04-09', 21),
('70004', 'Animal Healing Society', 'Betty Davis', 'Micheal Clarkson', '618-234-7666', '878 Village Center Dr,', 'Burr Ridge', 'IL', '60527', '1990-04-29', 41),
('70005', 'Lost Pets Aid', 'Bob Miller', 'William Brown', '317-112-9876', '3200 W Washington St', 'Indianapolis', 'IN', '46202', '2000-02-10', 21);

-- --------------------------------------------------------

--
-- Table structure for table `FOSTER`
--

DROP TABLE IF EXISTS `FOSTER`;
CREATE TABLE `FOSTER` (
  `FOS_NUM` char(5) NOT NULL,
  `FOS_FNAME` varchar(40) DEFAULT NULL,
  `FOS_LNAME` varchar(40) DEFAULT NULL,
  `FOS_CONTACT_NUM` char(12) DEFAULT NULL,
  `FOS_ADD_STREET` varchar(40) DEFAULT NULL,
  `FOS_ADD_CITY` varchar(25) DEFAULT NULL,
  `FOS_ADD_STATE` char(2) DEFAULT NULL,
  `FOS_ADD_ZIP` char(5) DEFAULT NULL,
  `FOS_PROFESSION` varchar(40) DEFAULT NULL,
  `FOS_DOB` date DEFAULT NULL,
  `FOS_NUM_PETS` int(11) DEFAULT NULL,
  `FOS_NUM_FOS_PETS` int(11) DEFAULT NULL,
  `FOS_NUM_KIDS` int(11) DEFAULT NULL,
  `FOS_MED_KNOW` varchar(100) DEFAULT NULL,
  `FOS_NUM_FREE_HRS` int(11) DEFAULT NULL,
  `FOS_PAID_VOL` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `FOSTER`
--

INSERT INTO `FOSTER` (`FOS_NUM`, `FOS_FNAME`, `FOS_LNAME`, `FOS_CONTACT_NUM`, `FOS_ADD_STREET`, `FOS_ADD_CITY`, `FOS_ADD_STATE`, `FOS_ADD_ZIP`, `FOS_PROFESSION`, `FOS_DOB`, `FOS_NUM_PETS`, `FOS_NUM_FOS_PETS`, `FOS_NUM_KIDS`, `FOS_MED_KNOW`, `FOS_NUM_FREE_HRS`, `FOS_PAID_VOL`) VALUES
('51001', 'Alice', 'Miller', '317-745-2562', '6th Avenue East', 'Indianapolis', 'IN', '46221', 'Doctor', '1990-01-03', 1, 1, 3, 'SURGERY', 3, 'V'),
('51002', 'John', 'Lewis', '345-224-9845', '2nd Bomar St', 'Greenwood', 'IN', '46142', 'Teacher', '1996-12-08', 1, 0, 4, NULL, 5, 'V'),
('51003', 'Jane', 'Williams', '654-377-9974', '10 Oak Drive', 'Indianapolis', 'IN', '46202', 'Software Engineer', '1995-04-06', 1, 3, 7, NULL, 6, 'P'),
('51004', 'Adam', 'Scott', '345-224-9845', '1472 N Emerson Ave', 'Indianapolis', 'IN', '46201', 'Carpenter', '1996-12-08', 0, 0, 2, NULL, 6, 'P'),
('51005', 'Stephen', 'Clark', '654-377-9974', '1300 N Emerson Ave', 'Indianapolis', 'IN', '46201', 'Singer', '1995-04-06', 1, 0, 7, NULL, 5, 'V');

-- --------------------------------------------------------

--
-- Table structure for table `INVOICE`
--

DROP TABLE IF EXISTS `INVOICE`;
CREATE TABLE `INVOICE` (
  `INV_NUM` char(5) NOT NULL,
  `INV_DATE` date DEFAULT NULL,
  `INV_AMOUNT` decimal(6,2) DEFAULT NULL,
  `DON_NUM` char(5) DEFAULT NULL,
  `INV_REASON` varchar(40) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `INVOICE`
--

INSERT INTO `INVOICE` (`INV_NUM`, `INV_DATE`, `INV_AMOUNT`, `DON_NUM`, `INV_REASON`) VALUES
('90001', '2021-11-01', '1500.00', '71001', 'Salary'),
('90002', '2021-11-01', '1000.00', '71001', 'Salary'),
('90003', '2021-11-01', '1000.00', '71001', 'Salary'),
('90004', '2021-11-10', '100.00', '71002', 'Foster Cost'),
('90005', '2021-12-01', '1500.00', '71002', 'Salary'),
('90006', '2021-12-01', '1000.00', '71003', 'Salary'),
('90007', '2021-12-01', '1000.00', '71001', 'Salary'),
('90008', '2021-12-15', '150.00', '71003', 'Foster Cost'),
('90009', '2021-12-01', '20.00', '71003', 'Vet Cost'),
('90010', '2021-12-02', '30.00', '71003', 'Vet Cost'),
('90011', '2021-12-03', '10.00', '71003', 'Vet Cost'),
('90012', '2021-12-04', '20.00', '71003', 'Vet Cost'),
('90013', '2021-12-06', '30.00', '71003', 'Vet Cost');

-- --------------------------------------------------------

--
-- Table structure for table `OWNER`
--

DROP TABLE IF EXISTS `OWNER`;
CREATE TABLE `OWNER` (
  `OWN_NUM` char(5) NOT NULL,
  `OWN_FNAME` varchar(40) DEFAULT NULL,
  `OWN_LNAME` varchar(40) DEFAULT NULL,
  `OWN_CONTACT_NUM` char(12) DEFAULT NULL,
  `OWN_ADD_STREET` varchar(40) DEFAULT NULL,
  `OWN_ADD_CITY` varchar(25) DEFAULT NULL,
  `OWN_ADD_STATE` char(2) DEFAULT NULL,
  `OWN_ADD_ZIP` char(5) DEFAULT NULL,
  `OWN_PROFESSION` varchar(40) DEFAULT NULL,
  `OWN_DOB` date DEFAULT NULL,
  `OWN_NUM_PETS` int(11) DEFAULT NULL,
  `OWN_NUM_KIDS` int(11) DEFAULT NULL,
  `OWN_NUM_FREE_HRS` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `OWNER`
--

INSERT INTO `OWNER` (`OWN_NUM`, `OWN_FNAME`, `OWN_LNAME`, `OWN_CONTACT_NUM`, `OWN_ADD_STREET`, `OWN_ADD_CITY`, `OWN_ADD_STATE`, `OWN_ADD_ZIP`, `OWN_PROFESSION`, `OWN_DOB`, `OWN_NUM_PETS`, `OWN_NUM_KIDS`, `OWN_NUM_FREE_HRS`) VALUES
('50001', 'Thomas', 'Brown', '317-377-0999', '10 Oak Drive', 'Indianapolis', 'IN', '46202', 'Teacher', '1994-05-09', 2, 0, 4),
('50002', 'Jane', 'Williams', '654-377-9974', '1300 N Emerson Ave', 'Indianapolis', 'IN', '46201', 'Software Engineer', '1994-06-12', 1, 3, 7),
('50003', 'Harris', 'Thompson', '573-334-0929', '47th Pl Exd', ' Chicago,', 'IL', '60609', 'Dentist', '1995-07-16', 3, 2, 5),
('50004', 'David', 'Smith', '654-322-9987', '1472 N Emerson Ave', 'Indianapolis', 'IN', '46201', 'Professor', '1982-02-02', 0, 4, 8),
('50005', 'Amanda', 'Colbert', '573-314-7645', '90th Pl Exd', ' Chicago,', 'IL', '60609', 'Artist', '1985-04-14', 1, 2, 10);

-- --------------------------------------------------------

--
-- Table structure for table `PET`
--

DROP TABLE IF EXISTS `PET`;
CREATE TABLE `PET` (
  `PET_NUM` char(5) NOT NULL,
  `PET_NAME` varchar(40) DEFAULT NULL,
  `PET_DOB` date DEFAULT NULL,
  `PET_DOR` date DEFAULT NULL,
  `PET_DOP` date DEFAULT NULL,
  `BREED_NUM` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `PET`
--

INSERT INTO `PET` (`PET_NUM`, `PET_NAME`, `PET_DOB`, `PET_DOR`, `PET_DOP`, `BREED_NUM`) VALUES
('10001', 'Max', '2011-11-04', '2021-10-10', NULL, '11001'),
('10002', 'Buddy', '2019-08-09', '2020-11-06', NULL, '11002'),
('10003', 'Charlie', '2010-07-05', '2021-10-10', NULL, '11002'),
('10004', 'Kitty', '2010-06-06', '2010-06-06', NULL, '11003'),
('10005', 'Lucky', '2010-06-06', '2010-06-06', NULL, '11003'),
('10006', 'Jimmy', '2011-09-03', '2021-11-04', '2021-11-05', '11004'),
('10007', 'Lola', '2019-04-01', '2020-06-09', NULL, '11005'),
('10008', 'Marile', '2010-08-02', '2021-08-12', NULL, '11001'),
('10009', 'Scooby', '2010-07-06', '2021-04-16', NULL, '11004'),
('10010', 'Simba', '2010-09-08', '2021-07-13', NULL, '11003');

-- --------------------------------------------------------

--
-- Table structure for table `SALARY`
--

DROP TABLE IF EXISTS `SALARY`;
CREATE TABLE `SALARY` (
  `SAL_NUM` char(5) NOT NULL,
  `SAL_DATE` date DEFAULT NULL,
  `STF_NUM` char(5) DEFAULT NULL,
  `SAL_AMOUNT` decimal(6,2) DEFAULT NULL,
  `SAL_NUM_WORK_HRS` int(11) DEFAULT NULL,
  `INV_NUM` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `SALARY`
--

INSERT INTO `SALARY` (`SAL_NUM`, `SAL_DATE`, `STF_NUM`, `SAL_AMOUNT`, `SAL_NUM_WORK_HRS`, `INV_NUM`) VALUES
('61000', '2021-11-01', '60001', '1500.00', 180, '90001'),
('61002', '2021-11-01', '60002', '1250.00', 150, '90002'),
('61003', '2021-11-01', '60003', '1000.00', 125, '90003'),
('61004', '2021-12-01', '60001', '1500.00', 180, '90005'),
('61005', '2021-12-01', '60002', '1250.00', 180, '90006'),
('61006', '2021-12-01', '60002', '1000.00', 125, '90007');

-- --------------------------------------------------------

--
-- Table structure for table `STAFF`
--

DROP TABLE IF EXISTS `STAFF`;
CREATE TABLE `STAFF` (
  `STF_NUM` char(5) NOT NULL,
  `STF_FNAME` varchar(40) DEFAULT NULL,
  `STF_LNAME` varchar(40) DEFAULT NULL,
  `STF_CONTACT_NUM` char(12) DEFAULT NULL,
  `STF_ADD_STREET` varchar(40) DEFAULT NULL,
  `STF_ADD_CITY` varchar(25) DEFAULT NULL,
  `STF_ADD_STATE` char(2) DEFAULT NULL,
  `STF_ADD_ZIP` char(5) DEFAULT NULL,
  `STF_DOB` date DEFAULT NULL,
  `STF_DESIGNATION` varchar(40) DEFAULT NULL,
  `STF_PAID_VOL` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `STAFF`
--

INSERT INTO `STAFF` (`STF_NUM`, `STF_FNAME`, `STF_LNAME`, `STF_CONTACT_NUM`, `STF_ADD_STREET`, `STF_ADD_CITY`, `STF_ADD_STATE`, `STF_ADD_ZIP`, `STF_DOB`, `STF_DESIGNATION`, `STF_PAID_VOL`) VALUES
('60001', 'Catherine', 'Flores', '317-398-0034', '86th Street West', 'Indianapolis', 'IN', '46278', '1990-09-15', 'Caretaker', 'P'),
('60002', 'Robert', 'Adams', '317-398-0034', '87th Street West', 'Indianapolis', 'IN', '46278', '1992-07-14', 'Caretaker', 'P'),
('60003', 'James', 'Hall', '317-398-0034', '88th Street West', 'Indianapolis', 'IN', '46278', '1992-05-10', 'Caretaker', 'P'),
('60004', 'Annie', 'Evans', '317-398-0034', '93 Drive East', 'Indianapolis', 'IN', '46231', '1989-12-01', 'Caretaker', 'V'),
('60005', 'George', 'Miller', '317-398-0674', '6th Avenue East', 'Indianapolis', 'IN', '46221', '1993-04-07', 'Caretaker', 'V');

-- --------------------------------------------------------

--
-- Table structure for table `VET`
--

DROP TABLE IF EXISTS `VET`;
CREATE TABLE `VET` (
  `VET_NUM` char(5) NOT NULL,
  `VET_FNAME` varchar(40) DEFAULT NULL,
  `VET_LNAME` varchar(40) DEFAULT NULL,
  `VET_SPECIALIZATION` varchar(40) DEFAULT NULL,
  `VET_BROAD_CERT` varchar(40) DEFAULT NULL,
  `VET_NUM_PRACT_YRS` int(11) DEFAULT NULL,
  `VET_CONTACT_NUM` char(12) DEFAULT NULL,
  `VET_WORK_HRS` varchar(40) DEFAULT NULL,
  `CLI_NUM` char(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `VET`
--

INSERT INTO `VET` (`VET_NUM`, `VET_FNAME`, `VET_LNAME`, `VET_SPECIALIZATION`, `VET_BROAD_CERT`, `VET_NUM_PRACT_YRS`, `VET_CONTACT_NUM`, `VET_WORK_HRS`, `CLI_NUM`) VALUES
('31001', 'Mary', 'Smith', 'DENTISTRY', 'ABVP', 10, '317-378-9987', '9.00 AM - 6.00 PM', '30001'),
('31002', 'Ava', 'Jones', 'DERMATOLOGY', 'ABVP', 5, '317-378-5432', '10.00 AM - 5.00 PM', '30002'),
('31003', 'William', 'Davis', 'SURGERY', 'ABVP', 20, '317-378-8966', '11.00 AM - 7.00 PM', '30003'),
('31004', 'Mary', 'Smith', 'SURGERY', 'ABVP', 10, '618-378-8439', '10.00 AM - 8.00 PM', '30004'),
('31005', 'Mark', 'Johnson', 'DENTISTRY', 'ABVP', 15, '618-378-8678', '10.00 AM - 8.00 PM', '30005');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ADOPTION`
--
ALTER TABLE `ADOPTION`
  ADD PRIMARY KEY (`ADOP_NUM`),
  ADD KEY `PET_NUM` (`PET_NUM`),
  ADD KEY `OWN_NUM` (`OWN_NUM`);

--
-- Indexes for table `APPOINTMENT`
--
ALTER TABLE `APPOINTMENT`
  ADD PRIMARY KEY (`APP_NUM`),
  ADD KEY `PET_NUM` (`PET_NUM`),
  ADD KEY `VET_NUM` (`VET_NUM`),
  ADD KEY `INV_NUM` (`INV_NUM`);

--
-- Indexes for table `ASSIGNMENT`
--
ALTER TABLE `ASSIGNMENT`
  ADD PRIMARY KEY (`ASSI_NUM`),
  ADD KEY `PET_NUM` (`PET_NUM`),
  ADD KEY `FOS_NUM` (`FOS_NUM`),
  ADD KEY `INV_NUM` (`INV_NUM`);

--
-- Indexes for table `BREED`
--
ALTER TABLE `BREED`
  ADD PRIMARY KEY (`BREED_NUM`);

--
-- Indexes for table `CLINIC`
--
ALTER TABLE `CLINIC`
  ADD PRIMARY KEY (`CLI_NUM`);

--
-- Indexes for table `DONATION`
--
ALTER TABLE `DONATION`
  ADD PRIMARY KEY (`DON_NUM`),
  ADD KEY `DNR_NUM` (`DNR_NUM`);

--
-- Indexes for table `DONATOR`
--
ALTER TABLE `DONATOR`
  ADD PRIMARY KEY (`DNR_NUM`);

--
-- Indexes for table `FOSTER`
--
ALTER TABLE `FOSTER`
  ADD PRIMARY KEY (`FOS_NUM`);

--
-- Indexes for table `INVOICE`
--
ALTER TABLE `INVOICE`
  ADD PRIMARY KEY (`INV_NUM`),
  ADD KEY `DON_NUM` (`DON_NUM`);

--
-- Indexes for table `OWNER`
--
ALTER TABLE `OWNER`
  ADD PRIMARY KEY (`OWN_NUM`);

--
-- Indexes for table `PET`
--
ALTER TABLE `PET`
  ADD PRIMARY KEY (`PET_NUM`),
  ADD KEY `BREED_NUM` (`BREED_NUM`);

--
-- Indexes for table `SALARY`
--
ALTER TABLE `SALARY`
  ADD PRIMARY KEY (`SAL_NUM`),
  ADD KEY `STF_NUM` (`STF_NUM`),
  ADD KEY `INV_NUM` (`INV_NUM`);

--
-- Indexes for table `STAFF`
--
ALTER TABLE `STAFF`
  ADD PRIMARY KEY (`STF_NUM`);

--
-- Indexes for table `VET`
--
ALTER TABLE `VET`
  ADD PRIMARY KEY (`VET_NUM`),
  ADD KEY `CLI_NUM` (`CLI_NUM`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ADOPTION`
--
ALTER TABLE `ADOPTION`
  ADD CONSTRAINT `ADOPTION_ibfk_1` FOREIGN KEY (`PET_NUM`) REFERENCES `PET` (`PET_NUM`),
  ADD CONSTRAINT `ADOPTION_ibfk_2` FOREIGN KEY (`OWN_NUM`) REFERENCES `OWNER` (`OWN_NUM`);

--
-- Constraints for table `APPOINTMENT`
--
ALTER TABLE `APPOINTMENT`
  ADD CONSTRAINT `APPOINTMENT_ibfk_1` FOREIGN KEY (`PET_NUM`) REFERENCES `PET` (`PET_NUM`),
  ADD CONSTRAINT `APPOINTMENT_ibfk_2` FOREIGN KEY (`VET_NUM`) REFERENCES `VET` (`VET_NUM`),
  ADD CONSTRAINT `APPOINTMENT_ibfk_3` FOREIGN KEY (`INV_NUM`) REFERENCES `INVOICE` (`INV_NUM`);

--
-- Constraints for table `ASSIGNMENT`
--
ALTER TABLE `ASSIGNMENT`
  ADD CONSTRAINT `ASSIGNMENT_ibfk_1` FOREIGN KEY (`PET_NUM`) REFERENCES `PET` (`PET_NUM`),
  ADD CONSTRAINT `ASSIGNMENT_ibfk_2` FOREIGN KEY (`FOS_NUM`) REFERENCES `FOSTER` (`FOS_NUM`),
  ADD CONSTRAINT `ASSIGNMENT_ibfk_3` FOREIGN KEY (`INV_NUM`) REFERENCES `INVOICE` (`INV_NUM`);

--
-- Constraints for table `DONATION`
--
ALTER TABLE `DONATION`
  ADD CONSTRAINT `DONATION_ibfk_1` FOREIGN KEY (`DNR_NUM`) REFERENCES `DONATOR` (`DNR_NUM`);

--
-- Constraints for table `INVOICE`
--
ALTER TABLE `INVOICE`
  ADD CONSTRAINT `INVOICE_ibfk_1` FOREIGN KEY (`DON_NUM`) REFERENCES `DONATION` (`DON_NUM`);

--
-- Constraints for table `PET`
--
ALTER TABLE `PET`
  ADD CONSTRAINT `PET_ibfk_1` FOREIGN KEY (`BREED_NUM`) REFERENCES `BREED` (`BREED_NUM`);

--
-- Constraints for table `SALARY`
--
ALTER TABLE `SALARY`
  ADD CONSTRAINT `SALARY_ibfk_1` FOREIGN KEY (`STF_NUM`) REFERENCES `STAFF` (`STF_NUM`),
  ADD CONSTRAINT `SALARY_ibfk_2` FOREIGN KEY (`INV_NUM`) REFERENCES `INVOICE` (`INV_NUM`);

--
-- Constraints for table `VET`
--
ALTER TABLE `VET`
  ADD CONSTRAINT `VET_ibfk_1` FOREIGN KEY (`CLI_NUM`) REFERENCES `CLINIC` (`CLI_NUM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
