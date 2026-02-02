# 📌 Overview
Investment Vision is a Databricks‑based data pipeline that ingests brokerage statements, parses PDFs, normalizes transactions, enriches metadata, 
and produces Gold‑layer insights for long‑term investment analysis.

It follows a Bronze → Silver → Gold architecture using Delta Lake and Unity Catalog.

## 1️⃣ Setup
Create Schema & Volume
- Create a dedicated schema for the project.
- Create a Unity Catalog volume to store raw files.

## Upload Required Files

Upload the following into the volume:

- Invest_Dec.csv (historical report)

- Monthly Statement PDF (e.g., Statement_2024-12.pdf)

- Types.txt (sector/industry/category mapping)

Validate Volume Contents

List the volume to confirm all files are available


## 🔄 Note: Manual Uploads Can Be Fully Automated

Manual uploads are only required for the prototype.

In production, Databricks can connect directly to S3, ADLS, or GCS and automatically ingest new monthly statements as they arrive.

Event‑driven workflows or scheduled jobs can trigger the pipeline end‑to‑end with zero manual steps.

## 2️⃣ Raw Layer Ingestion

2.1 Statement Read – Portfolio & Activity Extraction

Creates:
- raw_portfolio_statement
- raw_statement_activity

Steps:

- Install PyPDF2 and restart the Python kernel.
- Extract Portfolio Summary from the PDF → save as portfolio_extract.csv.
- Read portfolio_extract.csv → create DataFrame → write to raw_portfolio_statement.
- Extract Account Activity from the PDF → save as activity_extract.csv.
- Read activity_extract.csv → create DataFrame → write to raw_statement_activity.

2.2 Read Investment Types

Creates:
- raw_invest_types

Steps:
- Read Types.txt from the volume.
- Create table raw_invest_types with:
- Sector
- Industry Type
- Investment Category

2.3 Read Report File (History File)

Creates:
- history_table

Steps:
- Read Invest_Dec.csv from the volume.
- Create a temporary view raw_till_nov_temp.
- Build history_table by combining:
- raw_investments (historical report)
- raw_statement_activity (monthly statement)

Final schema includes:
	- Settle_Date
	- Settle_Month_Year
	- Instrument
	- Trans_Code
	- Quantity
	- Price
	- Amount

## 3️⃣ Raw Data Transformation

Creates:
- valid_transactions
- misc_transactions
- current_portfolio_value

Valid Transactions

Includes:  - BUY,SELL,CDIV

Transformations:
- Normalize Amount (sign corrections, multipliers, etc.)

Misc Transactions
- Includes all other transaction types.
- Current Portfolio Value
- Derived from PDF portfolio values in raw_portfolio_statement.

## 4️⃣ Silver Layer

Creates:
- monthly_inv_details
- current_details

current_details includes:

- Instrument
- Total Qty
- Current Price
- Current Market Value
- Total Buy
- Total Sell
- Total CDIV
- Statement Date
- Sector
- Industry Type
- Investment Category
- Present Status
- Current Date

5️⃣ Gold Layer – Portfolio Insights

Creates:
- gold_present_values_bycat
- gold_present_values_byInst
- gold_present_values_byIndtype

These tables provide:
- Category‑level portfolio distribution
- Instrument‑level present value
- Industry‑type aggregation


Perfect for dashboards, long-term trend analysis, and investment strategy insights.

## 🌟 Key Learnings & Insights

Building this pipeline end‑to‑end gave me several practical insights that strengthened both my data engineering approach 

and my investment analysis workflow

1. PDF Data Is Messy — Structure Comes From Logic, Not Format Brokerage statements are not designed for machine readability.

I learned that:
- Page numbers change every month
- Sections shift depending on activity
- Text extraction requires section‑based logic, not positional logic
This pushed me to design a robust parser that identifies sections by keywords, not coordinates.

2. Raw → Silver → Gold Architecture Brings Clarity
Separating the pipeline into layers helped me:
- Keep raw data untouched
- Apply transformations in a controlled manner
- Build clean, analytics‑ready tables

This layered approach made debugging and validation significantly easier


3. Automating Monthly Ingestion Saves Hours
Once the pipeline was built, I realized the real value came from:
- Connecting to cloud storage
- Triggering ingestion automatically
- Eliminating manual uploads
This turned the pipeline into a self‑updating investment dashboard.

4. Building for Myself Made the Solution Better
Because this pipeline solves my own monthly pain point, I naturally:
- Focused on accuracy
- Designed for long‑term maintainability
- Added features that genuinely matter
This personal connection made the project more thoughtful and complete.

5. Data Engineering + Personal Finance = Powerful Combination
This project reinforced how:
- Data engineering skills
- Financial literacy
- Automation
…can combine to create a system that improves decision‑making and long‑term strategy.

Happy Learning and Keep Investing !!

