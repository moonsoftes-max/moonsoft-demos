-- List Manager example: Job Board
-- Run this file in phpMyAdmin (or the mysql client) on your Joomla database, then import the
-- configuration file in Components > List Manager > Import. The table name has no Joomla prefix.
DROP TABLE IF EXISTS `lm_jobs`;
CREATE TABLE `lm_jobs` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(120) NOT NULL,
  `company` varchar(80) NOT NULL,
  `initials` varchar(3) NOT NULL,
  `brand_color` varchar(9) NOT NULL DEFAULT '#2563eb',
  `city` varchar(40) NOT NULL,
  `contract` varchar(20) NOT NULL,
  `work_mode` varchar(12) NOT NULL,
  `salary_min` int(11) NOT NULL DEFAULT 0,
  `salary_max` int(11) NOT NULL DEFAULT 0,
  `salary_label` varchar(24) NOT NULL,
  `posted` date NOT NULL,
  `skills` varchar(200) DEFAULT NULL,
  `description` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO `lm_jobs` (`title`, `company`, `initials`, `brand_color`, `city`, `contract`, `work_mode`, `salary_min`, `salary_max`, `salary_label`, `posted`, `skills`, `description`) VALUES
('Senior Frontend Engineer', 'Northwind Labs', 'NL', '#2563eb', 'Barcelona', 'Full-time', 'Hybrid', 58000, 72000, '€58k-72k', '2026-09-18', 'React, TypeScript, GraphQL, Testing Library', 'Own the customer dashboard used by 40,000 merchants. You will design components, mentor two mid-level engineers and work closely with product on a quarterly roadmap. Three days a week in our Poblenou office.'),
('Product Designer', 'Lumen Studio', 'LS', '#db2777', 'Lisbon', 'Full-time', 'Remote', 42000, 55000, '€42k-55k', '2026-09-17', 'Figma, Design systems, User research, Prototyping', 'Join a ten-person design team crafting brand and product experiences for climate-tech startups. You will lead discovery workshops and ship end-to-end design work.'),
('Data Analyst', 'Tidewater Bank', 'TB', '#1e3a8a', 'Madrid', 'Full-time', 'Onsite', 38000, 48000, '€38k-48k', '2026-09-16', 'SQL, Python, Power BI, Statistics', 'Turn transaction data into decisions for the retail banking team. You will build weekly reporting, run A/B analyses and present findings to senior management.'),
('Junior QA Tester', 'Pixelmill', 'PM', '#7c3aed', 'Valencia', 'Internship', 'Onsite', 14000, 18000, '€14k-18k', '2026-09-15', 'Manual testing, Jira, Attention to detail', 'A six-month paid internship inside our game QA team. You will write test cases, report bugs and learn test automation with the support of a dedicated mentor.'),
('DevOps Engineer', 'Fjord Systems', 'FS', '#0f766e', 'Berlin', 'Full-time', 'Remote', 62000, 78000, '€62k-78k', '2026-09-14', 'Kubernetes, Terraform, AWS, CI/CD', 'Run and improve the platform behind our observability product. You will be on a fair, paid on-call rotation and own the infrastructure-as-code roadmap.'),
('Marketing Coordinator', 'Greenleaf Foods', 'GF', '#16a34a', 'Madrid', 'Part-time', 'Hybrid', 18000, 24000, '€18k-24k', '2026-09-13', 'SEO, Newsletters, Canva, Copywriting', 'Twenty hours a week helping our small brand team plan campaigns, write newsletters and keep the blog and social channels lively.'),
('Backend Developer (Node.js)', 'Bluepeak', 'BP', '#0ea5e9', 'Dublin', 'Full-time', 'Hybrid', 60000, 75000, '€60k-75k', '2026-09-12', 'Node.js, PostgreSQL, Docker, REST', 'Build the APIs behind a fast-growing payments product. We value clean code, code review and pairing; releases go out several times a day.'),
('Customer Success Manager', 'Kestrel Health', 'KH', '#e11d48', 'Barcelona', 'Full-time', 'Hybrid', 40000, 50000, '€40k-50k', '2026-09-11', 'Onboarding, Spanish and English, CRM, Empathy', 'Help clinics get the most out of our appointment platform. You will run onboarding calls, gather feedback and be the voice of the customer inside the company.'),
('Freelance Technical Writer', 'Fjord Systems', 'FS', '#0f766e', 'Lisbon', 'Contract', 'Remote', 30000, 40000, '€30k-40k', '2026-09-10', 'Documentation, Markdown, API docs, Git', 'A three-month contract to rewrite our developer documentation and create a getting-started series for the public API.'),
('Mobile Developer (Flutter)', 'Solaris Energy', 'SE', '#f59e0b', 'Valencia', 'Full-time', 'Remote', 50000, 64000, '€50k-64k', '2026-09-09', 'Flutter, Dart, Firebase, Bluetooth LE', 'Develop the companion app for our home battery systems, used by thousands of households to track their energy in real time.'),
('Warehouse Supervisor', 'Atlas Logistics', 'AL', '#475569', 'Madrid', 'Full-time', 'Onsite', 30000, 36000, '€30k-36k', '2026-09-08', 'Team leadership, WMS, Safety, Shift planning', 'Lead a team of twelve on the morning shift at our Coslada distribution centre. Previous supervisory experience in logistics required.'),
('UX Research Intern', 'Lumen Studio', 'LS', '#db2777', 'Berlin', 'Internship', 'Hybrid', 13000, 16000, '€13k-16k', '2026-09-07', 'Interviews, Surveys, Miro, Synthesis', 'Support our researchers with recruitment, interview notes and analysis. A great first step into a UX research career; the internship lasts four months.'),
('Machine Learning Engineer', 'Cobalt Robotics', 'CR', '#4f46e5', 'Berlin', 'Full-time', 'Hybrid', 72000, 92000, '€72k-92k', '2026-09-05', 'PyTorch, Computer vision, Python, MLOps', 'Train and deploy the vision models that guide our warehouse robots. You will work with the robotics team and see your models running on real machines.'),
('Accountant', 'Olivia & Sons', 'OS', '#b45309', 'Valencia', 'Part-time', 'Onsite', 20000, 26000, '€20k-26k', '2026-09-04', 'Bookkeeping, VAT, Excel, Spanish GAAP', 'Three mornings a week managing the books of a family-run import business, including VAT returns and year-end closing.'),
('Full-stack Developer', 'Pixelmill', 'PM', '#7c3aed', 'Dublin', 'Contract', 'Remote', 55000, 70000, '€55k-70k', '2026-09-03', 'Vue.js, Laravel, MySQL, Redis', 'Six-month contract to build a new booking platform for indie game events. Extension likely for the right person.'),
('HR Business Partner', 'Tidewater Bank', 'TB', '#1e3a8a', 'Lisbon', 'Full-time', 'Hybrid', 45000, 58000, '€45k-58k', '2026-09-02', 'Employee relations, Recruitment, Labour law, Coaching', 'Partner with the technology division on hiring, performance and organisational change across two sites.'),
('Sales Development Rep', 'Northwind Labs', 'NL', '#2563eb', 'Madrid', 'Full-time', 'Onsite', 28000, 34000, '€28k-34k', '2026-09-01', 'Prospecting, LinkedIn, Cold calling, CRM', 'Open the doors for our enterprise sales team. Structured training in your first month and a transparent commission plan.'),
('Cloud Security Analyst', 'Kestrel Health', 'KH', '#e11d48', 'Dublin', 'Full-time', 'Remote', 58000, 70000, '€58k-70k', '2026-08-31', 'AWS, SIEM, ISO 27001, Incident response', 'Protect patient data in a regulated environment. You will monitor alerts, run threat modelling sessions and support audits.'),
('Graphic Designer', 'Greenleaf Foods', 'GF', '#16a34a', 'Barcelona', 'Contract', 'Hybrid', 24000, 32000, '€24k-32k', '2026-08-29', 'Illustrator, Packaging, Photoshop, Typography', 'A four-month contract to redesign the packaging of our organic snack range, from concept to print-ready files.'),
('Renewable Energy Engineer', 'Solaris Energy', 'SE', '#f59e0b', 'Madrid', 'Full-time', 'Onsite', 44000, 56000, '€44k-56k', '2026-08-28', 'Solar PV, AutoCAD, Grid connection, PVsyst', 'Design rooftop solar installations for industrial customers and follow projects through to commissioning.'),
('Content Marketing Intern', 'Bluepeak', 'BP', '#0ea5e9', 'Lisbon', 'Internship', 'Remote', 12000, 15000, '€12k-15k', '2026-08-27', 'Writing, Social media, Analytics, Curiosity', 'Learn how a SaaS marketing team plans, writes and measures content. You will publish your own articles under the supervision of an editor.'),
('Robotics Technician', 'Cobalt Robotics', 'CR', '#4f46e5', 'Valencia', 'Full-time', 'Onsite', 32000, 40000, '€32k-40k', '2026-08-26', 'Electronics, Troubleshooting, Soldering, ROS', 'Assemble, calibrate and repair our warehouse robots at the Valencia workshop. Some travel to customer sites.'),
('Project Manager', 'Atlas Logistics', 'AL', '#475569', 'Barcelona', 'Full-time', 'Hybrid', 48000, 60000, '€48k-60k', '2026-08-25', 'PMP, Stakeholders, Budgeting, Agile', 'Deliver the roll-out of a new transport management system across five European hubs, on time and on budget.'),
('Part-time Support Engineer', 'Fjord Systems', 'FS', '#0f766e', 'Berlin', 'Part-time', 'Remote', 26000, 32000, '€26k-32k', '2026-08-24', 'Linux, Support, English, Troubleshooting', 'Thirty hours a week helping customers debug their monitoring setups. Weekend shifts are rotated and paid extra.');
