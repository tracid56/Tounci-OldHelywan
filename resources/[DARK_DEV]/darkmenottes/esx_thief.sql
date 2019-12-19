INSERT INTO `items` (`name`, `label`, `limit`, `rare`, `can_remove`) VALUES
	('handcuffs', 'Menottes', 1, 0, 1),
    ('rope', 'corde', 1, 0, 1)
;

INSERT INTO `shops` (store, item, price) VALUES
	('TwentyFourSeven', 'handcuffs', 100),
    ('TwentyFourSeven', 'rope', 100)
;