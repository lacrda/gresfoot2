-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Nov-2018 às 22:35
-- Versão do servidor: 5.7.22
-- versão do PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gresfoot`-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 25-Nov-2018 às 22:35
-- Versão do servidor: 5.7.22
-- versão do PHP: 7.1.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gresfoot`
--

-- --------------------------------------------------------


-- --------------------------------------------------------



INSERT INTO `escolas` (`id`, `name`, `img`, `info`, `apelido`) VALUES
(1, 'G.R.E.S. Unidos de Vila Isabel', 'https://upload.wikimedia.org/wikipedia/pt/thumb/2/23/Bandeira_do_GRES_Unidos_de_Vila_Isabel.jpg/240px-Bandeira_do_GRES_Unidos_de_Vila_Isabel.jpg', 'Fundação 04 de abril de 1946', 'Vila Isabel'),
(2, 'G.R.E.S. Império Serrano', 'https://upload.wikimedia.org/wikipedia/pt/thumb/3/30/Bandeira_do_GRES_Imp%C3%A9rio_Serrano.jpg/240px-Bandeira_do_GRES_Imp%C3%A9rio_Serrano.jpg', 'Fundação 23 de março de 1947\r\n', 'Império Serrano'),
(3, 'G.R.E.S. Unidos do Viradouro', 'https://upload.wikimedia.org/wikipedia/pt/thumb/0/06/Bandeira_do_GRES_Unidos_do_Viradouro.jpg/240px-Bandeira_do_GRES_Unidos_do_Viradouro.jpg', 'Fundação   24 de junho de 1946\r\n', 'Viradouro'),
(4, 'G.R.E.S. Acadêmicos do Grande Rio', 'https://upload.wikimedia.org/wikipedia/pt/thumb/7/7a/Bandeira_do_Grande_Rio.jpg/240px-Bandeira_do_Grande_Rio.jpg', 'Fundação  22 de setembro de 1988 \r\n', 'Grande Rio'),
(5, 'G.R.E.S. Acadêmicos do Salgueiro', 'https://upload.wikimedia.org/wikipedia/pt/thumb/c/cd/Bandeira_do_GRES_Acad%C3%AAmicos_do_Salgueiro.jpg/240px-Bandeira_do_GRES_Acad%C3%AAmicos_do_Salgueiro.jpg', 'Fundação   5 de março de 1953 \r\n', 'Salgueiro'),
(6, 'G.R.E.S. Beija-Flor de Nilópolis', 'https://upload.wikimedia.org/wikipedia/pt/thumb/c/c6/Bandeira_do_GRES_Beija-Flor.jpg/240px-Bandeira_do_GRES_Beija-Flor.jpg', 'Fundação   25 de dezembro de 1948 \r\n', 'Beija-Flor'),
(7, 'G.R.E.S. Imperatriz Leopoldinense', 'https://upload.wikimedia.org/wikipedia/pt/thumb/c/cc/Bandeira_do_GRES_Imperatriz_Leopoldinense.jpg/262px-Bandeira_do_GRES_Imperatriz_Leopoldinense.jpg', 'Fundação  6 de março de 1959 \r\n', 'Imperatriz'),
(8, 'G.R.E.S. Unidos da Tijuca', 'https://upload.wikimedia.org/wikipedia/pt/thumb/6/6e/Bandeira_do_GRES_Unidos_da_Tijuca.png/240px-Bandeira_do_GRES_Unidos_da_Tijuca.png', 'Fundação 31 de dezembro de 1931 \r\n', 'Unidos da Tijuca'),
(9, 'G.R.E.S. Portela', 'https://upload.wikimedia.org/wikipedia/pt/thumb/6/6f/Bandeira_do_GRES_Portela.jpg/240px-Bandeira_do_GRES_Portela.jpg', 'Fundação 11 de abril de 1923 \r\n', 'Portela'),
(10, 'G.R.E.S. União da Ilha', 'https://upload.wikimedia.org/wikipedia/pt/thumb/5/52/Bandeira_do_GRES_Uni%C3%A3o_da_Ilha_do_Governador.jpg/240px-Bandeira_do_GRES_Uni%C3%A3o_da_Ilha_do_Governador.jpg', '7 de março de 1953 \r\n', 'União da Ilha'),
(11, 'G.R.E.S. Paraíso do Tuiuti', 'https://upload.wikimedia.org/wikipedia/pt/thumb/0/07/Bandeira_do_GRES_Para%C3%ADso_do_Tuiuti.png/240px-Bandeira_do_GRES_Para%C3%ADso_do_Tuiuti.png', '5 de abril de 1952 \r\n', 'Paraíso do Tuiuti'),
(12, 'G.R.E.S. Estação Primeira de Mangueira', 'https://upload.wikimedia.org/wikipedia/pt/thumb/a/af/Bandeira_do_GRES_Mangueira.jpg/240px-Bandeira_do_GRES_Mangueira.jpg', '28 de abril de 1928 \r\n', 'Mangueira'),
(13, 'G.R.E.S. Mocidade Independente de Padre Miguel', 'https://upload.wikimedia.org/wikipedia/pt/thumb/8/8b/Bandeira_do_GRES_Mocidade_Independente_de_Padre_Miguel.jpg/250px-Bandeira_do_GRES_Mocidade_Independente_de_Padre_Miguel.jpg', '10 de novembro de 1955 \r\n', 'Mocidade');

-- --------------------------------------------------------
