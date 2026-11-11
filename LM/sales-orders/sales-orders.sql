-- List Manager example: Sales Orders
-- Run this file in phpMyAdmin (or the mysql client) on your Joomla database, then import the
-- configuration file in Components > List Manager > Import. The table name has no Joomla prefix.
DROP TABLE IF EXISTS `lm_orders`;
CREATE TABLE `lm_orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_no` varchar(20) NOT NULL,
  `customer` varchar(80) NOT NULL,
  `country` varchar(30) NOT NULL,
  `order_date` date NOT NULL,
  `items` smallint(6) NOT NULL DEFAULT 1,
  `subtotal` decimal(10,2) NOT NULL DEFAULT 0.00,
  `shipping` decimal(8,2) NOT NULL DEFAULT 0.00,
  `total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `payment` varchar(12) NOT NULL DEFAULT 'Card',
  `status` varchar(12) NOT NULL DEFAULT 'Processing',
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lm_orders` (`order_no`, `customer`, `country`, `order_date`, `items`, `subtotal`, `shipping`, `total`, `payment`, `status`, `notes`) VALUES
('SO-26-1001', 'Casa Marina Hotels', 'Spain', '2026-01-07', 12, 1840.0, 0.0, 1840.0, 'Transfer', 'Delivered', 'Framed prints for the lobby refurbishment.'),
('SO-26-1002', 'Nordlys Outdoor AB', 'Sweden', '2026-01-12', 6, 612.5, 0.0, 612.5, 'Card', 'Delivered', ''),
('SO-26-1003', 'Atelier Lumière', 'France', '2026-01-19', 3, 289.9, 14.9, 304.8, 'PayPal', 'Delivered', 'Gift wrapped.'),
('SO-26-1004', 'Brandt & Söhne GmbH', 'Germany', '2026-01-26', 20, 3120.0, 0.0, 3120.0, 'Transfer', 'Delivered', 'Customer purchase order 4471-B.'),
('SO-26-1005', 'Harbour Books Ltd', 'United Kingdom', '2026-02-02', 8, 436.8, 19.9, 456.7, 'Card', 'Delivered', ''),
('SO-26-1006', 'Studio Verde', 'Italy', '2026-02-09', 2, 158.0, 12.5, 170.5, 'PayPal', 'Returned', 'Wrong colour. Refund issued on 20 February.'),
('SO-26-1007', 'Vinhos do Douro Lda', 'Portugal', '2026-02-16', 15, 1275.0, 0.0, 1275.0, 'Transfer', 'Delivered', 'Pallet delivery, unloading at the rear.'),
('SO-26-1008', 'De Molen Café', 'Netherlands', '2026-02-23', 5, 372.25, 16.9, 389.15, 'Card', 'Delivered', ''),
('SO-26-1009', 'Casa Marina Hotels', 'Spain', '2026-03-02', 6, 924.0, 0.0, 924.0, 'Transfer', 'Delivered', 'Re-order for the second hotel.'),
('SO-26-1010', 'Nordlys Outdoor AB', 'Sweden', '2026-03-09', 10, 1045.0, 0.0, 1045.0, 'Card', 'Delivered', ''),
('SO-26-1011', 'Maison Belvédère', 'France', '2026-03-16', 4, 615.4, 0.0, 615.4, 'Card', 'Delivered', 'Deliver to reception before 5 pm.'),
('SO-26-1012', 'Kensington Home Ltd', 'United Kingdom', '2026-03-23', 9, 782.1, 0.0, 782.1, 'PayPal', 'Delivered', ''),
('SO-26-1013', 'Brandt & Söhne GmbH', 'Germany', '2026-03-30', 14, 2210.0, 0.0, 2210.0, 'Transfer', 'Delivered', 'Split into two deliveries.'),
('SO-26-1014', 'Trattoria Bella', 'Italy', '2026-04-06', 3, 214.5, 12.5, 227.0, 'Card', 'Returned', 'Damaged in transit. Replacement sent.'),
('SO-26-1015', 'Livraria Central', 'Portugal', '2026-04-13', 7, 498.0, 11.9, 509.9, 'PayPal', 'Delivered', ''),
('SO-26-1016', 'Kaffeehuis Amsterdam', 'Netherlands', '2026-04-20', 11, 867.9, 0.0, 867.9, 'Card', 'Delivered', ''),
('SO-26-1017', 'Atelier Lumière', 'France', '2026-04-27', 5, 421.0, 14.9, 435.9, 'PayPal', 'Delivered', ''),
('SO-26-1018', 'Casa Marina Hotels', 'Spain', '2026-05-04', 18, 2760.0, 0.0, 2760.0, 'Transfer', 'Delivered', 'Invoice to head office in Málaga.'),
('SO-26-1019', 'Harbour Books Ltd', 'United Kingdom', '2026-05-11', 12, 803.4, 0.0, 803.4, 'Card', 'Delivered', ''),
('SO-26-1020', 'Björk Design Studio', 'Sweden', '2026-05-18', 4, 356.0, 24.5, 380.5, 'Card', 'Delivered', ''),
('SO-26-1021', 'Studio Verde', 'Italy', '2026-05-26', 6, 512.75, 0.0, 512.75, 'Transfer', 'Delivered', ''),
('SO-26-1022', 'Brandt & Söhne GmbH', 'Germany', '2026-06-02', 25, 3985.0, 0.0, 3985.0, 'Transfer', 'Delivered', 'Largest order of the first half-year.'),
('SO-26-1023', 'Vinhos do Douro Lda', 'Portugal', '2026-06-09', 9, 792.0, 0.0, 792.0, 'Transfer', 'Delivered', ''),
('SO-26-1024', 'Maison Belvédère', 'France', '2026-06-16', 2, 176.2, 14.9, 191.1, 'PayPal', 'Returned', 'Customer changed their mind.'),
('SO-26-1025', 'De Molen Café', 'Netherlands', '2026-06-23', 6, 447.6, 16.9, 464.5, 'Card', 'Delivered', '');
INSERT INTO `lm_orders` (`order_no`, `customer`, `country`, `order_date`, `items`, `subtotal`, `shipping`, `total`, `payment`, `status`, `notes`) VALUES
('SO-26-1026', 'Kensington Home Ltd', 'United Kingdom', '2026-07-01', 14, 1189.3, 0.0, 1189.3, 'Card', 'Delivered', 'Summer catalogue selection.'),
('SO-26-1027', 'Nordlys Outdoor AB', 'Sweden', '2026-07-08', 8, 826.0, 0.0, 826.0, 'Card', 'Delivered', ''),
('SO-26-1028', 'Casa Marina Hotels', 'Spain', '2026-07-15', 9, 1330.0, 0.0, 1330.0, 'Transfer', 'Delivered', ''),
('SO-26-1029', 'Trattoria Bella', 'Italy', '2026-07-22', 5, 388.9, 12.5, 401.4, 'PayPal', 'Delivered', ''),
('SO-26-1030', 'Livraria Central', 'Portugal', '2026-08-03', 4, 276.0, 11.9, 287.9, 'Card', 'Delivered', ''),
('SO-26-1031', 'Atelier Lumière', 'France', '2026-08-12', 7, 634.3, 0.0, 634.3, 'Card', 'Delivered', 'Includes two sample sets.'),
('SO-26-1032', 'Brandt & Söhne GmbH', 'Germany', '2026-08-19', 16, 2480.0, 0.0, 2480.0, 'Transfer', 'Shipped', 'Tracking sent to the customer.'),
('SO-26-1033', 'Harbour Books Ltd', 'United Kingdom', '2026-08-26', 10, 715.5, 0.0, 715.5, 'Card', 'Shipped', ''),
('SO-26-1034', 'Kaffeehuis Amsterdam', 'Netherlands', '2026-09-02', 8, 640.0, 0.0, 640.0, 'PayPal', 'Shipped', ''),
('SO-26-1035', 'Casa Marina Hotels', 'Spain', '2026-09-09', 15, 2205.0, 0.0, 2205.0, 'Transfer', 'Processing', 'Delivery requested for the first week of October.'),
('SO-26-1036', 'Björk Design Studio', 'Sweden', '2026-09-14', 3, 248.0, 24.5, 272.5, 'Card', 'Processing', 'Waiting for stock of two items.');
