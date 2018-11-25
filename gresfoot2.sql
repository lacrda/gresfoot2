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
-- Database: `gresfoot`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `acoes`
--

CREATE TABLE `acoes` (
  `id_acao` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `effect_bar` int(11) DEFAULT NULL,
  `effect_com` int(11) DEFAULT NULL,
  `effect_imp` int(11) DEFAULT NULL,
  `effect_cash` int(11) DEFAULT NULL,
  `effect_des` int(11) DEFAULT NULL,
  `can_show_since` int(11) DEFAULT NULL,
  `can_show_until` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `acoes`
--

INSERT INTO `acoes` (`id_acao`, `name`, `description`, `effect_bar`, `effect_com`, `effect_imp`, `effect_cash`, `effect_des`, `can_show_since`, `can_show_until`) VALUES
(1, 'Contratar Equipe Terceirizada', 'Terceirizar funções de costura de fantasias no barracão. ', 6, -3, 0, -10000, 0, 2, 17),
(2, 'Fazer Feijoada da Escola', 'Fazer evento tradicional na quadra, com ingressos acessíveis e vantagens para a comunidade.', -3, 6, 2, 8000, 3, 2, 17),
(3, 'Promover divulgação do samba', 'Investir na divulgação do samba nas rádios, internet e televisão.', 0, 2, 6, -6000, 2, 5, 17),
(4, 'Reservar Alas para Comunidade', 'Distribuir gratuitamente fantasias de 6 alas para a comunidade.', 0, 6, 0, -4000, 3, 3, 17),
(5, 'Fazer Feijoada da Escola', 'Fazer evento tradicional na quadra, com ingressos acessíveis e vantagens para a comunidade.', -3, 6, 2, 8000, 3, 2, 17),
(6, 'Promover divulgação do samba', 'Investir na divulgação do samba nas rádios, internet e televisão.', 0, 2, 6, -6000, 2, 5, 17),
(7, 'Reservar Alas para Comunidade', 'Distribuir gratuitamente fantasias de 6 alas para a comunidade.', 0, 6, 0, -4000, 3, 3, 17),
(8, 'Contratar Equipe Terceirizada', 'Terceirizar funções de costura de fantasias no barracão. ', 6, -3, 0, -10000, 0, 2, 17),
(9, 'Fazer Feijoada da Escola', 'Fazer evento tradicional na quadra, com ingressos acessíveis e vantagens para a comunidade.', -3, 6, 2, 8000, 3, 2, 17),
(10, 'Promover divulgação do samba', 'Investir na divulgação do samba nas rádios, internet e televisão.', 0, 2, 6, -6000, 2, 5, 17),
(11, 'Reservar Alas para Comunidade', 'Distribuir gratuitamente fantasias de 6 alas para a comunidade.', 0, 6, 0, -4000, 3, 3, 17),
(12, 'Fazer Feijoada da Escola', 'Fazer evento tradicional na quadra, com ingressos acessíveis e vantagens para a comunidade.', -3, 6, 2, 8000, 3, 2, 17),
(13, 'Promover divulgação do samba', 'Investir na divulgação do samba nas rádios, internet e televisão.', 0, 2, 6, -6000, 2, 5, 17),
(14, 'Reservar Alas para Comunidade', 'Distribuir gratuitamente fantasias de 6 alas para a comunidade.', 0, 6, 0, -4000, 3, 3, 17),
(15, 'Contratar Equipe Terceirizada', 'Terceirizar funções de costura de fantasias no barracão. ', 6, -3, 0, -10000, 0, 2, 17),
(16, 'Fazer Feijoada da Escola', 'Fazer evento tradicional na quadra, com ingressos acessíveis e vantagens para a comunidade.', -3, 6, 2, 8000, 3, 2, 17),
(17, 'Promover divulgação do samba', 'Investir na divulgação do samba nas rádios, internet e televisão.', 0, 2, 6, -6000, 2, 5, 17),
(18, 'Reservar Alas para Comunidade', 'Distribuir gratuitamente fantasias de 6 alas para a comunidade.', 0, 6, 0, -4000, 3, 3, 17),
(19, 'Fazer Feijoada da Escola', 'Fazer evento tradicional na quadra, com ingressos acessíveis e vantagens para a comunidade.', -3, 6, 2, 8000, 3, 2, 17),
(20, 'Promover divulgação do samba', 'Investir na divulgação do samba nas rádios, internet e televisão.', 0, 2, 6, -6000, 2, 5, 17),
(21, 'Reservar Alas para Comunidade', 'Distribuir gratuitamente fantasias de 6 alas para a comunidade.', 0, 6, 0, -4000, 3, 3, 17),
(22, 'Contratar Equipe Terceirizada', 'Terceirizar funções de costura de fantasias no barracão. ', 6, -3, 0, -10000, 0, 16, 16),
(23, 'Fazer Feijoada da Escola', 'Fazer evento tradicional na quadra, com ingressos acessíveis e vantagens para a comunidade.', -3, 6, 2, 8000, 3, 18, 18),
(24, 'Promover divulgação do samba', 'Investir na divulgação do samba nas rádios, internet e televisão.', 0, 2, 6, -6000, 2, 18, 18),
(25, 'Reservar Alas para Comunidade', 'Distribuir gratuitamente fantasias de 6 alas para a comunidade.', 0, 6, 0, -4000, 3, 18, 18),
(26, 'Fazer Feijoada da Escola', 'Fazer evento tradicional na quadra, com ingressos acessíveis e vantagens para a comunidade.', -3, 6, 2, 8000, 3, 14, 14),
(27, 'Promover divulgação do samba', 'Investir na divulgação do samba nas rádios, internet e televisão.', 0, 2, 6, -6000, 2, 16, 16),
(28, 'Reservar Alas para Comunidade', 'Distribuir gratuitamente fantasias de 6 alas para a comunidade.', 0, 6, 0, -4000, 3, 16, 16),
(29, 'Promover divulgação do samba', 'Investir na divulgação do samba nas rádios, internet e televisão.', 0, 2, 6, -6000, 2, 14, 14),
(30, 'Reservar Alas para Comunidade', 'Distribuir gratuitamente fantasias de 6 alas para a comunidade.', 0, 6, 0, -4000, 3, 14, 14),
(31, 'Contratar Equipe Terceirizada', 'Terceirizar funções de costura de fantasias no barracão. ', 6, -3, 0, -10000, 0, 2, 17),
(32, 'Fazer Feijoada da Escola', 'Fazer evento tradicional na quadra, com ingressos acessíveis e vantagens para a comunidade.', -3, 6, 2, 8000, 3, 12, 12),
(33, 'Promover divulgação do samba', 'Investir na divulgação do samba nas rádios, internet e televisão.', 0, 2, 6, -6000, 2, 12, 12),
(34, 'Reservar Alas para Comunidade', 'Distribuir gratuitamente fantasias de 6 alas para a comunidade.', 0, 6, 0, -4000, 3, 12, 12),
(35, 'Fazer Feijoada da Escola', 'Fazer evento tradicional na quadra, com ingressos acessíveis e vantagens para a comunidade.', -3, 6, 2, 8000, 3, 11, 11),
(36, 'Promover divulgação do samba', 'Investir na divulgação do samba nas rádios, internet e televisão.', 0, 2, 6, -6000, 2, 11, 11),
(37, 'Reservar Alas para Comunidade', 'Distribuir gratuitamente fantasias de 6 alas para a comunidade.', 0, 6, 0, -4000, 3, 11, 11),
(38, 'Contratar Equipe Terceirizada', 'Terceirizar funções de costura de fantasias no barracão. ', 6, -3, 0, -10000, 0, 9, 9),
(39, 'Fazer Feijoada da Escola', 'Fazer evento tradicional na quadra, com ingressos acessíveis e vantagens para a comunidade.', -3, 6, 2, 8000, 3, 9, 9),
(40, 'Promover divulgação do samba', 'Investir na divulgação do samba nas rádios, internet e televisão.', 0, 2, 6, -6000, 2, 9, 9),
(41, 'Reservar Alas para Comunidade', 'Distribuir gratuitamente fantasias de 6 alas para a comunidade.', 0, 6, 0, -4000, 3, 3, 17),
(42, 'Samba - Parceria 1', '', 0, 10, 0, 0, 0, 4, 4),
(43, 'Samba - Parceria 2', '', 2, -8, 2, 100, 4, 4, 4),
(44, 'Samba - Parceria 3', '', 2, 2, 6, 0, -2, 4, 4),
(45, 'Samba - Parceria 4', '', 4, 0, 6, 0, 0, 4, 4);

-- --------------------------------------------------------

--
-- Estrutura da tabela `enredos`
--

CREATE TABLE `enredos` (
  `id_enredo` int(11) NOT NULL,
  `id_escola` int(11) NOT NULL,
  `max_bar` int(11) NOT NULL,
  `max_com` int(11) NOT NULL,
  `bonus_imp` int(11) DEFAULT NULL,
  `bonus_cash` int(11) DEFAULT NULL,
  `bonus_com` int(11) DEFAULT NULL,
  `campeao` tinyint(1) NOT NULL,
  `ano` int(11) NOT NULL,
  `nome` varchar(256) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `enredos`
--

INSERT INTO `enredos` (`id_enredo`, `id_escola`, `max_bar`, `max_com`, `bonus_imp`, `bonus_cash`, `bonus_com`, `campeao`, `ano`, `nome`) VALUES
(508, 1, 100, 100, NULL, NULL, NULL, 0, 1980, NULL),
(509, 1, 100, 100, NULL, NULL, NULL, 0, 1981, NULL),
(510, 1, 100, 100, NULL, NULL, NULL, 0, 1982, NULL),
(511, 1, 100, 100, NULL, NULL, NULL, 0, 1983, NULL),
(512, 1, 100, 100, NULL, NULL, NULL, 0, 1984, NULL),
(513, 1, 100, 100, NULL, NULL, NULL, 0, 1985, NULL),
(514, 1, 100, 100, NULL, NULL, NULL, 0, 1986, NULL),
(515, 1, 100, 100, NULL, NULL, NULL, 0, 1987, NULL),
(516, 1, 100, 100, NULL, NULL, NULL, 0, 1988, NULL),
(517, 1, 100, 100, NULL, NULL, NULL, 0, 1989, NULL),
(518, 1, 100, 100, NULL, NULL, NULL, 0, 1990, NULL),
(519, 1, 100, 100, NULL, NULL, NULL, 0, 1991, NULL),
(520, 1, 100, 100, NULL, NULL, NULL, 0, 1992, NULL),
(521, 1, 100, 100, NULL, NULL, NULL, 0, 1993, NULL),
(522, 1, 100, 100, NULL, NULL, NULL, 0, 1994, NULL),
(523, 1, 100, 100, NULL, NULL, NULL, 0, 1995, NULL),
(524, 1, 100, 100, NULL, NULL, NULL, 0, 1996, NULL),
(525, 1, 100, 100, NULL, NULL, NULL, 0, 1997, NULL),
(526, 1, 100, 100, NULL, NULL, NULL, 0, 1998, NULL),
(527, 1, 100, 100, NULL, NULL, NULL, 0, 1999, NULL),
(528, 1, 100, 100, NULL, NULL, NULL, 0, 2000, NULL),
(529, 1, 100, 100, NULL, NULL, NULL, 0, 2001, NULL),
(530, 1, 100, 100, NULL, NULL, NULL, 0, 2002, NULL),
(531, 1, 100, 100, NULL, NULL, NULL, 0, 2003, NULL),
(532, 1, 100, 100, NULL, NULL, NULL, 0, 2004, NULL),
(533, 1, 100, 100, NULL, NULL, NULL, 0, 2005, NULL),
(534, 1, 100, 100, NULL, NULL, NULL, 0, 2006, NULL),
(535, 1, 100, 100, NULL, NULL, NULL, 0, 2007, NULL),
(536, 1, 100, 100, NULL, NULL, NULL, 0, 2008, NULL),
(537, 1, 100, 100, NULL, NULL, NULL, 0, 2009, NULL),
(538, 1, 100, 100, NULL, NULL, NULL, 0, 2010, NULL),
(539, 1, 100, 100, NULL, NULL, NULL, 0, 2011, NULL),
(540, 1, 100, 100, NULL, NULL, NULL, 0, 2012, NULL),
(541, 1, 100, 100, NULL, NULL, NULL, 0, 2013, NULL),
(542, 1, 100, 100, NULL, NULL, NULL, 0, 2014, NULL),
(543, 1, 100, 100, NULL, NULL, NULL, 0, 2015, NULL),
(544, 1, 100, 100, NULL, NULL, NULL, 0, 2016, NULL),
(545, 1, 100, 100, NULL, NULL, NULL, 0, 2017, NULL),
(546, 1, 100, 100, NULL, NULL, NULL, 0, 2018, NULL),
(547, 2, 100, 100, NULL, NULL, NULL, 0, 1980, NULL),
(548, 2, 100, 100, NULL, NULL, NULL, 0, 1981, NULL),
(549, 2, 100, 100, NULL, NULL, NULL, 0, 1982, NULL),
(550, 2, 100, 100, NULL, NULL, NULL, 0, 1983, NULL),
(551, 2, 100, 100, NULL, NULL, NULL, 0, 1984, NULL),
(552, 2, 100, 100, NULL, NULL, NULL, 0, 1985, NULL),
(553, 2, 100, 100, NULL, NULL, NULL, 0, 1986, NULL),
(554, 2, 100, 100, NULL, NULL, NULL, 0, 1987, NULL),
(555, 2, 100, 100, NULL, NULL, NULL, 0, 1988, NULL),
(556, 2, 100, 100, NULL, NULL, NULL, 0, 1989, NULL),
(557, 2, 100, 100, NULL, NULL, NULL, 0, 1990, NULL),
(558, 2, 100, 100, NULL, NULL, NULL, 0, 1991, NULL),
(559, 2, 100, 100, NULL, NULL, NULL, 0, 1992, NULL),
(560, 2, 100, 100, NULL, NULL, NULL, 0, 1993, NULL),
(561, 2, 100, 100, NULL, NULL, NULL, 0, 1994, NULL),
(562, 2, 100, 100, NULL, NULL, NULL, 0, 1995, NULL),
(563, 2, 100, 100, NULL, NULL, NULL, 0, 1996, NULL),
(564, 2, 100, 100, NULL, NULL, NULL, 0, 1997, NULL),
(565, 2, 100, 100, NULL, NULL, NULL, 0, 1998, NULL),
(566, 2, 100, 100, NULL, NULL, NULL, 0, 1999, NULL),
(567, 2, 100, 100, NULL, NULL, NULL, 0, 2000, NULL),
(568, 2, 100, 100, NULL, NULL, NULL, 0, 2001, NULL),
(569, 2, 100, 100, NULL, NULL, NULL, 0, 2002, NULL),
(570, 2, 100, 100, NULL, NULL, NULL, 0, 2003, NULL),
(571, 2, 100, 100, NULL, NULL, NULL, 0, 2004, NULL),
(572, 2, 100, 100, NULL, NULL, NULL, 0, 2005, NULL),
(573, 2, 100, 100, NULL, NULL, NULL, 0, 2006, NULL),
(574, 2, 100, 100, NULL, NULL, NULL, 0, 2007, NULL),
(575, 2, 100, 100, NULL, NULL, NULL, 0, 2008, NULL),
(576, 2, 100, 100, NULL, NULL, NULL, 0, 2009, NULL),
(577, 2, 100, 100, NULL, NULL, NULL, 0, 2010, NULL),
(578, 2, 100, 100, NULL, NULL, NULL, 0, 2011, NULL),
(579, 2, 100, 100, NULL, NULL, NULL, 0, 2012, NULL),
(580, 2, 100, 100, NULL, NULL, NULL, 0, 2013, NULL),
(581, 2, 100, 100, NULL, NULL, NULL, 0, 2014, NULL),
(582, 2, 100, 100, NULL, NULL, NULL, 0, 2015, NULL),
(583, 2, 100, 100, NULL, NULL, NULL, 0, 2016, NULL),
(584, 2, 100, 100, NULL, NULL, NULL, 0, 2017, NULL),
(585, 2, 100, 100, NULL, NULL, NULL, 0, 2018, NULL),
(586, 3, 100, 100, NULL, NULL, NULL, 0, 1980, NULL),
(587, 3, 100, 100, NULL, NULL, NULL, 0, 1981, NULL),
(588, 3, 100, 100, NULL, NULL, NULL, 0, 1982, NULL),
(589, 3, 100, 100, NULL, NULL, NULL, 0, 1983, NULL),
(590, 3, 100, 100, NULL, NULL, NULL, 0, 1984, NULL),
(591, 3, 100, 100, NULL, NULL, NULL, 0, 1985, NULL),
(592, 3, 100, 100, NULL, NULL, NULL, 0, 1986, NULL),
(593, 3, 100, 100, NULL, NULL, NULL, 0, 1987, NULL),
(594, 3, 100, 100, NULL, NULL, NULL, 0, 1988, NULL),
(595, 3, 100, 100, NULL, NULL, NULL, 0, 1989, NULL),
(596, 3, 100, 100, NULL, NULL, NULL, 0, 1990, NULL),
(597, 3, 100, 100, NULL, NULL, NULL, 0, 1991, NULL),
(598, 3, 100, 100, NULL, NULL, NULL, 0, 1992, NULL),
(599, 3, 100, 100, NULL, NULL, NULL, 0, 1993, NULL),
(600, 3, 100, 100, NULL, NULL, NULL, 0, 1994, NULL),
(601, 3, 100, 100, NULL, NULL, NULL, 0, 1995, NULL),
(602, 3, 100, 100, NULL, NULL, NULL, 0, 1996, NULL),
(603, 3, 100, 100, NULL, NULL, NULL, 0, 1997, NULL),
(604, 3, 100, 100, NULL, NULL, NULL, 0, 1998, NULL),
(605, 3, 100, 100, NULL, NULL, NULL, 0, 1999, NULL),
(606, 3, 100, 100, NULL, NULL, NULL, 0, 2000, NULL),
(607, 3, 100, 100, NULL, NULL, NULL, 0, 2001, NULL),
(608, 3, 100, 100, NULL, NULL, NULL, 0, 2002, NULL),
(609, 3, 100, 100, NULL, NULL, NULL, 0, 2003, NULL),
(610, 3, 100, 100, NULL, NULL, NULL, 0, 2004, NULL),
(611, 3, 100, 100, NULL, NULL, NULL, 0, 2005, NULL),
(612, 3, 100, 100, NULL, NULL, NULL, 0, 2006, NULL),
(613, 3, 100, 100, NULL, NULL, NULL, 0, 2007, NULL),
(614, 3, 100, 100, NULL, NULL, NULL, 0, 2008, NULL),
(615, 3, 100, 100, NULL, NULL, NULL, 0, 2009, NULL),
(616, 3, 100, 100, NULL, NULL, NULL, 0, 2010, NULL),
(617, 3, 100, 100, NULL, NULL, NULL, 0, 2011, NULL),
(618, 3, 100, 100, NULL, NULL, NULL, 0, 2012, NULL),
(619, 3, 100, 100, NULL, NULL, NULL, 0, 2013, NULL),
(620, 3, 100, 100, NULL, NULL, NULL, 0, 2014, NULL),
(621, 3, 100, 100, NULL, NULL, NULL, 0, 2015, NULL),
(622, 3, 100, 100, NULL, NULL, NULL, 0, 2016, NULL),
(623, 3, 100, 100, NULL, NULL, NULL, 0, 2017, NULL),
(624, 3, 100, 100, NULL, NULL, NULL, 0, 2018, NULL),
(625, 4, 100, 100, NULL, NULL, NULL, 0, 1980, NULL),
(626, 4, 100, 100, NULL, NULL, NULL, 0, 1981, NULL),
(627, 4, 100, 100, NULL, NULL, NULL, 0, 1982, NULL),
(628, 4, 100, 100, NULL, NULL, NULL, 0, 1983, NULL),
(629, 4, 100, 100, NULL, NULL, NULL, 0, 1984, NULL),
(630, 4, 100, 100, NULL, NULL, NULL, 0, 1985, NULL),
(631, 4, 100, 100, NULL, NULL, NULL, 0, 1986, NULL),
(632, 4, 100, 100, NULL, NULL, NULL, 0, 1987, NULL),
(633, 4, 100, 100, NULL, NULL, NULL, 0, 1988, NULL),
(634, 4, 100, 100, NULL, NULL, NULL, 0, 1989, NULL),
(635, 4, 100, 100, NULL, NULL, NULL, 0, 1990, NULL),
(636, 4, 100, 100, NULL, NULL, NULL, 0, 1991, NULL),
(637, 4, 100, 100, NULL, NULL, NULL, 0, 1992, NULL),
(638, 4, 100, 100, NULL, NULL, NULL, 0, 1993, NULL),
(639, 4, 100, 100, NULL, NULL, NULL, 0, 1994, NULL),
(640, 4, 100, 100, NULL, NULL, NULL, 0, 1995, NULL),
(641, 4, 100, 100, NULL, NULL, NULL, 0, 1996, NULL),
(642, 4, 100, 100, NULL, NULL, NULL, 0, 1997, NULL),
(643, 4, 100, 100, NULL, NULL, NULL, 0, 1998, NULL),
(644, 4, 100, 100, NULL, NULL, NULL, 0, 1999, NULL),
(645, 4, 100, 100, NULL, NULL, NULL, 0, 2000, NULL),
(646, 4, 100, 100, NULL, NULL, NULL, 0, 2001, NULL),
(647, 4, 100, 100, NULL, NULL, NULL, 0, 2002, NULL),
(648, 4, 100, 100, NULL, NULL, NULL, 0, 2003, NULL),
(649, 4, 100, 100, NULL, NULL, NULL, 0, 2004, NULL),
(650, 4, 100, 100, NULL, NULL, NULL, 0, 2005, NULL),
(651, 4, 100, 100, NULL, NULL, NULL, 0, 2006, NULL),
(652, 4, 100, 100, NULL, NULL, NULL, 0, 2007, NULL),
(653, 4, 100, 100, NULL, NULL, NULL, 0, 2008, NULL),
(654, 4, 100, 100, NULL, NULL, NULL, 0, 2009, NULL),
(655, 4, 100, 100, NULL, NULL, NULL, 0, 2010, NULL),
(656, 4, 100, 100, NULL, NULL, NULL, 0, 2011, NULL),
(657, 4, 100, 100, NULL, NULL, NULL, 0, 2012, NULL),
(658, 4, 100, 100, NULL, NULL, NULL, 0, 2013, NULL),
(659, 4, 100, 100, NULL, NULL, NULL, 0, 2014, NULL),
(660, 4, 100, 100, NULL, NULL, NULL, 0, 2015, NULL),
(661, 4, 100, 100, NULL, NULL, NULL, 0, 2016, NULL),
(662, 4, 100, 100, NULL, NULL, NULL, 0, 2017, NULL),
(663, 4, 100, 100, NULL, NULL, NULL, 0, 2018, NULL),
(664, 5, 100, 100, NULL, NULL, NULL, 0, 1980, NULL),
(665, 5, 100, 100, NULL, NULL, NULL, 0, 1981, NULL),
(666, 5, 100, 100, NULL, NULL, NULL, 0, 1982, NULL),
(667, 5, 100, 100, NULL, NULL, NULL, 0, 1983, NULL),
(668, 5, 100, 100, NULL, NULL, NULL, 0, 1984, NULL),
(669, 5, 100, 100, NULL, NULL, NULL, 0, 1985, NULL),
(670, 5, 100, 100, NULL, NULL, NULL, 0, 1986, NULL),
(671, 5, 100, 100, NULL, NULL, NULL, 0, 1987, NULL),
(672, 5, 100, 100, NULL, NULL, NULL, 0, 1988, NULL),
(673, 5, 100, 100, NULL, NULL, NULL, 0, 1989, NULL),
(674, 5, 100, 100, NULL, NULL, NULL, 0, 1990, NULL),
(675, 5, 100, 100, NULL, NULL, NULL, 0, 1991, NULL),
(676, 5, 100, 100, NULL, NULL, NULL, 0, 1992, NULL),
(677, 5, 100, 100, NULL, NULL, NULL, 0, 1993, NULL),
(678, 5, 100, 100, NULL, NULL, NULL, 0, 1994, NULL),
(679, 5, 100, 100, NULL, NULL, NULL, 0, 1995, NULL),
(680, 5, 100, 100, NULL, NULL, NULL, 0, 1996, NULL),
(681, 5, 100, 100, NULL, NULL, NULL, 0, 1997, NULL),
(682, 5, 100, 100, NULL, NULL, NULL, 0, 1998, NULL),
(683, 5, 100, 100, NULL, NULL, NULL, 0, 1999, NULL),
(684, 5, 100, 100, NULL, NULL, NULL, 0, 2000, NULL),
(685, 5, 100, 100, NULL, NULL, NULL, 0, 2001, NULL),
(686, 5, 100, 100, NULL, NULL, NULL, 0, 2002, NULL),
(687, 5, 100, 100, NULL, NULL, NULL, 0, 2003, NULL),
(688, 5, 100, 100, NULL, NULL, NULL, 0, 2004, NULL),
(689, 5, 100, 100, NULL, NULL, NULL, 0, 2005, NULL),
(690, 5, 100, 100, NULL, NULL, NULL, 0, 2006, NULL),
(691, 5, 100, 100, NULL, NULL, NULL, 0, 2007, NULL),
(692, 5, 100, 100, NULL, NULL, NULL, 0, 2008, NULL),
(693, 5, 100, 100, NULL, NULL, NULL, 0, 2009, NULL),
(694, 5, 100, 100, NULL, NULL, NULL, 0, 2010, NULL),
(695, 5, 100, 100, NULL, NULL, NULL, 0, 2011, NULL),
(696, 5, 100, 100, NULL, NULL, NULL, 0, 2012, NULL),
(697, 5, 100, 100, NULL, NULL, NULL, 0, 2013, NULL),
(698, 5, 100, 100, NULL, NULL, NULL, 0, 2014, NULL),
(699, 5, 100, 100, NULL, NULL, NULL, 0, 2015, NULL),
(700, 5, 100, 100, NULL, NULL, NULL, 0, 2016, NULL),
(701, 5, 100, 100, NULL, NULL, NULL, 0, 2017, NULL),
(702, 5, 100, 100, NULL, NULL, NULL, 0, 2018, NULL),
(703, 6, 100, 100, NULL, NULL, NULL, 0, 1980, NULL),
(704, 6, 100, 100, NULL, NULL, NULL, 0, 1981, NULL),
(705, 6, 100, 100, NULL, NULL, NULL, 0, 1982, NULL),
(706, 6, 100, 100, NULL, NULL, NULL, 0, 1983, NULL),
(707, 6, 100, 100, NULL, NULL, NULL, 0, 1984, NULL),
(708, 6, 100, 100, NULL, NULL, NULL, 0, 1985, NULL),
(709, 6, 100, 100, NULL, NULL, NULL, 0, 1986, NULL),
(710, 6, 100, 100, NULL, NULL, NULL, 0, 1987, NULL),
(711, 6, 100, 100, NULL, NULL, NULL, 0, 1988, NULL),
(712, 6, 100, 100, NULL, NULL, NULL, 0, 1989, NULL),
(713, 6, 100, 100, NULL, NULL, NULL, 0, 1990, NULL),
(714, 6, 100, 100, NULL, NULL, NULL, 0, 1991, NULL),
(715, 6, 100, 100, NULL, NULL, NULL, 0, 1992, NULL),
(716, 6, 100, 100, NULL, NULL, NULL, 0, 1993, NULL),
(717, 6, 100, 100, NULL, NULL, NULL, 0, 1994, NULL),
(718, 6, 100, 100, NULL, NULL, NULL, 0, 1995, NULL),
(719, 6, 100, 100, NULL, NULL, NULL, 0, 1996, NULL),
(720, 6, 100, 100, NULL, NULL, NULL, 0, 1997, NULL),
(721, 6, 100, 100, NULL, NULL, NULL, 0, 1998, NULL),
(722, 6, 100, 100, NULL, NULL, NULL, 0, 1999, NULL),
(723, 6, 100, 100, NULL, NULL, NULL, 0, 2000, NULL),
(724, 6, 100, 100, NULL, NULL, NULL, 0, 2001, NULL),
(725, 6, 100, 100, NULL, NULL, NULL, 0, 2002, NULL),
(726, 6, 100, 100, NULL, NULL, NULL, 0, 2003, NULL),
(727, 6, 100, 100, NULL, NULL, NULL, 0, 2004, NULL),
(728, 6, 100, 100, NULL, NULL, NULL, 0, 2005, NULL),
(729, 6, 100, 100, NULL, NULL, NULL, 0, 2006, NULL),
(730, 6, 100, 100, NULL, NULL, NULL, 0, 2007, NULL),
(731, 6, 100, 100, NULL, NULL, NULL, 0, 2008, NULL),
(732, 6, 100, 100, NULL, NULL, NULL, 0, 2009, NULL),
(733, 6, 100, 100, NULL, NULL, NULL, 0, 2010, NULL),
(734, 6, 100, 100, NULL, NULL, NULL, 0, 2011, NULL),
(735, 6, 100, 100, NULL, NULL, NULL, 0, 2012, NULL),
(736, 6, 100, 100, NULL, NULL, NULL, 0, 2013, NULL),
(737, 6, 100, 100, NULL, NULL, NULL, 0, 2014, NULL),
(738, 6, 100, 100, NULL, NULL, NULL, 0, 2015, NULL),
(739, 6, 100, 100, NULL, NULL, NULL, 0, 2016, NULL),
(740, 6, 100, 100, NULL, NULL, NULL, 0, 2017, NULL),
(741, 6, 100, 100, NULL, NULL, NULL, 0, 2018, NULL),
(742, 7, 100, 100, NULL, NULL, NULL, 0, 1980, NULL),
(743, 7, 100, 100, NULL, NULL, NULL, 0, 1981, NULL),
(744, 7, 100, 100, NULL, NULL, NULL, 0, 1982, NULL),
(745, 7, 100, 100, NULL, NULL, NULL, 0, 1983, NULL),
(746, 7, 100, 100, NULL, NULL, NULL, 0, 1984, NULL),
(747, 7, 100, 100, NULL, NULL, NULL, 0, 1985, NULL),
(748, 7, 100, 100, NULL, NULL, NULL, 0, 1986, NULL),
(749, 7, 100, 100, NULL, NULL, NULL, 0, 1987, NULL),
(750, 7, 100, 100, NULL, NULL, NULL, 0, 1988, NULL),
(751, 7, 100, 100, NULL, NULL, NULL, 0, 1989, NULL),
(752, 7, 100, 100, NULL, NULL, NULL, 0, 1990, NULL),
(753, 7, 100, 100, NULL, NULL, NULL, 0, 1991, NULL),
(754, 7, 100, 100, NULL, NULL, NULL, 0, 1992, NULL),
(755, 7, 100, 100, NULL, NULL, NULL, 0, 1993, NULL),
(756, 7, 100, 100, NULL, NULL, NULL, 0, 1994, NULL),
(757, 7, 100, 100, NULL, NULL, NULL, 0, 1995, NULL),
(758, 7, 100, 100, NULL, NULL, NULL, 0, 1996, NULL),
(759, 7, 100, 100, NULL, NULL, NULL, 0, 1997, NULL),
(760, 7, 100, 100, NULL, NULL, NULL, 0, 1998, NULL),
(761, 7, 100, 100, NULL, NULL, NULL, 0, 1999, NULL),
(762, 7, 100, 100, NULL, NULL, NULL, 0, 2000, NULL),
(763, 7, 100, 100, NULL, NULL, NULL, 0, 2001, NULL),
(764, 7, 100, 100, NULL, NULL, NULL, 0, 2002, NULL),
(765, 7, 100, 100, NULL, NULL, NULL, 0, 2003, NULL),
(766, 7, 100, 100, NULL, NULL, NULL, 0, 2004, NULL),
(767, 7, 100, 100, NULL, NULL, NULL, 0, 2005, NULL),
(768, 7, 100, 100, NULL, NULL, NULL, 0, 2006, NULL),
(769, 7, 100, 100, NULL, NULL, NULL, 0, 2007, NULL),
(770, 7, 100, 100, NULL, NULL, NULL, 0, 2008, NULL),
(771, 7, 100, 100, NULL, NULL, NULL, 0, 2009, NULL),
(772, 7, 100, 100, NULL, NULL, NULL, 0, 2010, NULL),
(773, 7, 100, 100, NULL, NULL, NULL, 0, 2011, NULL),
(774, 7, 100, 100, NULL, NULL, NULL, 0, 2012, NULL),
(775, 7, 100, 100, NULL, NULL, NULL, 0, 2013, NULL),
(776, 7, 100, 100, NULL, NULL, NULL, 0, 2014, NULL),
(777, 7, 100, 100, NULL, NULL, NULL, 0, 2015, NULL),
(778, 7, 100, 100, NULL, NULL, NULL, 0, 2016, NULL),
(779, 7, 100, 100, NULL, NULL, NULL, 0, 2017, NULL),
(780, 7, 100, 100, NULL, NULL, NULL, 0, 2018, NULL),
(781, 8, 100, 100, NULL, NULL, NULL, 0, 1980, NULL),
(782, 8, 100, 100, NULL, NULL, NULL, 0, 1981, NULL),
(783, 8, 100, 100, NULL, NULL, NULL, 0, 1982, NULL),
(784, 8, 100, 100, NULL, NULL, NULL, 0, 1983, NULL),
(785, 8, 100, 100, NULL, NULL, NULL, 0, 1984, NULL),
(786, 8, 100, 100, NULL, NULL, NULL, 0, 1985, NULL),
(787, 8, 100, 100, NULL, NULL, NULL, 0, 1986, NULL),
(788, 8, 100, 100, NULL, NULL, NULL, 0, 1987, NULL),
(789, 8, 100, 100, NULL, NULL, NULL, 0, 1988, NULL),
(790, 8, 100, 100, NULL, NULL, NULL, 0, 1989, NULL),
(791, 8, 100, 100, NULL, NULL, NULL, 0, 1990, NULL),
(792, 8, 100, 100, NULL, NULL, NULL, 0, 1991, NULL),
(793, 8, 100, 100, NULL, NULL, NULL, 0, 1992, NULL),
(794, 8, 100, 100, NULL, NULL, NULL, 0, 1993, NULL),
(795, 8, 100, 100, NULL, NULL, NULL, 0, 1994, NULL),
(796, 8, 100, 100, NULL, NULL, NULL, 0, 1995, NULL),
(797, 8, 100, 100, NULL, NULL, NULL, 0, 1996, NULL),
(798, 8, 100, 100, NULL, NULL, NULL, 0, 1997, NULL),
(799, 8, 100, 100, NULL, NULL, NULL, 0, 1998, NULL),
(800, 8, 100, 100, NULL, NULL, NULL, 0, 1999, NULL),
(801, 8, 100, 100, NULL, NULL, NULL, 0, 2000, NULL),
(802, 8, 100, 100, NULL, NULL, NULL, 0, 2001, NULL),
(803, 8, 100, 100, NULL, NULL, NULL, 0, 2002, NULL),
(804, 8, 100, 100, NULL, NULL, NULL, 0, 2003, NULL),
(805, 8, 100, 100, NULL, NULL, NULL, 0, 2004, NULL),
(806, 8, 100, 100, NULL, NULL, NULL, 0, 2005, NULL),
(807, 8, 100, 100, NULL, NULL, NULL, 0, 2006, NULL),
(808, 8, 100, 100, NULL, NULL, NULL, 0, 2007, NULL),
(809, 8, 100, 100, NULL, NULL, NULL, 0, 2008, NULL),
(810, 8, 100, 100, NULL, NULL, NULL, 0, 2009, NULL),
(811, 8, 100, 100, NULL, NULL, NULL, 0, 2010, NULL),
(812, 8, 100, 100, NULL, NULL, NULL, 0, 2011, NULL),
(813, 8, 100, 100, NULL, NULL, NULL, 0, 2012, NULL),
(814, 8, 100, 100, NULL, NULL, NULL, 0, 2013, NULL),
(815, 8, 100, 100, NULL, NULL, NULL, 0, 2014, NULL),
(816, 8, 100, 100, NULL, NULL, NULL, 0, 2015, NULL),
(817, 8, 100, 100, NULL, NULL, NULL, 0, 2016, NULL),
(818, 8, 100, 100, NULL, NULL, NULL, 0, 2017, NULL),
(819, 8, 100, 100, NULL, NULL, NULL, 0, 2018, NULL),
(820, 9, 100, 100, NULL, NULL, NULL, 0, 1980, NULL),
(821, 9, 100, 100, NULL, NULL, NULL, 0, 1981, NULL),
(822, 9, 100, 100, NULL, NULL, NULL, 0, 1982, NULL),
(823, 9, 100, 100, NULL, NULL, NULL, 0, 1983, NULL),
(824, 9, 100, 100, NULL, NULL, NULL, 0, 1984, NULL),
(825, 9, 100, 100, NULL, NULL, NULL, 0, 1985, NULL),
(826, 9, 100, 100, NULL, NULL, NULL, 0, 1986, NULL),
(827, 9, 100, 100, NULL, NULL, NULL, 0, 1987, NULL),
(828, 9, 100, 100, NULL, NULL, NULL, 0, 1988, NULL),
(829, 9, 100, 100, NULL, NULL, NULL, 0, 1989, NULL),
(830, 9, 100, 100, NULL, NULL, NULL, 0, 1990, NULL),
(831, 9, 100, 100, NULL, NULL, NULL, 0, 1991, NULL),
(832, 9, 100, 100, NULL, NULL, NULL, 0, 1992, NULL),
(833, 9, 100, 100, NULL, NULL, NULL, 0, 1993, NULL),
(834, 9, 100, 100, NULL, NULL, NULL, 0, 1994, NULL),
(835, 9, 100, 100, NULL, NULL, NULL, 0, 1995, NULL),
(836, 9, 100, 100, NULL, NULL, NULL, 0, 1996, NULL),
(837, 9, 100, 100, NULL, NULL, NULL, 0, 1997, NULL),
(838, 9, 100, 100, NULL, NULL, NULL, 0, 1998, NULL),
(839, 9, 100, 100, NULL, NULL, NULL, 0, 1999, NULL),
(840, 9, 100, 100, NULL, NULL, NULL, 0, 2000, NULL),
(841, 9, 100, 100, NULL, NULL, NULL, 0, 2001, NULL),
(842, 9, 100, 100, NULL, NULL, NULL, 0, 2002, NULL),
(843, 9, 100, 100, NULL, NULL, NULL, 0, 2003, NULL),
(844, 9, 100, 100, NULL, NULL, NULL, 0, 2004, NULL),
(845, 9, 100, 100, NULL, NULL, NULL, 0, 2005, NULL),
(846, 9, 100, 100, NULL, NULL, NULL, 0, 2006, NULL),
(847, 9, 100, 100, NULL, NULL, NULL, 0, 2007, NULL),
(848, 9, 100, 100, NULL, NULL, NULL, 0, 2008, NULL),
(849, 9, 100, 100, NULL, NULL, NULL, 0, 2009, NULL),
(850, 9, 100, 100, NULL, NULL, NULL, 0, 2010, NULL),
(851, 9, 100, 100, NULL, NULL, NULL, 0, 2011, NULL),
(852, 9, 100, 100, NULL, NULL, NULL, 0, 2012, NULL),
(853, 9, 100, 100, NULL, NULL, NULL, 0, 2013, NULL),
(854, 9, 100, 100, NULL, NULL, NULL, 0, 2014, NULL),
(855, 9, 100, 100, NULL, NULL, NULL, 0, 2015, NULL),
(856, 9, 100, 100, NULL, NULL, NULL, 0, 2016, NULL),
(857, 9, 100, 100, NULL, NULL, NULL, 0, 2017, NULL),
(858, 9, 100, 100, NULL, NULL, NULL, 0, 2018, NULL),
(859, 10, 100, 100, NULL, NULL, NULL, 0, 1980, NULL),
(860, 10, 100, 100, NULL, NULL, NULL, 0, 1981, NULL),
(861, 10, 100, 100, NULL, NULL, NULL, 0, 1982, NULL),
(862, 10, 100, 100, NULL, NULL, NULL, 0, 1983, NULL),
(863, 10, 100, 100, NULL, NULL, NULL, 0, 1984, NULL),
(864, 10, 100, 100, NULL, NULL, NULL, 0, 1985, NULL),
(865, 10, 100, 100, NULL, NULL, NULL, 0, 1986, NULL),
(866, 10, 100, 100, NULL, NULL, NULL, 0, 1987, NULL),
(867, 10, 100, 100, NULL, NULL, NULL, 0, 1988, NULL),
(868, 10, 100, 100, NULL, NULL, NULL, 0, 1989, NULL),
(869, 10, 100, 100, NULL, NULL, NULL, 0, 1990, NULL),
(870, 10, 100, 100, NULL, NULL, NULL, 0, 1991, NULL),
(871, 10, 100, 100, NULL, NULL, NULL, 0, 1992, NULL),
(872, 10, 100, 100, NULL, NULL, NULL, 0, 1993, NULL),
(873, 10, 100, 100, NULL, NULL, NULL, 0, 1994, NULL),
(874, 10, 100, 100, NULL, NULL, NULL, 0, 1995, NULL),
(875, 10, 100, 100, NULL, NULL, NULL, 0, 1996, NULL),
(876, 10, 100, 100, NULL, NULL, NULL, 0, 1997, NULL),
(877, 10, 100, 100, NULL, NULL, NULL, 0, 1998, NULL),
(878, 10, 100, 100, NULL, NULL, NULL, 0, 1999, NULL),
(879, 10, 100, 100, NULL, NULL, NULL, 0, 2000, NULL),
(880, 10, 100, 100, NULL, NULL, NULL, 0, 2001, NULL),
(881, 10, 100, 100, NULL, NULL, NULL, 0, 2002, NULL),
(882, 10, 100, 100, NULL, NULL, NULL, 0, 2003, NULL),
(883, 10, 100, 100, NULL, NULL, NULL, 0, 2004, NULL),
(884, 10, 100, 100, NULL, NULL, NULL, 0, 2005, NULL),
(885, 10, 100, 100, NULL, NULL, NULL, 0, 2006, NULL),
(886, 10, 100, 100, NULL, NULL, NULL, 0, 2007, NULL),
(887, 10, 100, 100, NULL, NULL, NULL, 0, 2008, NULL),
(888, 10, 100, 100, NULL, NULL, NULL, 0, 2009, NULL),
(889, 10, 100, 100, NULL, NULL, NULL, 0, 2010, NULL),
(890, 10, 100, 100, NULL, NULL, NULL, 0, 2011, NULL),
(891, 10, 100, 100, NULL, NULL, NULL, 0, 2012, NULL),
(892, 10, 100, 100, NULL, NULL, NULL, 0, 2013, NULL),
(893, 10, 100, 100, NULL, NULL, NULL, 0, 2014, NULL),
(894, 10, 100, 100, NULL, NULL, NULL, 0, 2015, NULL),
(895, 10, 100, 100, NULL, NULL, NULL, 0, 2016, NULL),
(896, 10, 100, 100, NULL, NULL, NULL, 0, 2017, NULL),
(897, 10, 100, 100, NULL, NULL, NULL, 0, 2018, NULL),
(898, 11, 100, 100, NULL, NULL, NULL, 0, 1980, NULL),
(899, 11, 100, 100, NULL, NULL, NULL, 0, 1981, NULL),
(900, 11, 100, 100, NULL, NULL, NULL, 0, 1982, NULL),
(901, 11, 100, 100, NULL, NULL, NULL, 0, 1983, NULL),
(902, 11, 100, 100, NULL, NULL, NULL, 0, 1984, NULL),
(903, 11, 100, 100, NULL, NULL, NULL, 0, 1985, NULL),
(904, 11, 100, 100, NULL, NULL, NULL, 0, 1986, NULL),
(905, 11, 100, 100, NULL, NULL, NULL, 0, 1987, NULL),
(906, 11, 100, 100, NULL, NULL, NULL, 0, 1988, NULL),
(907, 11, 100, 100, NULL, NULL, NULL, 0, 1989, NULL),
(908, 11, 100, 100, NULL, NULL, NULL, 0, 1990, NULL),
(909, 11, 100, 100, NULL, NULL, NULL, 0, 1991, NULL),
(910, 11, 100, 100, NULL, NULL, NULL, 0, 1992, NULL),
(911, 11, 100, 100, NULL, NULL, NULL, 0, 1993, NULL),
(912, 11, 100, 100, NULL, NULL, NULL, 0, 1994, NULL),
(913, 11, 100, 100, NULL, NULL, NULL, 0, 1995, NULL),
(914, 11, 100, 100, NULL, NULL, NULL, 0, 1996, NULL),
(915, 11, 100, 100, NULL, NULL, NULL, 0, 1997, NULL),
(916, 11, 100, 100, NULL, NULL, NULL, 0, 1998, NULL),
(917, 11, 100, 100, NULL, NULL, NULL, 0, 1999, NULL),
(918, 11, 100, 100, NULL, NULL, NULL, 0, 2000, NULL),
(919, 11, 100, 100, NULL, NULL, NULL, 0, 2001, NULL),
(920, 11, 100, 100, NULL, NULL, NULL, 0, 2002, NULL),
(921, 11, 100, 100, NULL, NULL, NULL, 0, 2003, NULL),
(922, 11, 100, 100, NULL, NULL, NULL, 0, 2004, NULL),
(923, 11, 100, 100, NULL, NULL, NULL, 0, 2005, NULL),
(924, 11, 100, 100, NULL, NULL, NULL, 0, 2006, NULL),
(925, 11, 100, 100, NULL, NULL, NULL, 0, 2007, NULL),
(926, 11, 100, 100, NULL, NULL, NULL, 0, 2008, NULL),
(927, 11, 100, 100, NULL, NULL, NULL, 0, 2009, NULL),
(928, 11, 100, 100, NULL, NULL, NULL, 0, 2010, NULL),
(929, 11, 100, 100, NULL, NULL, NULL, 0, 2011, NULL),
(930, 11, 100, 100, NULL, NULL, NULL, 0, 2012, NULL),
(931, 11, 100, 100, NULL, NULL, NULL, 0, 2013, NULL),
(932, 11, 100, 100, NULL, NULL, NULL, 0, 2014, NULL),
(933, 11, 100, 100, NULL, NULL, NULL, 0, 2015, NULL),
(934, 11, 100, 100, NULL, NULL, NULL, 0, 2016, NULL),
(935, 11, 100, 100, NULL, NULL, NULL, 0, 2017, NULL),
(936, 11, 100, 100, NULL, NULL, NULL, 0, 2018, NULL),
(937, 12, 100, 100, NULL, NULL, NULL, 0, 1980, NULL),
(938, 12, 100, 100, NULL, NULL, NULL, 0, 1981, NULL),
(939, 12, 100, 100, NULL, NULL, NULL, 0, 1982, NULL),
(940, 12, 100, 100, NULL, NULL, NULL, 0, 1983, NULL),
(941, 12, 100, 100, NULL, NULL, NULL, 0, 1984, NULL),
(942, 12, 100, 100, NULL, NULL, NULL, 0, 1985, NULL),
(943, 12, 100, 100, NULL, NULL, NULL, 0, 1986, NULL),
(944, 12, 100, 100, NULL, NULL, NULL, 0, 1987, NULL),
(945, 12, 100, 100, NULL, NULL, NULL, 0, 1988, NULL),
(946, 12, 100, 100, NULL, NULL, NULL, 0, 1989, NULL),
(947, 12, 100, 100, NULL, NULL, NULL, 0, 1990, NULL),
(948, 12, 100, 100, NULL, NULL, NULL, 0, 1991, NULL),
(949, 12, 100, 100, NULL, NULL, NULL, 0, 1992, NULL),
(950, 12, 100, 100, NULL, NULL, NULL, 0, 1993, NULL),
(951, 12, 100, 100, NULL, NULL, NULL, 0, 1994, NULL),
(952, 12, 100, 100, NULL, NULL, NULL, 0, 1995, NULL),
(953, 12, 100, 100, NULL, NULL, NULL, 0, 1996, NULL),
(954, 12, 100, 100, NULL, NULL, NULL, 0, 1997, NULL),
(955, 12, 100, 100, NULL, NULL, NULL, 0, 1998, NULL),
(956, 12, 100, 100, NULL, NULL, NULL, 0, 1999, NULL),
(957, 12, 100, 100, NULL, NULL, NULL, 0, 2000, NULL),
(958, 12, 100, 100, NULL, NULL, NULL, 0, 2001, NULL),
(959, 12, 100, 100, NULL, NULL, NULL, 0, 2002, NULL),
(960, 12, 100, 100, NULL, NULL, NULL, 0, 2003, NULL),
(961, 12, 100, 100, NULL, NULL, NULL, 0, 2004, NULL),
(962, 12, 100, 100, NULL, NULL, NULL, 0, 2005, NULL),
(963, 12, 100, 100, NULL, NULL, NULL, 0, 2006, NULL),
(964, 12, 100, 100, NULL, NULL, NULL, 0, 2007, NULL),
(965, 12, 100, 100, NULL, NULL, NULL, 0, 2008, NULL),
(966, 12, 100, 100, NULL, NULL, NULL, 0, 2009, NULL),
(967, 12, 100, 100, NULL, NULL, NULL, 0, 2010, NULL),
(968, 12, 100, 100, NULL, NULL, NULL, 0, 2011, NULL),
(969, 12, 100, 100, NULL, NULL, NULL, 0, 2012, NULL),
(970, 12, 100, 100, NULL, NULL, NULL, 0, 2013, NULL),
(971, 12, 100, 100, NULL, NULL, NULL, 0, 2014, NULL),
(972, 12, 100, 100, NULL, NULL, NULL, 0, 2015, NULL),
(973, 12, 100, 100, NULL, NULL, NULL, 0, 2016, NULL),
(974, 12, 100, 100, NULL, NULL, NULL, 0, 2017, NULL),
(975, 12, 100, 100, NULL, NULL, NULL, 0, 2018, NULL),
(976, 13, 100, 100, NULL, NULL, NULL, 0, 1980, NULL),
(977, 13, 100, 100, NULL, NULL, NULL, 0, 1981, NULL),
(978, 13, 100, 100, NULL, NULL, NULL, 0, 1982, NULL),
(979, 13, 100, 100, NULL, NULL, NULL, 0, 1983, NULL),
(980, 13, 100, 100, NULL, NULL, NULL, 0, 1984, NULL),
(981, 13, 100, 100, NULL, NULL, NULL, 0, 1985, NULL),
(982, 13, 100, 100, NULL, NULL, NULL, 0, 1986, NULL),
(983, 13, 100, 100, NULL, NULL, NULL, 0, 1987, NULL),
(984, 13, 100, 100, NULL, NULL, NULL, 0, 1988, NULL),
(985, 13, 100, 100, NULL, NULL, NULL, 0, 1989, NULL),
(986, 13, 100, 100, NULL, NULL, NULL, 0, 1990, NULL),
(987, 13, 100, 100, NULL, NULL, NULL, 0, 1991, NULL),
(988, 13, 100, 100, NULL, NULL, NULL, 0, 1992, NULL),
(989, 13, 100, 100, NULL, NULL, NULL, 0, 1993, NULL),
(990, 13, 100, 100, NULL, NULL, NULL, 0, 1994, NULL),
(991, 13, 100, 100, NULL, NULL, NULL, 0, 1995, NULL),
(992, 13, 100, 100, NULL, NULL, NULL, 0, 1996, NULL),
(993, 13, 100, 100, NULL, NULL, NULL, 0, 1997, NULL),
(994, 13, 100, 100, NULL, NULL, NULL, 0, 1998, NULL),
(995, 13, 100, 100, NULL, NULL, NULL, 0, 1999, NULL),
(996, 13, 100, 100, NULL, NULL, NULL, 0, 2000, NULL),
(997, 13, 100, 100, NULL, NULL, NULL, 0, 2001, NULL),
(998, 13, 100, 100, NULL, NULL, NULL, 0, 2002, NULL),
(999, 13, 100, 100, NULL, NULL, NULL, 0, 2003, NULL),
(1000, 13, 100, 100, NULL, NULL, NULL, 0, 2004, NULL),
(1001, 13, 100, 100, NULL, NULL, NULL, 0, 2005, NULL),
(1002, 13, 100, 100, NULL, NULL, NULL, 0, 2006, NULL),
(1003, 13, 100, 100, NULL, NULL, NULL, 0, 2007, NULL),
(1004, 13, 100, 100, NULL, NULL, NULL, 0, 2008, NULL),
(1005, 13, 100, 100, NULL, NULL, NULL, 0, 2009, NULL),
(1006, 13, 100, 100, NULL, NULL, NULL, 0, 2010, NULL),
(1007, 13, 100, 100, NULL, NULL, NULL, 0, 2011, NULL),
(1008, 13, 100, 100, NULL, NULL, NULL, 0, 2012, NULL),
(1009, 13, 100, 100, NULL, NULL, NULL, 0, 2013, NULL),
(1010, 13, 100, 100, NULL, NULL, NULL, 0, 2014, NULL),
(1011, 13, 100, 100, NULL, NULL, NULL, 0, 2015, NULL),
(1012, 13, 100, 100, NULL, NULL, NULL, 0, 2016, NULL),
(1013, 13, 100, 100, NULL, NULL, NULL, 0, 2017, NULL),
(1014, 13, 100, 100, NULL, NULL, NULL, 0, 2018, NULL);

-- --------------------------------------------------------

--
-- Estrutura da tabela `escolas`
--

CREATE TABLE `escolas` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `img` varchar(255) NOT NULL,
  `info` text NOT NULL,
  `apelido` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `escolas`
--

INSERT INTO `escolas` (`id`, `name`, `img`, `info`, `apelido`) VALUES
(1, 'G.R.E.S. Unidos de Vila Isabel', 'https://upload.wikimedia.org/wikipedia/pt/thumb/2/23/Bandeira_do_GRES_Unidos_de_Vila_Isabel.jpg/240px-Bandeira_do_GRES_Unidos_de_Vila_Isabel.jpg', 'Fundação 04 de abril de 1946', 'Vila Isabel'),
(2, 'G.R.E.S. Império Serrano', 'https://upload.wikimedia.org/wikipedia/pt/thumb/3/30/Bandeira_do_GRES_Imp%C3%A9rio_Serrano.jpg/240px-Bandeira_do_GRES_Imp%C3%A9rio_Serrano.jpg', 'Fundação 23 de março de 1947\r\n', 'Império Serrano'),
(3, 'G.R.E.S. Unidos do Viradouro', 'https://upload.wikimedia.org/wikipedia/pt/thumb/0/06/Bandeira_do_GRES_Unidos_do_Viradouro.jpg/240px-Bandeira_do_GRES_Unidos_do_Viradouro.jpg', 'Fundação 	24 de junho de 1946\r\n', 'Viradouro'),
(4, 'G.R.E.S. Acadêmicos do Grande Rio', 'https://upload.wikimedia.org/wikipedia/pt/thumb/7/7a/Bandeira_do_Grande_Rio.jpg/240px-Bandeira_do_Grande_Rio.jpg', 'Fundação 	22 de setembro de 1988 \r\n', 'Grande Rio'),
(5, 'G.R.E.S. Acadêmicos do Salgueiro', 'https://upload.wikimedia.org/wikipedia/pt/thumb/c/cd/Bandeira_do_GRES_Acad%C3%AAmicos_do_Salgueiro.jpg/240px-Bandeira_do_GRES_Acad%C3%AAmicos_do_Salgueiro.jpg', 'Fundação 	5 de março de 1953 \r\n', 'Salgueiro'),
(6, 'G.R.E.S. Beija-Flor de Nilópolis', 'https://upload.wikimedia.org/wikipedia/pt/thumb/c/c6/Bandeira_do_GRES_Beija-Flor.jpg/240px-Bandeira_do_GRES_Beija-Flor.jpg', 'Fundação 	25 de dezembro de 1948 \r\n', 'Beija-Flor'),
(7, 'G.R.E.S. Imperatriz Leopoldinense', 'https://upload.wikimedia.org/wikipedia/pt/thumb/c/cc/Bandeira_do_GRES_Imperatriz_Leopoldinense.jpg/262px-Bandeira_do_GRES_Imperatriz_Leopoldinense.jpg', 'Fundação 	6 de março de 1959 \r\n', 'Imperatriz'),
(8, 'G.R.E.S. Unidos da Tijuca', 'https://upload.wikimedia.org/wikipedia/pt/thumb/6/6e/Bandeira_do_GRES_Unidos_da_Tijuca.png/240px-Bandeira_do_GRES_Unidos_da_Tijuca.png', 'Fundação 31 de dezembro de 1931 \r\n', 'Unidos da Tijuca'),
(9, 'G.R.E.S. Portela', 'https://upload.wikimedia.org/wikipedia/pt/thumb/6/6f/Bandeira_do_GRES_Portela.jpg/240px-Bandeira_do_GRES_Portela.jpg', 'Fundação 11 de abril de 1923 \r\n', 'Portela'),
(10, 'G.R.E.S. União da Ilha', 'https://upload.wikimedia.org/wikipedia/pt/thumb/5/52/Bandeira_do_GRES_Uni%C3%A3o_da_Ilha_do_Governador.jpg/240px-Bandeira_do_GRES_Uni%C3%A3o_da_Ilha_do_Governador.jpg', '7 de março de 1953 \r\n', 'União da Ilha'),
(11, 'G.R.E.S. Paraíso do Tuiuti', 'https://upload.wikimedia.org/wikipedia/pt/thumb/0/07/Bandeira_do_GRES_Para%C3%ADso_do_Tuiuti.png/240px-Bandeira_do_GRES_Para%C3%ADso_do_Tuiuti.png', '5 de abril de 1952 \r\n', 'Paraíso do Tuiuti'),
(12, 'G.R.E.S. Estação Primeira de Mangueira', 'https://upload.wikimedia.org/wikipedia/pt/thumb/a/af/Bandeira_do_GRES_Mangueira.jpg/240px-Bandeira_do_GRES_Mangueira.jpg', '28 de abril de 1928 \r\n', 'Mangueira'),
(13, 'G.R.E.S. Mocidade Independente de Padre Miguel', 'https://upload.wikimedia.org/wikipedia/pt/thumb/8/8b/Bandeira_do_GRES_Mocidade_Independente_de_Padre_Miguel.jpg/250px-Bandeira_do_GRES_Mocidade_Independente_de_Padre_Miguel.jpg', '10 de novembro de 1955 \r\n', 'Mocidade');

-- --------------------------------------------------------

--
-- Estrutura da tabela `games`
--

CREATE TABLE `games` (
  `id_jogo` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bar` int(11) NOT NULL,
  `com` int(11) NOT NULL,
  `imp` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `id_enredo` int(11) NOT NULL,
  `id_escola` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `last_edit` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `des` int(11) NOT NULL,
  `stat1` json NOT NULL,
  `stat2` json NOT NULL,
  `stat3` json NOT NULL,
  `stat4` json NOT NULL,
  `stat5` json NOT NULL,
  `stat6` json NOT NULL,
  `stat7` json NOT NULL,
  `stat8` json NOT NULL,
  `stat9` json NOT NULL,
  `stat10` json NOT NULL,
  `stat11` json NOT NULL,
  `stat12` json NOT NULL,
  `stat13` json NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `games`
--

INSERT INTO `games` (`id_jogo`, `user_id`, `bar`, `com`, `imp`, `cash`, `id_enredo`, `id_escola`, `round`, `last_edit`, `des`, `stat1`, `stat2`, `stat3`, `stat4`, `stat5`, `stat6`, `stat7`, `stat8`, `stat9`, `stat10`, `stat11`, `stat12`, `stat13`) VALUES
(87, 1, 55, 64, 50, 100, 645, 4, 17, '2018-11-25 19:13:48', 61, '{\"bar\": 5, \"chao\": 2, \"samba\": 3, \"enredo\": \"514\"}', '{\"bar\": 1, \"chao\": 4, \"samba\": 4, \"enredo\": \"572\"}', '{\"bar\": 1, \"chao\": 2, \"samba\": 3, \"enredo\": \"600\"}', '{\"bar\": 0, \"chao\": 0, \"samba\": 2, \"enredo\": \"645\"}', '{\"bar\": 1, \"chao\": 2, \"samba\": 4, \"enredo\": \"676\"}', '{\"bar\": 1, \"chao\": 5, \"samba\": 2, \"enredo\": \"716\"}', '{\"bar\": 3, \"chao\": 3, \"samba\": 2, \"enredo\": \"769\"}', '{\"bar\": 3, \"chao\": 2, \"samba\": 5, \"enredo\": \"808\"}', '{\"bar\": 5, \"chao\": 3, \"samba\": 3, \"enredo\": \"839\"}', '{\"bar\": 2, \"chao\": 3, \"samba\": 3, \"enredo\": \"865\"}', '{\"bar\": 1, \"chao\": 3, \"samba\": 3, \"enredo\": \"923\"}', '{\"bar\": 4, \"chao\": 3, \"samba\": 2, \"enredo\": \"963\"}', '{\"bar\": 5, \"chao\": 4, \"samba\": 3, \"enredo\": \"994\"}'),
(88, 1, 49, 91, 50, 100, 998, 13, 7, '2018-11-25 19:27:57', 75, '{\"bar\": 2, \"chao\": 3, \"samba\": 3, \"enredo\": \"526\"}', '{\"bar\": 3, \"chao\": 2, \"samba\": 2, \"enredo\": \"571\"}', '{\"bar\": 5, \"chao\": 4, \"samba\": 3, \"enredo\": \"610\"}', '{\"bar\": 5, \"chao\": 1, \"samba\": 2, \"enredo\": \"627\"}', '{\"bar\": 3, \"chao\": 5, \"samba\": 4, \"enredo\": \"685\"}', '{\"bar\": 5, \"chao\": 4, \"samba\": 4, \"enredo\": \"712\"}', '{\"bar\": 5, \"chao\": 2, \"samba\": 3, \"enredo\": \"743\"}', '{\"bar\": 5, \"chao\": 4, \"samba\": 2, \"enredo\": \"811\"}', '{\"bar\": 5, \"chao\": 3, \"samba\": 5, \"enredo\": \"844\"}', '{\"bar\": 3, \"chao\": 4, \"samba\": 5, \"enredo\": \"861\"}', '{\"bar\": 4, \"chao\": 4, \"samba\": 5, \"enredo\": \"922\"}', '{\"bar\": 4, \"chao\": 2, \"samba\": 4, \"enredo\": \"951\"}', '{\"bar\": 3.2666666666666666, \"chao\": 6.066666666666666}'),
(89, 1, 63, 65, 50, 100, 547, 2, 7, '2018-11-25 19:33:38', 77, '{\"bar\": 5, \"chao\": 5, \"samba\": 4, \"enredo\": \"543\"}', '{\"bar\": 4, \"chao\": 4}', '{\"bar\": 3, \"chao\": 5, \"samba\": 3, \"enredo\": \"611\"}', '{\"bar\": 5, \"chao\": 2, \"samba\": 3, \"enredo\": \"641\"}', '{\"bar\": 5, \"chao\": 2, \"samba\": 2, \"enredo\": \"691\"}', '{\"bar\": 2, \"chao\": 3, \"samba\": 3, \"enredo\": \"728\"}', '{\"bar\": 4, \"chao\": 4, \"samba\": 5, \"enredo\": \"761\"}', '{\"bar\": 5, \"chao\": 5, \"samba\": 3, \"enredo\": \"806\"}', '{\"bar\": 5, \"chao\": 5, \"samba\": 3, \"enredo\": \"828\"}', '{\"bar\": 5, \"chao\": 3, \"samba\": 4, \"enredo\": \"859\"}', '{\"bar\": 5, \"chao\": 6, \"samba\": 4, \"enredo\": \"900\"}', '{\"bar\": 4, \"chao\": 3, \"samba\": 3, \"enredo\": \"966\"}', '{\"bar\": 4, \"chao\": 4, \"samba\": 2, \"enredo\": \"1003\"}'),
(90, 1, 59, 57, 50, 100, 598, 3, 2, '2018-11-25 19:36:47', 64, '{\"bar\": 1, \"chao\": 5, \"samba\": 3, \"enredo\": \"539\"}', '{\"bar\": 5, \"chao\": 2, \"samba\": 4, \"enredo\": \"561\"}', '{\"bar\": 0, \"chao\": 0, \"samba\": 3, \"enredo\": \"598\"}', '{\"bar\": 1, \"chao\": 5, \"samba\": 4, \"enredo\": \"632\"}', '{\"bar\": 2, \"chao\": 2, \"samba\": 3, \"enredo\": \"685\"}', '{\"bar\": 5, \"chao\": 2, \"samba\": 3, \"enredo\": \"708\"}', '{\"bar\": 2, \"chao\": 4, \"samba\": 3, \"enredo\": \"766\"}', '{\"bar\": 2, \"chao\": 2, \"samba\": 4, \"enredo\": \"802\"}', '{\"bar\": 5, \"chao\": 2, \"samba\": 4, \"enredo\": \"825\"}', '{\"bar\": 5, \"chao\": 4, \"samba\": 3, \"enredo\": \"876\"}', '{\"bar\": 3, \"chao\": 4, \"samba\": 3, \"enredo\": \"900\"}', '{\"bar\": 3, \"chao\": 5, \"samba\": 4, \"enredo\": \"968\"}', '{\"bar\": 4, \"chao\": 4, \"samba\": 5, \"enredo\": \"1009\"}'),
(91, 1, 59, 57, 50, 100, 598, 3, 2, '2018-11-25 19:37:44', 64, '{\"bar\": 5, \"chao\": 4, \"samba\": 5, \"enredo\": \"524\"}', '{\"bar\": 4, \"chao\": 3, \"samba\": 3, \"enredo\": \"553\"}', '{\"bar\": 0, \"chao\": 0, \"samba\": 3, \"enredo\": \"598\"}', '{\"bar\": 1, \"chao\": 4, \"samba\": 4, \"enredo\": \"658\"}', '{\"bar\": 4, \"chao\": 3, \"samba\": 3, \"enredo\": \"689\"}', '{\"bar\": 2, \"chao\": 3, \"samba\": 2, \"enredo\": \"733\"}', '{\"bar\": 2, \"chao\": 2, \"samba\": 2, \"enredo\": \"778\"}', '{\"bar\": 2, \"chao\": 5, \"samba\": 3, \"enredo\": \"785\"}', '{\"bar\": 1, \"chao\": 5, \"samba\": 5, \"enredo\": \"840\"}', '{\"bar\": 3, \"chao\": 4, \"samba\": 4, \"enredo\": \"859\"}', '{\"bar\": 2, \"chao\": 2, \"samba\": 3, \"enredo\": \"917\"}', '{\"bar\": 4, \"chao\": 5, \"samba\": 4, \"enredo\": \"950\"}', '{\"bar\": 5, \"chao\": 5, \"samba\": 4, \"enredo\": \"1001\"}'),
(92, 1, 59, 57, 50, 100, 598, 3, 2, '2018-11-25 19:38:06', 64, '{\"bar\": 4, \"chao\": 5, \"samba\": 4, \"enredo\": \"539\"}', '{\"bar\": 3, \"chao\": 2, \"samba\": 4, \"enredo\": \"562\"}', '{\"bar\": 0, \"chao\": 0, \"samba\": 5, \"enredo\": \"598\"}', '{\"bar\": 4, \"chao\": 3, \"samba\": 3, \"enredo\": \"630\"}', '{\"bar\": 2, \"chao\": 5, \"samba\": 4, \"enredo\": \"668\"}', '{\"bar\": 4, \"chao\": 3, \"samba\": 3, \"enredo\": \"733\"}', '{\"bar\": 2, \"chao\": 5, \"samba\": 3, \"enredo\": \"776\"}', '{\"bar\": 4, \"chao\": 4, \"samba\": 4, \"enredo\": \"814\"}', '{\"bar\": 4, \"chao\": 4, \"samba\": 4, \"enredo\": \"825\"}', '{\"bar\": 4, \"chao\": 4, \"samba\": 3, \"enredo\": \"872\"}', '{\"bar\": 3, \"chao\": 4, \"samba\": 5, \"enredo\": \"924\"}', '{\"bar\": 4, \"chao\": 3, \"samba\": 4, \"enredo\": \"960\"}', '{\"bar\": 1, \"chao\": 2, \"samba\": 3, \"enredo\": \"1010\"}'),
(93, 1, 53, 87, 50, 100, 598, 3, 7, '2018-11-25 19:40:37', 75, '{\"bar\": 5, \"chao\": 7, \"samba\": 3, \"enredo\": \"525\"}', '{\"bar\": 5, \"chao\": 4, \"samba\": 5, \"enredo\": \"558\"}', '{\"bar\": 3, \"chao\": 5}', '{\"bar\": 4, \"chao\": 2, \"samba\": 4, \"enredo\": \"631\"}', '{\"bar\": 5, \"chao\": 3, \"samba\": 2, \"enredo\": \"689\"}', '{\"bar\": 5, \"chao\": 4, \"samba\": 3, \"enredo\": \"721\"}', '{\"bar\": 5, \"chao\": 5, \"samba\": 3, \"enredo\": \"772\"}', '{\"bar\": 2, \"chao\": 4, \"samba\": 2, \"enredo\": \"807\"}', '{\"bar\": 5, \"chao\": 5, \"samba\": 3, \"enredo\": \"823\"}', '{\"bar\": 5, \"chao\": 7, \"samba\": 3, \"enredo\": \"880\"}', '{\"bar\": 5, \"chao\": 4, \"samba\": 2, \"enredo\": \"929\"}', '{\"bar\": 3, \"chao\": 5, \"samba\": 4, \"enredo\": \"937\"}', '{\"bar\": 4, \"chao\": 6, \"samba\": 3, \"enredo\": \"990\"}'),
(94, 1, 73, 89, 50, 100, 545, 1, 20, '2018-11-25 19:41:57', 78, '{\"mspb\": 9.9, \"samba\": 9.7, \"total\": 0, \"enredo\": 9.8, \"bateria\": 9.7, \"comissao\": 10, \"evolucao\": 9.9, \"fantasia\": 9.9, \"harmonia\": 9.9, \"alegorias\": 9.8}', '{\"mspb\": 9.9, \"samba\": 9.6, \"total\": 0, \"enredo\": 9.8, \"bateria\": 9.8, \"comissao\": 9.9, \"evolucao\": 9.9, \"fantasia\": 9.9, \"harmonia\": 9.9, \"alegorias\": 9.9}', '{\"mspb\": 10, \"samba\": 9.8, \"total\": 0, \"enredo\": 9.8, \"bateria\": 9.8, \"comissao\": 9.9, \"evolucao\": 9.8, \"fantasia\": 10, \"harmonia\": 10, \"alegorias\": 9.8}', '{\"mspb\": 9.9, \"samba\": 9.8, \"total\": 0, \"enredo\": 9.8, \"bateria\": 9.8, \"comissao\": 10, \"evolucao\": 9.9, \"fantasia\": 9.9, \"harmonia\": 9.9, \"alegorias\": 9.9}', '{\"mspb\": 9.8, \"samba\": 9.5, \"total\": 0, \"enredo\": 9.8, \"bateria\": 9.8, \"comissao\": 9.8, \"evolucao\": 9.9, \"fantasia\": 9.9, \"harmonia\": 9.8, \"alegorias\": 9.9}', '{\"mspb\": 9.8, \"samba\": 9.5, \"total\": 0, \"enredo\": 9.8, \"bateria\": 9.8, \"comissao\": 9.8, \"evolucao\": 9.9, \"fantasia\": 9.9, \"harmonia\": 9.8, \"alegorias\": 9.8}', '{\"mspb\": 9.9, \"samba\": 9.8, \"total\": 0, \"enredo\": 9.9, \"bateria\": 9.8, \"comissao\": 9.8, \"evolucao\": 10, \"fantasia\": 9.9, \"harmonia\": 9.9, \"alegorias\": 10}', '{\"mspb\": 9.9, \"samba\": 9.9, \"total\": 0, \"enredo\": 9.9, \"bateria\": 9.9, \"comissao\": 9.9, \"evolucao\": 9.9, \"fantasia\": 9.9, \"harmonia\": 9.9, \"alegorias\": 10}', '{\"mspb\": 10, \"samba\": 9.8, \"total\": 0, \"enredo\": 10, \"bateria\": 9.9, \"comissao\": 9.9, \"evolucao\": 9.9, \"fantasia\": 9.9, \"harmonia\": 9.9, \"alegorias\": 9.9}', '{\"mspb\": 9.9, \"samba\": 9.6, \"total\": 0, \"enredo\": 9.8, \"bateria\": 9.8, \"comissao\": 9.9, \"evolucao\": 9.8, \"fantasia\": 10, \"harmonia\": 9.8, \"alegorias\": 9.9}', '{\"mspb\": 9.9, \"samba\": 9.8, \"total\": 0, \"enredo\": 9.9, \"bateria\": 9.8, \"comissao\": 10, \"evolucao\": 9.8, \"fantasia\": 10, \"harmonia\": 9.9, \"alegorias\": 9.8}', '{\"mspb\": 9.9, \"samba\": 9.9, \"total\": 0, \"enredo\": 9.9, \"bateria\": 9.8, \"comissao\": 9.9, \"evolucao\": 10, \"fantasia\": 9.9, \"harmonia\": 9.8, \"alegorias\": 9.9}', '{\"mspb\": 9.9, \"samba\": 9.9, \"total\": 0, \"enredo\": 10, \"bateria\": 9.9, \"comissao\": 9.9, \"evolucao\": 9.8, \"fantasia\": 9.8, \"harmonia\": 9.9, \"alegorias\": 9.9}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `games2`
--

CREATE TABLE `games2` (
  `id_jogo` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `bar` int(11) NOT NULL,
  `com` int(11) NOT NULL,
  `imp` int(11) NOT NULL,
  `cash` int(11) NOT NULL,
  `id_enredo` int(11) DEFAULT NULL,
  `id_escola` int(11) NOT NULL,
  `round` int(11) NOT NULL,
  `last_edit` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `des` int(11) NOT NULL,
  `stat1` longtext,
  `stat2` varchar(128) NOT NULL,
  `stat3` varchar(128) NOT NULL,
  `stat4` varchar(128) NOT NULL,
  `stat5` varchar(128) NOT NULL,
  `stat6` varchar(128) NOT NULL,
  `stat7` varchar(128) NOT NULL,
  `stat8` varchar(128) NOT NULL,
  `stat9` varchar(128) NOT NULL,
  `stat10` varchar(128) NOT NULL,
  `stat11` varchar(128) NOT NULL,
  `stat12` varchar(128) NOT NULL,
  `stat13` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `games2`
--

INSERT INTO `games2` (`id_jogo`, `user_id`, `bar`, `com`, `imp`, `cash`, `id_enredo`, `id_escola`, `round`, `last_edit`, `des`, `stat1`, `stat2`, `stat3`, `stat4`, `stat5`, `stat6`, `stat7`, `stat8`, `stat9`, `stat10`, `stat11`, `stat12`, `stat13`) VALUES
(1, 1, 90, 96, 100, 100, 0, 1, 4, '2018-11-22 20:19:56', 80, 'Xuxa', 'Estacio', 'Morumbi', 'Ziriguidum 2001', 'Peguei um Ita', 'Kizomba', 'Ratos e Urubus', 'asd', 'sdfsadf', 'asdfsadf', 'wqer12332123', '231312', '3333445'),
(25, 1, 55, 57, 50, 100, 685, 5, 10, '2018-11-23 15:51:52', 68, '537', '556', '622', '648', '685', '728', '753', '797', '839', '890', '925', '940', '986');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `attr` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `stock`, `attr`) VALUES
(1, '', '0.00', 0, NULL),
(2, 'teste', '0.00', 0, '{\"enredo\":\"O Som da Cor\",\"chao\":5,\"samba\":4,\"bar\":3}'),
(3, 'teste', '0.00', 0, '{\"enredo\":\"O Som da Cor\",\"chao\":5,\"samba\":4,\"bar\":3}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `products2`
--

CREATE TABLE `products2` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(9,2) NOT NULL,
  `stock` int(11) NOT NULL,
  `attr` varchar(1024) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` int(255) NOT NULL,
  `username` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `username`, `password`) VALUES
(1, 'lacerda', 'e8d95a51f3af4a3b134bf6bb680a213a'),
(2, 'joaozinho', '34ae07655b9a94e90556aff79bfd60b0'),
(3, 'eleonora', '6253e1406b64bbe6ba7b00ac0bf81257');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `acoes`
--
ALTER TABLE `acoes`
  ADD PRIMARY KEY (`id_acao`);

--
-- Indexes for table `enredos`
--
ALTER TABLE `enredos`
  ADD PRIMARY KEY (`id_enredo`),
  ADD KEY `id_escola` (`id_escola`);

--
-- Indexes for table `escolas`
--
ALTER TABLE `escolas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `games`
--
ALTER TABLE `games`
  ADD PRIMARY KEY (`id_jogo`),
  ADD KEY `id_enredo` (`id_enredo`),
  ADD KEY `id_escola` (`id_escola`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `games2`
--
ALTER TABLE `games2`
  ADD PRIMARY KEY (`id_jogo`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `id_enredo` (`id_enredo`),
  ADD KEY `id_escola` (`id_escola`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products2`
--
ALTER TABLE `products2`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `acoes`
--
ALTER TABLE `acoes`
  MODIFY `id_acao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `enredos`
--
ALTER TABLE `enredos`
  MODIFY `id_enredo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1015;

--
-- AUTO_INCREMENT for table `escolas`
--
ALTER TABLE `escolas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `games`
--
ALTER TABLE `games`
  MODIFY `id_jogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `games2`
--
ALTER TABLE `games2`
  MODIFY `id_jogo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products2`
--
ALTER TABLE `products2`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Limitadores para a tabela `enredos`
--
ALTER TABLE `enredos`
  ADD CONSTRAINT `enredos_ibfk_1` FOREIGN KEY (`id_escola`) REFERENCES `escolas` (`id`);

--
-- Limitadores para a tabela `games`
--
ALTER TABLE `games`
  ADD CONSTRAINT `games_ibfk_1` FOREIGN KEY (`id_enredo`) REFERENCES `enredos` (`id_enredo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `games_ibfk_2` FOREIGN KEY (`id_escola`) REFERENCES `escolas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `games_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Limitadores para a tabela `games2`
--
ALTER TABLE `games2`
  ADD CONSTRAINT `games2_ibfk_1` FOREIGN KEY (`id_enredo`) REFERENCES `enredos` (`id_enredo`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `games2_ibfk_2` FOREIGN KEY (`id_escola`) REFERENCES `escolas` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `games2_ibfk_3` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
