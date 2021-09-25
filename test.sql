-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 16, 2021 at 09:38 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `test`
--

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`id`, `name`, `email`, `status`, `phone`, `address`) VALUES
(1, 'xcxc', 'omkewat@ymail.com', 0, '8944885322', 'CHEWARA'),
(2, 'Test ticket', 'omkewat@ymail.com', 0, '8944885322', 'CHEWARA'),
(3, 'testdad', 'omprakash.kewat@techprostudio.com', 0, '8944885322', 'CHEWARA');

-- --------------------------------------------------------

--
-- Table structure for table `xml_data`
--

CREATE TABLE `xml_data` (
  `id` int(11) NOT NULL,
  `data` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `xml_data`
--

INSERT INTO `xml_data` (`id`, `data`) VALUES
(1, '{\"VehAvailCore\":{\"@attributes\":{\"Status\":\"Available\"},\"Vehicle\":{\"@attributes\":{\"AirConditionInd\":\"true\",\"TransmissionType\":\"Automatic\",\"FuelType\":\"Unspecified\",\"DriveType\":\"Unspecified\",\"PassengerQuantity\":\"5\",\"BaggageQuantity\":\"3\",\"Code\":\"SCAR\",\"CodeContext\":\"CARTRAWLER\"},\"VehType\":{\"@attributes\":{\"VehicleCategory\":\"1\",\"DoorCount\":\"2\"}},\"VehClass\":{\"@attributes\":{\"Size\":\"7\"}},\"VehMakeModel\":{\"@attributes\":{\"Name\":\"Volkswagen Jetta or similar\",\"Code\":\"SCAR\"}},\"PictureURL\":\"https:\\/\\/ctimg-fleet.cartrawler.com\\/volkswagen\\/jetta\\/primary.png\",\"VehIdentity\":{\"@attributes\":{\"VehicleAssetNumber\":\"26537\"}}},\"RentalRate\":{\"VehicleCharges\":{\"VehicleCharge\":{\"@attributes\":{\"Description\":\"Unlimited mileage\",\"TaxInclusive\":\"true\",\"IncludedInRate\":\"true\",\"Purpose\":\"609.VCP.X\"}}},\"RateQualifier\":{\"@attributes\":{\"RateQualifier\":\"PREPAID-IN\",\"PromotionCode\":\"INCLUSIVE_NO_EXCESS\"}}},\"TotalCharge\":{\"@attributes\":{\"RateTotalAmount\":\"127.85\",\"EstimatedTotalAmount\":\"127.85\",\"CurrencyCode\":\"USD\"}},\"PricedEquips\":{\"PricedEquip\":[{\"Equipment\":{\"@attributes\":{\"EquipType\":\"13\"},\"Description\":\"GPS\"},\"Charge\":{\"@attributes\":{\"Amount\":\"16.99\",\"CurrencyCode\":\"USD\",\"TaxInclusive\":\"false\",\"IncludedInRate\":\"false\"}}},{\"Equipment\":{\"@attributes\":{\"EquipType\":\"8\"},\"Description\":\"Child toddler seat\"},\"Charge\":{\"@attributes\":{\"Amount\":\"13.99\",\"CurrencyCode\":\"USD\",\"TaxInclusive\":\"false\",\"IncludedInRate\":\"false\"}}},{\"Equipment\":{\"@attributes\":{\"EquipType\":\"9\"},\"Description\":\"Booster seat\"},\"Charge\":{\"@attributes\":{\"Amount\":\"13.99\",\"CurrencyCode\":\"USD\",\"TaxInclusive\":\"false\",\"IncludedInRate\":\"false\"}}},{\"Equipment\":{\"@attributes\":{\"EquipType\":\"7\"},\"Description\":\"Infant child seat\"},\"Charge\":{\"@attributes\":{\"Amount\":\"13.99\",\"CurrencyCode\":\"USD\",\"TaxInclusive\":\"false\",\"IncludedInRate\":\"false\"}}},{\"Equipment\":{\"@attributes\":{\"EquipType\":\"4\"},\"Description\":\"Ski rack\"},\"Charge\":{\"@attributes\":{\"Amount\":\"18.00\",\"CurrencyCode\":\"USD\",\"TaxInclusive\":\"true\",\"IncludedInRate\":\"false\"}}}]},\"Fees\":{\"Fee\":[{\"@attributes\":{\"Amount\":\"127.85\",\"CurrencyCode\":\"USD\",\"Purpose\":\"22\"}},{\"@attributes\":{\"Amount\":\"0.00\",\"CurrencyCode\":\"USD\",\"Purpose\":\"23\"}},{\"@attributes\":{\"Amount\":\"0.00\",\"CurrencyCode\":\"USD\",\"Purpose\":\"6\"}}]},\"Reference\":{\"@attributes\":{\"Type\":\"16\",\"ID\":\"846174189\",\"ID_Context\":\"CARTRAWLER\",\"DateTime\":\"2021-06-14T06:27:28.549+01:00\",\"URL\":\"72cc9427-c597-4545-a6e0-ac48d0b97886.64\"}},\"TPA_Extensions\":{\"PictureURLHD\":\"https:\\/\\/ctimg-fleet.cartrawler.com\\/volkswagen\\/jetta\\/primary.png\",\"UpSell\":{\"@attributes\":{\"Insurance\":\"0\"}},\"DebitCard\":{\"@attributes\":{\"OnArrival\":\"true\"}},\"PPDep\":{\"@attributes\":{\"Available\":\"false\",\"Keep\":\"false\"}},\"ZeroDeposit\":{\"@attributes\":{\"Available\":\"false\"}},\"FuelPolicy\":{\"@attributes\":{\"Type\":\"FULLFULL\",\"Description\":\"Fuel: Pick up and return full.\"}},\"Config\":{\"@attributes\":{\"OrderBy\":\"7\",\"Relevance\":\"0\",\"Preferred\":\"0\",\"Insurance\":\"false\",\"Duration\":\"1\",\"Limited\":\"1\",\"CC_Info\":\"true\",\"PhysicalInetAddress\":\"-1762762070\",\"ConsumerAddress\":\"2001849194\",\"HotelDelivery\":\"false\"}},\"OrderBy\":{\"@attributes\":{\"Index\":\"7\"}},\"Indexation\":{\"IndexByPrice\":{\"@attributes\":{\"Key\":\"6\",\"BundleText\":\"Standard\",\"BundleType\":\"Rate_IN_INCLUSIVE_NO_EXCESS\"}}},\"CC_Info\":{\"@attributes\":{\"Required\":\"true\"}},\"SpecialOffers\":{\"Offer\":[\"For faster, easier car hire, add driver details before pick-up.\",\"This car hire brand has committed to maintaining sanitisation measures as per WHO COVID-19 guidelines.\"]},\"Duration\":{\"@attributes\":{\"Days\":\"1\"}},\"PricedEquipsDisplay\":{\"PricedEquip\":[{\"@attributes\":{\"EquipType\":\"13\",\"Amount\":\"16.99\",\"CurrencyCode\":\"USD\",\"RateType\":\"POSTPAID\"}},{\"@attributes\":{\"EquipType\":\"8\",\"Amount\":\"13.99\",\"CurrencyCode\":\"USD\",\"RateType\":\"POSTPAID\"}},{\"@attributes\":{\"EquipType\":\"9\",\"Amount\":\"13.99\",\"CurrencyCode\":\"USD\",\"RateType\":\"POSTPAID\"}},{\"@attributes\":{\"EquipType\":\"7\",\"Amount\":\"13.99\",\"CurrencyCode\":\"USD\",\"RateType\":\"POSTPAID\"}},{\"@attributes\":{\"EquipType\":\"4\",\"Amount\":\"18.00\",\"CurrencyCode\":\"USD\",\"RateType\":\"POSTPAID\"}}]},\"Fleet\":{\"FleetGroup\":{\"Vehicle\":{\"@attributes\":{\"AirConditionInd\":\"true\",\"TransmissionType\":\"Automatic\",\"FuelType\":\"Unspecified\",\"DriveType\":\"Unspecified\",\"PassengerQuantity\":\"5\",\"BaggageQuantity\":\"3\",\"Code\":\"SCAR\",\"CodeContext\":\"CARTRAWLER\"},\"VehType\":{\"@attributes\":{\"VehicleCategory\":\"1\",\"DoorCount\":\"2\"}},\"VehClass\":{\"@attributes\":{\"Size\":\"7\"}},\"VehMakeModel\":{\"@attributes\":{\"Name\":\"Volkswagen Jetta or similar\",\"Code\":\"SCAR\"}},\"PictureURL\":\"https:\\/\\/ctimg-fleet.cartrawler.com\\/volkswagen\\/jetta\\/primary.png\",\"VehIdentity\":{\"@attributes\":{\"VehicleAssetNumber\":\"26537\"}}}}}}},\"VehAvailInfo\":{\"PricedCoverages\":{\"PricedCoverage\":{\"Coverage\":{\"@attributes\":{\"CoverageType\":\"601.VCT.X\"}},\"Charge\":{\"@attributes\":{\"Description\":\"Extra insurance\",\"TaxInclusive\":\"true\",\"IncludedInRate\":\"true\"}}}}}}');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `xml_data`
--
ALTER TABLE `xml_data`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `xml_data`
--
ALTER TABLE `xml_data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
