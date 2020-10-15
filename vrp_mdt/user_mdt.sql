CREATE TABLE `user_mdt` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`mugshot_url` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `user_convictions` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`offense` varchar(255) DEFAULT NULL,
	`count` int(11) DEFAULT NULL,
	
	PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_reports` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`char_id` int(11) DEFAULT NULL,
	`title` varchar(255) DEFAULT NULL,
	`incident` longtext DEFAULT NULL,
    `charges` longtext DEFAULT NULL,
    `author` varchar(255) DEFAULT NULL,
	`name` varchar(255) DEFAULT NULL,
    `date` varchar(255) DEFAULT NULL,
    `jailtime` int(11) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `mdt_warrants` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`name` varchar(255) DEFAULT NULL,
	`char_id` int(11) DEFAULT NULL,
	`report_id` int(11) DEFAULT NULL,
	`report_title` varchar(255) DEFAULT NULL,
	`charges` longtext DEFAULT NULL,
	`date` varchar(255) DEFAULT NULL,
	`expire` varchar(255) DEFAULT NULL,
	`notes` varchar(255) DEFAULT NULL,
	`author` varchar(255) DEFAULT NULL,

	PRIMARY KEY (`id`)
);

CREATE TABLE `fine_types` (
  `id` int(11) NOT NULL,
  `label` varchar(255) COLLATE utf8mb4_bin DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Data dump for tabellen `fine_types`
--

INSERT INTO `fine_types` (`id`, `label`, `amount`, `category`) VALUES
(1, 'Misbrug af hornet', 0, 0),
(2, 'Kryds en kontinuerlig linje', 0, 0),
(3, 'Cirkulation i modsætning til', 0, 0),
(4, 'Uautoriseret drejning', 0, 0),
(5, 'Off-road trafik', 0, 0),
(6, 'Manglende overholdelse af sikkerhedsafstande', 0, 0),
(7, 'Farligt / forbudt stop', 0, 0),
(8, 'Parkering akavet / forbudt', 0, 0),
(9, 'Ikke respekterer højre prioritets prioritet', 0, 0),
(10, 'Manglende overholdelse af et prioriteret køretøj', 0, 0),
(11, 'Undladelse af at stoppe', 0, 0),
(12, 'Manglende overholdelse af et rødt lys', 0, 0),
(13, 'Farlig forbikørsel', 0, 0),
(14, 'Køretøj er ikke i tilstand', 0, 0),
(15, 'Kørsel uden kørekort', 0, 0),
(16, 'Hit og løb', 0, 0),
(17, 'Hurtigere < 5 mph', 0, 0),
(18, 'Hurtigere 5-15 mph', 0, 0),
(19, 'Hurtigere 15-30 mph', 0, 0),
(20, 'Hurtigere > 30 mph', 0, 0),
(21, 'Trafikhindring', 0, 1),
(22, 'Nedbrydning af den offentlige vej', 0, 1),
(23, 'Problemer med den offentlige orden', 0, 1),
(24, 'Hindring af politiets operation', 0, 1),
(25, 'Fornærmelse mod / mellem civile', 0, 1),
(26, 'Forargelse til politibetjent', 0, 1),
(27, 'Verbal trussel eller trusler mod civil', 0, 1),
(28, 'Verbal trussel eller trussel mod en politibetjent', 0, 1),
(29, 'Ulovlig protest', 0, 1),
(30, 'Forsøg på korruption', 0, 1),
(31, 'Hvidt våben ude i byen', 0, 2),
(32, 'Dødbringende våben ude i byen', 0, 2),
(33, 'Våbenhavn er ikke tilladt (licensfejl)', 0, 2),
(34, 'Havn med ulovligt våben', 0, 2),
(35, 'Taget i flag lockpick', 0, 2),
(36, 'Biltyveri', 0, 2),
(37, 'Salg af stoffer', 0, 2),
(38, 'Fremstilling af stoffer', 0, 2),
(39, 'Besiddelse af stoffer', 0, 2),
(40, 'Civil landing', 0, 2),
(41, 'Statens overtagelsesagent', 0, 2),
(42, 'Særlig afbøjning', 0, 2),
(43, 'Butik røveri', 0, 2),
(44, 'Bankrøveri', 0, 2),
(45, 'Civilskydning', 0, 3),
(46, 'Skydning på statsagent', 0, 3),
(47, 'Forsøg på mord på civil', 0, 3),
(48, 'Forsøg på mord på statsagent', 0, 3),
(49, 'Mord på civil', 0, 3),
(50, 'Mord på statsagent', 0, 3),
(51, 'Mord ufrivilligt', 0, 3),
(52, 'Forretningsvindel', 0, 2);

