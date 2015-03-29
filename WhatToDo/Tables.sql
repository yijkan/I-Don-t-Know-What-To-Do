USE What_To_Do

DROP TABLE IF EXISTS `Suggestions`;

CREATE TABLE IF NOT EXISTS `Suggestions` (
	`Sugg_ID` INT NOT NULL AUTO_INCREMENT,
	`Suggestion` VARCHAR(2000) NOT NULL,
	`Category` INT NOT NULL, -- 0 for misc, 1 for food, 2 for learn
	PRIMARY KEY(`Sugg_ID`)
);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("Make senpai notice you", 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("Do your homework", 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("Make a blanket fort", 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://www.tasteofhome.com/recipes/holiday---celebration-recipes/christmas-recipes/how-to-make-candy' class='sugg'>Make candy</a>", 1);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://www.goinghometoroost.com/2011/diy-craft-projects/how-to-make-your-own-tea/' class='sugg'>Make your own tea</a>", 1);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href = 'http://www.tropicalmba.com/learn-to-play-guitar/' class='sugg'>Learn how to play guitar</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://www.duolingo.com/' class='sugg'>Learn another language</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://codecademy.com' class='sugg'>Learn how to code</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://freerice.com' class='sugg'>Learn vocabulary and do good with freerice.com</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://sublimestitching.com/pages/tutorials' class='sugg'>Learn how to embroider</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://howset.com/cat/how-to-make-origami/#.VRc15PnF-Cl' class='sugg'>Learn how to do origami</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://magic.about.com/od/libraryofsimpletricks/ig/Easy-Magic-Tricks/' class=sugg'>Learn how to do magic</a>", 0);