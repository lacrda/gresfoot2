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
  `stat1` varchar(1024) NOT NULL,
  `stat2` varchar(1024) NOT NULL,
  `stat3` varchar(1024) NOT NULL,
  `stat4` varchar(1024) NOT NULL,
  `stat5` varchar(1024) NOT NULL,
  `stat6` varchar(1024) NOT NULL,
  `stat7` varchar(1024) NOT NULL,
  `stat8` varchar(1024) NOT NULL,
  `stat9` varchar(1024) NOT NULL,
  `stat10` varchar(1024) NOT NULL,
  `stat11` varchar(1024) NOT NULL,
  `stat12` varchar(1024) NOT NULL,
  `stat13` varchar(1024) NOT NULL
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
