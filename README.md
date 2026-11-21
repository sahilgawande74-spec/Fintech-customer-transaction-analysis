💳 Fintech Customer Transaction Analysis & Fraud Detection

End-to-End Data Analytics Project | MySQL • Python • Power BI

An end-to-end data analytics project focused on analyzing customer transaction behaviour, identifying fraudulent activities, and uncovering meaningful business insights using MySQL, Python, and Power BI.

The project analyzes 50,000 financial transactions across 2,000 customers and 15 merchants over a one-year period (January–December 2025).

⸻

📌 Project Overview

Digital payment platforms process thousands of transactions every day, making fraud detection and transaction monitoring important for financial institutions.

This project explores transaction patterns, payment behaviour, merchant performance, geographical trends, and fraudulent activities to identify potential risk areas and support data-driven business decisions.

🎯 Project Objectives

* Analyze customer transaction patterns and payment behaviour.
* Clean and validate the transaction dataset using Python.
* Perform SQL-based analysis to identify business trends.
* Conduct Exploratory Data Analysis (EDA) using Python.
* Identify fraudulent transaction patterns across different dimensions.
* Develop an interactive Power BI dashboard for transaction and fraud monitoring.
* Generate actionable business insights and recommendations.

🛠️ Tools & Technologies

Technology	Purpose
MySQL	Data querying and analysis
Python	Data cleaning and analysis
Pandas & NumPy	Data manipulation
Matplotlib & Seaborn	Data visualization
Jupyter Notebook	Exploratory Data Analysis
Power BI	Interactive dashboard development

📊 Dataset Overview

The dataset contains 50,000 transaction records with 11 attributes.

Dataset Metric	Details
Total Transactions	50,000
Unique Customers	2,000
Merchants	15
Fraud Transactions	905
Fraud Rate	1.81%
Transaction Period	Jan–Dec 2025
Dataset Columns	11

Important Attributes:

* Transaction ID
* Customer ID
* Transaction Amount
* Transaction Type
* Payment Type
* Transaction Timestamp
* Merchant ID
* Merchant Name
* Location
* Transaction Status
* Fraud Indicator

🔄 Project Workflow

1. Data Cleaning & Preprocessing – Python

* Identified and handled missing values.
* Checked duplicate records and transaction IDs.
* Restored missing merchant names using merchant ID mapping.
* Converted transaction timestamps into datetime format.
* Performed outlier detection using the IQR method.
* Created additional time-based features for analysis.

2. SQL Analysis – MySQL

Performed business-oriented SQL queries to analyze:

* Overall transaction summary.
* Payment type analysis.
* Merchant-wise transaction analysis.
* Location-wise transaction trends.
* Transaction status analysis.
* Day-wise and hour-wise transaction patterns.
* Transaction amount range analysis.
* Fraud analysis by payment type and merchant.
* Monthly transaction trends.

3. Exploratory Data Analysis – Python

Used Pandas, Matplotlib, and Seaborn to explore:

* Monthly transaction trends.
* Payment type distribution.
* Transaction success and failure rates.
* Merchant-wise transaction values.
* City-wise transaction distribution.
* Fraud trends by hour and day.
* Fraud distribution across transaction amount ranges.

4. Interactive Power BI Dashboard

Developed an interactive dashboard to monitor transaction performance and fraudulent activities.

Key Performance Indicators (KPIs):

* Total Transactions
* Average Transaction Amount
* Total Transaction Amount
* Fraud Transactions
* Fraud Rate

Dashboard Visualizations:

* Monthly Transaction Trend
* Payment Type Distribution
* Transaction Status Distribution
* Top 10 Merchants by Transaction Amount
* Location-wise Transaction Analysis
* Fraud Transactions by Hour

Interactive Filters (Slicers):

* Date
* Location
* Payment Type
* Transaction Status

The dashboard supports cross-filtering, allowing users to explore transaction patterns and fraud trends dynamically.

🔍 Key Business Insights

1. Fraud Detection

* Identified 905 fraudulent transactions, representing a 1.81% fraud rate.
* Approximately 45% of fraud cases occurred between 11 PM and 4 AM.
* Fraud rate during these hours was 3.26%.

2. Merchant Risk Analysis

* Travel Agency recorded the highest fraud rate at 3.40%.
* Online Gaming followed with a 2.97% fraud rate.
* Both merchants together accounted for 217 fraud cases.

3. Payment Behaviour

* UPI was the most frequently used payment method, accounting for 35% of transactions.
* Overall transaction success rate was 93.7%.

4. Geographical Analysis

* Mumbai recorded the highest transaction value at approximately ₹15 million.
* Pune, Delhi, and Bengaluru followed.

5. Transaction Amount Analysis

* Fraud rates remained relatively consistent across transaction amount ranges.
* Transaction amount alone was not a strong indicator of fraudulent activity.

💡 Business Recommendations

* Implement additional authentication for transactions during high-risk hours.
* Monitor high-risk merchant categories such as Travel Agency and Online Gaming.
* Combine transaction timing, merchant information, and customer behaviour for better fraud detection.
* Investigate declined and failed transactions to reduce revenue leakage.
* Develop predictive fraud detection models as a future enhancement.

📁 Project Repository Structure

Fintech-Customer-Transaction-Analysis/
│
├── Fintech.sql
│
├── fintech_customer_transactions_50000.csv
│
├── Fintech_Customer_Transaction_Analysis.ipynb
│
├── Fintech Dashboard.zip
│
├── Fintech_Customer_Transaction_Analysis_Report.pdf
│
├── Fintech_Project_Documentation_Formal.pdf
│
└── README.md

🚀 How to Explore This Project

1. Download or clone this repository.
2. Import the CSV dataset into MySQL.
3. Create the database fintech_analysis.
4. Execute the SQL queries available in Fintech.sql after importing the dataset and creating the required table.
5. Open the Jupyter Notebook to explore data cleaning and EDA.
6. Open the Power BI dashboard in Power BI Desktop after extracting the dashboard file.
7. Explore the project documentation and final report for detailed findings.

🔮 Future Scope

* Develop machine learning models for fraud prediction.
* Experiment with Logistic Regression, Random Forest, and XGBoost.
* Evaluate models using Precision, Recall, F1-score, and ROC-AUC.
* Incorporate customer-level behavioural features.
* Integrate predictive fraud scores into the Power BI dashboard.

⸻

👩‍💻 Author

Sahil Gawande

Aspiring Data Analyst | Data Science Enthusiast

Skills: MySQL | Python | Pandas | NumPy | Data Analysis | Power BI | Data Visualization

⸻

⭐ If you find this project interesting, feel free to explore the repository and share your feedback!
