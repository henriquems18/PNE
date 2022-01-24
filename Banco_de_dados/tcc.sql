-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 23-Jun-2019 às 18:30
-- Versão do servidor: 10.1.40-MariaDB
-- versão do PHP: 7.1.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tcc`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `candidato`
--

CREATE TABLE `candidato` (
  `cpf` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `confirmarsenha` varchar(45) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `nasc` varchar(15) NOT NULL,
  `cep` varchar(20) NOT NULL,
  `endereco` varchar(250) NOT NULL,
  `numero` varchar(8) NOT NULL,
  `cidade` varchar(250) NOT NULL,
  `uf` varchar(5) NOT NULL,
  `email` varchar(150) NOT NULL,
  `telefone` varchar(25) NOT NULL,
  `deficiencia` varchar(450) NOT NULL,
  `idioma` varchar(450) DEFAULT NULL,
  `informatica` varchar(450) DEFAULT NULL,
  `curso1` varchar(100) DEFAULT NULL,
  `curso2` varchar(100) DEFAULT NULL,
  `curso3` varchar(100) DEFAULT NULL,
  `curso4` varchar(100) DEFAULT NULL,
  `curso5` varchar(100) DEFAULT NULL,
  `nomeempresa` varchar(250) DEFAULT NULL,
  `ultimocargo` varchar(250) DEFAULT NULL,
  `atribuicoes` varchar(450) DEFAULT NULL,
  `escolaridade` varchar(150) DEFAULT NULL,
  `escolaridade2` varchar(150) DEFAULT NULL,
  `situacao` varchar(150) DEFAULT NULL,
  `situacao2` varchar(150) DEFAULT NULL,
  `nomecurso` varchar(150) DEFAULT NULL,
  `nomecurso2` varchar(150) DEFAULT NULL,
  `nomeinstituto` varchar(250) DEFAULT NULL,
  `nomeinstituto2` varchar(250) DEFAULT NULL,
  `arquivo` varchar(50) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `candidato`
--

INSERT INTO `candidato` (`cpf`, `senha`, `confirmarsenha`, `nome`, `nasc`, `cep`, `endereco`, `numero`, `cidade`, `uf`, `email`, `telefone`, `deficiencia`, `idioma`, `informatica`, `curso1`, `curso2`, `curso3`, `curso4`, `curso5`, `nomeempresa`, `ultimocargo`, `atribuicoes`, `escolaridade`, `escolaridade2`, `situacao`, `situacao2`, `nomecurso`, `nomecurso2`, `nomeinstituto`, `nomeinstituto2`, `arquivo`) VALUES
('440.683.268-86', 'ad81aff67f7758c95b880666e9a477bb', '698dc19d489c4e4db73e28a713eab07b', 'Henrique de Souza', '17/05/1997', '08372-220', 'Rua José Juarez Antunes', '119', 'São Paulo', 'SP', 'henriquedesouza181@gmail.com', '(11)96856-0789', 'Fisica, cadeirante.', 'Inglês básico, Espanhol avançado', 'Conhecimento em PHP, pacote office.', 'Desenhista de paginas para web', '', '', '', '', 'Ezentis', 'Auxiliar de Infraestrutura', 'Manutenção eletrica.', 'Graduação', '', 'Cursando', '', 'Analise e Desenvolvimento de Sistemas', '', 'UMC', '', '440.683.268-86.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `empresa`
--

CREATE TABLE `empresa` (
  `cnpj` varchar(50) NOT NULL,
  `nome` varchar(250) NOT NULL,
  `senha` varchar(45) NOT NULL,
  `confirmarsenha` varchar(45) NOT NULL,
  `cep` varchar(40) NOT NULL,
  `endereco` varchar(250) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `cidade` varchar(250) NOT NULL,
  `uf` varchar(10) NOT NULL,
  `email` varchar(200) NOT NULL,
  `telefone` varchar(25) NOT NULL,
  `sobre` varchar(450) DEFAULT NULL,
  `arquivo` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `empresa`
--

INSERT INTO `empresa` (`cnpj`, `nome`, `senha`, `confirmarsenha`, `cep`, `endereco`, `numero`, `cidade`, `uf`, `email`, `telefone`, `sobre`, `arquivo`) VALUES
('06.990.590/0001-23', 'Google', 'c822c1b63853ed273b89687ac505f9fa', 'c822c1b63853ed273b89687ac505f9fa', '04538-133', 'Avenida Brigadeiro Faria Lima', '3477', 'São Paulo', 'SP', 'contato@google.com', '(11)2395-8400', 'Google LLC é uma empresa multinacional de serviços online e software dos Estados Unidos. O Google hospeda e desenvolve uma série de serviços e produtos baseados na internet e gera lucro principalmente através da publicidade pelo AdWords. A Google é a principal subsidiária da Alphabet Inc.', '1a32b5a2e5eee3f05605c866ebc3aa7f.jpg'),
('42.147.421/0001-90', 'Sinalisa Segurança Viária', 'c2f7b5674aebcd1537df72093161eb83', 'c2f7b5674aebcd1537df72093161eb83', '03107-030', 'Rua Presidente Barão de Guajará', '266', 'São Paulo', 'SP', 'contato@sinalisa.com', '(11)2813-3900', 'Pioneira no mercado brasileiro, a Sinalisa trabalha há mais de 4 décadas contribuindo com o aumento da segurança viária de norte a sul do País. Atendendo tanto a clientes do setor público quanto dos setores privados, a Empresa desenvolve e implanta soluções inovadoras em sinalização, sempre atuando de forma sustentável e responsável. \r\n\r\nNosso principal objeto é a melhoria da segurança dos usuários das vias de trânsito, sejam elas rodovias, vias ', '01c8d98aa12ee79a178ce9fd68f07869.jpg'),
('03.420.926/0001-24', 'Global Village Telecom', '9c70933aff6b2a6d08c687a6cbb6b765', '9c70933aff6b2a6d08c687a6cbb6b765', '80215-223', 'Rua Iapó', '1408', 'Curitiba', 'PR', 'contato@gvt.com', '(41)3025-2666', 'Global Village Telecom, conhecida mais pela sigla GVT, foi uma operadora de telecomunicações brasileira encerrada no dia 15 de abril de 2016 .Surgiu em 2000 como resultado de um consórcio formado pela holandesa Global Village Telecom e as norte-americanas ComTech Communications Technologies e RSL.', 'bedd763607b5d9d56ecceb362a378923.jpg'),
('02.558.157/0001-62', 'Telefonica', 'c2e819e650e10333edf7b299a489274c', 'c2e819e650e10333edf7b299a489274c', '02033-020', 'Avenida General Ataliba Leonel', '2466', 'São Paulo', 'SP', 'contato@telefonica.com', '(11)2959-0161', 'Telefônica Brasil é uma empresa do Grupo Telefonica, um dos principais conglomerados de comunicação do mundo. É conhecida pelo uso comercial da marca Vivo e opera desde 1998.', '06a7466d40df4e0f97d381cb887a55f4.jpg'),
('59.104.422/0057-04', 'Volkswagen', '698dc19d489c4e4db73e28a713eab07b', '698dc19d489c4e4db73e28a713eab07b', '09930-580', 'Rua Serra da Borborema', '1050', 'Diadema', 'SP', 'lucasguilhermelopes@gmail.com', '(11)96856-0789', 'Volkswagen do Brasil é uma empresa automobilística brasileira. Foi fundada em 1953 e é uma subsidiária da Volkswagen AG. Após a China, o Brasil é o país onde a Volkswagen tem a maior presença mundial fora da Alemanha.', 'b197ebf33f14da07c1e7adde6305c15a.jpg');

-- --------------------------------------------------------

--
-- Estrutura da tabela `notificacao_vagas`
--

CREATE TABLE `notificacao_vagas` (
  `email` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `notificacao_vagas`
--

INSERT INTO `notificacao_vagas` (`email`) VALUES
('henriquedesouza181@gmail.com');

-- --------------------------------------------------------

--
-- Estrutura da tabela `vagas`
--

CREATE TABLE `vagas` (
  `id_vaga` int(11) NOT NULL,
  `cargo` varchar(250) NOT NULL,
  `deficiencia` varchar(250) NOT NULL,
  `cep` varchar(9) NOT NULL,
  `endereco` varchar(250) NOT NULL,
  `numero` varchar(10) NOT NULL,
  `cidade` varchar(250) NOT NULL,
  `uf` varchar(2) NOT NULL,
  `salario` varchar(15) NOT NULL,
  `vaga` varchar(200) NOT NULL,
  `horario` varchar(250) NOT NULL,
  `sobre` varchar(450) NOT NULL,
  `requisito1` varchar(250) DEFAULT NULL,
  `requisito2` varchar(250) DEFAULT NULL,
  `requisito3` varchar(250) DEFAULT NULL,
  `requisito4` varchar(250) DEFAULT NULL,
  `requisito5` varchar(250) DEFAULT NULL,
  `beneficio1` varchar(250) DEFAULT NULL,
  `beneficio2` varchar(250) DEFAULT NULL,
  `beneficio3` varchar(250) DEFAULT NULL,
  `beneficio4` varchar(250) DEFAULT NULL,
  `beneficio5` varchar(250) DEFAULT NULL,
  `cnpj` varchar(50) NOT NULL,
  `nomeempresa` varchar(250) NOT NULL,
  `buscarfoto` varchar(250) NOT NULL,
  `emailempresa` varchar(250) NOT NULL,
  `status` varchar(50) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `vagas`
--

INSERT INTO `vagas` (`id_vaga`, `cargo`, `deficiencia`, `cep`, `endereco`, `numero`, `cidade`, `uf`, `salario`, `vaga`, `horario`, `sobre`, `requisito1`, `requisito2`, `requisito3`, `requisito4`, `requisito5`, `beneficio1`, `beneficio2`, `beneficio3`, `beneficio4`, `beneficio5`, `cnpj`, `nomeempresa`, `buscarfoto`, `emailempresa`, `status`) VALUES
(1, 'Analista de Mídia e Performance Jr', 'Fisica, Cadeirante', '04538-133', 'Avenida Brigadeiro Faria Lima', '3477', 'São Paulo', 'SP', '1.500,00', 'Contrato CLT', 'Segunda a Sexta das 07:00 as 17:00', 'Analisar as necessidades de cada cliente, elaborando campanhas baseando-se em seus objetivos de marketing e nas melhores práticas, local totalmente adaptados para pessoas portadores de necessidades especias como corrimão, rampas, elevadores.', 'Experiência na área de Midia e Performance', 'Conhecimento das ferramentas do Google', '', '', '', 'Assistência Médica', 'Assistência Odontológica', 'Auxílio Creche', 'Seguro de Vida', '', '06.990.590/0001-23', 'Google', '1a32b5a2e5eee3f05605c866ebc3aa7f.jpg', 'contato@google.com', ''),
(2, 'Estágio em Logística', 'Mental, Autismo', '03107-030', 'Rua Presidente Barão de Guajará', '266', 'São Paulo', 'SP', '630,00', 'Estágio', 'Segunda a Sexta das 08:00 as 14:00', 'Realizar a gestão e análise de documentos;\r\nAuxiliar nos projetos de Gerenciamento de Risco e Prevenção de Acidentes;\r\nEfetuar cadastros diversos no sistema;\r\nHomologar as transportadoras junto às gerenciadoras de risco de nossos clientes.', 'Engenharia, Administração, Logística, Direito ou áreas correlatas;', 'Conhecimento em Inglês', 'Excel', '', '', 'Vale-transporte', 'Vale-refeição', 'Seguro de vida', 'Bolsa auxílio', 'Assistência Médica e auxilio em terapias e especialidades necessárias', '42.147.421/0001-90', 'Sinalisa Segurança Viária', '01c8d98aa12ee79a178ce9fd68f07869.jpg', 'contato@sinalisa.com', ''),
(3, 'Suporte Comercial', 'Visual, Fisica, Mental', '80215-223', 'Rua Iapó', '1408', 'Curitiba', 'PR', '1.600,00', 'Contrato CLT', 'Segunda a sexta das 07:00 as 17:00', 'Entender em profundidade as necessidades dos nossos clientes e transformá-las em uma proposta de valor única que encanta e fideliza é o que move o no nosso dia a dia. Processar as informações e conferências administrativas existentes, apoiar no controle de qualidade das vendas e de estoque,', 'Ensino médio completo', 'Domínio do pacote office é um diferencial', '', '', '', 'Programa de Participação de Resultados', 'Vale Refeição e Vale Alimentação', 'Plano de Saúde e Odontológico', 'Seguro de Vida', '', '03.420.926/0001-24', 'Global Village Telecom', 'bedd763607b5d9d56ecceb362a378923.jpg', 'contato@gvt.com', ''),
(4, 'Instalador', 'Fisica', '02114-000', 'Rua Dias da Silva', '966', 'São Paulo', 'SP', '1.620,00', 'Contrato CLT', 'Segunda a sábado das 07:00 as 16:00', 'Principais Atividades: Instalação de linhas telefônicas, Internet e TV com a qualidade dos serviços exigidos pela Telefônica, com excelência no atendimento ao cliente.', 'Conhecimentos técnicos de redes interna ou externa.', 'Experiência de atendimento ao cliente.', 'Conhecimento de informática (hardware e software), redes de computadores, modems e roteadores.', '', '', 'Vale Refeição', 'Vale Alimentação', 'Assistência Médica', 'Assistência Odontológica', '', '02.558.157/0001-62', 'Telefonica', '06a7466d40df4e0f97d381cb887a55f4.jpg', 'contato@telefonica.com', ''),
(5, 'Técnico de Transmissão', 'Fisica, Mental', '08285-000', 'Avenida Líder', '2168', 'São Paulo', 'SP', '2.100,00', 'Contrato CLT', 'Segunda a sexta das 07:00 as 17:00', 'Responsabilidades: Implantação, instalação e manutenção de equipamentos de transmissão para rede fixa e móvel. Instalação física de rede de transmissão, equipamentos SDH, Radios PDH, Radios IP e Metro ETH e roteadores. Operação na rede de acesso móvel, identificação e correção de falhas em equipamentos GSM, WCDMA, LTE e novas tecnologias.', 'Ensino Técnico Completo que habilitam para o CREA.', 'CNH - B (Definitiva)', '', '', '', 'Assistência médica', 'Assistência odontológica', 'Auxílio farmácia', 'Vale alimentação', 'Vale-transporte', '02.558.157/0001-62', 'Telefonica', '06a7466d40df4e0f97d381cb887a55f4.jpg', 'contato@telefonica.com', ''),
(6, 'Analista de Mídias Sociais', 'Auditivo', '02118-001', 'Rua Dom Luís Felipe de Orleans', '116', 'São Paulo', 'SP', '1.750,00', 'Contrato CLT', 'Segunda a sabado das 14:00 as 22:00', 'Será responsável pela Análise das métricas e oportunidades de negócios focado em Mídias Sociais. (Google Ads, Face Ads, Instragram Ads etc).', 'Escolaridade Mínima: Ensino Superior', '', '', '', '', 'Vale Refeição', 'Vale Transporte', 'Plano de Saúde', 'Plano Odontológico', '', '06.990.590/0001-23', 'Google', '1a32b5a2e5eee3f05605c866ebc3aa7f.jpg', 'contato@google.com', ''),
(10, 'Vendedor de Automoveis', 'Física, Auditivo', '08372-220', 'Rua José Juarez Antunes', '119', 'São Paulo', 'SP', '1.500,00', 'Contrato CLT', 'Segunda a sexta das 07:00', 'Vendedor automoveis', 'Ensino Medio Completo', '', '', '', '', 'Vale Transporte', 'Vale- Refeição', '', '', '', '59.104.422/0057-04', 'Volkswagen', 'b197ebf33f14da07c1e7adde6305c15a.jpg', 'lucasguilhermelopes@gmail.com', 'encerrado');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `candidato`
--
ALTER TABLE `candidato`
  ADD PRIMARY KEY (`cpf`(40));

--
-- Indexes for table `empresa`
--
ALTER TABLE `empresa`
  ADD PRIMARY KEY (`cnpj`);

--
-- Indexes for table `vagas`
--
ALTER TABLE `vagas`
  ADD PRIMARY KEY (`id_vaga`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `vagas`
--
ALTER TABLE `vagas`
  MODIFY `id_vaga` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
