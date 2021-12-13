CREATE DATABASE songname;

DROP DATABASE songname;


USE songs;


-- Create bands Table--

CREATE TABLE bands (
  id INT NOT NULL IDENTITY(1, 1),
  name VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

SELECT * FROM bands;

--Create albumns table--

CREATE TABLE albums (
  id INT NOT NULL IDENTITY(1, 1),
  name VARCHAR(255) NOT NULL,
  release_year INT,
  band_id INT NOT NULL,
  PRIMARY KEY (id),
  FOREIGN KEY (band_id) REFERENCES bands(id)
);


SELECT * FROM albums;

INSERT INTO albums(name,release_year,band_id) VALUES ('Tiara',2018,1);
INSERT INTO albums(name,release_year,band_id) VALUES ('The Great Escape',2010,1);
INSERT INTO albums(name,release_year,band_id) VALUES ('Mercy Falls',2008,1);
INSERT INTO albums(name,release_year,band_id) VALUES ('Master of Puppets',NULL,2);
INSERT INTO albums(name,release_year,band_id) VALUES ('...And Justice for All',1988,2);
INSERT INTO albums(name,release_year,band_id) VALUES ('Death Magnetic',2008,2);
INSERT INTO albums(name,release_year,band_id) VALUES ('Heliocentric',2010,3);
INSERT INTO albums(name,release_year,band_id) VALUES ('Pelagial',2013,3);
INSERT INTO albums(name,release_year,band_id) VALUES ('Anthropocentric',2010,3);
INSERT INTO albums(name,release_year,band_id) VALUES ('Resist',2018,4);
INSERT INTO albums(name,release_year,band_id) VALUES ('The Unforgiving',2011,4);
INSERT INTO albums(name,release_year,band_id) VALUES ('Enter',1997,4);
INSERT INTO albums(name,release_year,band_id) VALUES ('The Sound of Perseverance',1998,5);
INSERT INTO albums(name,release_year,band_id) VALUES ('Individual Thought Patterns',1993,5);
INSERT INTO albums(name,release_year,band_id) VALUES ('Human',1991,5);
INSERT INTO albums(name,release_year,band_id) VALUES ('A Storm to Come',2006,6);
INSERT INTO albums(name,release_year,band_id) VALUES ('Break the Silence',2011,6);
INSERT INTO albums(name,release_year,band_id) VALUES ('Tribe of Force',2010,6);



-- Create a songname Table.
CREATE TABLE songname(
	id INT NOT NULL IDENTITY(1, 1), --this is auto_increment from mysql--
	name VARCHAR(255) NOT NULL,
	length float NOT NULL,
	album_id INT NOT NULL,
	PRIMARY KEY (id),
	--FOREIGN KEY (album_id) REFERENCES albums(id)
);



ALTER TABLE songname
ADD FOREIGN KEY (album_id) REFERENCES albums(id);


SELECT * FROM songname;

INSERT INTO songname(name,length,album_id) VALUES ('Arrival',1+(30/60),1);
INSERT INTO songname(name,length,album_id) VALUES ('The Everones',6+(13/60),1);
INSERT INTO songname(name,length,album_id) VALUES ('Dream Machines',5+(38/60),1);
INSERT INTO songname(name,length,album_id) VALUES ('Against the Grain',6+(58/60),1);
INSERT INTO songname(name,length,album_id) VALUES ('Victorious',4+(55/60),1);
INSERT INTO songname(name,length,album_id) VALUES ('Tiara''s Song (Farewell Pt. 1)',7+(16/60),1);
INSERT INTO songname(name,length,album_id) VALUES ('Goodnight (Farewell Pt. 2)',7+(10/60),1);
INSERT INTO songname(name,length,album_id) VALUES ('Beyond Today (Farewell Pt. 3)',5+(06/60),1);
INSERT INTO songname(name,length,album_id) VALUES ('The Truth',4+(17/60),1);
INSERT INTO songname(name,length,album_id) VALUES ('By the Light of the Funeral Pyres',3+(54/60),1);
INSERT INTO songname(name,length,album_id) VALUES ('Damnation Below',6+(44/60),1);
INSERT INTO songname(name,length,album_id) VALUES ('Procession',0+(45/60),1);
INSERT INTO songname(name,length,album_id) VALUES ('Exhale',9+(30/60),1);
INSERT INTO songname(name,length,album_id) VALUES ('Wiseman',5+(42/60),2);
INSERT INTO songname(name,length,album_id) VALUES ('Alley Cat',6+(06/60),2);
INSERT INTO songname(name,length,album_id) VALUES ('The Angelmaker',8+(29/60),2);
INSERT INTO songname(name,length,album_id) VALUES ('King of Whitewater',7+(20/60),2);
INSERT INTO songname(name,length,album_id) VALUES ('Long Way Home',4+(26/60),2);
INSERT INTO songname(name,length,album_id) VALUES ('Move on Through',5+(04/60),2);
INSERT INTO songname(name,length,album_id) VALUES ('The Great Escape',30+(14/60),2);
INSERT INTO songname(name,length,album_id) VALUES ('A New Beginning',3+(05/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('There and Back',3+(02/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('Welcome to Mercy Falls',5+(11/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('Unbreakable',7+(19/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('Tears for a Father',1+(58/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('A Day Away',3+(43/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('Tears for a Son',1+(42/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('Paradise',5+(46/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('Fall in Line',6+(09/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('Break the Silence',9+(29/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('Hide and Seek',7+(46/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('Destiny Calls',6+(18/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('One Last Goodbye',4+(21/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('Back in Time',1+(14/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('The Black Parade',6+(57/60),3);
INSERT INTO songname(name,length,album_id) VALUES ('Battery',5+(13/60),4);
INSERT INTO songname(name,length,album_id) VALUES ('Master of Puppets',8+(35/60),4);
INSERT INTO songname(name,length,album_id) VALUES ('The Thing That Should Not Be',6+(36/60),4);
INSERT INTO songname(name,length,album_id) VALUES ('Welcome Home (Sanitarium)',6+(27/60),4);
INSERT INTO songname(name,length,album_id) VALUES ('Disposable Heroes',8+(17/60),4);
INSERT INTO songname(name,length,album_id) VALUES ('Leper Messiah',5+(40/60),4);
INSERT INTO songname(name,length,album_id) VALUES ('Orion',8+(27/60),4);
INSERT INTO songname(name,length,album_id) VALUES ('Damage Inc.',5+(32/60),4);
INSERT INTO songname(name,length,album_id) VALUES ('Blackened',6+(41/60),5);
INSERT INTO songname(name,length,album_id) VALUES ('...And Justice for All',9+(47/60),5);
INSERT INTO songname(name,length,album_id) VALUES ('Eye of the Beholder',6+(30/60),5);
INSERT INTO songname(name,length,album_id) VALUES ('One',7+(27/60),5);
INSERT INTO songname(name,length,album_id) VALUES ('The Shortest Straw',6+(36/60),5);
INSERT INTO songname(name,length,album_id) VALUES ('Harvester of Sorrow',5+(46/60),5);
INSERT INTO songname(name,length,album_id) VALUES ('The Frayed Ends of Sanity',7+(44/60),5);
INSERT INTO songname(name,length,album_id) VALUES ('To Live Is to Die',9+(49/60),5);
INSERT INTO songname(name,length,album_id) VALUES ('Dyers Eve',5+(13/60),5);
INSERT INTO songname(name,length,album_id) VALUES ('That Was Just Your Life',7+(08/60),6);
INSERT INTO songname(name,length,album_id) VALUES ('The End of the Line',7+(52/60),6);
INSERT INTO songname(name,length,album_id) VALUES ('Broken Beat & Scarred',6+(25/60),6);
INSERT INTO songname(name,length,album_id) VALUES ('The Day That Never Comes',7+(56/60),6);
INSERT INTO songname(name,length,album_id) VALUES ('All Nightmare Long',7+(58/60),6);
INSERT INTO songname(name,length,album_id) VALUES ('Cyanide',6+(40/60),6);
INSERT INTO songname(name,length,album_id) VALUES ('The Unforgiven III',7+(47/60),6);
INSERT INTO songname(name,length,album_id) VALUES ('The Judas Kiss',8+(01/60),6);
INSERT INTO songname(name,length,album_id) VALUES ('Suicide & Redemption',9+(58/60),6);
INSERT INTO songname(name,length,album_id) VALUES ('My Apocalypse',5+(01/60),6);
INSERT INTO songname(name,length,album_id) VALUES ('Shamayim',1+(53/60),7);
INSERT INTO songname(name,length,album_id) VALUES ('Firmament',7+(29/60),7);
INSERT INTO songname(name,length,album_id) VALUES ('The First Commandment of the Luminaries',6+(47/60),7);
INSERT INTO songname(name,length,album_id) VALUES ('Ptolemy Was Wrong',6+(28/60),7);
INSERT INTO songname(name,length,album_id) VALUES ('Metaphysics of the Hangman',5+(41/60),7);
INSERT INTO songname(name,length,album_id) VALUES ('Catharsis of a Heretic',2+(08/60),7);
INSERT INTO songname(name,length,album_id) VALUES ('Swallowed by the Earth',4+(59/60),7);
INSERT INTO songname(name,length,album_id) VALUES ('Epiphany',3+(37/60),7);
INSERT INTO songname(name,length,album_id) VALUES ('The Origin of Species',7+(23/60),7);
INSERT INTO songname(name,length,album_id) VALUES ('The Origin of God',4+(33/60),7);
INSERT INTO songname(name,length,album_id) VALUES ('Epipelagic',1+(12/60),8);
INSERT INTO songname(name,length,album_id) VALUES ('Mesopelagic: Into the Uncanny',5+(56/60),8);
INSERT INTO songname(name,length,album_id) VALUES ('Bathyalpelagic I: Impasses',4+(24/60),8);
INSERT INTO songname(name,length,album_id) VALUES ('Bathyalpelagic II: The Wish in Dreams',3+(18/60),8);
INSERT INTO songname(name,length,album_id) VALUES ('Bathyalpelagic III: Disequilibrated',4+(27/60),8);
INSERT INTO songname(name,length,album_id) VALUES ('Abyssopelagic I: Boundless Vasts',3+(27/60),8);
INSERT INTO songname(name,length,album_id) VALUES ('Abyssopelagic II: Signals of Anxiety',5+(05/60),8);
INSERT INTO songname(name,length,album_id) VALUES ('Hadopelagic I: Omen of the Deep',1+(07/60),8);
INSERT INTO songname(name,length,album_id) VALUES ('Hadopelagic II: Let Them Believe',9+(17/60),8);
INSERT INTO songname(name,length,album_id) VALUES ('Demersal: Cognitive Dissonance',9+(05/60),8);
INSERT INTO songname(name,length,album_id) VALUES ('Benthic: The Origin of Our Wishes',5+(55/60),8);
INSERT INTO songname(name,length,album_id) VALUES ('Anthropocentric',9+(24/60),9);
INSERT INTO songname(name,length,album_id) VALUES ('The Grand Inquisitor I: Karamazov Baseness',5+(02/60),9);
INSERT INTO songname(name,length,album_id) VALUES ('She Was the Universe',5+(39/60),9);
INSERT INTO songname(name,length,album_id) VALUES ('For He That Wavereth...',2+(07/60),9);
INSERT INTO songname(name,length,album_id) VALUES ('The Grand Inquisitor II: Roots & Locusts',6+(33/60),9);
INSERT INTO songname(name,length,album_id) VALUES ('The Grand Inquisitor III: A Tiny Grain of Faith',1+(56/60),9);
INSERT INTO songname(name,length,album_id) VALUES ('Sewers of the Soul',3+(44/60),9);
INSERT INTO songname(name,length,album_id) VALUES ('Wille zum Untergang',6+(03/60),9);
INSERT INTO songname(name,length,album_id) VALUES ('Heaven TV',5+(04/60),9);
INSERT INTO songname(name,length,album_id) VALUES ('The Almightiness Contradiction',4+(34/60),9);
INSERT INTO songname(name,length,album_id) VALUES ('The Reckoning',4+(11/60),10);
INSERT INTO songname(name,length,album_id) VALUES ('Endless War',4+(09/60),10);
INSERT INTO songname(name,length,album_id) VALUES ('Raise Your Banner',5+(34/60),10);
INSERT INTO songname(name,length,album_id) VALUES ('Supernova',5+(34/60),10);
INSERT INTO songname(name,length,album_id) VALUES ('Holy Ground',4+(10/60),10);
INSERT INTO songname(name,length,album_id) VALUES ('In Vain',4+(25/60),10);
INSERT INTO songname(name,length,album_id) VALUES ('Firelight',4+(46/60),10);
INSERT INTO songname(name,length,album_id) VALUES ('Mad World',4+(57/60),10);
INSERT INTO songname(name,length,album_id) VALUES ('Mercy Mirror',3+(49/60),10);
INSERT INTO songname(name,length,album_id) VALUES ('Trophy Hunter',5+(51/60),10);
INSERT INTO songname(name,length,album_id) VALUES ('Why Not Me',0+(34/60),11);
INSERT INTO songname(name,length,album_id) VALUES ('Shot in the Dark',5+(02/60),11);
INSERT INTO songname(name,length,album_id) VALUES ('In the Middle of the Night',5+(11/60),11);
INSERT INTO songname(name,length,album_id) VALUES ('Faster',4+(23/60),11);
INSERT INTO songname(name,length,album_id) VALUES ('Fire and Ice',3+(57/60),11);
INSERT INTO songname(name,length,album_id) VALUES ('Iron',5+(40/60),11);
INSERT INTO songname(name,length,album_id) VALUES ('Where Is the Edge',3+(59/60),11);
INSERT INTO songname(name,length,album_id) VALUES ('Sinéad',4+(23/60),11);
INSERT INTO songname(name,length,album_id) VALUES ('Lost',5+(14/60),11);
INSERT INTO songname(name,length,album_id) VALUES ('Murder',4+(16/60),11);
INSERT INTO songname(name,length,album_id) VALUES ('A Demon''s Fate',5+(30/60),11);
INSERT INTO songname(name,length,album_id) VALUES ('Stairway to the Skies',5+(32/60),11);
INSERT INTO songname(name,length,album_id) VALUES ('Restless',6+(08/60),12);
INSERT INTO songname(name,length,album_id) VALUES ('Enter',7+(15/60),12);
INSERT INTO songname(name,length,album_id) VALUES ('Pearls of Light',5+(15/60),12);
INSERT INTO songname(name,length,album_id) VALUES ('Deep Within',4+(30/60),12);
INSERT INTO songname(name,length,album_id) VALUES ('Gatekeeper',6+(43/60),12);
INSERT INTO songname(name,length,album_id) VALUES ('Grace',5+(10/60),12);
INSERT INTO songname(name,length,album_id) VALUES ('Blooded',3+(38/60),12);
INSERT INTO songname(name,length,album_id) VALUES ('Candles',7+(07/60),12);
INSERT INTO songname(name,length,album_id) VALUES ('Scavenger of Human Sorrow',6+(56/60),13);
INSERT INTO songname(name,length,album_id) VALUES ('Bite the Pain',4+(29/60),13);
INSERT INTO songname(name,length,album_id) VALUES ('Spirit Crusher',6+(47/60),13);
INSERT INTO songname(name,length,album_id) VALUES ('Story to Tell',6+(34/60),13);
INSERT INTO songname(name,length,album_id) VALUES ('Flesh and the Power It Holds',8+(26/60),13);
INSERT INTO songname(name,length,album_id) VALUES ('Voice of the Soul',3+(43/60),13);
INSERT INTO songname(name,length,album_id) VALUES ('To Forgive Is to Suffer',5+(55/60),13);
INSERT INTO songname(name,length,album_id) VALUES ('A Moment of Clarity',7+(25/60),13);
INSERT INTO songname(name,length,album_id) VALUES ('Painkiller',6+(02/60),13);
INSERT INTO songname(name,length,album_id) VALUES ('Overactive Imagination',3+(30/60),14);
INSERT INTO songname(name,length,album_id) VALUES ('In Human Form',3+(57/60),14);
INSERT INTO songname(name,length,album_id) VALUES ('Jealousy',3+(41/60),14);
INSERT INTO songname(name,length,album_id) VALUES ('Trapped in a Corner',4+(14/60),14);
INSERT INTO songname(name,length,album_id) VALUES ('Nothing Is Everything',3+(19/60),14);
INSERT INTO songname(name,length,album_id) VALUES ('Mentally Blind',4+(49/60),14);
INSERT INTO songname(name,length,album_id) VALUES ('Individual Thought Patterns',4+(01/60),14);
INSERT INTO songname(name,length,album_id) VALUES ('Destiny',4+(06/60),14);
INSERT INTO songname(name,length,album_id) VALUES ('Out of Touch',4+(22/60),14);
INSERT INTO songname(name,length,album_id) VALUES ('The Philosopher',4+(13/60),14);
INSERT INTO songname(name,length,album_id) VALUES ('Flattening of Emotions',4+(28/60),15);
INSERT INTO songname(name,length,album_id) VALUES ('Suicide Machine',4+(23/60),15);
INSERT INTO songname(name,length,album_id) VALUES ('Together as One',4+(10/60),15);
INSERT INTO songname(name,length,album_id) VALUES ('Secret Face',4+(39/60),15);
INSERT INTO songname(name,length,album_id) VALUES ('Lack of Comprehension',3+(43/60),15);
INSERT INTO songname(name,length,album_id) VALUES ('See Through Dreams',4+(39/60),15);
INSERT INTO songname(name,length,album_id) VALUES ('Cosmic Sea',4+(27/60),15);
INSERT INTO songname(name,length,album_id) VALUES ('Vacant Planets',3+(52/60),15);
INSERT INTO songname(name,length,album_id) VALUES ('Stora Rövardansen',1+(33/60),16);
INSERT INTO songname(name,length,album_id) VALUES ('King',3+(44/60),16);
INSERT INTO songname(name,length,album_id) VALUES ('The Mission',4+(18/60),16);
INSERT INTO songname(name,length,album_id) VALUES ('Lifetime',4+(49/60),16);
INSERT INTO songname(name,length,album_id) VALUES ('Rain',4+(03/60),16);
INSERT INTO songname(name,length,album_id) VALUES ('She''s Alive',4+(12/60),16);
INSERT INTO songname(name,length,album_id) VALUES ('I Stand Alone',4+(44/60),16);
INSERT INTO songname(name,length,album_id) VALUES ('Starlight',4+(40/60),16);
INSERT INTO songname(name,length,album_id) VALUES ('Battery',5+(13/60),16);
INSERT INTO songname(name,length,album_id) VALUES ('If I Die in Battle',4+(46/60),17);
INSERT INTO songname(name,length,album_id) VALUES ('The Seller of Souls',3+(24/60),17);
INSERT INTO songname(name,length,album_id) VALUES ('Primo Victoria',3+(44/60),17);
INSERT INTO songname(name,length,album_id) VALUES ('Dangers in My Head',4+(05/60),17);
INSERT INTO songname(name,length,album_id) VALUES ('Black Wings of Hate',4+(41/60),17);
INSERT INTO songname(name,length,album_id) VALUES ('Bed of Nails',3+(37/60),17);
INSERT INTO songname(name,length,album_id) VALUES ('Spelled in Waters',4+(26/60),17);
INSERT INTO songname(name,length,album_id) VALUES ('Neuer Wind',3+(21/60),17);
INSERT INTO songname(name,length,album_id) VALUES ('The Higher Flight',5+(00/60),17);
INSERT INTO songname(name,length,album_id) VALUES ('Master of the Wind',6+(09/60),17);
INSERT INTO songname(name,length,album_id) VALUES ('Lost Forever',4+(44/60),18);
INSERT INTO songname(name,length,album_id) VALUES ('To Sing a Metal Song',3+(24/60),18);
INSERT INTO songname(name,length,album_id) VALUES ('One to Ten',4+(06/60),18);
INSERT INTO songname(name,length,album_id) VALUES ('I Am Human',3+(56/60),18);
INSERT INTO songname(name,length,album_id) VALUES ('My Voice',5+(30/60),18);
INSERT INTO songname(name,length,album_id) VALUES ('Rebellion',4+(05/60),18);
INSERT INTO songname(name,length,album_id) VALUES ('Last Night of the Kings',3+(52/60),18);
INSERT INTO songname(name,length,album_id) VALUES ('Tribe of Force',3+(17/60),18);
INSERT INTO songname(name,length,album_id) VALUES ('Water Fire Heaven Earth',3+(32/60),18);
INSERT INTO songname(name,length,album_id) VALUES ('Master of Puppets',8+(23/60),18);
INSERT INTO songname(name,length,album_id) VALUES ('Magic Taborea',3+(22/60),18);
INSERT INTO songname(name,length,album_id) VALUES ('Hearted',4+(00/60),18);
INSERT INTO songname(name,length,album_id) VALUES ('Frodo''s Dream',3+(06/60),18);

--INSERT DATA----------------------------------------------------

INSERT INTO bands(name) VALUES ('Seventh Wonder');
INSERT INTO bands(name) VALUES ('Metallica');
INSERT INTO bands(name) VALUES ('The Ocean');
INSERT INTO bands(name) VALUES ('Within Temptation');
INSERT INTO bands(name) VALUES ('Death');
INSERT INTO bands(name) VALUES ('Van Canto');
INSERT INTO bands(name) VALUES ('Dream Theater');

--Querries-------------------------------------------------------


SELECT * FROM bands;
SELECT * FROM albums;
SELECT * FROM songname;

--1. Select only the Names of all the Bands
SELECT name 
FROM bands;


--2. Select the Oldest Album
SELECT name, release_year 
FROM albums
WHERE name IS NOT NULL AND release_year IN
(SELECT MIN(release_year) 
FROM albums); 



 --3. Get all Bands that have Albums.

 SELECT b.name AS bandname, a.name AS albumname
 FROM bands AS b
 INNER JOIN albums AS a
 ON b.id = a.band_id;

 SELECT b.name AS bandname
 FROM bands AS b
 INNER JOIN albums AS a
 ON b.id = a.band_id
 WHERE a.release_year IS NOT NULL
 GROUP BY b.name;

--4. Get all Bands that have No Albums

 SELECT b.name AS bandname
 FROM bands AS b
 INNER JOIN albums AS a
 ON b.id = a.band_id
 WHERE a.release_year IS NULL
 GROUP BY b.name;


--5. Get the Longest Album
SELECT a.name AS Album, a.release_year AS Year,(s.length) AS LongestDuration
FROM albums AS a
INNER JOIN songname AS s
ON a.id= s.album_id
WHERE s.length = (SELECT MAX(length) FROM songname);
 

--6. Update the Release Year of the Album with no Release Year
UPDATE albums
SET release_year = 2021
WHERE release_year IS NULL;


--7.  Insert a record for your favorite Band and one of their Albums

INSERT INTO bands (name)
VALUES('Backstreet Boys');

INSERT INTO albums(name, release_year, band_id)
VALUES('love', 1999, 8);


--8. Delete the Band and Album you added in #7

DELETE FROM bands
WHERE id=8;

DELETE FROM albums
WHERE band_id=8;

--9. Get the Average Length of all Songs
SELECT AVG(length) AS AverageSongDuration
FROM songname;


--10 Select the longest Song off each Album
SELECT a.name, a.release_year, MAX(s.length)
FROM albums AS a
INNER JOIN songname AS s
ON a.id = s.album_id
GROUP BY a.name, a.release_year;

---IMP Note: When using GROUP BY , 
-- see the selcect list and add all the items. you can exclude the aggregate items.--



--11. Get the number of Songs for each Band.
SELECT b.name As Band, COUNT(*) AS NoOfSongs
FROM bands AS b
INNER JOIN albums AS a
ON b.id = a.band_id
INNER JOIN songname AS s
ON a.id = s.album_id
GROUP BY b.name;





