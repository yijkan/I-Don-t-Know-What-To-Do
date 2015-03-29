USE What_To_Do

DROP TABLE IF EXISTS `Suggestions`;

CREATE TABLE IF NOT EXISTS `Suggestions` (
	`Sugg_ID` INT NOT NULL AUTO_INCREMENT,
	`Suggestion` VARCHAR(2000) NOT NULL,
	`Category` INT NOT NULL, -- 0 for misc, 1 for food, 2 for learn
	PRIMARY KEY(`Sugg_ID`)
);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href = 'http://www.tropicalmba.com/learn-to-play-guitar/'>Learn how to play guitar</a>", 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href = 'https://www.duolingo.com/'>Learn another language</a>", 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ('<a href=”http://codecademy.com”>Learn how to code</a>', 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ('<a href=”http://freerice.com”>Learn vocabulary and do good with freerice.com</a>', 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ('<a href=”http://sublimestitching.com/pages/tutorials”>Learn how to embroider</a>', 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ('<a href=”http://howset.com/cat/how-to-make-origami/#.VRc15PnF-Cl”>Learn how to do origami</a>', 2);