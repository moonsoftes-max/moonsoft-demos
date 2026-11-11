-- List Manager example: Project Tracker
-- Run this file in phpMyAdmin (or the mysql client) on your Joomla database, then import the
-- configuration file in Components > List Manager > Import. The table name has no Joomla prefix.
DROP TABLE IF EXISTS `lm_projects`;
CREATE TABLE `lm_projects` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(120) NOT NULL,
  `client` varchar(100) NOT NULL,
  `owner` varchar(80) NOT NULL,
  `status` varchar(12) NOT NULL DEFAULT 'Planning',
  `priority` varchar(10) NOT NULL DEFAULT 'Medium',
  `progress` tinyint(3) unsigned NOT NULL DEFAULT 0,
  `start_date` date DEFAULT NULL,
  `due_date` date DEFAULT NULL,
  `budget` int(11) NOT NULL DEFAULT 0,
  `notes` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lm_projects` (`name`, `client`, `owner`, `status`, `priority`, `progress`, `start_date`, `due_date`, `budget`, `notes`) VALUES
('Website Redesign', 'Northwind Traders', 'Elena Martín', 'Active', 'High', 68, '2026-02-02', '2026-10-30', 48500, 'New responsive site with a product catalogue and a redesigned checkout. Design sign-off is done and the build team is working through the template library. Content migration starts once page templates are frozen.'),
('Mobile Banking App', 'Alderbank', 'Marcus Bell', 'Active', 'High', 45, '2026-03-09', '2026-12-18', 132000, 'Native iOS and Android app for retail customers. Biometric login and card controls are shipped to the beta group; payments and statements are next. Weekly security review with the client CISO.'),
('CRM Migration', 'Harbor Logistics', 'Priya Nair', 'Blocked', 'High', 30, '2026-01-19', '2026-09-30', 76000, 'Move 12 years of customer history from the legacy CRM. Blocked until the client\'s IT team releases read access to the archive database. Escalated to the sponsor on 14 September.'),
('Brand Guidelines', 'Fjord Coffee Roasters', 'Sofia Lindqvist', 'Done', 'Medium', 100, '2026-01-12', '2026-04-24', 18200, 'Logo system, colour palette, typography and a 48-page brand book delivered as PDF and Figma library. Final invoice paid.'),
('Data Warehouse', 'Meridian Insurance', 'Daniel Okafor', 'Active', 'High', 52, '2026-02-16', '2026-11-27', 165000, 'Central warehouse with nightly loads from claims, policy and billing systems. Claims and policy pipelines are live; billing loads and the reporting layer remain.'),
('Customer Portal', 'Alderbank', 'Elena Martín', 'Planning', 'Medium', 8, '2026-09-07', '2027-03-31', 54000, 'Self-service portal for business customers: invoices, tickets and document exchange. Discovery workshops finished, wireframes under review.'),
('Email Automation', 'Fjord Coffee Roasters', 'Sofia Lindqvist', 'Active', 'Low', 74, '2026-05-04', '2026-10-09', 12800, 'Welcome series, abandoned-cart flow and a monthly newsletter template in the client\'s email platform. Only the win-back flow is missing.'),
('Warehouse Scanner App', 'Harbor Logistics', 'Tomás Herrera', 'Active', 'Medium', 61, '2026-04-13', '2026-11-13', 39500, 'Android app for handheld scanners: goods-in, picking and stock counts with offline mode. Pilot running in the Rotterdam warehouse.'),
('SEO Audit', 'Northwind Traders', 'Priya Nair', 'Done', 'Low', 100, '2026-03-02', '2026-05-15', 6400, 'Technical and content audit with a prioritised fix list. Client implemented 80% of the quick wins; report archived.'),
('Cloud Migration', 'Meridian Insurance', 'Marcus Bell', 'Active', 'High', 37, '2026-04-06', '2027-01-29', 210000, 'Lift-and-shift of 42 workloads to the client\'s new cloud tenancy, followed by database modernisation. Wave 2 cut-over scheduled for October.'),
('Analytics Dashboard', 'Ridgeway Retail', 'Daniel Okafor', 'Active', 'Medium', 83, '2026-05-18', '2026-09-25', 27500, 'Sales, stock and store-traffic dashboards for regional managers. In user acceptance testing; two KPI definitions still to be agreed.'),
('Payment Gateway Upgrade', 'Ridgeway Retail', 'Tomás Herrera', 'Blocked', 'High', 22, '2026-06-01', '2026-10-16', 33000, 'Move to the new gateway with 3-D Secure 2. Waiting for the acquirer to issue production credentials; test environment is complete.'),
('Intranet Refresh', 'Alderbank', 'Sofia Lindqvist', 'Planning', 'Low', 5, '2026-10-05', '2027-02-26', 22800, 'Modernise the staff intranet with search, an org chart and a news feed. Kick-off booked for early October.'),
('Chatbot Pilot', 'Northwind Traders', 'Priya Nair', 'Active', 'Medium', 40, '2026-07-13', '2026-11-06', 15600, 'Support chatbot answering order-status and returns questions, with hand-over to a human agent. Trained on 3,000 historic tickets.'),
('Accessibility Fixes', 'Fjord Coffee Roasters', 'Elena Martín', 'Done', 'Medium', 100, '2026-04-20', '2026-06-19', 9800, 'WCAG 2.2 AA remediation across the shop and account area. Verified by an external auditor.'),
('ERP Integration', 'Harbor Logistics', 'Marcus Bell', 'Active', 'High', 58, '2026-03-23', '2026-10-23', 88400, 'Two-way sync of orders, stock and invoices between the online shop and the client\'s ERP. Order and stock flows are live.'),
('Training Portal', 'Meridian Insurance', 'Daniel Okafor', 'Planning', 'Medium', 12, '2026-09-14', '2027-01-15', 31000, 'Learning platform for 400 agents with course tracking and certificates. Vendor selection finished, content plan in progress.'),
('Security Penetration Test', 'Alderbank', 'Tomás Herrera', 'Done', 'High', 100, '2026-05-11', '2026-07-03', 14500, 'External and internal penetration test with retest. Two medium findings closed, no critical issues.'),
('Store Locator', 'Ridgeway Retail', 'Elena Martín', 'Blocked', 'Low', 15, '2026-08-03', '2026-11-20', 8900, 'Map-based store finder with opening hours and click-to-call. Blocked while the client updates the master list of 140 stores.'),
('Marketing Site Launch', 'Fjord Coffee Roasters', 'Sofia Lindqvist', 'Done', 'Medium', 100, '2026-02-23', '2026-05-29', 21300, 'Campaign site for the summer blends with a shop link-through and a store map. Live since 29 May.');
