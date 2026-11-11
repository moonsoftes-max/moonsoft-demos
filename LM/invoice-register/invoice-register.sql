-- List Manager example: Invoice Register
-- Run this file in phpMyAdmin (or the mysql client) on your Joomla database, then import the
-- configuration file in Components > List Manager > Import. The table name has no Joomla prefix.
DROP TABLE IF EXISTS `lm_invoices`;
CREATE TABLE `lm_invoices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `number` varchar(16) NOT NULL,
  `customer` varchar(100) NOT NULL,
  `issue_date` date NOT NULL,
  `due_date` date NOT NULL,
  `amount_net` decimal(10,2) NOT NULL DEFAULT 0.00,
  `vat` decimal(10,2) NOT NULL DEFAULT 0.00,
  `amount_total` decimal(10,2) NOT NULL DEFAULT 0.00,
  `status` varchar(10) NOT NULL DEFAULT 'Pending',
  `payment_method` varchar(20) NOT NULL DEFAULT '',
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lm_invoices` (`number`, `customer`, `issue_date`, `due_date`, `amount_net`, `vat`, `amount_total`, `status`, `payment_method`, `notes`) VALUES
('INV-2026-001', 'Northwind Traders', '2026-01-08', '2026-02-07', 4800.0, 1008.0, 5808.0, 'Paid', 'Bank transfer', 'Quarterly website maintenance retainer, Q1.'),
('INV-2026-002', 'Alderbank', '2026-01-15', '2026-02-14', 12500.0, 2625.0, 15125.0, 'Paid', 'Bank transfer', 'Milestone 1: discovery and design of the customer portal.'),
('INV-2026-003', 'Fjord Coffee Roasters', '2026-01-22', '2026-02-06', 1250.0, 262.5, 1512.5, 'Paid', 'Card', 'Brand guidelines, final invoice.'),
('INV-2026-004', 'Harbor Logistics', '2026-01-29', '2026-03-15', 8900.0, 1869.0, 10769.0, 'Paid', 'Bank transfer', 'CRM migration, phase 1 (data audit).'),
('INV-2026-005', 'Solano Arquitectos', '2026-02-05', '2026-03-07', 2150.0, 451.5, 2601.5, 'Paid', 'Direct debit', 'Annual hosting and support plan.'),
('INV-2026-006', 'Meridian Insurance', '2026-02-12', '2026-04-13', 27500.0, 5775.0, 33275.0, 'Paid', 'Bank transfer', 'Data warehouse, claims pipeline (milestone 1).'),
('INV-2026-007', 'Brightwave Media', '2026-02-19', '2026-03-21', 3600.0, 756.0, 4356.0, 'Paid', 'PayPal', 'Campaign landing pages, 6 templates.'),
('INV-2026-008', 'Ridgeway Retail', '2026-02-26', '2026-03-28', 5400.0, 1134.0, 6534.0, 'Paid', 'Bank transfer', 'Analytics dashboard: requirements workshop and prototype.'),
('INV-2026-009', 'Kestrel Engineering', '2026-03-04', '2026-04-03', 9800.0, 2058.0, 11858.0, 'Paid', 'Bank transfer', 'Intranet redesign, design phase.'),
('INV-2026-010', 'Lumen Dental', '2026-03-11', '2026-03-26', 980.0, 205.8, 1185.8, 'Paid', 'Card', 'Appointment booking module.'),
('INV-2026-011', 'Northwind Traders', '2026-03-18', '2026-04-17', 3200.0, 672.0, 3872.0, 'Paid', 'Bank transfer', 'SEO audit and prioritised fix list.'),
('INV-2026-012', 'Alderbank', '2026-03-25', '2026-04-24', 14200.0, 2982.0, 17182.0, 'Paid', 'Bank transfer', 'Milestone 2: portal front end, invoices and tickets.'),
('INV-2026-013', 'Fjord Coffee Roasters', '2026-04-01', '2026-05-01', 2400.0, 504.0, 2904.0, 'Paid', 'Direct debit', 'Accessibility remediation, part 1.'),
('INV-2026-014', 'Harbor Logistics', '2026-04-08', '2026-05-23', 11300.0, 2373.0, 13673.0, 'Paid', 'Bank transfer', 'CRM migration, phase 2 (mapping and test load).'),
('INV-2026-015', 'Meridian Insurance', '2026-04-15', '2026-06-14', 31800.0, 6678.0, 38478.0, 'Paid', 'Bank transfer', 'Data warehouse, policy pipeline (milestone 2).'),
('INV-2026-016', 'Solano Arquitectos', '2026-04-22', '2026-05-22', 1750.0, 367.5, 2117.5, 'Paid', 'Card', 'Project gallery and case-study pages.'),
('INV-2026-017', 'Brightwave Media', '2026-04-29', '2026-05-29', 4100.0, 861.0, 4961.0, 'Paid', 'PayPal', 'Email automation set-up and templates.'),
('INV-2026-018', 'Ridgeway Retail', '2026-05-06', '2026-06-05', 7600.0, 1596.0, 9196.0, 'Paid', 'Bank transfer', 'Analytics dashboard: build sprint 1.'),
('INV-2026-019', 'Kestrel Engineering', '2026-05-13', '2026-06-12', 10400.0, 2184.0, 12584.0, 'Paid', 'Bank transfer', 'Intranet redesign, build phase.'),
('INV-2026-020', 'Lumen Dental', '2026-05-20', '2026-06-04', 1150.0, 241.5, 1391.5, 'Paid', 'Card', 'Patient reminders by e-mail and SMS.'),
('INV-2026-021', 'Northwind Traders', '2026-06-03', '2026-07-03', 4800.0, 1008.0, 5808.0, 'Paid', 'Bank transfer', 'Quarterly website maintenance retainer, Q2.'),
('INV-2026-022', 'Harbor Logistics', '2026-06-17', '2026-08-01', 9700.0, 2037.0, 11737.0, 'Overdue', 'Bank transfer', 'CRM migration, phase 3. Payment reminder sent 5 September.'),
('INV-2026-023', 'Meridian Insurance', '2026-06-30', '2026-08-29', 28400.0, 5964.0, 34364.0, 'Paid', 'Bank transfer', 'Data warehouse, billing loads (milestone 3).'),
('INV-2026-024', 'Ridgeway Retail', '2026-07-08', '2026-08-07', 8300.0, 1743.0, 10043.0, 'Overdue', 'Bank transfer', 'Analytics dashboard: build sprint 2. Awaiting purchase order number.'),
('INV-2026-025', 'Alderbank', '2026-07-15', '2026-08-14', 15900.0, 3339.0, 19239.0, 'Paid', 'Bank transfer', 'Milestone 3: document exchange and single sign-on.');
INSERT INTO `lm_invoices` (`number`, `customer`, `issue_date`, `due_date`, `amount_net`, `vat`, `amount_total`, `status`, `payment_method`, `notes`) VALUES
('INV-2026-026', 'Kestrel Engineering', '2026-07-29', '2026-08-28', 6700.0, 1407.0, 8107.0, 'Paid', 'Direct debit', 'Intranet redesign, launch support.'),
('INV-2026-027', 'Brightwave Media', '2026-08-12', '2026-09-11', 3900.0, 819.0, 4719.0, 'Overdue', 'PayPal', 'Newsletter redesign. Second reminder sent.'),
('INV-2026-028', 'Fjord Coffee Roasters', '2026-08-26', '2026-09-25', 2850.0, 598.5, 3448.5, 'Pending', 'Card', 'Accessibility remediation, part 2.'),
('INV-2026-029', 'Solano Arquitectos', '2026-09-02', '2026-10-02', 2150.0, 451.5, 2601.5, 'Pending', 'Direct debit', 'Annual hosting and support plan (renewal).'),
('INV-2026-030', 'Lumen Dental', '2026-09-09', '2026-09-24', 1320.0, 277.2, 1597.2, 'Pending', 'Card', 'Online payment module for treatment plans.');
