# Moonsoft Demos

Ready-to-import examples for the Joomla extensions by [Moonsoft](https://www.moonsoft.es):

- **Calc Builder** – build calculators from PHP formulas or Excel files, no coding.
- **List Manager** – turn database tables into searchable, sortable listings.

All examples come from the live demo site **[demo.moonsoft.es](https://demo.moonsoft.es)**, where you can try each one
and read the step-by-step import instructions. Product information: **[www.moonsoft.es](https://www.moonsoft.es)**.

> This repository contains only example data (configuration exports, SQL dumps, Excel models and screenshots).
> It does **not** include any source code of the Joomla components.

## Repository layout

```
CB/<example>/   Calc Builder examples
LM/<example>/   List Manager examples
   ├── README.md          explanation of the example + import instructions link
   ├── *_export.xml       Calc Builder configuration  (CB)
   ├── *_config.xml       List Manager configuration  (LM)
   ├── *.sql              sample database table        (LM)
   ├── *.xlsx             Excel model                  (CB, Excel-powered examples)
   └── screenshots/       frontend and settings screenshots
```

## How to import an example

- **Calc Builder:** Joomla admin → *Components › CalcBuilder › Import* → upload the `*_export.xml` file.
- **List Manager:** run the `*.sql` file on your database, then *Components › List Manager › Import* → upload the `*_config.xml` file.

Each example folder has its own README with the details and a link to the live instructions.

## Examples

<!-- EXAMPLES:START -->
### Calc Builder (`CB/`) – 16 examples

| Example | Description | Live demo |
|---|---|---|
| [BMI & Healthy Weight Range](CB/bmi-healthy-weight-range/) | A clean BMI calculator with metric/imperial units, a colour-coded scale gauge and your personal healthy weight window. | [demo](https://demo.moonsoft.es/bmi-healthy-weight-range) |
| [Break-even Analysis](CB/break-even-analysis/) | Find how many units you must sell to cover your costs, what your margin of safety is and what profit your expected sales leave, with a revenue-versus-cost chart. | [demo](https://demo.moonsoft.es/break-even-analysis) |
| [Daily Calorie & Macro Planner](CB/daily-calorie-macro-planner/) | Estimate your daily calories with the Mifflin-St Jeor equation, adjust them for weight loss, maintenance or gain and see a protein, carbohydrate and fat split in grams. | [demo](https://demo.moonsoft.es/daily-calorie-macro-planner) |
| [Date Difference & Countdown](CB/date-difference-countdown/) | Pick two dates and get the exact number of days, weeks and days, calendar months and days and the working days in between, with a countdown-style breakdown. | [demo](https://demo.moonsoft.es/date-difference-countdown) |
| [Event Catering Estimator](CB/event-catering-estimator/) (Excel) | Excel-powered catering budget: menu price per head, open bar, staffing, venue fee, service uplift and VAT, with a cost breakdown and cost per guest. | [demo](https://demo.moonsoft.es/event-catering-estimator) |
| [Flooring Material Estimator](CB/flooring-material-estimator/) (Excel) | Excel-powered flooring estimator: enter the room size, floor type and layout to get packs to order, total cost and a price comparison of every floor type. | [demo](https://demo.moonsoft.es/flooring-material-estimator) |
| [Marketing Campaign ROI](CB/marketing-campaign-roi/) | Turn an ad budget, a cost per click and a conversion rate into clicks, orders, revenue, profit, ROI, ROAS and cost per acquisition, with a funnel and a revenue-split bar. | [demo](https://demo.moonsoft.es/marketing-campaign-roi) |
| [Paint & Wall Coverage Estimator](CB/paint-wall-coverage-estimator/) | Work out the paintable area of a room, the litres of paint including waste, the cheapest tin combination and the total cost for four finishes. | [demo](https://demo.moonsoft.es/paint-wall-coverage-estimator) |
| [Rental Property Yield](CB/rental-property-yield/) | Gross yield, net yield (cap rate), mortgage payment, monthly cash flow and cash-on-cash return for a buy-to-let, with a breakdown of where the rent goes. | [demo](https://demo.moonsoft.es/rental-property-yield) |
| [Retirement Savings Planner](CB/retirement-savings-planner/) | Project a retirement nest egg from current savings and monthly contributions, adjust it for inflation and see whether the 4% rule can fund your target income. | [demo](https://demo.moonsoft.es/retirement-savings-planner) |
| [Running Pace & Race Predictor](CB/running-pace-race-predictor/) | Turn any 5K, 10K, half marathon or marathon result into pace per km and per mile, speed, Riegel race predictions and training pace zones. | [demo](https://demo.moonsoft.es/running-pace-race-predictor) |
| [SaaS Plan Price Estimator](CB/saas-plan-price-estimator/) | A software pricing estimator: pick a plan, seats, add-ons and billing period and get an invoice-style quote with monthly and yearly totals. | [demo](https://demo.moonsoft.es/saas-plan-price-estimator) |
| [Salary Take-Home Calculator](CB/salary-take-home-calculator/) (Excel) | Excel-powered net pay calculator: progressive income tax by band, social contributions with a cap, pension relief and an optional student loan. | [demo](https://demo.moonsoft.es/salary-take-home-calculator) |
| [Savings Growth with Compound Interest](CB/savings-growth-with-compound-interest/) (Excel) | Excel-powered savings projector: enter a deposit, a monthly contribution and a return and see the balance grow year by year. | [demo](https://demo.moonsoft.es/savings-growth-with-compound-interest) |
| [Solar Panel Savings Calculator](CB/solar-panel-savings-calculator/) | See how a real Calc Builder ROI tool comes together: enter your system size and utility rate, and get an instantly-calculated, dashboard-style breakdown of net cost, payback period, and 25-year savings. | [demo](https://demo.moonsoft.es/solar-panel-savings-calculator) |
| [Trip Fuel Cost & CO2](CB/trip-fuel-cost-co2/) | Fuel or energy used, trip cost, cost per person, CO2 emitted and a tree equivalent for petrol, diesel, hybrid or electric, compared with the other fuel types. | [demo](https://demo.moonsoft.es/trip-fuel-cost-co2) |

### List Manager (`LM/`) – 15 examples

| Example | Description | Live demo |
|---|---|---|
| [Book Library](LM/book-library/) | A library catalogue shown as book-cover cards: search, genre and status filters, star ratings, an availability badge and a detail pop-up. | [demo](https://demo.moonsoft.es/book-library-import) |
| [Course Catalog](LM/course-catalog/) | An online course catalog as category-coloured cards: level meter, duration, rating, student count, FREE or price tag, price-range filter and a numbered syllabus pop-up. | [demo](https://demo.moonsoft.es/course-catalog-import) |
| [Employee Directory](LM/employee-directory/) | A staff directory as a clean data table: department, office and remote filters, search over name, title and skills, a contact-card pop-up and a styled add/edit form. | [demo](https://demo.moonsoft.es/employee-directory-import) |
| [Event Calendar](LM/event-calendar/) | An event programme for October 2026 to March 2027 as ticket-style cards: calendar date tile, type chip, venue, price or FREE, type and city filters, always ordered by date. | [demo](https://demo.moonsoft.es/event-calendar-import) |
| [Help Desk Tickets](LM/help-desk-tickets/) | A support help-desk queue with status pills, priority dots, star ratings, urgent rows highlighted, three filters and a chat-style detail pop-up. | [demo](https://demo.moonsoft.es/help-desk-tickets-import) |
| [Inventory Stock Levels](LM/inventory-stock-levels/) | A warehouse stock list with totals for units and stock value, reorder badges, three filters, search and one-click Excel and PDF export. | [demo](https://demo.moonsoft.es/inventory-stock-levels-import) |
| [Invoice Register](LM/invoice-register/) | A sales-invoice register with totals for net, VAT and gross, paid / pending / overdue badges, a date-range filter, four export buttons and an invoice-style detail pop-up. | [demo](https://demo.moonsoft.es/invoice-register-import) |
| [Job Board](LM/job-board/) | A job board of 24 offers as company-monogram cards: search, contract-type checkboxes, work-mode and location filters, salary range and a detail pop-up with skills. | [demo](https://demo.moonsoft.es/job-board-import) |
| [Movie Watchlist](LM/movie-watchlist/) | A personal movie watchlist shown as film-poster cards: genre gradients, big title typography, CSS star ratings, a watched or queued badge, checkbox genre filter and a notes pop-up. | [demo](https://demo.moonsoft.es/movie-watchlist-import) |
| [Product Catalog](LM/product-catalog/) | A product catalogue as cards: prices with a CSS discount ribbon, stock badges, star ratings, category, stock and price-range filters, a sort selector and a detail pop-up. | [demo](https://demo.moonsoft.es/product-catalog-import) |
| [Project Tracker](LM/project-tracker/) | A project portfolio as a clean table: status pills, priority dots, progress bars, a budget total, three filters and a detail pop-up with the project notes. | [demo](https://demo.moonsoft.es/project-tracker-import) |
| [Real Estate Listings](LM/real-estate-listings/) | Property listings without photos: gradient cards with a big price, a sale/rent ribbon and a bed, bath and area row, filters by type, operation and city, and a detail pop-up. | [demo](https://demo.moonsoft.es/real-estate-listings-import) |
| [Recipe Collection](LM/recipe-collection/) | A recipe book of 25 dishes as food-style cards: colour headers by category, cooking-time chips, difficulty dots, filters and a detail pop-up with ingredients and method. | [demo](https://demo.moonsoft.es/recipe-collection-import) |
| [Sales Orders](LM/sales-orders/) | An order book as a table with a totals row: status and country filters, an order-date range, Excel and PDF export, status pills, an order-summary pop-up and a styled add/edit form. | [demo](https://demo.moonsoft.es/sales-orders-import) |
| [Team Directory](LM/team-directory/) | A staff directory as profile cards: coloured initials avatars, department badges, contact lines, department and city filters, name/role search and a detail pop-up with the bio. | [demo](https://demo.moonsoft.es/team-directory-import) |
<!-- EXAMPLES:END -->

---
© Moonsoft S.L. · [www.moonsoft.es](https://www.moonsoft.es) · [demo.moonsoft.es](https://demo.moonsoft.es)
