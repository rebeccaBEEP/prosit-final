-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-lebonplan.alwaysdata.net
-- Generation Time: May 01, 2025 at 12:36 AM
-- Server version: 10.11.11-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lebonplan_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `offres_emploi`
--

CREATE TABLE `offres_emploi` (
  `id` int(11) NOT NULL,
  `titre` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `entreprise` varchar(50) NOT NULL,
  `lieu` varchar(50) NOT NULL,
  `salaire` varchar(20) DEFAULT NULL,
  `type_contrat` varchar(30) NOT NULL,
  `date_publication` datetime DEFAULT current_timestamp(),
  `email_contact` varchar(100) DEFAULT NULL,
  `date_expiration` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `offres_emploi`
--

INSERT INTO `offres_emploi` (`id`, `titre`, `description`, `entreprise`, `lieu`, `salaire`, `type_contrat`, `date_publication`, `email_contact`, `date_expiration`) VALUES
(1, 'Développeur Full Stack', 'Développement d\'applications web modernes avec React et Node.js', 'TechVision', 'Paris', '45k-55k €/an', 'CDI', '2025-04-19 15:34:11', 'recrutement@techvision.com', '2024-12-15'),
(2, 'Designer UX/UI', 'Conception d\'interfaces utilisateur pour applications mobiles', 'Creative Labs', 'Lyon', '38k-48k €/an', 'CDI', '2025-04-19 15:34:11', 'jobs@creativelabs.fr', '2024-11-30'),
(3, 'Chef de Projet Agile', 'Gestion de projets IT avec méthodologie Scrum', 'Agile Solutions', 'Télétravail', '50k-60k €/an', 'CDD', '2025-04-19 15:34:11', 'careers@agilesolutions.com', '2024-10-20'),
(4, 'Data Scientist', 'Analyse de données et machine learning avec Python', 'DataSphere', 'Toulouse', '55k-65k €/an', 'CDI', '2025-04-19 15:34:11', 'contact@datasphere.io', '2025-01-10'),
(5, 'Administrateur Système', 'Gestion des infrastructures cloud AWS', 'CloudNet', 'Nantes', '42k-52k €/an', 'CDI', '2025-04-19 15:34:11', 'hr@cloudnet.com', '2024-12-01'),
(6, 'Marketing Digital', 'Stratégie de contenu et gestion des réseaux sociaux', 'Digital Boost', 'Bordeaux', '35k-45k €/an', 'CDD', '2025-04-19 15:34:11', 'info@digitalboost.fr', '2024-09-15'),
(7, 'Développeur Java', 'Développement backend pour applications financières', 'FinTech Group', 'Lille', '48k-58k €/an', 'CDI', '2025-04-19 15:34:11', 'jobs@fintechgroup.com', '2025-02-28'),
(8, 'Responsable RH', 'Gestion du recrutement et développement des talents', 'PeopleFirst', 'Marseille', '40k-50k €/an', 'CDI', '2025-04-19 15:34:11', 'rh@peoplefirst.com', '2024-11-15'),
(9, 'Ingénieur DevOps', 'Automatisation des déploiements avec Docker/Kubernetes', 'DevOps Pro', 'Télétravail', '52k-62k €/an', 'CDI', '2025-04-19 15:34:11', 'contact@devopspro.com', '2025-03-31'),
(10, 'Consultant SEO', 'Optimisation du référencement naturel pour sites e-commerce', 'WebGrowth', 'Paris', '36k-46k €/an', 'CDD', '2025-04-19 15:34:11', 'seo@webgrowth.com', '2024-10-31'),
(11, 'Développeur Python', 'Création d\'API REST avec Django/Flask', 'PyTech', 'Lyon', '44k-54k €/an', 'CDI', '2025-04-19 15:34:11', 'jobs@pytech.fr', '2024-12-20'),
(12, 'Graphiste', 'Création d\'identités visuelles et supports print', 'ArtDesign', 'Nice', '32k-42k €/an', 'CDD', '2025-04-19 15:34:11', 'contact@artdesign.com', '2024-09-30'),
(13, 'Architecte Logiciel', 'Conception d\'architectures microservices', 'SoftArch', 'Toulouse', '60k-70k €/an', 'CDI', '2025-04-19 15:34:11', 'careers@softarch.com', '2025-01-31'),
(14, 'Analyste Cybersécurité', 'Audit de sécurité et protection des données', 'SecureNet', 'Rennes', '50k-60k €/an', 'CDI', '2025-04-19 15:34:11', 'security@securenet.com', '2025-02-15'),
(15, 'Community Manager', 'Animation des réseaux sociaux et stratégie de marque', 'SocialBuzz', 'Paris', '30k-40k €/an', 'Alternance', '2025-04-19 15:34:11', 'cm@socialbuzz.com', '2024-08-31'),
(16, 'Développeur Mobile', 'Création d\'applications iOS/Android avec Flutter', 'AppCraft', 'Lyon', '46k-56k €/an', 'CDI', '2025-04-19 15:34:11', 'jobs@appcraft.fr', '2024-11-30'),
(17, 'Responsable Commercial', 'Développement du portefeuille clients B2B', 'SalesForce', 'Lille', '45k-55k €/an', 'CDI', '2025-04-19 15:34:11', 'sales@salesforce.com', '2025-01-15'),
(18, 'Ingénieur Cloud', 'Migration vers Azure et optimisation des coûts', 'CloudExperts', 'Télétravail', '53k-63k €/an', 'CDI', '2025-04-19 15:34:11', 'info@cloudexperts.com', '2025-03-15'),
(19, 'Rédacteur Technique', 'Rédaction de documentations techniques en anglais', 'DocuTech', 'Bordeaux', '38k-48k €/an', 'CDD', '2025-04-19 15:34:11', 'write@docutech.com', '2024-10-15'),
(20, 'Scrum Master', 'Facilitation des cérémonies Agile pour équipes IT', 'AgileMasters', 'Nantes', '48k-58k €/an', 'CDI', '2025-04-19 15:34:11', 'scrum@agilemasters.com', '2025-02-10'),
(21, 'Développeur C#', 'Développement d\'applications desktop avec .NET', 'DotNet Solutions', 'Paris', '42k-52k €/an', 'CDI', '2025-04-19 15:34:11', 'jobs@dotnetsolutions.com', '2024-12-31'),
(22, 'UX Researcher', 'Études utilisateurs et tests d\'ergonomie', 'UserInsights', 'Lyon', '40k-50k €/an', 'CDD', '2025-04-19 15:34:11', 'research@userinsights.com', '2024-09-20'),
(23, 'Expert Blockchain', 'Développement de smart contracts avec Solidity', 'ChainTech', 'Toulouse', '65k-75k €/an', 'CDI', '2025-04-19 15:34:11', 'blockchain@chaintech.com', '2025-04-30'),
(24, 'Technicien Support', 'Support technique niveau 2 pour clients entreprises', 'HelpDesk Pro', 'Marseille', '28k-38k €/an', 'CDI', '2025-04-19 15:34:11', 'support@helpdeskpro.com', '2024-11-10'),
(25, 'Data Engineer', 'Construction de pipelines ETL avec Apache Spark', 'BigData Corp', 'Rennes', '52k-62k €/an', 'CDI', '2025-04-19 15:34:11', 'data@bigdatacorp.com', '2025-01-20'),
(26, 'Product Owner', 'Gestion du backlog produit et prioritisation des features', 'ProductLab', 'Télétravail', '50k-60k €/an', 'CDI', '2025-04-19 15:34:11', 'po@productlab.com', '2025-03-01'),
(27, 'Développeur Frontend', 'Intégration de maquettes avec React/Vue.js', 'FrontEnd Masters', 'Paris', '44k-54k €/an', 'CDI', '2025-04-19 15:34:11', 'jobs@frontendmasters.com', '2024-12-10'),
(28, 'Consultant SAP', 'Implémentation de modules SAP FI/CO', 'SAP Experts', 'Lyon', '55k-65k €/an', 'CDD', '2025-04-19 15:34:11', 'sap@sapexperts.com', '2024-10-25'),
(29, 'Chargé de Communication', 'Création de contenus et relations presse', 'Com Agency', 'Bordeaux', '35k-45k €/an', 'CDI', '2025-04-19 15:34:11', 'com@comagency.com', '2024-11-30'),
(30, 'Ingénieur QA', 'Automatisation des tests avec Selenium', 'Quality Assurance', 'Nantes', '45k-55k €/an', 'CDI', '2025-04-19 15:34:11', 'qa@qualityassurance.com', '2025-02-05'),
(31, 'Développeur Ruby', 'Maintenance d\'applications legacy en Ruby on Rails', 'RubyTech', 'Lille', '48k-58k €/an', 'CDI', '2025-04-19 15:34:11', 'dev@rubytech.com', '2024-12-15'),
(32, 'Expert SEO', 'Audit technique et stratégie de contenu', 'SEO Masters', 'Paris', '42k-52k €/an', 'CDD', '2025-04-19 15:34:11', 'seo@seomasters.com', '2024-09-15'),
(33, 'DevOps Junior', 'Support sur les outils CI/CD et monitoring', 'DevOps Start', 'Toulouse', '38k-48k €/an', 'Alternance', '2025-04-19 15:34:11', 'junior@devopsstart.com', '2025-01-31'),
(34, 'Responsable IT', 'Gestion du parc informatique et helpdesk', 'IT Services', 'Marseille', '45k-55k €/an', 'CDI', '2025-04-19 15:34:11', 'it@itservices.com', '2024-11-20'),
(35, 'Développeur Go', 'Création de microservices en Golang', 'GoLang Pro', 'Rennes', '50k-60k €/an', 'CDI', '2025-04-19 15:34:11', 'golang@golangpro.com', '2025-03-10'),
(36, 'Designer Produit', 'Conception d\'interfaces utilisateur pour SaaS', 'ProductDesign', 'Télétravail', '46k-56k €/an', 'CDI', '2025-04-19 15:34:11', 'design@productdesign.com', '2025-02-20'),
(37, 'Analyste Financier', 'Reporting et analyse des données comptables', 'Finance Group', 'Paris', '48k-58k €/an', 'CDI', '2025-04-19 15:34:11', 'finance@financegroup.com', '2024-12-31'),
(38, 'Ingénieur Réseau', 'Configuration et sécurisation des infrastructures', 'Network Solutions', 'Lyon', '50k-60k €/an', 'CDI', '2025-04-19 15:34:11', 'network@networksolutions.com', '2025-01-15'),
(39, 'Content Manager', 'Stratégie éditoriale et gestion de blog corporate', 'Content Kings', 'Bordeaux', '36k-46k €/an', 'CDD', '2025-04-19 15:34:11', 'content@contentkings.com', '2024-10-10'),
(40, 'Développeur Kotlin', 'Développement d\'applications Android natives', 'MobileDev', 'Nantes', '47k-57k €/an', 'CDI', '2025-04-19 15:34:11', 'jobs@mobiledev.com', '2025-02-28'),
(41, 'Consultant CRM', 'Implémentation de solutions Salesforce', 'CRM Experts', 'Lille', '52k-62k €/an', 'CDD', '2025-04-19 15:34:11', 'crm@crmexperts.com', '2024-11-15'),
(42, 'Architecte Cloud', 'Design d\'architectures serverless sur AWS', 'Cloud Architects', 'Toulouse', '65k-75k €/an', 'CDI', '2025-04-19 15:34:11', 'cloud@cloudarchitects.com', '2025-04-15'),
(43, 'Technicien IT', 'Support utilisateur et maintenance hardware', 'TechSupport', 'Marseille', '30k-40k €/an', 'CDI', '2025-04-19 15:34:11', 'support@techsupport.com', '2024-10-31'),
(44, 'Data Analyst', 'Création de dashboards avec Power BI', 'Analytics Pro', 'Rennes', '42k-52k €/an', 'CDI', '2025-04-19 15:34:11', 'data@analyticspro.com', '2025-01-20'),
(45, 'Product Manager', 'Roadmap produit et gestion des stakeholders', 'Product Leaders', 'Télétravail', '55k-65k €/an', 'CDI', '2025-04-19 15:34:11', 'pm@productleaders.com', '2025-03-31'),
(46, 'Développeur Symfony', 'Refonte d\'application legacy avec Symfony 6', 'PHP Experts', 'Paris', '45k-55k €/an', 'CDI', '2025-04-19 15:34:11', 'symfony@phpexperts.com', '2024-12-20'),
(47, 'UX Designer', 'Prototypage avec Figma et tests utilisateurs', 'UX Studio', 'Lyon', '40k-50k €/an', 'CDD', '2025-04-19 15:34:11', 'ux@uxstudio.com', '2024-09-30'),
(48, 'Expert Kubernetes', 'Orchestration de containers et scaling', 'Kube Masters', 'Bordeaux', '60k-70k €/an', 'CDI', '2025-04-19 15:34:11', 'kubernetes@kubemasters.com', '2025-02-15'),
(49, 'Commercial IT', 'Vente de solutions logicielles aux entreprises', 'IT Sales', 'Nantes', '35k-45k €/an + varia', 'CDI', '2025-04-19 15:34:11', 'sales@itsales.com', '2024-11-30'),
(50, 'Développeur Dart', 'Contributions au SDK Flutter', 'Flutter Devs', 'Lille', '50k-60k €/an', 'CDI', '2025-04-19 15:34:11', 'dart@flutterdevs.com', '2025-01-10'),
(51, 'Responsable RGPD', 'Conformité et protection des données personnelles', 'GDPR Compliance', 'Toulouse', '48k-58k €/an', 'CDI', '2025-04-19 15:34:11', 'rgpd@gdprcompliance.com', '2025-03-20');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `offres_emploi`
--
ALTER TABLE `offres_emploi`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `offres_emploi`
--
ALTER TABLE `offres_emploi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
