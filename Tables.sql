USE What_To_Do

DROP TABLE IF EXISTS `Suggestions`;

CREATE TABLE IF NOT EXISTS `Suggestions` (
	`Sugg_ID` INT NOT NULL AUTO_INCREMENT,
	`Suggestion` VARCHAR(2000) NOT NULL,
	`Category` INT NOT NULL, -- 0 for misc, 1 for food, 2 for learn
	PRIMARY KEY(`Sugg_ID`)
);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href = 'http://www.tropicalmba.com/learn-to-play-guitar/'>learn how to play guitar</a>", 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href = 'http://www.auntiepixelante.com/twine/''>learn how to make interactive stories with the free program Twine</a>", 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href = 'https://www.duolingo.com/''>learn another language</a>", 2)