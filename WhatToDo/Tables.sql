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
VALUES ("<a href='http://www.good-ear.com/' target='_blank'>Test your perfect pitch here</a>", 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://cheekandstitch.com/diy-totoro-plush-tutorial/' target='_blank'>Make a Totoro plushie (Click for tutorial)</a>", 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://willyoupressthebutton.com' target='_blank'>Play 'Will You Press the Button?' here</a>", 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://thequietplaceproject.com/thequietplace' target='_blank'>Enjoy a quiet place here</a>", 2);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://www.tasteofhome.com/recipes/holiday---celebration-recipes/christmas-recipes/how-to-make-candy' target='_blank'>Make candy (Click for tutorial)</a>", 1);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://www.goinghometoroost.com/2011/diy-craft-projects/how-to-make-your-own-tea/' target='_blank'>Make your own tea (Click for tutorial)</a>", 1);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://www.youtube.com/watch?v=WMABvhVyrs4' target='_blank'>Make mosaic sushi (Click for tutorial)</a>", 1);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://www.buzzfeed.com/arielknutson/delicious-snacks-in-a-mug' target='_blank'>Make a mug recipe (Click for some recipes)</a>", 1);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://www.tropicalmba.com/learn-to-play-guitar/' target='_blank'>Learn how to play guitar here</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://www.duolingo.com/' target='_blank'>Learn another language here</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://codecademy.com' target='_blank'>Learn how to code here</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://freerice.com' target='_blank'>Learn vocabulary and do good here</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://sublimestitching.com/pages/tutorials' target='_blank'>Learn how to embroider here</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://howset.com/cat/how-to-make-origami/#.VRc15PnF-Cl' target='_blank'>Learn how to do origami here</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://magic.about.com/od/libraryofsimpletricks/ig/Easy-Magic-Tricks/' target='_blank'>Learn how to do magic here</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://www.nerdfitness.com/blog/2010/08/12/the-definitive-guide-to-parkour-for-beginners/' target='_blank'>Learn how to parkour here</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://waitbutwhy.com/2013/10/why-procrastinators-procrastinate.html' target='_blank'>Learn why procrastinators procrastinate (with pictures!) here</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://hundredpushups.com/test.html' target='_blank'>Learn how you too can do 100 pushups here</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://preciousnugget.tumblr.com/post/108613291790/classical-pieces-youve-probably-heard-but-might' target='_blank'>Learn the names of classical pieces you've probably heard of but never knew the name of here</a>", 0);

INSERT INTO Suggestions (Suggestion, Category)
VALUES ("<a href='http://realsocialskills.org/post/113170948840/how-to-talk-to-strangers-in-social-situations' target='_blank'>Learn how to talk to strangers in social situations here</a>", 0);