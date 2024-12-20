-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2024 at 09:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'f925916e2754e5e03f75dd58a5733251', '2020-05-11 11:18:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE `tblbooking` (
  `BookingId` int(11) NOT NULL,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(1, 1, 'test@gmail.com', '2020-07-11', '2020-07-18', 'I want this package.', '2020-07-08 06:38:36', 2, 'u', '2020-07-08 06:53:45'),
(2, 2, 'test@gmail.com', '2020-07-10', '2020-07-13', 'There is some discount', '2020-07-08 06:43:25', 1, NULL, '2020-07-08 06:52:44'),
(3, 4, 'abir@gmail.com', '2020-07-11', '2020-07-15', 'When I get conformation', '2020-07-08 06:44:39', 2, 'a', '2020-07-08 06:49:55'),
(4, 1, 'anuj@gmail.com', '2024-08-13', '2024-08-14', 'zxfc', '2024-08-12 03:32:44', 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbldestimages`
--

CREATE TABLE `tbldestimages` (
  `destimgId` int(11) NOT NULL,
  `PackageImage1` varchar(150) DEFAULT NULL,
  `PackageImage2` varchar(150) DEFAULT NULL,
  `Topic` varchar(250) DEFAULT NULL,
  `Details` text DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldestimages`
--

INSERT INTO `tbldestimages` (`destimgId`, `PackageImage1`, `PackageImage2`, `Topic`, `Details`, `Creationdate`, `UpdationDate`) VALUES
(11, 'kandy_1.jpg', 'kandy_2.jpg', 'The Temple of the Tooth', 'The Temple of the Sacred Tooth Relic is a world-renowned place of worship, where the left Canine tooth of Gautama Buddha is enshrined. The temple which is venerated by thousands of local & foreign devotees and tourists daily was named as a world heri', '2024-08-19 12:33:17', '2024-08-19 12:53:34'),
(12, 'kandy_1.jpg', 'kandy_2.jpg', 'The Temple of the Tooth', 'The Temple of the Sacred Tooth Relic is a world-renowned place of worship, where the left Canine tooth of Gautama Buddha is enshrined. The temple which is venerated by thousands of local & foreign devotees and tourists daily was named as a world heritage by UNESCO in 1988.', '2024-08-19 12:36:16', NULL),
(13, 'polonnaruwa_1.jpg', 'polonnaruwa_2.jpg', 'Polonnaruwa', 'Po?onnaruwa, also referred as Pulathisipura and Vijayarajapura in ancient times, is the main town of Polonnaruwa District in North Central Province, Sri Lanka. The modern town of Polonnaruwa is also known as New Town, and the other part of Polonnaruwa remains as the royal ancient city of the Kingdom of Polonnaruwa.', '2024-08-19 12:37:51', '2024-08-19 12:53:34'),
(14, 'polonnaruwa_1.jpg', 'polonnaruwa_2.jpg', 'Po?onnaruwa', 'Po?onnaruwa, also referred as Pulathisipura and Vijayarajapura in ancient times, is the main town of Polonnaruwa District in North Central Province, Sri Lanka. The modern town of Polonnaruwa is also known as New Town, and the other part of Polonnaruwa remains as the royal ancient city of the Kingdom of Polonnaruwa.', '2024-08-19 12:56:22', NULL),
(15, 'polonnaruwa_1.jpg', 'polonnaruwa_2.jpg', 'Po?onnaruwa', 'Po?onnaruwa, also referred as Pulathisipura and Vijayarajapura in ancient times, is the main town of Polonnaruwa District in North Central Province, Sri Lanka. The modern town of Polonnaruwa is also known as New Town, and the other part of Polonnaruwa remains as the royal ancient city of the Kingdom of Polonnaruwa.', '2024-08-19 12:56:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE `tblenquiry` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `Status` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(1, 'Jone Paaire', 'jone@gmail.com', '4646464646', 'Enquiry for Manali Trip', 'Kindly provide me more offer.', '2020-07-08 06:30:32', 1),
(2, 'Kishan Twaerea', 'kishan@gmail.com', '6797947987', 'Enquiry', 'Any Offer for North Trip', '2020-07-08 06:31:38', 1),
(3, 'Jacaob', 'Jai@gmail.com', '1646689721', 'Any offer for North', 'Any Offer for north', '2020-07-08 06:32:41', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE `tblissues` (
  `id` int(11) NOT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminremarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(1, NULL, NULL, NULL, '2020-07-08 06:33:20', NULL, NULL),
(2, NULL, NULL, NULL, '2020-07-08 06:33:56', NULL, NULL),
(3, NULL, NULL, NULL, '2020-07-08 06:34:20', NULL, NULL),
(4, NULL, NULL, NULL, '2020-07-08 06:34:38', NULL, NULL),
(5, NULL, NULL, NULL, '2020-07-08 06:35:06', NULL, NULL),
(6, 'test@gmail.com', 'Booking Issues', 'I am not able to book package', '2020-07-08 06:36:03', 'Ok, We will fix the issue asap', '2020-07-08 06:55:22'),
(7, 'test@gmail.com', 'Refund', 'I want my refund', '2020-07-08 06:56:29', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `id` int(11) NOT NULL,
  `type` varchar(255) DEFAULT '',
  `detail` longtext DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'terms', '										<p align=\"justify\"><font size=\"2\"><strong><font color=\"#990000\">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href=\"http://in.docs.yahoo.com/info/terms/\">http://in.docs.yahoo.com/info/terms/</a>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align=\"justify\"><font size=\"2\">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo\", \"we\" or \"us\" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service (\"TOS\"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href=\"http://in.docs.yahoo.com/info/terms/\"><font size=\"2\">http://in.docs.yahoo.com/info/terms/</font></a><font size=\"2\">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n										'),
(2, 'privacy', '										<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat</span>\r\n										'),
(3, 'aboutus', '<div><span style=\"color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;\">Welcome to Tourism Management System!!!</span></div><span style=\"font-family: &quot;courier new&quot;;\"><span style=\"color: rgb(0, 0, 0); font-size: 15px; text-align: justify;\">Since then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled Shreya Tour &amp; Travels to be recognized as a dependable Travel Solutions provider with three offices Delhi.</span><span style=\"color: rgb(80, 80, 80); font-size: 13px;\">&nbsp;We have got packages to suit the discerning traveler\'s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.</span></span>'),
(11, 'contact', '																				<span style=\"color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;\">Address------J-890 Dwarka House New Delhi-110096</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltouractivities`
--

CREATE TABLE `tbltouractivities` (
  `ActivityId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `DateId` int(3) NOT NULL,
  `ActivityName` varchar(200) DEFAULT NULL,
  `ActivityImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltouractivities`
--

INSERT INTO `tbltouractivities` (`ActivityId`, `PackageId`, `DateId`, `ActivityName`, `ActivityImage`, `Creationdate`, `UpdationDate`) VALUES
(11, 1, 1, 'Beach Volleyball', 'beach_volleyball.jpg', '2024-08-11 03:26:33', NULL),
(12, 1, 2, 'Snorkeling Adventure', 'snorkeling_adventure.jpg', '2024-08-11 03:26:33', NULL),
(13, 2, 1, 'Mountain Hike', 'mountain_hike.jpg', '2024-08-11 03:26:33', NULL),
(14, 2, 2, 'Campfire Night', 'campfire_night.jpg', '2024-08-11 03:26:33', NULL),
(15, 1, 3, 'Beach Volleyball', 'beach_volleyball.jpg', '2024-08-11 05:20:03', NULL),
(16, 1, 4, 'Snorkeling Adventure', 'snorkeling_adventure.jpg', '2024-08-11 05:20:03', NULL),
(17, 1, 5, 'Mountain Hike', 'mountain_hike.jpg', '2024-08-11 05:20:03', NULL),
(18, 1, 6, 'Mountain Hike', 'mountain_hike.jpg', '2024-08-11 05:20:03', NULL),
(19, 1, 7, 'Mountain Hike', 'mountain_hike.jpg', '2024-08-11 05:20:03', NULL),
(20, 1, 8, 'Mountain Hike', 'mountain_hike.jpg', '2024-08-11 05:20:03', NULL),
(21, 1, 9, 'Mountain Hike', 'mountain_hike.jpg', '2024-08-11 05:20:03', NULL),
(22, 1, 10, 'Mountain Hike', 'mountain_hike.jpg', '2024-08-11 05:20:03', NULL),
(23, 1, 11, 'Campfire Night', 'campfire_night.jpg', '2024-08-11 05:20:03', NULL),
(24, 1, 12, 'As the Eiffel Tower is to Paris, the silhouette of the', 'mountain_hike.jpg', '2024-08-11 05:21:25', NULL),
(25, 1, 13, 'As the Eiffel Tower is to Paris, the silhouette of the', 'mountain_hike.jpg', '2024-08-11 05:21:25', NULL),
(26, 1, 14, 'As the Eiffel Tower is to Paris, the silhouette of the', 'campfire_night.jpg', '2024-08-11 05:21:25', NULL),
(27, 1, 12, '2 As the Eiffel Tower is to Paris, the silhouette of the ', 'mountain_hike.jpg', '2024-08-11 05:21:38', NULL),
(28, 1, 13, '2 As the Eiffel Tower is to Paris, the silhouette of the', 'mountain_hike.jpg', '2024-08-11 05:21:38', NULL),
(29, 1, 14, '2 As the Eiffel Tower is to Paris, the silhouette of the', 'campfire_night.jpg', '2024-08-11 05:21:38', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE `tbltourpackages` (
  `PackageId` int(11) NOT NULL,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext DEFAULT NULL,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'Swiss Paris Delight Premium 2020 (Group Package)', 'Group Package', 'Paris and Switzerland', 6000, ' Round trip Economy class airfare valid for the duration of the holiday - Airport taxes - Accommodation for 3 nights in Paris and 3 nights in scenic Switzerland - Enjoy continental breakfasts every morning - Enjoy 5 Indian dinners in Mainland Europe - Exp', 'Pick this holiday for a relaxing vacation in Paris and Switzerland. Your tour embarks from Paris. Enjoy an excursion to popular attractions like the iconic Eiffel Tower. After experiencing the beautiful city, you will drive past mustard fields through Burgundy to reach Switzerland. While there, you can opt for a tour to Interlaken and then to the Trummelbach Falls. Photostop at Zurich Lake and a cable car ride to Mt. Titlis are the main highlights of the holiday.', '1581490262_2_1.jpg', '2020-07-08 05:21:58', NULL),
(2, 'Bhutan Holidays - Thimphu and Paro Special', 'Family Package', 'Bhutan', 3000, 'Free Wi-fi, Free Breakfast, Free Pickup and drop facility ', 'Visit to Tiger\'s Nest Monastery | Complimentary services of a Professional Guide', 'BHUTAN-THIMPU-PARO-PUNAKHA-TOUR-6N-7D.jpeg', '2020-07-08 05:37:40', '2020-07-08 06:09:01'),
(3, 'Soulmate Special Bali - 7 Nights', 'Couple Package', 'Indonesia(Bali)', 5000, 'Free Pickup and drop facility, Free Wi-fi , Free professional guide', 'Airport transfers by private car | Popular Sightseeing included | Suitable for Couple and budget travelers', '1583140977_5_11.jpg', '2020-07-08 05:41:07', '2020-07-09 05:23:27'),
(4, 'Kerala - A Lovers Paradise - Value Added', 'Family Package', 'Kerala', 1000, 'Free Wi-fi, Free pick up and drop facility,', 'Visit Matupetty Dam, tea plantation and a spice garden | View sunset in Kanyakumari | AC Car at disposal for 2hrs extra (once per city)', 'images (2).jpg', '2020-07-08 05:45:58', NULL),
(5, 'Short Trip To Dubai', 'Family', 'Dubai', 4500, 'Free pick up and drop facility, Free Wi-fi, Free breakfast', 'A Holiday Package for the entire family.', 'unnamed.jpg', '2020-07-08 05:49:13', NULL),
(6, 'Sikkim Delight with Darjeeling (customizable)', 'Group', 'Sikkim', 3500, 'Free Breakfast, Free Pick up drop facility', 'Changu Lake and New Baba Mandir excursion | View the sunrise from Tiger Hill | Get Blessed at the famous Rumtek Monastery', 'download (2).jpg', '2020-07-08 05:51:26', NULL),
(7, '6 Days in Guwahati and Shillong With Cherrapunji Excursion', 'Family Package', 'Guwahati(Sikkim)', 4500, 'Breakfast,  Accommodation » Pick-up » Drop » Sightseeing', 'After arrival at Guwahati airport meet our representative & proceed for Shillong. Shillong is the capital and hill station of Meghalaya, also known as Abode of Cloud, one of the smallest states in India. En route visit Barapani lake. By afternoon reach at Shillong. Check in to the hotel. Evening is leisure. Spent time as you want. Visit Police bazar. Overnight stay at Shillong.', '95995.jpg', '2020-07-08 05:54:42', NULL),
(8, 'Grand Week in North East - Lachung, Lachen and Gangtok', 'Domestic Packages', 'Sikkim', 4500, 'Free Breakfast, Free Wi-fi', 'Changu Lakeand New Baba Mandir excursion | Yumthang Valley tour | Gurudongmar Lake excursion | Night stay in Lachen', 'download (3).jpg', '2020-07-08 06:05:24', NULL),
(9, 'Gangtok & Darjeeling Holiday (Without Flights)', 'Family Package', 'Sikkim', 1000, 'Free Wi-fi, Free pickup and drop facility', 'Ideal tour for Family | Sightseeing in Gangtok and Darjeeling | Full day excursion to idyllic Changu Lake | Visit to Ghoom Monastery', '1540382781_shutterstock_661867435.jpg.jpg', '2020-07-08 06:07:48', NULL),
(10, 'test', 'test22', 'asd', 0, 'asd', 'asd', 'Screenshot 2024-08-09 171218.png', '2024-08-10 15:48:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpkghiglight`
--

CREATE TABLE `tbltourpkghiglight` (
  `HighlightId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `HighlightItem` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltourpkghiglight`
--

INSERT INTO `tbltourpkghiglight` (`HighlightId`, `PackageId`, `HighlightItem`) VALUES
(1, 1, 'Beautiful Beaches'),
(2, 1, 'Sunset Cruise'),
(3, 2, 'Historical Sites Tour'),
(4, 2, 'Local Cuisine Experience'),
(5, 3, 'Safari Adventure'),
(6, 3, 'Wildlife Photography');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpkgimages`
--

CREATE TABLE `tbltourpkgimages` (
  `pkgimgId` int(11) NOT NULL,
  `PackageId` int(11) NOT NULL,
  `imgtype` tinyint(1) NOT NULL,
  `PackageImage` varchar(150) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbltourpkgimages`
--

INSERT INTO `tbltourpkgimages` (`pkgimgId`, `PackageId`, `imgtype`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(11, 1, 0, 'gallery_1_3.jpg', '2024-11-16 07:57:31', NULL),
(12, 1, 0, 'gallery_1_3.jpg', '2024-11-16 07:58:27', NULL),
(13, 1, 0, 'gallery_1_2.jpg', '2024-11-16 07:58:27', NULL),
(14, 1, 0, 'gallery_1_1.jpg', '2024-11-16 07:58:27', NULL),
(15, 1, 1, 'gallery_1_3.jpg', '2024-11-16 07:59:25', NULL),
(16, 1, 1, 'gallery_1_2.jpg', '2024-11-16 07:59:25', NULL),
(17, 1, 1, 'gallery_1_1.jpg', '2024-11-16 07:59:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpkginexclude`
--

CREATE TABLE `tbltourpkginexclude` (
  `PackageId` int(11) NOT NULL,
  `Accommodation` tinyint(1) NOT NULL DEFAULT 0,
  `Guide` tinyint(1) NOT NULL DEFAULT 0,
  `Insurance` tinyint(1) NOT NULL DEFAULT 0,
  `Meals` tinyint(1) NOT NULL DEFAULT 0,
  `Transport` tinyint(1) NOT NULL DEFAULT 0,
  `Flights` tinyint(1) NOT NULL DEFAULT 0,
  `Safari Jeep` tinyint(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbltourpkginexclude`
--

INSERT INTO `tbltourpkginexclude` (`PackageId`, `Accommodation`, `Guide`, `Insurance`, `Meals`, `Transport`, `Flights`, `Safari Jeep`) VALUES
(1, 1, 1, 0, 1, 1, 0, 0),
(2, 0, 1, 1, 1, 0, 0, 1),
(3, 1, 0, 0, 1, 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE `tblusers` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(1, 'Manju Srivatav', '4456464654', 'manju@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:33:20', NULL),
(2, 'Kishan', '9871987979', 'kishan@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:33:56', NULL),
(3, 'Salvi Chandra', '1398756416', 'salvi@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:34:20', NULL),
(4, 'Abir', '4789756456', 'abir@gmail.com', '202cb962ac59075b964b07152d234b70', '2020-07-08 06:34:38', NULL),
(5, 'Test', '1987894654', 'anuj@gmail.com', 'f925916e2754e5e03f75dd58a5733251', '2020-07-08 06:35:06', '2021-05-11 04:37:41');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblbooking`
--
ALTER TABLE `tblbooking`
  ADD PRIMARY KEY (`BookingId`);

--
-- Indexes for table `tbldestimages`
--
ALTER TABLE `tbldestimages`
  ADD PRIMARY KEY (`destimgId`);

--
-- Indexes for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblissues`
--
ALTER TABLE `tblissues`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltouractivities`
--
ALTER TABLE `tbltouractivities`
  ADD PRIMARY KEY (`ActivityId`);

--
-- Indexes for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tbltourpkghiglight`
--
ALTER TABLE `tbltourpkghiglight`
  ADD PRIMARY KEY (`HighlightId`);

--
-- Indexes for table `tbltourpkgimages`
--
ALTER TABLE `tbltourpkgimages`
  ADD PRIMARY KEY (`pkgimgId`);

--
-- Indexes for table `tbltourpkginexclude`
--
ALTER TABLE `tbltourpkginexclude`
  ADD PRIMARY KEY (`PackageId`);

--
-- Indexes for table `tblusers`
--
ALTER TABLE `tblusers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmailId` (`EmailId`),
  ADD KEY `EmailId_2` (`EmailId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbooking`
--
ALTER TABLE `tblbooking`
  MODIFY `BookingId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbldestimages`
--
ALTER TABLE `tbldestimages`
  MODIFY `destimgId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblenquiry`
--
ALTER TABLE `tblenquiry`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tblissues`
--
ALTER TABLE `tblissues`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `tbltouractivities`
--
ALTER TABLE `tbltouractivities`
  MODIFY `ActivityId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `tbltourpackages`
--
ALTER TABLE `tbltourpackages`
  MODIFY `PackageId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbltourpkghiglight`
--
ALTER TABLE `tbltourpkghiglight`
  MODIFY `HighlightId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbltourpkgimages`
--
ALTER TABLE `tbltourpkgimages`
  MODIFY `pkgimgId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tblusers`
--
ALTER TABLE `tblusers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
