INSERT INTO `addon_account` (name, label, shared) VALUES
  ('society_bmdealer','Black Market Cardealer',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES
  ('society_bmdealer','Cardealer',1)
;

INSERT INTO `jobs` (name, label) VALUES
  ('bmdealer','Concessionaire Import')
;

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('bmdealer',0,'recruit','Recrut',10,'{}','{}'),
  ('bmdealer',1,'novice','Vendeur',25,'{}','{}'),
  ('bmdealer',2,'experienced','Vendeur en chef',40,'{}','{}'),
  ('bmdealer',3,'boss','Patron',0,'{}','{}')
;

CREATE TABLE `bmdealer_vehicles` (
	`id` int(11) NOT NULL AUTO_INCREMENT,
	`vehicle` varchar(255) NOT NULL,
	`price` int(11) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `bmrented_vehicles` (
	`vehicle` varchar(60) NOT NULL,
	`plate` varchar(12) NOT NULL,
	`player_name` varchar(255) NOT NULL,
	`base_price` int(11) NOT NULL,
	`rent_price` int(11) NOT NULL,
	`owner` varchar(30) NOT NULL,

	PRIMARY KEY (`plate`)
);

CREATE TABLE `bmvehicle_categories` (
	`name` varchar(60) NOT NULL,
	`label` varchar(60) NOT NULL,

	PRIMARY KEY (`name`)
);

INSERT INTO `bmvehicle_categories` (name, label) VALUES
	('importcar','Voitures'),
	('importbike','2 Roues')
;

CREATE TABLE `bmvehicles` (
	`name` varchar(60) NOT NULL,
	`model` varchar(60) NOT NULL,
	`price` int(11) NOT NULL,
	`category` varchar(60) DEFAULT NULL,
	PRIMARY KEY (`model`)
);

INSERT INTO `bmvehicles` (name, model, price, category) VALUES
	('Mercedes C63','c63',380000,'importcar')
;
