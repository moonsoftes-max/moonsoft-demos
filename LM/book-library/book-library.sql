-- List Manager example: Book Library
-- Run this file in phpMyAdmin (or the mysql client) on your Joomla database, then import the
-- configuration file in Components > List Manager > Import. The table name has no Joomla prefix.
DROP TABLE IF EXISTS `lm_books`;
CREATE TABLE `lm_books` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(160) NOT NULL,
  `author` varchar(120) NOT NULL,
  `genre` varchar(40) NOT NULL,
  `year` smallint(6) NOT NULL,
  `pages` smallint(6) NOT NULL,
  `rating` tinyint(4) NOT NULL DEFAULT 3,
  `status` varchar(12) NOT NULL DEFAULT 'available',
  `cover_color` varchar(9) NOT NULL DEFAULT '#334155',
  `summary` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lm_books` (`title`, `author`, `genre`, `year`, `pages`, `rating`, `status`, `cover_color`, `summary`) VALUES
('Pride and Prejudice', 'Jane Austen', 'Classic', 1813, 432, 5, 'available', '#7c3aed', 'A sparkling comedy of manners about Elizabeth Bennet and the proud Mr Darcy.'),
('Frankenstein', 'Mary Shelley', 'Science fiction', 1818, 280, 4, 'available', '#0891b2', 'A young scientist creates life and then abandons his creature.'),
('The Hound of the Baskervilles', 'Arthur Conan Doyle', 'Mystery', 1902, 256, 5, 'loan', '#334155', 'Sherlock Holmes investigates a spectral hound haunting Dartmoor.'),
('The Hobbit', 'J. R. R. Tolkien', 'Fantasy', 1937, 310, 5, 'available', '#db2777', 'Bilbo Baggins is swept into a quest to reclaim a dwarf kingdom.'),
('A Brief History of Time', 'Stephen Hawking', 'Non-fiction', 1988, 212, 4, 'available', '#059669', 'From the Big Bang to black holes, explained for the general reader.'),
('Treasure Island', 'Robert Louis Stevenson', 'Adventure', 1883, 292, 4, 'available', '#ea580c', 'Young Jim Hawkins, a map and Long John Silver.'),
('Jane Eyre', 'Charlotte Brontë', 'Classic', 1847, 500, 5, 'loan', '#7c3aed', 'An orphan becomes a governess and finds a secret at Thornfield Hall.'),
('The War of the Worlds', 'H. G. Wells', 'Science fiction', 1898, 192, 4, 'available', '#0891b2', 'Martians invade Victorian England.'),
('And Then There Were None', 'Agatha Christie', 'Mystery', 1939, 272, 5, 'available', '#334155', 'Ten strangers, an island and a rhyme that comes true.'),
('The Lion, the Witch and the Wardrobe', 'C. S. Lewis', 'Fantasy', 1950, 208, 4, 'available', '#db2777', 'Four children step through a wardrobe into Narnia.'),
('Sapiens', 'Yuval Noah Harari', 'Non-fiction', 2011, 464, 4, 'loan', '#059669', 'A brief history of humankind from the Stone Age to today.'),
('Around the World in Eighty Days', 'Jules Verne', 'Adventure', 1872, 240, 4, 'available', '#ea580c', 'Phileas Fogg bets he can circle the globe in 80 days.'),
('Wuthering Heights', 'Emily Brontë', 'Classic', 1847, 416, 4, 'available', '#7c3aed', 'A stormy love story on the Yorkshire moors.'),
('Dune', 'Frank Herbert', 'Science fiction', 1965, 612, 5, 'available', '#0891b2', 'Politics, prophecy and spice on the desert planet Arrakis.'),
('Murder on the Orient Express', 'Agatha Christie', 'Mystery', 1934, 256, 5, 'available', '#334155', 'Poirot solves a murder on a snowbound train.'),
('The Name of the Wind', 'Patrick Rothfuss', 'Fantasy', 2007, 662, 5, 'loan', '#db2777', 'The legend of Kvothe, told in his own words.'),
('Cosmos', 'Carl Sagan', 'Non-fiction', 1980, 396, 5, 'available', '#059669', 'A personal voyage through the universe.'),
('Kidnapped', 'Robert Louis Stevenson', 'Adventure', 1886, 288, 3, 'available', '#ea580c', 'David Balfour is betrayed and swept into the Highland uprising.'),
('Great Expectations', 'Charles Dickens', 'Classic', 1861, 544, 4, 'available', '#7c3aed', 'Pip\'s rise from village boy to gentleman.'),
('The Time Machine', 'H. G. Wells', 'Science fiction', 1895, 118, 4, 'available', '#0891b2', 'A traveller journeys to the year 802,701.'),
('The Big Sleep', 'Raymond Chandler', 'Mystery', 1939, 231, 4, 'loan', '#334155', 'Philip Marlowe takes a case for a dying general.'),
('A Wizard of Earthsea', 'Ursula K. Le Guin', 'Fantasy', 1968, 183, 5, 'available', '#db2777', 'A young mage releases a shadow he must hunt down.'),
('The Selfish Gene', 'Richard Dawkins', 'Non-fiction', 1976, 360, 4, 'available', '#059669', 'Evolution seen from the gene\'s point of view.'),
('King Solomon\'s Mines', 'H. Rider Haggard', 'Adventure', 1885, 320, 3, 'available', '#ea580c', 'Allan Quatermain searches for a lost treasure in Africa.');
