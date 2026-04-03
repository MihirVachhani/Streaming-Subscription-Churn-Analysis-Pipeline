# 🎬 Streaming Subscription Churn Analysis Pipeline

## 📌 Objective

Analyze customer subscription behavior to identify churn patterns, retention trends, and revenue loss, and support data-driven decision-making.

---

## 📂 Dataset

* `subscription_data.csv` → raw dataset
* `cleaned_subscription_data.csv` → processed dataset
* `data_dictionary.csv` → column descriptions

---

## 🔄 Data Pipeline

1. Raw Data (`subscription_data.csv`)
2. Data Cleaning & Feature Engineering (Python)
3. Load Data into MySQL
4. SQL Analysis (churn, retention, revenue)
5. Dashboard Creation (Excel)
6. Deep Analysis & Visualization (Python)

---

## ⚙️ Tools & Technologies

* Python (Pandas, NumPy, Matplotlib, Seaborn)
* MySQL
* Excel (Power Query + Dashboard)
* Jupyter Notebook

---

## 📊 Project Workflow

| Step | Task                                | Tool           | File                                                |
| ---- | ----------------------------------- | -------------- | --------------------------------------------------- |
| 1    | Data Cleaning & Feature Engineering | Python         | pipeline/01_data_cleaning_feature_engineering.ipynb |
| 2    | Load Data into MySQL                | Python + MySQL | pipeline/02_mysql_data_loading.ipynb                |
| 3    | SQL Analysis                        | MySQL          | pipeline/03_sql_analysis_queries.sql                |
| 4    | Dashboard Creation                  | Excel          | dashboard/subscription_dashboard.xlsx               |
| 5    | Deep Analysis & Visualization       | Python         | pipeline/04_deep_analysis_visualization.ipynb       |

---

## 📊 Key Metrics (KPIs)

* Churn Rate
* Retention Rate
* Monthly Recurring Revenue (MRR)
* Revenue at Risk
* Customer Lifetime Value (CLV)

---

## 📊 Key Visualizations

### 📌 Dashboard Overview

![Dashboard](Outputs/dashboard_overview.png)

---

### 📌 Cohort Retention Analysis

![Cohort Retention]([outputs/cohort_retention.png])

---

### 📌 Time to Churn Distribution

![Time to Churn]([outputs/time_to_churn.png](https://github.com/MihirVachhani/Streaming-Subscription-Churn-Analysis-Pipeline/blob/main/Outputs/Time-to-Churn%20Distribution%20%20When%20Do%20Customers%20Leave.png
))

---

### 📌 Net Customer Flow

![MRR Trend]([outputs/mrr_trend.png](https://github.com/MihirVachhani/Streaming-Subscription-Churn-Analysis-Pipeline/blob/main/Outputs/New%20vs%20Churned%20%20Net%20Customer%20Flow.png))

---

### 📌 Revenue at Risk

![Revenue at Risk]([outputs/revenue_at_risk.png](https://github.com/MihirVachhani/Streaming-Subscription-Churn-Analysis-Pipeline/blob/main/Outputs/Revenue%20at%20Risk%20%20(monthly%20MRR%20breakdown).png
))

---

## 📁 Project Structure

```id="k1z8pm"
data/
 ├── raw/
 ├── processed/
 └── data_dictionary.csv

pipeline/
 ├── 01_data_cleaning_feature_engineering.ipynb
 ├── 02_mysql_data_loading.ipynb
 ├── 03_sql_analysis_queries.sql
 └── 04_deep_analysis_visualization.ipynb

dashboard/
 └── subscription_dashboard.xlsx

outputs/
 ├── dashboard_overview.png
 ├── cohort_retention.png
 ├── time_to_churn.png
 ├── mrr_trend.png
 └── revenue_at_risk.png
```

---

## 🚀 How to Run

1. Install dependencies

   ```
   pip install -r requirements.txt
   ```

2. Execute pipeline in order:

   * 01_data_cleaning_feature_engineering.ipynb
   * 02_mysql_data_loading.ipynb
   * 03_sql_analysis_queries.sql
   * 04_deep_analysis_visualization.ipynb

3. Open dashboard:

   * dashboard/subscription_dashboard.xlsx

---


## 📂 Data Source

Dataset sourced from Maven Analytics (subscription-based streaming dataset)

---
