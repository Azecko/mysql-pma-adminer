-- phpMyAdmin SQL Dump
-- version 4.5.4.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Nov 19, 2021 at 08:29 AM
-- Server version: 5.7.11
-- PHP Version: 5.6.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `panseri_sami_info1d_contacts`
--

-- --------------------------------------------------------

--
-- Table structure for table `t_adresses`
--

CREATE TABLE `t_adresses` (
  `id_adresse` int(11) NOT NULL,
  `nom_adresse` varchar(95) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_entreprises`
--

CREATE TABLE `t_entreprises` (
  `id_entreprise` int(11) NOT NULL,
  `nom_entreprise` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_mails`
--

CREATE TABLE `t_mails` (
  `id_mails` int(11) NOT NULL,
  `nom_mail` varchar(320) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_numeros`
--

CREATE TABLE `t_numeros` (
  `id_numero` int(11) NOT NULL,
  `numero_telephone` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_personnes`
--

CREATE TABLE `t_personnes` (
  `id_personne` int(11) NOT NULL,
  `nom_personne` varchar(42) DEFAULT NULL,
  `prenom_personne` varchar(42) DEFAULT NULL,
  `date_naissance_personne` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_pers_avoir_adresse`
--

CREATE TABLE `t_pers_avoir_adresse` (
  `id_pers_avoir_adresse` int(11) NOT NULL,
  `fk_personne` int(11) DEFAULT NULL,
  `fk_adresse` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_pers_avoir_mail`
--

CREATE TABLE `t_pers_avoir_mail` (
  `id_pers_avoir_mail` int(11) NOT NULL,
  `fk_personne` int(11) DEFAULT NULL,
  `fk_mail` int(11) DEFAULT NULL,
  `date_create_mail` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_pers_avoir_numero`
--

CREATE TABLE `t_pers_avoir_numero` (
  `id_pers_avoir_numero` int(11) NOT NULL,
  `fk_personne` int(11) DEFAULT NULL,
  `fk_numero` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `t_pers_etre_dans_entreprise`
--

CREATE TABLE `t_pers_etre_dans_entreprise` (
  `id_pers_etre_dans_entreprise` int(11) NOT NULL,
  `fk_personne` int(11) DEFAULT NULL,
  `fk_entreprise` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `t_adresses`
--
ALTER TABLE `t_adresses`
  ADD PRIMARY KEY (`id_adresse`);

--
-- Indexes for table `t_entreprises`
--
ALTER TABLE `t_entreprises`
  ADD PRIMARY KEY (`id_entreprise`);

--
-- Indexes for table `t_mails`
--
ALTER TABLE `t_mails`
  ADD PRIMARY KEY (`id_mails`);

--
-- Indexes for table `t_numeros`
--
ALTER TABLE `t_numeros`
  ADD PRIMARY KEY (`id_numero`);

--
-- Indexes for table `t_personnes`
--
ALTER TABLE `t_personnes`
  ADD PRIMARY KEY (`id_personne`);

--
-- Indexes for table `t_pers_avoir_adresse`
--
ALTER TABLE `t_pers_avoir_adresse`
  ADD PRIMARY KEY (`id_pers_avoir_adresse`),
  ADD KEY `fk_personne` (`fk_personne`),
  ADD KEY `fk_adresse` (`fk_adresse`);

--
-- Indexes for table `t_pers_avoir_mail`
--
ALTER TABLE `t_pers_avoir_mail`
  ADD PRIMARY KEY (`id_pers_avoir_mail`),
  ADD KEY `fk_personne` (`fk_personne`),
  ADD KEY `fk_mail` (`fk_mail`);

--
-- Indexes for table `t_pers_avoir_numero`
--
ALTER TABLE `t_pers_avoir_numero`
  ADD PRIMARY KEY (`id_pers_avoir_numero`),
  ADD KEY `fk_personne` (`fk_personne`),
  ADD KEY `fk_numero` (`fk_numero`);

--
-- Indexes for table `t_pers_etre_dans_entreprise`
--
ALTER TABLE `t_pers_etre_dans_entreprise`
  ADD PRIMARY KEY (`id_pers_etre_dans_entreprise`),
  ADD UNIQUE KEY `fk_entreprise` (`fk_entreprise`),
  ADD KEY `fk_personne` (`fk_personne`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `t_adresses`
--
ALTER TABLE `t_adresses`
  MODIFY `id_adresse` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_entreprises`
--
ALTER TABLE `t_entreprises`
  MODIFY `id_entreprise` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_mails`
--
ALTER TABLE `t_mails`
  MODIFY `id_mails` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_numeros`
--
ALTER TABLE `t_numeros`
  MODIFY `id_numero` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_personnes`
--
ALTER TABLE `t_personnes`
  MODIFY `id_personne` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_pers_avoir_adresse`
--
ALTER TABLE `t_pers_avoir_adresse`
  MODIFY `id_pers_avoir_adresse` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_pers_avoir_mail`
--
ALTER TABLE `t_pers_avoir_mail`
  MODIFY `id_pers_avoir_mail` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_pers_avoir_numero`
--
ALTER TABLE `t_pers_avoir_numero`
  MODIFY `id_pers_avoir_numero` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `t_pers_etre_dans_entreprise`
--
ALTER TABLE `t_pers_etre_dans_entreprise`
  MODIFY `id_pers_etre_dans_entreprise` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `t_pers_avoir_adresse`
--
ALTER TABLE `t_pers_avoir_adresse`
  ADD CONSTRAINT `t_pers_avoir_adresse_ibfk_1` FOREIGN KEY (`fk_personne`) REFERENCES `t_personnes` (`id_personne`),
  ADD CONSTRAINT `t_pers_avoir_adresse_ibfk_2` FOREIGN KEY (`fk_adresse`) REFERENCES `t_adresses` (`id_adresse`);

--
-- Constraints for table `t_pers_avoir_mail`
--
ALTER TABLE `t_pers_avoir_mail`
  ADD CONSTRAINT `t_pers_avoir_mail_ibfk_1` FOREIGN KEY (`fk_personne`) REFERENCES `t_personnes` (`id_personne`),
  ADD CONSTRAINT `t_pers_avoir_mail_ibfk_2` FOREIGN KEY (`fk_mail`) REFERENCES `t_mails` (`id_mails`);

--
-- Constraints for table `t_pers_avoir_numero`
--
ALTER TABLE `t_pers_avoir_numero`
  ADD CONSTRAINT `t_pers_avoir_numero_ibfk_1` FOREIGN KEY (`fk_personne`) REFERENCES `t_personnes` (`id_personne`),
  ADD CONSTRAINT `t_pers_avoir_numero_ibfk_2` FOREIGN KEY (`fk_numero`) REFERENCES `t_numeros` (`id_numero`);

--
-- Constraints for table `t_pers_etre_dans_entreprise`
--
ALTER TABLE `t_pers_etre_dans_entreprise`
  ADD CONSTRAINT `t_pers_etre_dans_entreprise_ibfk_1` FOREIGN KEY (`fk_personne`) REFERENCES `t_personnes` (`id_personne`),
  ADD CONSTRAINT `t_pers_etre_dans_entreprise_ibfk_2` FOREIGN KEY (`fk_entreprise`) REFERENCES `t_entreprises` (`id_entreprise`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;