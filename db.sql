-- phpMyAdmin SQL Dump
-- version 4.7.3
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:8889
-- Généré le :  ven. 22 déc. 2017 à 20:26
-- Version du serveur :  5.6.35
-- Version de PHP :  7.1.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Base de données :  `HotelDB`
--

-- --------------------------------------------------------

--
-- Structure de la table `client`
--

CREATE TABLE `client` (
  `id` int(11) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `address` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `country_id` int(50) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `client`
--

INSERT INTO `client` (`id`, `first_name`, `last_name`, `address`, `city`, `country_id`, `phone_number`, `email`) VALUES
(0, 'dupont', 'xavier', '75 avenue parmentier', 'paris', 1, '0678867898', 'dupont@xavier.fr'),
(3, 'hortense', 'hong', '13 avenue parmentier', 'Londre', 1, '0678867898', 'hortense@hong.com'),
(4, 'louis', 'richarin', '47 rue de paris ', 'paris', 5, '0678867563', 'louis@richarin.com'),
(5, 'jean françois', 'richard', '88 rue de parmentier', 'madrid', 2, '0678863454', 'jf@richard.com'),
(6, 'fidele', 'castor', '47 rue de voltaire', 'paris', 5, '0678654335', 'fidele@castor.com'),
(7, 'beatrice', 'richard', '788 rue de parmentier', 'madrid', 2, '0734567878', 'beatrice@richard.com');

-- --------------------------------------------------------

--
-- Structure de la table `country`
--

CREATE TABLE `country` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `country`
--

INSERT INTO `country` (`id`, `name`) VALUES
(1, 'FRANCE'),
(2, 'UK'),
(3, 'ITALIE'),
(4, 'TURQUIE'),
(5, 'CHINA');

-- --------------------------------------------------------

--
-- Structure de la table `hotel`
--

CREATE TABLE `hotel` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `hotel`
--

INSERT INTO `hotel` (`id`, `name`, `email`, `phone_number`) VALUES
(1, 'Hilton', 'hilton@hilton.com', '0148767897'),
(2, 'Sentiel', 'sentiel@gmail.com', '0148767897'),
(3, 'Ibis', 'hilton@hilton.com', '0148767897'),
(4, 'QuatreT', 'QuatreT@gmail.com', '0148767897'),
(5, 'Ibis2', 'Ibis2@gmail.com', '0148767897'),
(6, 'ShangriLa', 'ShangriLa@gmail.fr', '0148767897'),
(7, 'HongKong', 'HongKong@gmail.com', '0148767897'),
(8, 'Chinedu', 'Chinedu@gmail.fr', '0148767897');

-- --------------------------------------------------------

--
-- Structure de la table `reservation`
--

CREATE TABLE `reservation` (
  `id` int(11) NOT NULL,
  `room_id` int(50) NOT NULL,
  `client_id` int(50) NOT NULL,
  `arrival` date NOT NULL,
  `depature` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `reservation`
--

INSERT INTO `reservation` (`id`, `room_id`, `client_id`, `arrival`, `depature`) VALUES
(1, 3, 3, '2017-11-14', '2017-11-29'),
(2, 1, 5, '2017-12-25', '2017-12-31'),
(3, 3, 3, '2017-11-14', '2017-11-29'),
(4, 1, 5, '2017-12-25', '2017-12-31');

-- --------------------------------------------------------

--
-- Structure de la table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `hotel_id` int(50) NOT NULL,
  `number` int(50) NOT NULL,
  `bed_number` int(11) NOT NULL,
  `price_night` decimal(10,0) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `room`
--

INSERT INTO `room` (`id`, `hotel_id`, `number`, `bed_number`, `price_night`) VALUES
(1, 7, 56, 1, '79'),
(2, 6, 2, 3, '88'),
(3, 7, 56, 1, '79'),
(4, 6, 2, 3, '88');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`id`),
  ADD KEY `country-id` (`country_id`),
  ADD KEY `country_id` (`country_id`);

--
-- Index pour la table `country`
--
ALTER TABLE `country`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `hotel`
--
ALTER TABLE `hotel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Index pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD PRIMARY KEY (`id`),
  ADD KEY `room-id` (`room_id`),
  ADD KEY `client-id` (`client_id`);

--
-- Index pour la table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`),
  ADD KEY `hotel-id` (`hotel_id`),
  ADD KEY `hotel_id` (`hotel_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `client`
--
ALTER TABLE `client`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT pour la table `country`
--
ALTER TABLE `country`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT pour la table `hotel`
--
ALTER TABLE `hotel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT pour la table `reservation`
--
ALTER TABLE `reservation`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `client`
--
ALTER TABLE `client`
  ADD CONSTRAINT `client_ibfk_1` FOREIGN KEY (`country_id`) REFERENCES `country` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `reservation`
--
ALTER TABLE `reservation`
  ADD CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`room_id`) REFERENCES `room` (`id`),
  ADD CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client` (`id`);

--
-- Contraintes pour la table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `room_ibfk_1` FOREIGN KEY (`hotel_id`) REFERENCES `hotel` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
