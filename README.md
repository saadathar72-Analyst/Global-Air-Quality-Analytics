# 🌍 Global Air Quality Analytics

**Tools Used:** Excel, SQL, Python (Pandas, Matplotlib, Seaborn), Power BI  
**Dataset:** Global Air Pollution Dataset (AQI values for CO, Ozone, NO₂, PM2.5 across multiple cities and countries)  

---

## 🔹 Project Overview
This project provides an **end-to-end analysis of global air quality**, integrating data cleaning, SQL-based analysis, Python exploratory data analysis (EDA), and interactive Power BI dashboard visualization. The goal is to uncover **trends, hotspots, and pollutant correlations** to support data-driven insights on air pollution globally.

---

## 📊 Dataset Columns
| Column | Description |
|--------|-------------|
| Country | Country name |
| City | City name |
| AQI Value | Overall Air Quality Index |
| AQI Category | AQI Category (Good, Moderate, Unhealthy, etc.) |
| CO AQI Value | Carbon Monoxide AQI |
| CO AQI Category | CO Air Quality Category |
| Ozone AQI Value | Ozone AQI |
| Ozone AQI Category | Ozone Category |
| NO₂ AQI Value | Nitrogen Dioxide AQI |
| NO₂ AQI Category | NO₂ Category |
| PM2.5 AQI Value | Particulate Matter AQI |
| PM2.5 AQI Category | PM2.5 Category |

---

## 🛠 Key Steps & Workflow

### 1️⃣ Excel - Data Cleaning & Exploration
- Standardized **23,000+ AQI records**.  
- Resolved **420+ missing values** and removed duplicates, achieving **95% improved data quality**.  
- Created pivot tables for country-wise and city-wise AQI summaries.  
- Generated basic charts: top polluted cities, AQI category distribution.

### 2️⃣ SQL - Analytical Queries
- Designed and executed **10+ SQL queries** to extract trends.  
- Identified **top 10 most polluted regions**.  
- Calculated pollutant-level contributions to overall AQI per country/city.  

### 3️⃣ Python - EDA & Visualization
- Used **Pandas, Matplotlib, Seaborn** for deep data exploration.  
- Generated **15+ statistical charts**, correlation matrices, and boxplots.  
- Identified **4 key pollutant correlations**:
  - PM2.5 ↔ AQI  
  - NO₂ ↔ AQI  
  - CO ↔ AQI  
  - Ozone ↔ NO₂  
- Exported cleaned and enriched dataset for Power BI dashboard.

### 4️⃣ Power BI - Dashboard
- Created an **interactive dashboard** with **12 visuals**: maps, KPIs, bar charts, line charts, and tree maps.  
- Highlighted global pollution hotspots and pollutant comparisons.  
- Enabled filtering by country, AQI category, and pollutant type.  

---

## 🔹 Key Insights
- **PM2.5** and **NO₂** are major contributors to high AQI levels globally.  
- Top polluted regions include **India, China, Pakistan** (as per dataset).  
- Interactive dashboard allows **easy exploration of trends** and **pollutant correlations**.  

---

## 🏆 Outcomes & Skills Demonstrated
- End-to-end data cleaning, transformation, and validation in Excel.  
- SQL query writing and data aggregation for analytics.  
- Python EDA, correlation analysis, and statistical visualization.  
- Interactive Power BI dashboard development and storytelling.  
- Quantifiable results: cleaned **23,000+ records**, resolved **420+ missing values**, executed **10+ queries**, built **12 dashboard visuals**, and identified **4 key pollutant correlations**.  

---


---

## 📌 How to Use
1. Open **Excel** to explore raw and cleaned data.  
2. Run **SQL queries** to replicate insights.  
3. Use **Python notebook** to reproduce EDA charts and correlations.  
4. Open **Power BI dashboard** to explore interactive visualizations.

---

## ⚡ Notes
- Dataset sourced from **Kaggle: Global Air Pollution Dataset**.  
- All analysis steps are **reproducible**, and dashboards are **interactive** for different pollutant and country filters.  
- Can be extended for **predictive modeling** or **time-series AQI forecasting** in future.

---

## 📬 Contact
For any questions or collaboration, feel free to connect via **GitHub issues** or **email**.

