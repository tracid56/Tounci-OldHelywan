INSERT INTO `addon_account` (name, label, shared) VALUES 
	('organisation_thelostmc','TheLostMC',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('organisation_thelostmc','TheLostMC',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('sorganisation_thelostmc', 'TheLostMC', 1)
;

INSERT INTO `org` (`name`, `label`) VALUES
('thelostmc', 'TheLostMC');

INSERT INTO `org_gradeorg` (`org_name`, `gradeorg`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('thelostmc', 0, 'Rookie', 'Prospect', 1500, '{}', '{}'),
('thelostmc', 1, 'Trooper', 'Patched Member', 1800, '{}', '{}'),           
('thelostmc', 2, 'Recruiter', 'Road Captain', 2100, '{}', '{}'), 
('thelostmc', 3, 'Vize-Boss', 'Vice President', 2400, '{}', '{}'),
('thelostmc', 4, 'Boss', 'President', 2700, '{}', '{}');

CREATE TABLE `fine_types_thelostmc` (
  
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `label` varchar(255) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `category` int(11) DEFAULT NULL,
  
  PRIMARY KEY (`id`)
);

INSERT INTO `fine_types_thelostmc` (label, amount, category) VALUES 
	('Raket',3000,0),
	('Raket',5000,0),
	('Raket',10000,1),
	('Raket',20000,1),
	('Raket',50000,2),
	('Raket',75000,3),
	('Raket',100000,3)
;