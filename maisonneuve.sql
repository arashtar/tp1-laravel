-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Apr 03, 2023 at 02:07 PM
-- Server version: 5.7.36
-- PHP Version: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `maisonneuve`
--

-- --------------------------------------------------------

--
-- Table structure for table `etudiants`
--

DROP TABLE IF EXISTS `etudiants`;
CREATE TABLE IF NOT EXISTS `etudiants` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_de_naissance` date NOT NULL,
  `ville_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `etudiants_email_unique` (`email`),
  KEY `etudiants_ville_id_foreign` (`ville_id`)
) ENGINE=MyISAM AUTO_INCREMENT=111 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `etudiants`
--

INSERT INTO `etudiants` (`id`, `nom`, `adresse`, `phone`, `email`, `date_de_naissance`, `ville_id`, `created_at`, `updated_at`) VALUES
(1, 'Reina Senger', '86020 Thalia Alley Suite 486\nAlbertahaven, TN 06889', '+1.302.680.3623', 'xgutkowski@example.com', '2004-06-29', 116, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(2, 'Sonya Hegmann', '64448 Heaney Crescent Suite 202\nSusannamouth, OK 75988', '+1 (507) 458-2358', 'austyn.schuster@example.org', '1994-03-09', 117, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(3, 'Rodolfo Predovic', '585 Mayer Hill Suite 476\nNorth Marysechester, NH 90503-9009', '601-832-8079', 'mills.zachariah@example.net', '1989-10-20', 118, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(4, 'Mazie Haley', '70134 Brown Hollow\nColtenchester, CO 44930', '+1 (223) 860-8971', 'rollin.schmeler@example.org', '1999-07-20', 119, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(5, 'Joanne Murazik', '26836 Pierre Mountains Suite 609\nHalvorsonport, FL 64827-8074', '+1-678-388-0053', 'okon.anastasia@example.net', '1976-01-31', 120, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(6, 'Dr. Ken Runolfsdottir I', '561 Era Overpass Suite 947\nNicholasberg, NE 11285', '361-608-4266', 'hermann.kennith@example.com', '1991-09-14', 121, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(7, 'Prof. Dudley Satterfield V', '12914 Pfeffer Canyon\nPort Dustyton, KY 85763', '+1 (573) 540-6504', 'ally96@example.org', '1993-06-01', 122, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(8, 'Prof. Margie Block', '7079 Crona Ferry\nSouth Rettastad, VT 99781', '+1.865.215.2918', 'pollich.brannon@example.org', '2004-02-04', 123, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(9, 'Lester Von DVM', '81072 Kaelyn Villages Apt. 786\nShanelleview, HI 30444', '1-650-647-7989', 'barrows.hershel@example.net', '2003-06-22', 124, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(10, 'Dr. Tristin Schulist V', '38001 Anya Street Suite 890\nNorth Ottilie, ID 68601', '364.923.7357', 'wava.hirthe@example.com', '1977-10-13', 125, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(11, 'Berry Roberts', '5432 Aubree Ports Apt. 797\nNorth Hilton, NJ 65588-2168', '+1.929.666.8222', 'lora.weber@example.net', '1978-01-02', 126, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(12, 'Prof. Raven Streich DVM', '94525 Huel Viaduct Apt. 095\nNorth Sylvia, MS 78490', '+1-360-960-9088', 'rose53@example.org', '1981-09-22', 127, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(13, 'Christ McKenzie', '1227 Walter Village Apt. 338\nNew Mackenziestad, NH 24497', '463-367-5372', 'rwiegand@example.com', '1986-05-31', 128, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(14, 'Prof. Edgar Dietrich', '120 Langosh Well Apt. 864\nPfeffertown, AK 27523-3526', '+18507173634', 'grady.stella@example.net', '1989-11-07', 129, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(15, 'Prof. Ashleigh Hoppe DDS', '4842 Will Coves\nDibberthaven, DE 28999-2471', '(763) 646-1583', 'remington17@example.net', '1986-03-17', 130, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(16, 'Jody Mills', '88972 Krajcik Knolls Suite 848\nDouglaston, AZ 44571-7324', '+1-772-529-7910', 'emmalee.kovacek@example.org', '1993-05-19', 131, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(17, 'Aidan Lemke', '9793 Beier Station Apt. 696\nEast Lolita, MN 76099', '413-372-4041', 'lucy.emard@example.net', '1993-12-22', 132, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(18, 'Prof. Vivien Klein', '9583 Schaefer Centers\nLake Leonormouth, HI 81357-2487', '+1-352-467-9219', 'andreane04@example.com', '1985-09-10', 133, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(19, 'Damion Swift', '6716 Carolyn Ridge Suite 979\nWilmaville, WI 07849', '(989) 599-7772', 'margaretta.ankunding@example.org', '1976-12-04', 134, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(20, 'Miss Aimee Zieme IV', '587 Konopelski Motorway\nNorth Maiya, FL 29015', '361-813-9784', 'tbrakus@example.net', '1985-04-24', 135, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(21, 'Hilbert Nikolaus', '6473 Dax Brooks\nNew Blaise, DC 25283', '+1.770.468.6184', 'aufderhar.tristian@example.org', '2002-05-28', 136, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(22, 'Prof. Jack Bins MD', '1439 Ada Overpass Suite 531\nLake Oleton, OK 02163-8459', '+19286624365', 'sydnie.hayes@example.com', '1986-11-23', 137, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(23, 'Prof. Boyd Dickens V', '98282 Colten Brook\nBernhardtown, WY 56881-4705', '479-543-3427', 'faltenwerth@example.com', '1979-03-23', 138, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(24, 'Ezekiel Heidenreich DDS', '797 Cecilia Inlet\nMuellerfurt, TN 29657', '+18434153926', 'merle.ortiz@example.com', '1978-07-19', 139, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(25, 'Dr. Sim Yundt Jr.', '713 Ashleigh Centers\nPort Mikemouth, VT 38248-7948', '651.353.9034', 'nicolas.arlie@example.org', '2004-07-29', 140, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(26, 'Virgie Hane DVM', '20729 Nellie Shore\nClotildemouth, AZ 65129-6681', '1-913-301-9311', 'reagan.littel@example.net', '1997-10-07', 141, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(27, 'Elsie Vandervort', '86843 DuBuque Freeway\nSouth Noahfort, NH 32724', '+12393331376', 'nickolas63@example.org', '1980-01-19', 142, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(28, 'Prof. Ernest Moore Sr.', '84799 Vince Plain Apt. 803\nNew Rileyhaven, NY 60800', '1-386-815-4111', 'lawrence.mills@example.com', '1989-02-04', 143, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(29, 'Jimmie Thiel', '218 Florine Vista Suite 221\nBechtelarhaven, AZ 35586-3406', '+1.785.882.9488', 'hudson65@example.com', '1987-06-29', 144, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(30, 'Ashleigh Reichel', '93593 Julius Lodge Suite 396\nNew Willow, VA 37150-4542', '(336) 939-2236', 'jameson12@example.net', '1986-04-17', 145, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(31, 'Jamaal Heathcote I', '6160 Huels Village Suite 898\nMadieside, NM 51203', '+1-831-310-4544', 'adelia20@example.org', '1999-10-30', 146, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(32, 'Micah Hilpert V', '510 Maryjane Expressway\nJessiehaven, WY 01726', '+1 (662) 316-8988', 'mjohns@example.net', '1990-04-26', 147, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(33, 'Theresa Braun', '13886 Cummerata Viaduct Suite 897\nMariannaburgh, MI 13636-5778', '1-872-968-3070', 'fparisian@example.com', '1977-08-16', 148, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(34, 'Jazmyne Sipes', '6617 Tremblay Light Apt. 406\nPort Ian, WA 17595', '838.909.5221', 'ethyl.king@example.net', '1987-02-22', 149, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(35, 'Marc Upton', '25080 Alisa Way\nLennachester, DC 12726', '551.818.3511', 'grant.hoeger@example.org', '1978-05-10', 150, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(36, 'Jennings Hintz', '899 West Valleys\nWilliamsonport, MO 65594-0984', '+1-208-898-1306', 'sdicki@example.com', '2001-06-09', 151, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(37, 'Colt Roob', '127 Schinner Port\nWehnerhaven, AK 61000-8269', '+1 (458) 885-2281', 'deonte.hammes@example.com', '2004-07-04', 152, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(38, 'Prof. Carlotta Brakus IV', '594 Greenfelder Ports\nNorth Laurinebury, OK 57579', '1-680-243-1845', 'virgil82@example.org', '1998-05-12', 153, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(39, 'Foster Lueilwitz', '98547 Lavada Mountain\nCronahaven, NE 77750-6625', '351.846.7892', 'cormier.guillermo@example.org', '1985-08-06', 154, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(40, 'Maia Homenick', '44559 Margarett Shoals Suite 051\nKiaraborough, RI 20404', '575.789.7165', 'senger.rowena@example.org', '1988-10-31', 155, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(41, 'Mrs. Abbie Prohaska II', '8244 Pfannerstill Plains\nPort Mckennamouth, TN 00856-4591', '815.552.0370', 'bjacobi@example.org', '1973-08-12', 156, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(42, 'Berniece O\'Hara', '73330 Lafayette Plain\nBaumbachstad, KY 23499-8198', '+1 (682) 659-3968', 'harris.jovanny@example.net', '1985-09-11', 157, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(43, 'Margie Brakus', '9144 Melvina Club Suite 956\nCorneliusburgh, UT 48121-8330', '(757) 561-5919', 'yankunding@example.org', '1981-05-23', 158, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(44, 'Dr. Ada Bayer IV', '46262 Cremin Summit Suite 412\nEast Orenshire, MO 74972-7584', '(425) 375-3360', 'ysanford@example.net', '2003-06-01', 159, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(45, 'Emelia Zemlak', '55889 Amelie Stream\nSwaniawskibury, DC 60804', '847.779.5454', 'thoppe@example.com', '1995-01-21', 160, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(46, 'Prof. Danielle O\'Conner', '6804 Gulgowski Via Suite 214\nEast Samir, UT 11805', '1-458-430-2647', 'zmarvin@example.net', '1976-02-16', 161, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(47, 'Miss Raquel Ritchie Jr.', '849 Francisco Plaza Apt. 442\nSchowalterland, FL 30070-0389', '1-847-564-9382', 'baron61@example.org', '1989-10-04', 162, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(48, 'Branson Walker', '32563 Adriel Prairie Suite 367\nMarvinshire, DC 77900', '252.843.3374', 'iyundt@example.org', '2002-07-19', 163, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(49, 'Cara Champlin', '974 Orpha Lane\nNew Gabriella, AK 15142', '1-270-962-4218', 'shettinger@example.com', '1977-12-13', 164, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(50, 'Mr. Caesar Rempel', '94086 McKenzie Row\nLeuschkeville, MT 42291', '1-847-222-1041', 'freeman07@example.net', '1994-08-09', 165, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(51, 'Prof. Amie Kautzer IV', '5169 Tillman Viaduct Suite 895\nSouth Lucius, NC 71289-8441', '413.407.2375', 'jasmin02@example.org', '2004-09-06', 166, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(52, 'Prof. Brandy Bergnaum', '610 Myrna Street Suite 864\nDakotatown, SC 67351-8403', '312.301.6298', 'mklocko@example.com', '1974-08-26', 167, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(53, 'Keagan Daugherty', '2484 Maurine Common Suite 228\nPort Felix, VT 91525', '1-207-943-2740', 'rharvey@example.com', '1976-07-26', 168, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(54, 'Dr. Amely Mohr', '718 Bosco Ridge\nPort Marcelside, NC 25619', '920-335-6266', 'harber.xzavier@example.net', '1996-05-04', 169, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(55, 'Ms. Molly Bayer Sr.', '9892 Smitham Square Suite 865\nWest Cleve, FL 14591', '814.548.4611', 'aurelie.crooks@example.org', '2003-06-22', 170, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(56, 'Carolyne Larson', '715 Zieme Prairie Apt. 348\nLancebury, VT 73317', '667-931-8399', 'kyla.trantow@example.org', '1992-03-06', 171, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(57, 'Willa Wintheiser', '239 Huel Circle Suite 531\nJohnsonberg, MS 43025', '469.850.7537', 'zboncak.libbie@example.org', '2004-01-19', 172, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(58, 'Dawson Effertz Jr.', '7306 Madie Underpass\nKelsiland, DC 43056', '+1-360-281-9018', 'kemmer.donald@example.net', '1986-11-21', 173, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(59, 'Eloy Ruecker', '58210 Stefan Prairie\nOkunevaview, DE 60516-1357', '+1-938-390-0902', 'kevin.collier@example.org', '1977-11-10', 174, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(60, 'Mr. Nels Pouros V', '841 Malika Station Suite 407\nFlossiefurt, WI 98300', '559-657-1279', 'elta.watsica@example.com', '1989-03-15', 175, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(61, 'Mr. Agustin Wiza', '48640 Brown Mill\nWest Damion, WY 25850-9034', '1-762-231-7240', 'simonis.mariam@example.net', '1987-06-02', 176, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(62, 'Delphia Stehr', '6125 Lebsack Ranch\nWest Elise, KS 42833-3764', '+1-319-928-0188', 'ldickens@example.com', '1976-02-05', 177, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(63, 'Prof. Maximillia Grimes PhD', '4116 Syble Loop\nEulahmouth, MS 92591-3882', '(279) 978-4703', 'carley60@example.net', '1976-10-28', 178, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(64, 'Delta Welch', '779 Arlo Estates Suite 470\nSouth Danielleland, PA 28732', '878-451-4604', 'kshlerin.louie@example.org', '1984-03-15', 179, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(65, 'Prof. Ahmad Carroll', '9148 Agustin Alley Suite 220\nNashhaven, IL 77093-5761', '(660) 834-2071', 'ara19@example.net', '2000-11-07', 180, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(66, 'Salvador Corkery', '6361 Gerlach Orchard\nBrigittefurt, RI 95315-3822', '312.462.1936', 'breitenberg.kasandra@example.com', '2000-08-27', 181, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(67, 'Deborah Gerlach', '35278 Vida Pass\nWest Agustin, IA 91112', '+1.423.524.3593', 'nbruen@example.net', '2001-07-04', 182, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(68, 'Carol Koch', '5867 Jaclyn Estates\nLake Ryleefort, NY 74272', '1-585-449-2183', 'lorna.huel@example.com', '1983-09-13', 183, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(69, 'Isidro Dibbert II', '30857 Kohler Freeway\nLegrosburgh, NY 34374', '(859) 959-2617', 'brown.keanu@example.com', '1983-07-05', 184, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(70, 'Miss Cathryn Klocko', '9263 Macejkovic Cape\nLilatown, WI 96391', '+1-520-506-4176', 'marlin.kuvalis@example.org', '1977-10-18', 185, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(71, 'Darrin Williamson', '69709 Satterfield Village Suite 705\nWest Carmelaborough, IN 10713', '+1-380-601-0834', 'kay.botsford@example.com', '1978-11-02', 186, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(72, 'Prof. Jedidiah Smith IV', '182 Ansley Union Apt. 610\nPollichshire, AL 86024', '1-561-682-2702', 'yasmin.hane@example.com', '2004-04-28', 187, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(73, 'Kaia Kutch', '6447 Reichel Mills\nEast Lukas, HI 94769', '(617) 822-4893', 'aondricka@example.org', '1986-11-26', 188, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(74, 'Allan Tillman', '282 Bernadine Spurs\nDakotamouth, IN 08972-0199', '1-279-402-3919', 'catharine.hessel@example.net', '1983-02-09', 189, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(75, 'Claudia Nicolas', '1489 Kihn Camp Apt. 870\nHegmannport, CA 76078', '+18488338029', 'boyle.camilla@example.org', '1983-08-03', 190, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(76, 'Eldridge Bergstrom PhD', '6578 Kuphal Cliffs Suite 521\nSchadenborough, WA 34455-6464', '(863) 801-3305', 'enrico.schiller@example.org', '1998-11-16', 191, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(77, 'Mr. Elroy Jenkins', '745 Leffler Island\nSouth Halieside, MS 99676-0342', '(272) 596-0184', 'crystel.stokes@example.net', '1989-04-18', 192, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(78, 'Mrs. Anais Wunsch II', '77502 Alyce Islands\nCornellberg, IA 81775', '1-608-878-5229', 'jerde.gretchen@example.com', '1983-11-01', 193, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(79, 'Matilda Douglas', '9593 Lilian Dale Suite 619\nNew Lea, NM 35545', '(857) 459-6720', 'amaggio@example.org', '2003-12-03', 194, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(80, 'Celia Gislason', '1812 Corene Fall Suite 609\nMannbury, WY 34187', '1-240-828-8944', 'beverly.cremin@example.com', '1998-06-15', 195, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(81, 'Dr. Aileen Schulist', '698 Kling Ridge Apt. 291\nNitzscheburgh, CT 67632', '+1.254.412.1191', 'morar.delores@example.org', '1992-09-06', 196, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(82, 'Selmer Ernser I', '56293 Wiza River\nNorth Melany, VA 67866', '301-707-6158', 'lbuckridge@example.net', '1979-01-06', 197, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(83, 'Rhea Marvin', '6300 Bins Fords Apt. 070\nPort Markus, MD 41352-0764', '+1-401-257-2376', 'bergstrom.domenick@example.net', '2002-11-15', 198, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(84, 'Jerod Padberg', '249 Mills Mountains\nGabeville, DE 31633-9276', '(270) 970-4547', 'elroy.king@example.net', '1984-09-30', 199, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(85, 'Kellie Nader', '787 Nader Motorway Apt. 661\nZiemechester, DC 30747', '1-224-972-9355', 'qbeer@example.net', '1996-03-17', 200, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(86, 'Gilda Spinka', '5253 Mikayla Mill Suite 179\nSherwoodview, OR 42106', '+1 (341) 603-6178', 'nwehner@example.com', '1993-08-17', 201, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(87, 'Prof. Remington Littel', '75072 Fredrick Shoals\nAliviaview, SC 36411', '1-878-666-8614', 'fmueller@example.org', '1991-11-23', 202, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(88, 'Hildegard Schamberger', '2548 Trantow Curve Suite 004\nWest Malachi, KS 56332-4313', '770.388.8971', 'thintz@example.net', '2002-08-11', 203, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(89, 'Kathryn Parisian', '303 Christy Falls Apt. 951\nSouth Noemie, NH 67622-1701', '816.379.4201', 'marty53@example.net', '1998-08-01', 204, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(90, 'Tyler Jaskolski', '3419 Hodkiewicz Trafficway\nEdwinafort, MN 30714', '667.286.5207', 'jacobi.adan@example.net', '1994-11-05', 205, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(91, 'Dr. Rowan Kutch MD', '737 Celestino Glen\nNew Julianbury, OH 51344', '+1.781.657.5221', 'mueller.romaine@example.com', '1981-12-19', 206, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(92, 'Dr. Rachel Ruecker Jr.', '2630 Jacobson Rue Suite 693\nLueilwitzville, MN 08815-0857', '660-515-2837', 'arthur97@example.net', '1985-03-23', 207, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(93, 'Miss Karli Trantow', '89356 Williamson Ford Apt. 390\nAnkundingville, NH 49245', '1-813-212-3446', 'destin04@example.org', '2004-04-06', 208, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(94, 'Prof. Marge Treutel DDS', '9430 DuBuque Pass Apt. 933\nKrajciktown, CO 99013-1242', '504.792.5704', 'max44@example.com', '1995-01-04', 209, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(95, 'Fredrick Fisher', '486 Nienow Locks\nWaltermouth, KY 99141', '623-650-5618', 'koepp.wilma@example.com', '1994-09-02', 210, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(96, 'Casper Hartmann', '55929 West Mountains Apt. 870\nStrosinstad, OH 16048-7848', '(337) 295-6649', 'opacocha@example.com', '1991-09-03', 211, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(97, 'Brandyn McGlynn', '707 Vandervort Points Suite 419\nNorth Cameronton, HI 00735', '+1-870-701-0083', 'kaitlin.nikolaus@example.com', '1977-10-30', 212, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(98, 'Prof. Arvid Zieme', '46068 Emie Vista\nSouth Mae, CO 16352', '+1 (847) 426-5824', 'hlockman@example.net', '1992-02-18', 213, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(99, 'Dr. Kaelyn Altenwerth III', '1628 Maye Ferry\nSouth Kenyonhaven, ID 84688-6682', '(820) 888-9413', 'clint36@example.com', '1990-10-14', 214, '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(100, 'Michel Haag', '33498 Walker Village Apt. 590\nBradmouth, OK 04586', '610.410.8047', 'yhalvorson@example.com', '1974-10-04', 215, '2023-03-26 22:00:24', '2023-03-26 22:00:24');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE IF NOT EXISTS `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
CREATE TABLE IF NOT EXISTS `migrations` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2023_03_26_174756_create_villes_table', 1),
(6, '2023_03_26_174930_create_etudiants_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE IF NOT EXISTS `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
CREATE TABLE IF NOT EXISTS `users` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `villes`
--

DROP TABLE IF EXISTS `villes`;
CREATE TABLE IF NOT EXISTS `villes` (
  `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=216 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `villes`
--

INSERT INTO `villes` (`id`, `nom`, `created_at`, `updated_at`) VALUES
(1, 'Gretchenside', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(2, 'Devanteborough', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(3, 'West Douglas', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(4, 'Jacobsonfort', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(5, 'Shaneside', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(6, 'Vaughnborough', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(7, 'East Fern', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(8, 'Daphnebury', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(9, 'Lake Florence', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(10, 'Rathport', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(11, 'Sporerland', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(12, 'Olivermouth', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(13, 'North Danykabury', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(14, 'North Evalyn', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(15, 'Port Lorine', '2023-03-26 21:56:47', '2023-03-26 21:56:47'),
(16, 'Sengerton', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(17, 'Port Novella', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(18, 'Simonisfort', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(19, 'Trompbury', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(20, 'Lake Tyreekburgh', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(21, 'Port Kileyview', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(22, 'Port Penelopeview', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(23, 'West Heatherborough', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(24, 'West Elenora', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(25, 'South Grover', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(26, 'New Zanechester', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(27, 'West Loisfort', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(28, 'New Hoyt', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(29, 'Port Ethelynport', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(30, 'New Elroy', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(31, 'Boyleton', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(32, 'Port Vedafurt', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(33, 'Kunzeview', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(34, 'Mayerfurt', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(35, 'East Sammyberg', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(36, 'Predovicburgh', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(37, 'Jaquelinestad', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(38, 'Port Ollie', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(39, 'Amaniport', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(40, 'New Mariana', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(41, 'Dachmouth', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(42, 'South Adrienne', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(43, 'Sanfordland', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(44, 'Lefflerborough', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(45, 'VonRuedenhaven', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(46, 'East Jamilhaven', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(47, 'South Rasheedfurt', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(48, 'Barneyville', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(49, 'Toyhaven', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(50, 'Leonardborough', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(51, 'Lynchbury', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(52, 'East Viviannehaven', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(53, 'New Rolando', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(54, 'Lake Federico', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(55, 'Farrellside', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(56, 'Lake Arifort', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(57, 'Shawnside', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(58, 'East Kip', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(59, 'McKenzieland', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(60, 'Medhurstfort', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(61, 'Port Luellafort', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(62, 'Littelside', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(63, 'North Jamison', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(64, 'Helenabury', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(65, 'Emmanuelview', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(66, 'West Oswald', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(67, 'North Torrancemouth', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(68, 'Lake Velma', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(69, 'West Johnniebury', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(70, 'New Archfort', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(71, 'South Eunicehaven', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(72, 'Port Devonteshire', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(73, 'New Soledad', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(74, 'Prosaccoville', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(75, 'Hamillbury', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(76, 'Port Riverchester', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(77, 'Beierfurt', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(78, 'Daremouth', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(79, 'Adolphushaven', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(80, 'Lake Treland', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(81, 'East Jack', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(82, 'Patriciashire', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(83, 'Edythberg', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(84, 'North Vanport', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(85, 'New Kaylie', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(86, 'Nolanton', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(87, 'Lake Skylahaven', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(88, 'Spinkaview', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(89, 'East Idellstad', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(90, 'North Janaeshire', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(91, 'West Bustermouth', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(92, 'Berylhaven', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(93, 'D\'Amoreburgh', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(94, 'East Armando', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(95, 'South Antonetta', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(96, 'South Jaren', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(97, 'Metaport', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(98, 'New Timothymouth', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(99, 'Forrestborough', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(100, 'Yostborough', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(101, 'Olsonside', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(102, 'Breitenberghaven', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(103, 'Fatimaland', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(104, 'Karlimouth', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(105, 'Lake Bennie', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(106, 'Blockbury', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(107, 'South Quincy', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(108, 'Dickinsonton', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(109, 'Dominiquebury', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(110, 'Bretport', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(111, 'South Isai', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(112, 'Asaview', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(113, 'Hesselport', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(114, 'New Eveside', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(115, 'Paristown', '2023-03-26 21:59:09', '2023-03-26 21:59:09'),
(116, 'Lake Florine', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(117, 'North Bradleyland', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(118, 'Cristalview', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(119, 'South Emerald', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(120, 'Jackiefurt', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(121, 'Turcotteport', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(122, 'Port Callie', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(123, 'Turcotteview', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(124, 'Weberborough', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(125, 'Feestview', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(126, 'Calehaven', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(127, 'West Lelahville', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(128, 'North Hilton', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(129, 'Marleyshire', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(130, 'North Lois', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(131, 'Jalonmouth', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(132, 'East Elroymouth', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(133, 'North Godfreyside', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(134, 'Gerlachtown', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(135, 'Carrollton', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(136, 'Smithammouth', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(137, 'Emorymouth', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(138, 'Derickburgh', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(139, 'Schadenstad', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(140, 'New Adolphmouth', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(141, 'Yvonnemouth', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(142, 'Swiftshire', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(143, 'Lake Mayachester', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(144, 'Lake Michale', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(145, 'East Alaynafort', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(146, 'South Lucaschester', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(147, 'Lake Arjuntown', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(148, 'Braunshire', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(149, 'Lake Loy', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(150, 'Mullerside', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(151, 'Sunnyville', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(152, 'New Geraldland', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(153, 'Ferryburgh', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(154, 'West Dewayne', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(155, 'North Beatriceshire', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(156, 'Port Chyna', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(157, 'Lake Queenie', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(158, 'Ethylshire', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(159, 'Port Guadalupeton', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(160, 'Port Abigaylefurt', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(161, 'Lake Rosendomouth', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(162, 'Sophiefurt', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(163, 'Port Jaunita', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(164, 'Welchburgh', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(165, 'Naomieborough', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(166, 'Rennerview', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(167, 'East Kirstinstad', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(168, 'Jaidaton', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(169, 'Manteport', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(170, 'Bednarstad', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(171, 'East Ora', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(172, 'East Daphney', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(173, 'Torpfort', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(174, 'Port Judsontown', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(175, 'New Dollyville', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(176, 'Strosinfort', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(177, 'Brittanyland', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(178, 'New Neil', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(179, 'Aydenhaven', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(180, 'Lake Josephineborough', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(181, 'Lake Alexandreburgh', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(182, 'Prosaccoland', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(183, 'West Anastasiashire', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(184, 'East Rosa', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(185, 'South Clinton', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(186, 'North Christoptown', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(187, 'South Joannie', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(188, 'Port Garlandtown', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(189, 'Shieldsville', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(190, 'New Johnathonview', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(191, 'Port Karinaborough', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(192, 'Dorrismouth', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(193, 'Marcofurt', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(194, 'Sunnybury', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(195, 'East Caroline', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(196, 'Furmanborough', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(197, 'East Anthonyfort', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(198, 'Wiegandtown', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(199, 'New Stephania', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(200, 'West Rosinaton', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(201, 'Joeymouth', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(202, 'Bernicemouth', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(203, 'North Elinor', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(204, 'East Kenton', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(205, 'Lake Hilton', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(206, 'Moriahburgh', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(207, 'West Troychester', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(208, 'North Nayeliborough', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(209, 'Reecestad', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(210, 'South Valentinbury', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(211, 'Bobbieview', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(212, 'Lupeville', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(213, 'West Carole', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(214, 'Dorothyport', '2023-03-26 22:00:24', '2023-03-26 22:00:24'),
(215, 'Ornfort', '2023-03-26 22:00:24', '2023-03-26 22:00:24');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
