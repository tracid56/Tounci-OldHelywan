INSERT INTO `addon_account` (name, label, shared) VALUES 
	('organisation_ms13','ms13',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('organisation_ms13','ms13',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('organisation_ms13', 'ms13', 1)
;

INSERT INTO `org` (`name`, `label`) VALUES
('ms13', 'MS_13');

INSERT INTO `org_gradeorg` (`org_name`, `gradeorg`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('ms13', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
('ms13', 1, 'capo', 'Capo', 1800, '{}', '{}'),
('ms13', 2, 'consigliere', 'Chef', 2100, '{}', '{}'),
('ms13', 3, 'boss', 'Patron', 2700, '{}', '{}');
