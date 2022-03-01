-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 17-Nov-2021 às 16:10
-- Versão do servidor: 10.4.20-MariaDB
-- versão do PHP: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `usuario`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `cadastro`
--

CREATE TABLE `cadastro` (
  `cd_cliente` int(11) NOT NULL,
  `nm_nome` varchar(100) NOT NULL,
  `nm_email` varchar(100) NOT NULL,
  `sp_senha` varchar(20) NOT NULL,
  `nr_ddd` varchar(10) NOT NULL,
  `nr_telefone` varchar(20) NOT NULL,
  `id_tipocelular` int(11) NOT NULL,
  `id_desejo` int(11) NOT NULL,
  `id_tipocasa` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `cadastro`
--

INSERT INTO `cadastro` (`cd_cliente`, `nm_nome`, `nm_email`, `sp_senha`, `nr_ddd`, `nr_telefone`, `id_tipocelular`, `id_desejo`, `id_tipocasa`) VALUES
(19, 'Victor', 'victor@gmail.com', '428948', '12', '49824833', 3, 2, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `desejo`
--

CREATE TABLE `desejo` (
  `cd_desejo` int(11) NOT NULL,
  `ds_desejo` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `desejo`
--

INSERT INTO `desejo` (`cd_desejo`, `ds_desejo`) VALUES
(1, 'Comprar'),
(2, 'Alugar p/ temporada'),
(3, 'Alugar definitivamente');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipocasa`
--

CREATE TABLE `tipocasa` (
  `cd_tipocasa` int(11) NOT NULL,
  `ds_tipocasa` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipocasa`
--

INSERT INTO `tipocasa` (`cd_tipocasa`, `ds_tipocasa`) VALUES
(1, 'Casa'),
(2, 'Sobrado'),
(3, 'Apartamento'),
(4, 'Terreno'),
(5, 'Salão Comercial');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tipocelular`
--

CREATE TABLE `tipocelular` (
  `cd_tipocelular` int(11) NOT NULL,
  `ds_tipocelular` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Extraindo dados da tabela `tipocelular`
--

INSERT INTO `tipocelular` (`cd_tipocelular`, `ds_tipocelular`) VALUES
(1, 'Fixo'),
(2, 'Celular\r\n'),
(3, 'Whatsapp');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD PRIMARY KEY (`cd_cliente`),
  ADD KEY `id_tipocelular` (`id_tipocelular`),
  ADD KEY `id_desejo` (`id_desejo`),
  ADD KEY `id_tipocasa` (`id_tipocasa`);

--
-- Índices para tabela `desejo`
--
ALTER TABLE `desejo`
  ADD PRIMARY KEY (`cd_desejo`);

--
-- Índices para tabela `tipocasa`
--
ALTER TABLE `tipocasa`
  ADD PRIMARY KEY (`cd_tipocasa`);

--
-- Índices para tabela `tipocelular`
--
ALTER TABLE `tipocelular`
  ADD PRIMARY KEY (`cd_tipocelular`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `cadastro`
--
ALTER TABLE `cadastro`
  MODIFY `cd_cliente` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de tabela `desejo`
--
ALTER TABLE `desejo`
  MODIFY `cd_desejo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de tabela `tipocasa`
--
ALTER TABLE `tipocasa`
  MODIFY `cd_tipocasa` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de tabela `tipocelular`
--
ALTER TABLE `tipocelular`
  MODIFY `cd_tipocelular` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `cadastro`
--
ALTER TABLE `cadastro`
  ADD CONSTRAINT `cadastro_ibfk_1` FOREIGN KEY (`id_tipocelular`) REFERENCES `tipocelular` (`cd_tipocelular`),
  ADD CONSTRAINT `cadastro_ibfk_2` FOREIGN KEY (`id_desejo`) REFERENCES `desejo` (`cd_desejo`),
  ADD CONSTRAINT `cadastro_ibfk_3` FOREIGN KEY (`id_tipocasa`) REFERENCES `tipocasa` (`cd_tipocasa`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
