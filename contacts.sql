-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 14, 2018 at 03:09 AM
-- Server version: 8.0.13
-- PHP Version: 7.2.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contacts`
--

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `CustomerID` varchar(5) NOT NULL,
  `CompanyName` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ContactName` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `ContactTitle` varchar(30) NOT NULL,
  `Address` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `City` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Email` varchar(254) NOT NULL,
  `PostalCode` varchar(10) NOT NULL,
  `Country` varchar(30) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Phone` varchar(16) NOT NULL,
  `Fax` varchar(16) DEFAULT NULL,
  `Region` varchar(20) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`CustomerID`, `CompanyName`, `ContactName`, `ContactTitle`, `Address`, `City`, `Email`, `PostalCode`, `Country`, `Phone`, `Fax`, `Region`) VALUES
('ALFKI', 'Alfreds Futterkiste', 'Maria Anders', 'Sales Representative', 'Obere Str. 57', 'Berlin', 'dummy@gmail.com', '12209', 'Germany', '0300074321', '0300076545', NULL),
('ANATR', 'Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Owner', 'Avda. de la Constitución 2222', 'México D.F.', 'dummy@gmail.com', '05021', 'Mexico', '55554729', '55553745', ''),
('ANTON', 'Antonio Moreno Taquería', 'Antonio Moreno', 'Owner', 'Mataderos  2312', 'México D.F.', 'dummy@gmail.com', '05023', 'Mexico', '55553932', NULL, NULL),
('AROUT', 'Around the Horn', 'Thomas Hardy', 'Sales Representative', '120 Hanover Sq.', 'London', 'dummy@gmail.com', 'WA1 1DP', 'UK', '1715557788', '1715556750', NULL),
('BERGS', 'Berglunds snabbköp', 'Christina Berglund', 'Order Administrator', 'Berguvsvägen  8', 'Luleå', 'dummy@gmail.com', 'S-958 22', 'Sweden', '0921123465', '0921123467', NULL),
('BLAUS', 'Blauer See Delikatessen', 'Hanna Moos', 'Sales Representative', 'Forsterstr. 57', 'Mannheim', 'dummy@gmail.com', '68306', 'Germany', '062108460', '062108924', NULL),
('BLONP', 'Blondel père et fils', 'Frédérique Citeaux', 'Marketing Manager', '24, place Kléber', 'Strasbourg', 'dummy@gmail.com', '67000', 'France', '88601531', '88601532', NULL),
('BOLID', 'Bólido Comidas preparadas', 'Martín Sommer', 'Owner', 'C/ Araquil, 67', 'Madrid', 'dummy@gmail.com', '28023', 'Spain', '915552282', '915559199', NULL),
('BONAP', 'Bon app\'', 'Laurence Lebihan', 'Owner', '12, rue des Bouchers', 'Marseille', 'dummy@gmail.com', '13008', 'France', '91244540', '91244541', NULL),
('BOTTM', 'Bottom-Dollar Markets', 'Elizabeth Lincoln', 'Accounting Manager', '23 Tsawassen Blvd.', 'Tsawassen', 'dummy@gmail.com', 'T2F 8M4', 'Canada', '6045554729', '6045553745', 'BC'),
('BSBEV', 'B\'s Beverages', 'Victoria Ashworth', 'Sales Representative', 'Fauntleroy Circus', 'London', 'dummy@gmail.com', 'EC2 5NT', 'UK', '1715551212', NULL, NULL),
('CACTU', 'Cactus Comidas para llevar', 'Patricio Simpson', 'Sales Agent', 'Cerrito 333', 'Buenos Aires', 'dummy@gmail.com', '1010', 'Argentina', '11355555', '11354892', NULL),
('CENTC', 'Centro comercial Moctezuma', 'Francisco Chang', 'Marketing Manager', 'Sierras de Granada 9993', 'México D.F.', 'dummy@gmail.com', '05022', 'Mexico', '55553392', '55557293', NULL),
('CHOPS', 'Chop-suey Chinese', 'Yang Wang', 'Owner', 'Hauptstr. 29', 'Bern', 'dummy@gmail.com', '3012', 'Switzerland', '0452076545', NULL, NULL),
('COMMI', 'Comércio Mineiro', 'Pedro Afonso', 'Sales Associate', 'Av. dos Lusíadas, 23', 'São Paulo', 'dummy@gmail.com', '05432-043', 'Brazil', '115557647', NULL, 'SP'),
('CONSH', 'Consolidated Holdings', 'Elizabeth Brown', 'Sales Representative', 'Berkeley Gardens\r\n12  Brewery', 'London', 'dummy@gmail.com', 'WX1 6LT', 'UK', '1715552282', '1715559199', NULL),
('DRACD', 'Drachenblut Delikatessen', 'Sven Ottlieb', 'Order Administrator', 'Walserweg 21', 'Aachen', 'dummy@gmail.com', '52066', 'Germany', '0241039123', '0241059428', NULL),
('DUMON', 'Du monde entier', 'Janine Labrune', 'Owner', '67, rue des Cinquante Otages', 'Nantes', 'dummy@gmail.com', '44000', 'France', '40678888', '40678989', NULL),
('EASTC', 'Eastern Connection', 'Ann Devon', 'Sales Agent', '35 King George', 'London', 'dummy@gmail.com', 'WX3 6FW', 'UK', '1715550297', '1715553373', NULL),
('ERNSH', 'Ernst Handel', 'Roland Mendel', 'Sales Manager', 'Kirchgasse 6', 'Graz', 'dummy@gmail.com', '8010', 'Austria', '76753425', '76753426', NULL),
('FAMIA', 'Familia Arquibaldo', 'Aria Cruz', 'Marketing Assistant', 'Rua Orós, 92', 'São Paulo', 'dummy@gmail.com', '05442-030', 'Brazil', '115559857', NULL, 'SP'),
('FISSA', 'FISSA Fabrica Inter. Salchichas S.A.', 'Diego Roel', 'Accounting Manager', 'C/ Moralzarzal, 86', 'Madrid', 'dummy@gmail.com', '28034', 'Spain', '915559444', '915555593', NULL),
('FOLIG', 'Folies gourmandes', 'Martine Rancé', 'Assistant Sales Agent', '184, chaussée de Tournai', 'Lille', 'dummy@gmail.com', '59000', 'France', '20161016', '20161017', NULL),
('FOLKO', 'Folk och fä HB', 'Maria Larsson', 'Owner', 'Åkergatan 24', 'Bräcke', 'dummy@gmail.com', 'S-844 67', 'Sweden', '0695346721', NULL, NULL),
('FRANK', 'Frankenversand', 'Peter Franken', 'Marketing Manager', 'Berliner Platz 43', 'München', 'dummy@gmail.com', '80805', 'Germany', '0890877310', '0890877451', NULL),
('FRANR', 'France restauration', 'Carine Schmitt', 'Marketing Manager', '54, rue Royale', 'Nantes', 'dummy@gmail.com', '44000', 'France', '40322121', '40322120', NULL),
('FRANS', 'Franchi S.p.A.', 'Paolo Accorti', 'Sales Representative', 'Via Monte Bianco 34', 'Torino', 'dummy@gmail.com', '10100', 'Italy', '0114988260', '0114988261', NULL),
('FURIB', 'Furia Bacalhau e Frutos do Mar', 'Lino Rodriguez', 'Sales Manager', 'Jardim das rosas n. 32', 'Lisboa', 'dummy@gmail.com', '1675', 'Portugal', '13542534', '13542535', NULL),
('GALED', 'Galería del gastrónomo', 'Eduardo Saavedra', 'Marketing Manager', 'Rambla de Cataluña, 23', 'Barcelona', 'dummy@gmail.com', '08022', 'Spain', '932034560', '932034561', NULL),
('GODOS', 'Godos Cocina Típica', 'José Pedro Freyre', 'Sales Manager', 'C/ Romero, 33', 'Sevilla', 'dummy@gmail.com', '41101', 'Spain', '955558282', NULL, NULL),
('GOURL', 'Gourmet Lanchonetes', 'André Fonseca', 'Sales Associate', 'Av. Brasil, 442', 'Campinas', 'dummy@gmail.com', '04876-786', 'Brazil', '115559482', NULL, 'SP'),
('GREAL', 'Great Lakes Food Market', 'Howard Snyder', 'Marketing Manager', '2732 Baker Blvd.', 'Eugene', 'dummy@gmail.com', '97403', 'USA', '5035557555', NULL, 'OR'),
('GROSR', 'GROSELLA-Restaurante', 'Manuel Pereira', 'Owner', '5ª Ave. Los Palos Grandes', 'Caracas', 'dummy@gmail.com', '1081', 'Venezuela', '22832951', '22833397', 'DF'),
('HANAR', 'Hanari Carnes', 'Mario Pontes', 'Accounting Manager', 'Rua do Paço, 67', 'Rio de Janeiro', 'dummy@gmail.com', '05454-876', 'Brazil', '215550091', '215558765', 'RJ'),
('HILAA', 'HILARIÓN-Abastos', 'Carlos Hernández', 'Sales Representative', 'Carrera 22 con Ave. Carlos Soublette #8-35', 'San Cristóbal', 'dummy@gmail.com', '5022', 'Venezuela', '55551340', '55551948', 'Táchira'),
('HUNGC', 'Hungry Coyote Import Store', 'Yoshi Latimer', 'Sales Representative', 'City Center Plaza\r\n516 Main St.', 'Elgin', 'dummy@gmail.com', '97827', 'USA', '5035556874', '5035552376', 'OR'),
('HUNGO', 'Hungry Owl All-Night Grocers', 'Patricia McKenna', 'Sales Associate', '8 Johnstown Road', 'Cork', 'dummy@gmail.com', '', 'Ireland', '2967542', '29673333', 'Co. Cork'),
('ISLAT', 'Island Trading', 'Helen Bennett', 'Marketing Manager', 'Garden House\r\nCrowther Way', 'Cowes', 'dummy@gmail.com', 'PO31 7PJ', 'UK', '1985558888', NULL, 'Isle of Wight'),
('KOENE', 'Königlich Essen', 'Philip Cramer', 'Sales Associate', 'Maubelstr. 90', 'Brandenburg', 'dummy@gmail.com', '14776', 'Germany', '055509876', NULL, NULL),
('LACOR', 'La corne d\'abondance', 'Daniel Tonini', 'Sales Representative', '67, avenue de l\'Europe', 'Versailles', 'dummy@gmail.com', '78000', 'France', '30598410', '30598511', NULL),
('LAMAI', 'La maison d\'Asie', 'Annette Roulet', 'Sales Manager', '1 rue Alsace-Lorraine', 'Toulouse', 'dummy@gmail.com', '31000', 'France', '61776110', '61776111', NULL),
('LAUGB', 'Laughing Bacchus Wine Cellars', 'Yoshi Tannamuri', 'Marketing Assistant', '1900 Oak St.', 'Vancouver', 'dummy@gmail.com', 'V3F 2K1', 'Canada', '6045553392', '6045557293', 'BC'),
('LAZYK', 'Lazy K Kountry Store', 'John Steel', 'Marketing Manager', '12 Orchestra Terrace', 'Walla Walla', 'dummy@gmail.com', '99362', 'USA', '5095557969', '5095556221', 'WA'),
('LEHMS', 'Lehmanns Marktstand', 'Renate Messner', 'Sales Representative', 'Magazinweg 7', 'Frankfurt a.M.', 'dummy@gmail.com', '60528', 'Germany', '0690245984', '0690245874', NULL),
('LETSS', 'Let\'s Stop N Shop', 'Jaime Yorres', 'Owner', '87 Polk St.\r\nSuite 5', 'San Francisco', 'dummy@gmail.com', '94117', 'USA', '4155555938', NULL, 'CA'),
('LILAS', 'LILA-Supermercado', 'Carlos González', 'Accounting Manager', 'Carrera 52 con Ave. Bolívar #65-98 Llano Largo', 'Barquisimeto', 'dummy@gmail.com', '3508', 'Venezuela', '93316954', '93317256', 'Lara'),
('LINOD', 'LINO-Delicateses', 'Felipe Izquierdo', 'Owner', 'Ave. 5 de Mayo Porlamar', 'I. de Margarita', 'dummy@gmail.com', '4980', 'Venezuela', '8345612', '8349393', 'Nueva Esparta'),
('LONEP', 'Lonesome Pine Restaurant', 'Fran Wilson', 'Sales Manager', '89 Chiaroscuro Rd.', 'Portland', 'dummy@gmail.com', '97219', 'USA', '5035559573', '5035559646', 'OR'),
('MAGAA', 'Magazzini Alimentari Riuniti', 'Giovanni Rovelli', 'Marketing Manager', 'Via Ludovico il Moro 22', 'Bergamo', 'dummy@gmail.com', '24100', 'Italy', '035640230', '035640231', NULL),
('MAISD', 'Maison Dewey', 'Catherine Dewey', 'Sales Agent', 'Rue Joseph-Bens 532', 'Bruxelles', 'dummy@gmail.com', 'B-1180', 'Belgium', '022012467', '022012468', NULL);

--
-- Triggers `contacts`
--
DELIMITER $$
CREATE TRIGGER `format_fax` BEFORE INSERT ON `contacts` FOR EACH ROW set new.Fax = regexp_replace(new.Fax, '[^[:digit:]]', '')
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `format_phone` BEFORE INSERT ON `contacts` FOR EACH ROW set new.Phone = regexp_replace(new.Phone, '[^[:digit:]]', '')
$$
DELIMITER ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`CustomerID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
