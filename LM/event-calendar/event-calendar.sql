-- List Manager example: Event Calendar
-- Run this file in phpMyAdmin (or the mysql client) on your Joomla database, then import the
-- configuration file in Components > List Manager > Import. The table name has no Joomla prefix.
DROP TABLE IF EXISTS `lm_events`;
CREATE TABLE `lm_events` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `type` varchar(20) NOT NULL,
  `event_date` date NOT NULL,
  `day` varchar(2) NOT NULL,
  `month_short` varchar(3) NOT NULL,
  `weekday` varchar(3) NOT NULL,
  `year` varchar(4) NOT NULL,
  `city` varchar(40) NOT NULL,
  `venue` varchar(80) NOT NULL,
  `price` smallint(6) NOT NULL DEFAULT 0,
  `capacity` smallint(6) NOT NULL DEFAULT 0,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lm_events` (`title`, `type`, `event_date`, `day`, `month_short`, `weekday`, `year`, `city`, `venue`, `price`, `capacity`, `description`) VALUES
('Open Source CMS Meetup', 'Meetup', '2026-10-22', '22', 'Oct', 'Thu', '2026', 'Madrid', 'Coworking La Nave', 0, 60, 'Lightning talks and pizza for developers and site builders working with Joomla.'),
('Christmas Choir Concert', 'Concert', '2026-12-04', '04', 'Dec', 'Fri', '2026', 'Valencia', 'Auditori Central', 20, 900, 'Three choirs perform carols and seasonal classics from around the world.'),
('Remote Work Meetup', 'Meetup', '2027-01-28', '28', 'Jan', 'Thu', '2027', 'Valencia', 'Cowork Ruzafa', 0, 50, 'Tips, tools and stories from distributed teams. Bring your own laptop stickers.'),
('Autumn Jazz Night', 'Concert', '2026-10-03', '03', 'Oct', 'Sat', '2026', 'Madrid', 'Sala Cobalto', 25, 400, 'Three quartets, one stage: an evening of modern jazz standards and new compositions.'),
('Product Design Conference', 'Conference', '2026-11-12', '12', 'Nov', 'Thu', '2026', 'Barcelona', 'Fira Nord', 240, 800, 'Designers and product managers share how they research, prototype and ship.'),
('Data and AI Conference', 'Conference', '2027-01-14', '14', 'Jan', 'Thu', '2027', 'Madrid', 'Palacio Ferial', 260, 1200, 'Practical sessions on analytics, machine learning and responsible AI in business.'),
('Cloud Native Conference', 'Conference', '2027-03-04', '04', 'Mar', 'Thu', '2027', 'Seville', 'Cartuja Centre', 210, 700, 'Two tracks on containers, platform engineering and observability.'),
('Halloween Street Festival', 'Festival', '2026-10-30', '30', 'Oct', 'Fri', '2026', 'Seville', 'Plaza del Museo', 0, 5000, 'Costume parade, street food and live bands across the old town.'),
('Wreath-Making Workshop', 'Workshop', '2026-12-12', '12', 'Dec', 'Sat', '2026', 'Madrid', 'Taller Verde', 38, 16, 'Learn to make a seasonal door wreath from fresh greenery. Materials included.'),
('Winter Lights Festival', 'Festival', '2027-02-06', '06', 'Feb', 'Sat', '2027', 'Bilbao', 'Riverside Promenade', 0, 4000, 'Light installations, food trucks and open-air music along the river.'),
('Sourdough and Baking Workshop', 'Workshop', '2026-10-10', '10', 'Oct', 'Sat', '2026', 'Barcelona', 'Casa Farinera', 45, 18, 'Bake two loaves from scratch with a professional baker and take one home.'),
('Python Users Meetup', 'Meetup', '2026-11-19', '19', 'Nov', 'Thu', '2026', 'Bilbao', 'Hub Ibaiondo', 0, 80, 'Two talks on data tooling followed by open discussion and networking.'),
('Flamenco Guitar Night', 'Concert', '2027-01-16', '16', 'Jan', 'Sat', '2027', 'Seville', 'Pena La Giralda', 22, 180, 'Two virtuoso guitarists and a singer in a classic tablao setting.'),
('Spring Carnival Parade', 'Festival', '2027-03-13', '13', 'Mar', 'Sat', '2027', 'Valencia', 'Old Town streets', 0, 8000, 'Floats, drummers and dancers wind through the historic centre.'),
('Indie Folk Evening', 'Concert', '2026-11-05', '05', 'Nov', 'Thu', '2026', 'Bilbao', 'Sala Ria', 18, 250, 'Acoustic sets from four emerging northern bands in an intimate venue.'),
('Startup Founders Breakfast', 'Meetup', '2026-12-15', '15', 'Dec', 'Tue', '2026', 'Barcelona', 'Cafe Bruc', 0, 40, 'Early-morning coffee and candid conversation between first-time founders.'),
('UX Research Workshop', 'Workshop', '2027-02-12', '12', 'Feb', 'Fri', '2027', 'Barcelona', 'Design Hub Poblenou', 95, 20, 'Plan and run your first usability test, with templates you can reuse.'),
('Web Performance Summit', 'Conference', '2026-10-17', '17', 'Oct', 'Sat', '2026', 'Valencia', 'Palau de Congressos', 190, 600, 'One day of talks on Core Web Vitals, caching and the real cost of JavaScript.'),
('Wine and Tapas Festival', 'Festival', '2026-11-28', '28', 'Nov', 'Sat', '2026', 'Seville', 'Riverside Gardens', 12, 1500, 'Forty regional wineries and tapas bars under one roof, with live flamenco.'),
('Photography Walk Workshop', 'Workshop', '2027-01-23', '23', 'Jan', 'Sat', '2027', 'Bilbao', 'Casco Viejo', 30, 12, 'A three-hour guided walk on composition, light and street portraits.'),
('Women in Tech Meetup', 'Meetup', '2027-03-25', '25', 'Mar', 'Thu', '2027', 'Madrid', 'Campus Norte', 0, 120, 'Career stories, mentoring corners and a panel on leading engineering teams.'),
('Watercolour for Beginners', 'Workshop', '2026-11-07', '07', 'Nov', 'Sat', '2026', 'Valencia', 'Estudio Turia', 35, 14, 'A relaxed morning of colour mixing, washes and painting a small landscape.'),
('New Year\'s Eve Gala', 'Festival', '2026-12-31', '31', 'Dec', 'Thu', '2026', 'Madrid', 'Plaza Mayor Stage', 35, 2000, 'Live orchestra, a DJ after midnight and fireworks over the square.'),
('Symphony Orchestra Gala', 'Concert', '2027-02-20', '20', 'Feb', 'Sat', '2027', 'Barcelona', 'Gran Sala', 45, 1500, 'The city orchestra plays Dvorak and Ravel under a guest conductor.');
