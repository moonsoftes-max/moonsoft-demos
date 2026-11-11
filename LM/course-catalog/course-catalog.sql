-- List Manager example: Course Catalog
-- Run this file in phpMyAdmin (or the mysql client) on your Joomla database, then import the
-- configuration file in Components > List Manager > Import. The table name has no Joomla prefix.
DROP TABLE IF EXISTS `lm_courses`;
CREATE TABLE `lm_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `instructor` varchar(80) NOT NULL,
  `category` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL,
  `hours` smallint(6) NOT NULL DEFAULT 0,
  `price` smallint(6) NOT NULL DEFAULT 0,
  `price_label` varchar(12) NOT NULL,
  `students` int(11) NOT NULL DEFAULT 0,
  `rating` decimal(2,1) NOT NULL DEFAULT 0.0,
  `syllabus` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lm_courses` (`title`, `instructor`, `category`, `level`, `hours`, `price`, `price_label`, `students`, `rating`, `syllabus`) VALUES
('Python for Absolute Beginners', 'Laura Méndez', 'Development', 'Beginner', 12, 0, 'FREE', 48210, 4.7, 'Installing Python and your first script; Variables, numbers and strings; Decisions and loops; Functions and modules; Working with files; A final mini project: a habit tracker'),
('Modern JavaScript: From Basics to Async', 'Daniel Okafor', 'Development', 'Intermediate', 18, 59, '€59', 21380, 4.6, 'Language fundamentals refreshed; Arrays, objects and destructuring; Modules and tooling; Promises and async/await; Fetching data from APIs; Testing with Vitest'),
('Building REST APIs with Node.js', 'Priya Nair', 'Development', 'Advanced', 22, 89, '€89', 9840, 4.8, 'Project structure and routing; Validation and error handling; PostgreSQL and migrations; Authentication with JWT; Caching and rate limiting; Deploying with Docker'),
('Git and GitHub Essentials', 'Tom Whitfield', 'Development', 'Beginner', 4, 0, 'FREE', 33920, 4.5, 'Commits, branches and history; Merging and resolving conflicts; Pull requests and code review; Working with a team on GitHub'),
('Figma UI Design Fundamentals', 'Sofía Herrera', 'Design', 'Beginner', 8, 39, '€39', 15470, 4.7, 'The Figma workspace; Frames, layout grids and auto layout; Components and variants; Prototyping interactions; Handing off to developers'),
('Design Systems that Scale', 'Marcus Lindqvist', 'Design', 'Advanced', 14, 79, '€79', 4120, 4.9, 'Tokens and naming; Component architecture; Documentation that people read; Governance and contribution model; Measuring adoption; Versioning and release'),
('Typography for Digital Products', 'Amélie Laurent', 'Design', 'Intermediate', 6, 29, '€29', 7660, 4.6, 'Anatomy and classification; Pairing typefaces; Hierarchy and rhythm; Responsive type scales; Accessibility and legibility'),
('Colour Theory for Designers', 'Hana Kobayashi', 'Design', 'Beginner', 3, 0, 'FREE', 12890, 4.4, 'How colour works; Palettes and harmony; Contrast and accessibility; Colour in brands and interfaces'),
('Business Finance for Non-Financial Managers', 'Robert Chen', 'Business', 'Intermediate', 10, 69, '€69', 11250, 4.5, 'Reading a profit and loss account; The balance sheet; Cash flow; Budgets and forecasts; Investment decisions; Presenting numbers to your board'),
('Startup Fundamentals: Idea to First Customer', 'Nadia Rahman', 'Business', 'Beginner', 9, 0, 'FREE', 26740, 4.6, 'Finding a real problem; Customer interviews; Building a minimum product; Pricing basics; Your first ten customers'),
('Negotiation Skills for Leaders', 'Carlos Vega', 'Business', 'Advanced', 7, 99, '€99', 3560, 4.8, 'Preparing your BATNA; Reading the other side; Concessions and anchoring; Multi-party negotiations; Difficult conversations'),
('Project Management with Agile', 'Emma Sullivan', 'Business', 'Intermediate', 11, 49, '€49', 18300, 4.5, 'Agile principles; Scrum roles and events; Writing good user stories; Estimation and planning; Metrics that matter; Scaling beyond one team'),
('SQL for Data Analysis', 'Ibrahim Yusuf', 'Data', 'Beginner', 10, 35, '€35', 30450, 4.7, 'Databases and tables; SELECT, WHERE and ORDER BY; Joins; Grouping and aggregates; Subqueries and CTEs; Cleaning data with SQL'),
('Data Visualisation with Tableau', 'Katarzyna Nowak', 'Data', 'Intermediate', 9, 45, '€45', 8920, 4.4, 'Connecting to data; Charts that answer questions; Calculated fields; Dashboards and actions; Publishing and sharing'),
('Machine Learning with Python', 'Dr. Ana Ferreira', 'Data', 'Advanced', 28, 129, '€129', 14670, 4.8, 'The machine learning workflow; Regression and classification; Feature engineering; Model evaluation; Ensembles and gradient boosting; Neural networks with PyTorch; Deploying a model'),
('Statistics Made Simple', 'Peter Novak', 'Data', 'Beginner', 8, 0, 'FREE', 22110, 4.3, 'Describing data; Probability in plain English; Sampling and distributions; Confidence intervals; Hypothesis testing'),
('SEO in 2026: A Practical Guide', 'Julia Bauer', 'Marketing', 'Intermediate', 7, 39, '€39', 9450, 4.5, 'How search works today; Keyword research; On-page optimisation; Technical SEO checklist; Link building; Reporting'),
('Social Media Strategy from Scratch', 'Diego Alvarado', 'Marketing', 'Beginner', 5, 19, '€19', 17800, 4.2, 'Choosing the right platforms; Content pillars; A weekly posting plan; Community management; Measuring results'),
('Email Marketing that Converts', 'Grace O\'Neill', 'Marketing', 'Intermediate', 4, 0, 'FREE', 6230, 4.4, 'List building; Subject lines and preview text; Segmentation; Automation flows'),
('Performance Marketing & Analytics', 'Lucas Moreau', 'Marketing', 'Advanced', 13, 89, '€89', 2980, 4.7, 'Attribution models; Paid search structure; Paid social creative testing; Conversion tracking; Budget allocation; Building a reporting dashboard'),
('Spanish for Travellers', 'Isabel Ortega', 'Languages', 'Beginner', 6, 0, 'FREE', 41200, 4.6, 'Greetings and introductions; Ordering food and drinks; Directions and transport; Hotels and shopping; Emergencies; Small talk'),
('Business English: Emails & Meetings', 'Olivia Bennett', 'Languages', 'Intermediate', 8, 39, '€39', 13560, 4.5, 'Writing clear emails; Polite requests and refusals; Running a meeting; Phone and video calls; Presentations'),
('French Conversation Practice', 'Claire Dubois', 'Languages', 'Intermediate', 10, 45, '€45', 8340, 4.6, 'Everyday dialogues; Past and future tenses in speech; Opinions and debate; Pronunciation drills; Listening to native speakers'),
('German Grammar Masterclass', 'Lukas Vogel', 'Languages', 'Advanced', 15, 59, '€59', 3120, 4.7, 'Cases in depth; Verb positions and subordinate clauses; The subjunctive; Passive constructions; Formal writing; Exam preparation');
