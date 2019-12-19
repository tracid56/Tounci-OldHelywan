INSERT INTO `addon_account` (name, label, shared) VALUES 
	('organisation_gang','gang',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('organisation_gang','Gang',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('organisation_gang', 'Gang', 1)
;

INSERT INTO `org` (`name`, `label`) VALUES
('gang', 'Gang');

INSERT INTO `org_gradeorg` (`org_name`, `gradeorg`, `name`, `label`, `salary`, `skin_male`, `skin_female`) VALUES
('gang', 0, 'soldato', 'Ptite-Frappe', 1500, '{}', '{}'),
('gang', 1, 'capo', 'Capo', 1800, '{}', '{}'),
('gang', 2, 'consigliere', 'Chef', 2100, '{}', '{}'),
('gang', 3, 'boss', 'Patron', 2700, '{}', '{}');
