-- List Manager example: Movie Watchlist
-- Run this file in phpMyAdmin (or the mysql client) on your Joomla database, then import the
-- configuration file in Components > List Manager > Import. The table name has no Joomla prefix.
DROP TABLE IF EXISTS `lm_movies`;
CREATE TABLE `lm_movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `director` varchar(120) NOT NULL,
  `year` smallint(6) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `runtime` smallint(6) NOT NULL DEFAULT 0,
  `rating` tinyint(4) NOT NULL DEFAULT 0,
  `watched` varchar(10) NOT NULL DEFAULT 'queued',
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lm_movies` (`title`, `director`, `year`, `genre`, `runtime`, `rating`, `watched`, `notes`) VALUES
('Parasite', 'Bong Joon-ho', 2019, 'Thriller', 132, 5, 'watched', 'A masterclass in tone: it starts as a sly comedy about two families and turns into something much darker. The staircase shots stay with you.'),
('The Grand Budapest Hotel', 'Wes Anderson', 2014, 'Comedy', 99, 4, 'watched', 'Pastel dollhouse sets, perfect deadpan and a surprisingly moving last act. Rewatch for the production design alone.'),
('Blade Runner 2049', 'Denis Villeneuve', 2017, 'Sci-Fi', 164, 4, 'watched', 'Slow, gorgeous and melancholy. Roger Deakins\' orange-haze Las Vegas is worth the runtime by itself.'),
('Spirited Away', 'Hayao Miyazaki', 2001, 'Animation', 125, 5, 'watched', 'A ten-year-old wanders into a bathhouse for spirits. Every frame is inventive, and it is never afraid to be quiet.'),
('Free Solo', 'Jimmy Chin, Elizabeth Chai Vasarhelyi', 2018, 'Documentary', 100, 5, 'watched', 'Alex Honnold climbs El Capitan without a rope. Nail-biting even when you know how it ends.'),
('Moonlight', 'Barry Jenkins', 2016, 'Drama', 111, 5, 'watched', 'Three chapters in one man\'s life, told with tenderness and very little dialogue. Beautifully shot and acted.'),
('Knives Out', 'Rian Johnson', 2019, 'Thriller', 130, 4, 'watched', 'A modern whodunit with a cast that is clearly having fun. Clever plotting and a great sweater.'),
('Arrival', 'Denis Villeneuve', 2016, 'Sci-Fi', 116, 5, 'watched', 'First contact as a puzzle about language and time. The ending reframes everything you just saw.'),
('Coco', 'Lee Unkrich', 2017, 'Animation', 105, 4, 'queued', 'Everyone says to bring tissues. On the list for a family evening at the weekend.'),
('Lady Bird', 'Greta Gerwig', 2017, 'Drama', 94, 4, 'watched', 'A funny, prickly coming-of-age story set in Sacramento. The mother-daughter scenes feel painfully real.'),
('Whiplash', 'Damien Chazelle', 2014, 'Drama', 106, 5, 'watched', 'A drummer and a terrifying teacher. The final ten minutes are among the tensest ever filmed.'),
('The Social Dilemma', 'Jeff Orlowski', 2020, 'Documentary', 94, 3, 'queued', 'Former tech insiders on how feeds are designed to hook us. Recommended by a colleague, a little one-sided.'),
('Ex Machina', 'Alex Garland', 2014, 'Sci-Fi', 108, 4, 'watched', 'A small cast, one house and a very good question about who is testing whom.'),
('Paddington 2', 'Paul King', 2017, 'Comedy', 103, 5, 'watched', 'Pure kindness on screen, with a villain played by Hugh Grant who steals every scene.'),
('Get Out', 'Jordan Peele', 2017, 'Thriller', 104, 4, 'queued', 'Horror with something to say, and often quoted. Still on the queue after two postponed nights.'),
('Spider-Man: Into the Spider-Verse', 'Bob Persichetti, Peter Ramsey, Rodney Rothman', 2018, 'Animation', 117, 5, 'watched', 'Comic-book panels in motion, a great soundtrack and Miles Morales at the centre. Looks like nothing else.'),
('Nomadland', 'Chloé Zhao', 2020, 'Drama', 108, 3, 'queued', 'A quiet portrait of people living on the road in the American West. Waiting for a slow Sunday.'),
('The Truman Show', 'Peter Weir', 1998, 'Comedy', 103, 4, 'watched', 'Jim Carrey in a TV show that is his whole life. Sharper about media now than when it came out.'),
('Interstellar', 'Christopher Nolan', 2014, 'Sci-Fi', 169, 4, 'watched', 'Big ideas, a huge organ score and one of the great docking scenes. Best seen on the largest screen you can find.'),
('My Octopus Teacher', 'Pippa Ehrlich, James Reed', 2020, 'Documentary', 85, 0, 'queued', 'A diver befriends an octopus in a South African kelp forest. Short, gentle, next on the list.'),
('Little Miss Sunshine', 'Jonathan Dayton, Valerie Faris', 2006, 'Comedy', 101, 4, 'watched', 'A dysfunctional family drives a yellow van to a beauty pageant. Warm, awkward and very funny.'),
('Prisoners', 'Denis Villeneuve', 2013, 'Thriller', 153, 0, 'queued', 'A father takes matters into his own hands after a kidnapping. Long and bleak, so it needs the right mood.'),
('Manchester by the Sea', 'Kenneth Lonergan', 2016, 'Drama', 137, 0, 'queued', 'Grief without easy answers. People warn that it is heavy; queued for a day with nothing else planned.'),
('Soul', 'Pete Docter', 2020, 'Animation', 100, 0, 'queued', 'A jazz pianist, a soul and the question of what makes a life. Queued for the next family movie night.');
