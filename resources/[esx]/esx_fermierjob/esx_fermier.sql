INSERT INTO `addon_account` (name, label, shared) VALUES 
	('society_fermier','Fermier',1)
;

INSERT INTO `datastore` (name, label, shared) VALUES 
	('society_fermier','Fermier',1)
;

INSERT INTO `addon_inventory` (name, label, shared) VALUES 
	('society_fermier', 'Fermier', 1)
;

INSERT INTO `jobs` (`name`, `label`, `whitelisted`) VALUES
('fermier', 'Fermier', 1);

INSERT INTO `job_grades` (job_name, grade, name, label, salary, skin_male, skin_female) VALUES
  ('fermier',0,'recrue','Tabagiste',300,'{}','{}'),
  ('fermier',1,'gerant','Gérant',500,'{}','{}'),
  ('fermier',2,'boss','Patron',500,'{}','{}');

INSERT INTO `items` (name, label) VALUES
  ('carotte', 'Carotte'),
  ('carottelave', 'Carotte Lavé'),
  ('carottevend', 'Carotte à vendre');
