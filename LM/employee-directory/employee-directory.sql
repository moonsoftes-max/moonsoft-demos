-- List Manager example: Employee Directory
-- Run this file in phpMyAdmin (or the mysql client) on your Joomla database, then import the
-- configuration file in Components > List Manager > Import. The table name has no Joomla prefix.
DROP TABLE IF EXISTS `lm_employees`;
CREATE TABLE `lm_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `full_name` varchar(80) NOT NULL,
  `job_title` varchar(80) NOT NULL,
  `department` varchar(30) NOT NULL,
  `office` varchar(30) NOT NULL,
  `email` varchar(120) NOT NULL,
  `phone` varchar(30) DEFAULT NULL,
  `hire_date` date DEFAULT NULL,
  `salary_band` varchar(4) NOT NULL DEFAULT 'B1',
  `remote` tinyint(1) NOT NULL DEFAULT 0,
  `skills` varchar(200) DEFAULT NULL,
  `bio` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lm_employees` (`full_name`, `job_title`, `department`, `office`, `email`, `phone`, `hire_date`, `salary_band`, `remote`, `skills`, `bio`) VALUES
('Elena Marín', 'VP of Engineering', 'Engineering', 'Madrid', 'elena.marin@brightwell.co', '+34 91 555 0101', '2016-03-01', 'B6', 0, 'Architecture, Hiring, Roadmaps', 'Joined as the fourth engineer and now leads a team of 40. Elena keeps the platform boring, fast and reliable.'),
('Daniel Okafor', 'Senior Backend Engineer', 'Engineering', 'London', 'daniel.okafor@brightwell.co', '+44 20 7946 0142', '2019-09-16', 'B4', 1, 'PHP, PostgreSQL, APIs', 'Owns the billing and invoicing services. Daniel writes the runbooks other people actually read.'),
('Sofia Lindqvist', 'Staff Frontend Engineer', 'Engineering', 'Berlin', 'sofia.lindqvist@brightwell.co', '+49 30 5557 0133', '2018-05-07', 'B5', 1, 'TypeScript, Accessibility, Design systems', 'Maintains the component library used by every product team and chairs the accessibility guild.'),
('Marcos Ferreira', 'DevOps Engineer', 'Engineering', 'Lisbon', 'marcos.ferreira@brightwell.co', '+351 21 555 0117', '2021-02-22', 'B3', 1, 'Kubernetes, Terraform, Monitoring', 'Moved the whole estate to infrastructure-as-code and halved the deploy time.'),
('Aisha Rahman', 'QA Lead', 'Engineering', 'London', 'aisha.rahman@brightwell.co', '+44 20 7946 0188', '2020-01-13', 'B4', 0, 'Test automation, Playwright, Release management', 'Builds the regression suite that lets the team ship on Fridays without fear.'),
('Pablo Vidal', 'Mobile Developer', 'Engineering', 'Barcelona', 'pablo.vidal@brightwell.co', '+34 93 555 0164', '2022-06-01', 'B3', 0, 'Kotlin, Swift, Offline sync', 'Ships the Android and iOS apps and is the team\'s unofficial expert on flaky networks.'),
('Hannah Weber', 'Data Engineer', 'Engineering', 'Berlin', 'hannah.weber@brightwell.co', '+49 30 5557 0176', '2020-10-05', 'B4', 1, 'Python, dbt, Data modelling', 'Turns raw events into the dashboards the whole company checks on Monday morning.'),
('Lucía Navarro', 'Junior Developer', 'Engineering', 'Madrid', 'lucia.navarro@brightwell.co', '+34 91 555 0129', '2025-09-01', 'B2', 0, 'JavaScript, PHP, Git', 'Graduated from the company apprenticeship scheme and now works on the customer portal.'),
('Tomás Almeida', 'Head of Design', 'Design', 'Lisbon', 'tomas.almeida@brightwell.co', '+351 21 555 0152', '2017-11-20', 'B5', 0, 'Brand, Design leadership, Prototyping', 'Sets the visual language of the product and mentors the design team.'),
('Clara Dubois', 'Product Designer', 'Design', 'Barcelona', 'clara.dubois@brightwell.co', '+34 93 555 0138', '2021-04-12', 'B3', 1, 'Figma, Interaction design, Illustration', 'Designs the onboarding flows and draws most of the illustrations you see in the app.'),
('Oliver Grant', 'UX Researcher', 'Design', 'London', 'oliver.grant@brightwell.co', '+44 20 7946 0121', '2022-01-10', 'B3', 1, 'Interviews, Usability testing, Surveys', 'Runs the customer interviews that decide what gets built next quarter.'),
('Jorge Salinas', 'Product Manager', 'Product', 'Madrid', 'jorge.salinas@brightwell.co', '+34 91 555 0175', '2019-03-04', 'B4', 0, 'Prioritisation, Analytics, Stakeholders', 'Product manager for the customer portal, with a soft spot for tidy backlogs.'),
('Ingrid Sørensen', 'Senior Product Manager', 'Product', 'Berlin', 'ingrid.sorensen@brightwell.co', '+49 30 5557 0184', '2018-08-13', 'B5', 0, 'Strategy, Pricing, Discovery', 'Leads the payments product area and owns the pricing experiments.'),
('Nadia Haddad', 'Product Analyst', 'Product', 'London', 'nadia.haddad@brightwell.co', '+44 20 7946 0166', '2023-02-06', 'B3', 1, 'SQL, Experimentation, Dashboards', 'Designs the A/B tests and explains the results in plain English.'),
('Camille Laurent', 'Head of Marketing', 'Marketing', 'Barcelona', 'camille.laurent@brightwell.co', '+34 93 555 0107', '2017-06-19', 'B5', 0, 'Brand, Campaigns, Partnerships', 'Runs a team of four and the yearly customer conference.'),
('Ravi Patel', 'Content Strategist', 'Marketing', 'London', 'ravi.patel@brightwell.co', '+44 20 7946 0193', '2021-09-27', 'B3', 1, 'Copywriting, Editorial planning, SEO', 'Edits the blog, the newsletter and every word on the pricing page.'),
('Marta Ruiz', 'SEO Specialist', 'Marketing', 'Madrid', 'marta.ruiz@brightwell.co', '+34 91 555 0146', '2024-01-15', 'B2', 1, 'Keyword research, Analytics, Link building', 'Doubled organic sign-ups in her first year by fixing the site structure.'),
('Felix Braun', 'Growth Marketer', 'Marketing', 'Berlin', 'felix.braun@brightwell.co', '+49 30 5557 0158', '2022-11-07', 'B3', 0, 'Paid social, Email, Landing pages', 'Runs the paid channels and the monthly experiment review.'),
('Diego Castillo', 'Sales Director', 'Sales', 'Madrid', 'diego.castillo@brightwell.co', '+34 91 555 0113', '2016-09-12', 'B5', 0, 'Negotiation, Enterprise sales, Forecasting', 'Built the sales team from two people to twelve and still joins the big calls.'),
('Emma Thompson', 'Account Executive', 'Sales', 'London', 'emma.thompson@brightwell.co', '+44 20 7946 0177', '2020-05-18', 'B3', 1, 'Demos, Contracts, Retail accounts', 'Closes most of the UK retail deals and never misses a follow-up.'),
('Inês Carvalho', 'Account Executive', 'Sales', 'Lisbon', 'ines.carvalho@brightwell.co', '+351 21 555 0183', '2021-10-04', 'B3', 0, 'Demos, Public sector, Portuguese market', 'Opened the Portuguese market and speaks four languages with customers.'),
('Lukas Fischer', 'Sales Development Rep', 'Sales', 'Berlin', 'lukas.fischer@brightwell.co', '+49 30 5557 0121', '2024-03-11', 'B2', 1, 'Prospecting, Cold outreach, CRM', 'Books more first meetings than anyone else on the team.'),
('Beatriz Gómez', 'Customer Success Manager', 'Sales', 'Barcelona', 'beatriz.gomez@brightwell.co', '+34 93 555 0192', '2019-01-21', 'B3', 0, 'Onboarding, Renewals, Training', 'Looks after the fifty largest customers and knows each of them by name.'),
('Andrés Molina', 'Finance Controller', 'Finance', 'Madrid', 'andres.molina@brightwell.co', '+34 91 555 0137', '2016-11-07', 'B5', 0, 'Accounting, Tax, Audit', 'Closes the books in four days and keeps the auditors happy.'),
('Priya Nair', 'Financial Analyst', 'Finance', 'London', 'priya.nair@brightwell.co', '+44 20 7946 0154', '2022-08-22', 'B3', 1, 'Modelling, Budgeting, Excel', 'Maintains the forecast model and the monthly board pack.');
INSERT INTO `lm_employees` (`full_name`, `job_title`, `department`, `office`, `email`, `phone`, `hire_date`, `salary_band`, `remote`, `skills`, `bio`) VALUES
('Laura Campos', 'Head of People', 'People', 'Madrid', 'laura.campos@brightwell.co', '+34 91 555 0182', '2017-02-13', 'B5', 0, 'Culture, Compensation, Employment law', 'Designed the onboarding programme and the yearly salary review.'),
('Sven Larsen', 'Talent Recruiter', 'People', 'Berlin', 'sven.larsen@brightwell.co', '+49 30 5557 0199', '2023-05-02', 'B3', 1, 'Sourcing, Interviewing, Employer brand', 'Hired more than thirty people last year and keeps candidates in the loop.'),
('Miguel Torres', 'Support Team Lead', 'Support', 'Barcelona', 'miguel.torres@brightwell.co', '+34 93 555 0125', '2018-10-01', 'B4', 0, 'Escalations, Coaching, Zendesk', 'Leads the support desk and reviews every escalated ticket personally.'),
('Chloe Bennett', 'Support Specialist', 'Support', 'London', 'chloe.bennett@brightwell.co', '+44 20 7946 0135', '2023-09-18', 'B2', 1, 'Troubleshooting, Live chat, Documentation', 'Writes the help-centre articles that keep tickets from being opened.'),
('Rui Pinto', 'Support Specialist', 'Support', 'Lisbon', 'rui.pinto@brightwell.co', '+351 21 555 0149', '2024-06-03', 'B2', 0, 'Troubleshooting, Phone support, Portuguese', 'Covers the early shift and handles the Portuguese-speaking customers.');
