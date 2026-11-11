-- List Manager example: Inventory Stock Levels
-- Run this file in phpMyAdmin (or the mysql client) on your Joomla database, then import the
-- configuration file in Components > List Manager > Import. The table name has no Joomla prefix.
DROP TABLE IF EXISTS `lm_inventory`;
CREATE TABLE `lm_inventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sku` varchar(12) NOT NULL,
  `item` varchar(120) NOT NULL,
  `warehouse` varchar(20) NOT NULL,
  `category` varchar(20) NOT NULL,
  `on_hand` int(11) NOT NULL DEFAULT 0,
  `reorder_level` int(11) NOT NULL DEFAULT 0,
  `unit_cost` decimal(10,2) NOT NULL DEFAULT 0.00,
  `stock_value` decimal(12,2) NOT NULL DEFAULT 0.00,
  `supplier` varchar(80) NOT NULL DEFAULT '',
  `last_counted` date DEFAULT NULL,
  `needs_reorder` tinyint(1) NOT NULL DEFAULT 0,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lm_inventory` (`sku`, `item`, `warehouse`, `category`, `on_hand`, `reorder_level`, `unit_cost`, `stock_value`, `supplier`, `last_counted`, `needs_reorder`) VALUES
('EL-1001', 'USB-C charging cable 1 m', 'Madrid', 'Electronics', 420, 150, 3.9, 1638.0, 'Volta Components', '2026-09-14', 0),
('EL-1002', 'Wireless mouse', 'Madrid', 'Electronics', 64, 80, 11.5, 736.0, 'Volta Components', '2026-09-14', 1),
('EL-1003', '27-inch monitor', 'Rotterdam', 'Electronics', 28, 20, 149.0, 4172.0, 'Brightview Displays', '2026-09-08', 0),
('EL-1004', 'Mechanical keyboard', 'Dallas', 'Electronics', 12, 25, 42.75, 513.0, 'Keystone Peripherals', '2026-09-10', 1),
('EL-1005', 'Webcam 1080p', 'Rotterdam', 'Electronics', 75, 40, 24.6, 1845.0, 'Brightview Displays', '2026-09-08', 0),
('EL-1006', 'Portable power bank 10,000 mAh', 'Dallas', 'Electronics', 210, 100, 14.2, 2982.0, 'Volta Components', '2026-09-11', 0),
('OF-2001', 'A4 copy paper, 500 sheets', 'Madrid', 'Office', 950, 400, 4.1, 3895.0, 'Papelera Ibérica', '2026-09-15', 0),
('OF-2002', 'Ballpoint pens, box of 50', 'Madrid', 'Office', 38, 60, 8.9, 338.2, 'Papelera Ibérica', '2026-09-15', 1),
('OF-2003', 'Ring binder A4', 'Rotterdam', 'Office', 320, 120, 1.35, 432.0, 'Nordic Stationery', '2026-09-09', 0),
('OF-2004', 'Sticky notes, pack of 12', 'Dallas', 'Office', 145, 90, 5.25, 761.25, 'Prairie Office Supply', '2026-09-12', 0),
('OF-2005', 'Whiteboard markers, set of 4', 'Rotterdam', 'Office', 22, 50, 3.4, 74.8, 'Nordic Stationery', '2026-09-09', 1),
('OF-2006', 'Desk organiser', 'Dallas', 'Office', 58, 30, 9.8, 568.4, 'Prairie Office Supply', '2026-09-12', 0),
('TL-3001', 'Cordless drill 18 V', 'Dallas', 'Tools', 26, 15, 79.9, 2077.4, 'Forgemark Tools', '2026-09-05', 0),
('TL-3002', 'Screwdriver set, 32 pieces', 'Madrid', 'Tools', 47, 30, 18.5, 869.5, 'Herramientas del Sur', '2026-09-03', 0),
('TL-3003', 'Tape measure 5 m', 'Rotterdam', 'Tools', 12, 40, 4.75, 57.0, 'Forgemark Tools', '2026-09-02', 1),
('TL-3004', 'Adjustable spanner 250 mm', 'Madrid', 'Tools', 88, 35, 12.3, 1082.4, 'Herramientas del Sur', '2026-09-03', 0),
('TL-3005', 'Laser level', 'Dallas', 'Tools', 9, 10, 64.0, 576.0, 'Forgemark Tools', '2026-09-05', 1),
('PK-4001', 'Cardboard box 40x30x20 cm', 'Rotterdam', 'Packaging', 1800, 800, 0.62, 1116.0, 'Kartonfabriek Van Dijk', '2026-09-16', 0),
('PK-4002', 'Bubble wrap roll 50 m', 'Madrid', 'Packaging', 34, 25, 16.8, 571.2, 'Embalajes Levante', '2026-09-16', 0),
('PK-4003', 'Packing tape, 6 rolls', 'Dallas', 'Packaging', 260, 120, 6.4, 1664.0, 'Lone Star Packaging', '2026-09-13', 0),
('PK-4004', 'Padded mailer bags, 100 pack', 'Rotterdam', 'Packaging', 41, 45, 21.9, 897.9, 'Kartonfabriek Van Dijk', '2026-09-16', 1),
('PK-4005', 'Pallet stretch film', 'Dallas', 'Packaging', 72, 30, 13.75, 990.0, 'Lone Star Packaging', '2026-09-13', 0),
('SF-5001', 'Safety helmet', 'Madrid', 'Safety', 55, 40, 12.9, 709.5, 'ProtecSur', '2026-09-06', 0),
('SF-5002', 'Work gloves, pair', 'Rotterdam', 'Safety', 18, 100, 3.85, 69.3, 'Veiligheid Direct', '2026-09-07', 1),
('SF-5003', 'Safety glasses', 'Dallas', 'Safety', 240, 80, 2.95, 708.0, 'Guardline Safety', '2026-09-10', 0);
INSERT INTO `lm_inventory` (`sku`, `item`, `warehouse`, `category`, `on_hand`, `reorder_level`, `unit_cost`, `stock_value`, `supplier`, `last_counted`, `needs_reorder`) VALUES
('SF-5004', 'High-visibility vest', 'Madrid', 'Safety', 130, 60, 5.6, 728.0, 'ProtecSur', '2026-09-06', 0),
('SF-5005', 'First-aid kit, 50 person', 'Rotterdam', 'Safety', 15, 12, 34.5, 517.5, 'Veiligheid Direct', '2026-09-07', 0),
('SF-5006', 'Ear defenders', 'Dallas', 'Safety', 33, 35, 9.2, 303.6, 'Guardline Safety', '2026-09-10', 1),
('EL-1007', 'Label printer', 'Madrid', 'Electronics', 14, 8, 118.0, 1652.0, 'Keystone Peripherals', '2026-09-14', 0),
('OF-2007', 'Laminating pouches A4, 100', 'Rotterdam', 'Office', 76, 30, 10.4, 790.4, 'Nordic Stationery', '2026-09-09', 0);
