-- List Manager example: Real Estate Listings
-- Run this file in phpMyAdmin (or the mysql client) on your Joomla database, then import the
-- configuration file in Components > List Manager > Import. The table name has no Joomla prefix.
DROP TABLE IF EXISTS `lm_listings`;
CREATE TABLE `lm_listings` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `neighbourhood` varchar(60) NOT NULL,
  `city` varchar(40) NOT NULL,
  `type` varchar(20) NOT NULL,
  `operation` varchar(10) NOT NULL,
  `price` int(11) NOT NULL DEFAULT 0,
  `price_label` varchar(24) NOT NULL,
  `bedrooms` tinyint(4) NOT NULL DEFAULT 1,
  `bathrooms` tinyint(4) NOT NULL DEFAULT 1,
  `area_m2` smallint(6) NOT NULL DEFAULT 0,
  `year_built` smallint(6) NOT NULL,
  `highlight` varchar(12) NOT NULL DEFAULT '',
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lm_listings` (`title`, `neighbourhood`, `city`, `type`, `operation`, `price`, `price_label`, `bedrooms`, `bathrooms`, `area_m2`, `year_built`, `highlight`, `description`) VALUES
('Sunny corner apartment with terrace', 'Eixample', 'Barcelona', 'Apartment', 'Sale', 485000, '€485,000', 3, 2, 112, 1972, 'Featured', 'Bright corner flat on the fifth floor with a 12 m² terrace, original tiled floors and a fully renovated kitchen. Lift, double glazing and a five-minute walk to the metro.'),
('Modern loft in a former printing works', 'Poblenou', 'Barcelona', 'Loft', 'Rent', 2350, '€2,350/mo', 1, 1, 95, 1930, 'Featured', 'Double-height loft with exposed brick, steel windows and a mezzanine bedroom. Fibre internet, air conditioning and a shared roof terrace.'),
('Family house with garden and pool', 'Sant Cugat', 'Barcelona', 'House', 'Sale', 895000, '€895,000', 5, 3, 260, 2004, '', 'Detached house on a 600 m² plot with a heated pool, a double garage and a home office. Quiet residential street near two international schools.'),
('Compact studio near the university', 'Moncloa', 'Madrid', 'Studio', 'Rent', 890, '€890/mo', 1, 1, 34, 1998, '', 'Furnished open-plan studio with a sleeping alcove and a separate bathroom. Bills not included. Suitable for one person, minimum one-year contract.'),
('Renovated apartment facing the park', 'Retiro', 'Madrid', 'Apartment', 'Sale', 640000, '€640,000', 3, 2, 121, 1965, 'Featured', 'Elegant apartment facing El Retiro with high ceilings, a new bathroom suite and central heating. Concierge service and a storage room included.'),
('Design villa with sea views', 'Pedregalejo', 'Málaga', 'Villa', 'Sale', 1250000, '€1,250,000', 4, 4, 310, 2016, 'Featured', 'Contemporary villa on three levels with floor-to-ceiling glass, an infinity pool and a rooftop lounge. Smart-home system and solar panels.'),
('Two-bedroom flat close to the beach', 'Malvarrosa', 'Valencia', 'Apartment', 'Rent', 1150, '€1,150/mo', 2, 1, 78, 1985, '', 'Unfurnished flat 300 metres from the beach, with a balcony, a lift and a community pool. Available from the first of next month.'),
('Historic townhouse with courtyard', 'Triana', 'Sevilla', 'House', 'Sale', 540000, '€540,000', 4, 2, 190, 1920, '', 'Traditional Andalusian townhouse arranged around a tiled patio, with a roof terrace over the Guadalquivir. Needs light refurbishment.'),
('Industrial loft with high ceilings', 'Ruzafa', 'Valencia', 'Loft', 'Sale', 365000, '€365,000', 2, 1, 105, 1955, '', 'Former workshop converted into a loft with 4.5 m ceilings, polished concrete floors and skylights. Quiet inner-courtyard location.'),
('Bright studio in the old town', 'El Carmen', 'Valencia', 'Studio', 'Rent', 780, '€780/mo', 1, 1, 38, 1900, '', 'Fully furnished studio on a pedestrian street, with a high ceiling, a mezzanine bed and a new kitchenette. Ideal for professional stays.'),
('Luxury penthouse with private pool', 'Salamanca', 'Madrid', 'Apartment', 'Sale', 1490000, '€1,490,000', 4, 3, 220, 2019, 'Featured', 'Top-floor penthouse with a 90 m² terrace and plunge pool, a wine cellar, two parking spaces and 24-hour security.'),
('Family home near the international school', 'La Moraleja', 'Madrid', 'House', 'Rent', 4200, '€4,200/mo', 5, 4, 340, 2001, '', 'Spacious detached house with a landscaped garden, a fitted kitchen, a games room and staff quarters. Long lease preferred.'),
('Ground-floor apartment with patio', 'Gràcia', 'Barcelona', 'Apartment', 'Rent', 1650, '€1,650/mo', 2, 1, 68, 1960, '', 'Charming ground-floor flat with a private 20 m² patio, wooden beams and a new bathroom. Pets considered.'),
('Seafront villa with guest house', 'Golden Mile', 'Málaga', 'Villa', 'Rent', 6800, '€6,800/mo', 5, 5, 420, 2010, 'Featured', 'Beachfront villa with a separate guest house, a 15 m pool and a private path to the sand. Fully furnished, weekly cleaning available.'),
('Modern apartment in the business district', 'Abando', 'Bilbao', 'Apartment', 'Sale', 395000, '€395,000', 2, 2, 89, 2012, '', 'Well-lit apartment on the ninth floor with a garage space, a wardrobe-lined hall and views of the estuary.'),
('Cosy studio with balcony', 'Casco Viejo', 'Bilbao', 'Studio', 'Sale', 158000, '€158,000', 1, 1, 41, 1978, '', 'Renovated studio a few steps from the Ribera market, with a south-facing balcony and parquet floors. A good first purchase or investment.'),
('Country house with orange trees', 'Alfafar', 'Valencia', 'House', 'Sale', 289000, '€289,000', 3, 2, 145, 1990, '', 'Village house with an orchard, a summer kitchen and an outdoor dining area. Twenty minutes by tram to the city centre.'),
('Stylish loft above a gallery', 'Lavapiés', 'Madrid', 'Loft', 'Rent', 1980, '€1,980/mo', 1, 1, 88, 1948, 'Featured', 'Open-plan loft with a spiral staircase to a sleeping platform, oak floors and big factory windows. Includes a bicycle store.'),
('Family apartment with parking', 'Nervión', 'Sevilla', 'Apartment', 'Rent', 1050, '€1,050/mo', 3, 2, 105, 1994, '', 'Three-bedroom apartment in a gated community with a pool and a padel court. Parking and storage room included.'),
('Contemporary house with roof terrace', 'Sarrià', 'Barcelona', 'House', 'Sale', 1180000, '€1,180,000', 4, 3, 235, 2008, 'Featured', 'Architect-designed house with a courtyard, a large living-dining room and a roof terrace facing Collserola.'),
('Small studio next to the metro', 'Los Remedios', 'Sevilla', 'Studio', 'Rent', 620, '€620/mo', 1, 1, 30, 2003, '', 'Efficient studio with a fitted wardrobe, a modern kitchenette and air conditioning. Two minutes from the metro station.'),
('Hillside villa with panoramic views', 'Churriana', 'Málaga', 'Villa', 'Sale', 745000, '€745,000', 4, 3, 275, 2007, '', 'South-facing villa with a pool, a barbecue area and mountain and sea views. Underfloor heating and a double garage.'),
('Waterfront apartment with two terraces', 'Getxo', 'Bilbao', 'Apartment', 'Rent', 1480, '€1,480/mo', 2, 2, 92, 2015, '', 'Modern apartment with two terraces facing the marina, a shared gym and a garage space. Unfurnished.'),
('Bright loft in a converted school', 'Delicias', 'Madrid', 'Loft', 'Sale', 425000, '€425,000', 2, 2, 118, 2009, '', 'Airy loft with a mezzanine study and a large kitchen island. Community roof garden and a concierge.');
