-- List Manager example: Product Catalog
-- Run this file in phpMyAdmin (or the mysql client) on your Joomla database, then import the
-- configuration file in Components > List Manager > Import. The table name has no Joomla prefix.
DROP TABLE IF EXISTS `lm_products`;
CREATE TABLE `lm_products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `old_price` decimal(8,2) NOT NULL DEFAULT 0.00,
  `discount_label` varchar(8) NOT NULL DEFAULT '',
  `stock` varchar(8) NOT NULL DEFAULT 'in',
  `rating` decimal(2,1) NOT NULL DEFAULT 4.0,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lm_products` (`name`, `sku`, `category`, `price`, `old_price`, `discount_label`, `stock`, `rating`, `description`) VALUES
('Aurora Wireless Headphones', 'AU-1001', 'Audio', 149.0, 189.0, '-21%', 'in', 4.6, 'Over-ear Bluetooth headphones with 40 hours of battery, soft memory-foam pads and a foldable frame.'),
('Pulse Bluetooth Speaker', 'AU-1002', 'Audio', 59.9, 0, '', 'in', 4.4, 'A pocket-sized waterproof speaker with punchy bass and 12 hours of playtime.'),
('Nimbus Noise-Cancelling Earbuds', 'AU-1003', 'Audio', 119.0, 149.0, '-20%', 'low', 4.5, 'True wireless earbuds with adaptive noise cancelling and a wireless charging case.'),
('Studio Desktop Microphone', 'AU-1004', 'Audio', 89.0, 0, '', 'in', 4.7, 'USB condenser microphone with a cardioid pattern, mute button and a sturdy desk stand.'),
('Echo Soundbar Mini', 'AU-1005', 'Audio', 129.0, 159.0, '-19%', 'out', 4.2, 'Compact 2.1 soundbar with HDMI ARC and a wireless subwoofer for small living rooms.'),
('Vinyl Turntable Classic', 'AU-1006', 'Audio', 199.0, 0, '', 'low', 4.3, 'Belt-drive turntable with a built-in preamp, dust cover and Bluetooth output.'),
('Ergo Standing Desk Frame', 'DK-2001', 'Desk', 349.0, 0, '', 'in', 4.8, 'Electric sit-stand frame with four memory presets and a quiet dual-motor lift.'),
('Ridge Mechanical Keyboard', 'DK-2002', 'Desk', 99.0, 119.0, '-17%', 'in', 4.6, 'Tenkeyless keyboard with hot-swappable tactile switches and a brushed aluminium top plate.'),
('Glide Wireless Mouse', 'DK-2003', 'Desk', 39.9, 0, '', 'in', 4.4, 'Ergonomic silent-click mouse with three device slots and a USB-C rechargeable battery.'),
('Vista Monitor Arm', 'DK-2004', 'Desk', 79.0, 0, '', 'low', 4.5, 'Single gas-spring arm for screens up to 32 inches, with cable channels and a clamp mount.'),
('Slate Desk Mat XL', 'DK-2005', 'Desk', 24.9, 29.9, '-17%', 'in', 4.3, 'Extra-large felt and rubber mat, 90 by 40 cm, that protects the desk and quiets the keyboard.'),
('Dock Pro 10-in-1 USB-C Hub', 'DK-2006', 'Desk', 69.0, 0, '', 'out', 4.1, 'One cable to connect two monitors, Ethernet, SD cards and 100 W charging.'),
('Halo Desk Lamp', 'LT-3001', 'Lighting', 54.0, 0, '', 'in', 4.6, 'Dimmable LED lamp with adjustable colour temperature and a wireless charging base.'),
('Aurora LED Strip 5 m', 'LT-3002', 'Lighting', 29.9, 39.9, '-25%', 'in', 4.2, 'Colour-changing adhesive strip with app control and music sync.'),
('Glow Bedside Lamp', 'LT-3003', 'Lighting', 42.0, 0, '', 'low', 4.4, 'Touch-dimmable ceramic lamp with a warm, low-glare light for reading.'),
('Beacon Smart Bulb 4-pack', 'LT-3004', 'Lighting', 34.9, 44.9, '-22%', 'in', 4.5, 'Four E27 Wi-Fi bulbs with scenes, schedules and voice assistant support.'),
('Arc Floor Lamp', 'LT-3005', 'Lighting', 139.0, 0, '', 'in', 4.7, 'Sculptural arched floor lamp in matt black with a marble base and a linen shade.'),
('Lantern Camping Light', 'LT-3006', 'Lighting', 27.5, 0, '', 'out', 4.3, 'Rechargeable LED lantern with a hanging hook, three modes and a 20-hour runtime.'),
('Voyager Cabin Suitcase', 'TR-4001', 'Travel', 159.0, 199.0, '-20%', 'in', 4.6, 'Hard-shell 38 L carry-on with a TSA lock, spinner wheels and an integrated USB port.'),
('Nomad Weekender Bag', 'TR-4002', 'Travel', 89.0, 0, '', 'in', 4.5, 'Water-resistant duffel with a shoe compartment and a trolley sleeve.'),
('Compass Packing Cubes Set', 'TR-4003', 'Travel', 24.9, 0, '', 'in', 4.7, 'Six lightweight cubes in three sizes that keep a suitcase neatly organised.'),
('Transit Backpack 25 L', 'TR-4004', 'Travel', 79.0, 99.0, '-20%', 'low', 4.4, 'Slim commuter backpack with a padded laptop sleeve and a hidden passport pocket.'),
('Dash Toiletry Organiser', 'TR-4005', 'Travel', 19.9, 0, '', 'in', 4.2, 'Hanging wash bag with a wipe-clean lining and a mirror pocket.'),
('Atlas Neck Pillow', 'TR-4006', 'Travel', 29.0, 39.0, '-26%', 'out', 4.1, 'Memory-foam neck pillow with a washable velvet cover and a snap closure.');
