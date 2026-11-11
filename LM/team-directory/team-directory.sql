-- List Manager example: Team Directory
-- Run this file in phpMyAdmin (or the mysql client) on your Joomla database, then import the
-- configuration file in Components > List Manager > Import. The table name has no Joomla prefix.
DROP TABLE IF EXISTS `lm_people`;
CREATE TABLE `lm_people` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(80) NOT NULL,
  `initials` varchar(3) NOT NULL,
  `role` varchar(80) NOT NULL,
  `department` varchar(20) NOT NULL,
  `city` varchar(40) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `start_year` smallint(6) NOT NULL,
  `color` varchar(9) NOT NULL DEFAULT '#4f46e5',
  `bio` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lm_people` (`name`, `initials`, `role`, `department`, `city`, `email`, `phone`, `start_year`, `color`, `bio`) VALUES
('Lucía Fernández', 'LF', 'Head of Engineering', 'Engineering', 'Madrid', 'lucia.fernandez@bwave.example', '+34 611 20 41 07', 2016, '#4f46e5', 'Leads the platform team and the yearly architecture review. Former open-source maintainer who still reviews pull requests before breakfast.'),
('Marcos Delgado', 'MD', 'Senior Backend Developer', 'Engineering', 'Barcelona', 'marcos.delgado@bwave.example', '+34 622 18 53 90', 2018, '#0891b2', 'Owns the billing and licensing services. Loves boring technology, database indexes and a well-named function.'),
('Aiko Tanaka', 'AT', 'Frontend Developer', 'Engineering', 'Valencia', 'aiko.tanaka@bwave.example', '+34 633 47 12 66', 2021, '#db2777', 'Builds the customer dashboard with an eye for accessibility. Runs the internal design-system guild.'),
('Diego Ortega', 'DO', 'DevOps Engineer', 'Engineering', 'Bilbao', 'diego.ortega@bwave.example', '+34 644 90 31 28', 2019, '#059669', 'Keeps deployments dull and predictable. Wrote the runbook everybody actually reads.'),
('Priya Nair', 'PN', 'QA Engineer', 'Engineering', 'Madrid', 'priya.nair@bwave.example', '+34 655 72 08 14', 2022, '#d97706', 'Automates regression tests and breaks things politely. Coordinates every release candidate.'),
('Elena Rossi', 'ER', 'Lead Product Designer', 'Design', 'Barcelona', 'elena.rossi@bwave.example', '+34 666 35 90 41', 2017, '#7c3aed', 'Shapes the look and feel of every product. Sketches on paper first and in the browser second.'),
('Tomás Ibarra', 'TI', 'UX Researcher', 'Design', 'Seville', 'tomas.ibarra@bwave.example', '+34 677 14 26 83', 2020, '#e11d48', 'Interviews customers every week and turns their stories into clear priorities for the roadmap.'),
('Hannah Weiss', 'HW', 'Brand Designer', 'Design', 'Madrid', 'hannah.weiss@bwave.example', '+34 688 53 70 19', 2021, '#0d9488', 'Looks after the visual identity, from the logo to the last email template.'),
('Sofía Marín', 'SM', 'Illustrator', 'Design', 'Valencia', 'sofia.marin@bwave.example', '+34 699 08 47 52', 2023, '#4f46e5', 'Draws the friendly characters found in the documentation and the onboarding flow.'),
('Carlos Vega', 'CV', 'Marketing Director', 'Marketing', 'Madrid', 'carlos.vega@bwave.example', '+34 610 66 23 75', 2015, '#0891b2', 'Sets the go-to-market plan and represents the company at three trade fairs a year.'),
('Nora Haddad', 'NH', 'Content Strategist', 'Marketing', 'Barcelona', 'nora.haddad@bwave.example', '+34 621 39 84 06', 2019, '#db2777', 'Plans the blog, the newsletter and the tutorials, and edits all of them ruthlessly.'),
('Iván Puig', 'IP', 'SEO Specialist', 'Marketing', 'Valencia', 'ivan.puig@bwave.example', '+34 632 71 15 38', 2022, '#059669', 'Turns search data into content ideas and keeps the site fast and easy to crawl.'),
('Marta Quiroga', 'MQ', 'Community Manager', 'Marketing', 'Seville', 'marta.quiroga@bwave.example', '+34 643 27 90 61', 2021, '#d97706', 'Answers the forum, moderates the community and collects feature requests.'),
('Andrés Molina', 'AM', 'Sales Director', 'Sales', 'Madrid', 'andres.molina@bwave.example', '+34 654 83 46 29', 2014, '#7c3aed', 'Built the sales team from two people to twelve. Believes in long relationships over quick deals.'),
('Julia Brandt', 'JB', 'Account Executive', 'Sales', 'Bilbao', 'julia.brandt@bwave.example', '+34 665 12 58 97', 2020, '#e11d48', 'Manages the largest agency accounts in the north and speaks four languages.'),
('Rafael Núñez', 'RN', 'Sales Engineer', 'Sales', 'Barcelona', 'rafael.nunez@bwave.example', '+34 676 90 37 44', 2018, '#0d9488', 'Runs live demos and proof-of-concept projects so customers can see the product working.'),
('Camila Duarte', 'CD', 'Customer Success Manager', 'Sales', 'Madrid', 'camila.duarte@bwave.example', '+34 687 45 21 03', 2022, '#4f46e5', 'Onboards new customers and checks in before problems appear. Owns the renewal calendar.'),
('Paula Iglesias', 'PI', 'Support Lead', 'Support', 'Seville', 'paula.iglesias@bwave.example', '+34 698 61 09 82', 2017, '#0891b2', 'Coordinates the support rota and the escalation process. Has answered more tickets than anyone.'),
('Omar Benali', 'OB', 'Support Engineer', 'Support', 'Valencia', 'omar.benali@bwave.example', '+34 619 24 73 55', 2021, '#db2777', 'Debugs the tricky cases and turns solutions into knowledge-base articles.'),
('Irene Castaño', 'IC', 'Technical Writer', 'Support', 'Bilbao', 'irene.castano@bwave.example', '+34 630 58 16 40', 2019, '#059669', 'Writes the manuals, release notes and step-by-step guides, and tests every step herself.'),
('Leo Martins', 'LM', 'Support Agent', 'Support', 'Madrid', 'leo.martins@bwave.example', '+34 641 02 89 71', 2023, '#d97706', 'First voice of the help desk: patient, quick and fond of a good screenshot.'),
('Beatriz Solano', 'BS', 'Chief Financial Officer', 'Operations', 'Madrid', 'beatriz.solano@bwave.example', '+34 652 76 34 18', 2013, '#7c3aed', 'Runs finance, legal and planning. Presents the quarterly numbers in exactly ten slides.'),
('Gonzalo Peña', 'GP', 'Accountant', 'Operations', 'Barcelona', 'gonzalo.pena@bwave.example', '+34 663 49 05 92', 2018, '#e11d48', 'Handles invoicing, VAT and month-end closing. Reconciles to the cent.'),
('Clara Weber', 'CW', 'HR Manager', 'Operations', 'Bilbao', 'clara.weber@bwave.example', '+34 674 31 68 27', 2020, '#0d9488', 'Looks after hiring, onboarding and the team offsites. Keeps the office plants alive.');
