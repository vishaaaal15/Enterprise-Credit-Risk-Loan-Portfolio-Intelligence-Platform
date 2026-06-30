# 🏦 Enterprise Credit Risk & Loan Portfolio Intelligence Platform

**Author:** Vishal Singh | [LinkedIn](https://linkedin.com/in/vishal-singhdataanalyst) | [GitHub](https://github.com/vishaaaal15)  
**Stack:** SQL · Python · Power BI · Scikit-learn  
**Dataset:** 500,000+ loan records | ₹850M+ portfolio exposure  
**Domain:** Credit Risk Management · Loan Portfolio Analytics · Independent Risk Assessment

---

## 📌 Project Overview

An end-to-end credit risk intelligence platform that conducts independent assessment of a ₹850M+ retail lending portfolio. Covers portfolio concentration risk, high-risk borrower micro-segmentation, default prediction modelling, and executive KRI reporting — replicating the analytical workflow of a GRC/Risk team at a large financial institution.

---

## 🏗️ Architecture

```
Raw Loan Data (500K+ records)
        │
        ▼
SQL Risk Monitoring (21 queries)
        │
        ▼
Python ML Models (Logistic Regression · Classification)
        │
        ▼
Power BI Executive Dashboards (3 dashboards · 21 KRIs)
        │
        ▼
Risk Recommendations → Senior Stakeholder Reporting
```

---

## 📁 Repository Structure

```
Enterprise-Credit-Risk-Loan-Portfolio-Intelligence-Platform/
│
├── data/
│   └── loan_portfolio_data.csv          # 500K+ synthetic loan records
│
├── sql_queries/
│   ├── 01_portfolio_overview.sql        # Total exposure, loan type mix
│   ├── 02_concentration_risk.sql        # Geographic & segment concentration
│   ├── 03_default_indicators.sql        # DPD buckets, NPA identification
│   ├── 04_high_risk_segments.sql        # Micro-segment risk profiling
│   ├── 05_vintage_analysis.sql          # Cohort default rate trends
│   └── ...21 total queries
│
├── python_models/
│   ├── credit_risk_model.py             # Logistic regression default predictor
│   ├── feature_engineering.py           # Risk feature construction
│   └── model_evaluation.py             # AUC, confusion matrix, KS statistic
│
├── dashboards/
│   ├── Portfolio_Overview.pbix          # Dashboard 1 — Portfolio health
│   ├── Default_Risk_Monitor.pbix        # Dashboard 2 — Default & DPD tracking
│   └── Segment_Risk_Heatmap.pbix        # Dashboard 3 — Micro-segment analysis
│
└── outputs/
    ├── kri_summary.csv                  # 21 Key Risk Indicators
    ├── high_risk_segments.csv           # Top risk borrower cohorts
    └── model_performance.csv            # ML model metrics
```

---

## 📊 Key Risk Findings

| KRI | Value | Risk Status |
|-----|-------|-------------|
| Total Portfolio Exposure | ₹850M+ | MONITOR |
| Gross NPA Rate | 4.3% | 🔴 ALERT |
| Accounts DPD > 90 Days | 1,800+ | 🔴 ALERT |
| High-Risk Segment Share | 18% of portfolio | MONITOR |
| ML Model AUC Score | 0.82 | ✅ GOOD |
| Portfolio Credit Score (Avg) | 679 | NORMAL |

---

## 🔍 SQL Queries — What They Cover

| Query | Purpose |
|-------|---------|
| Portfolio Overview | Total loans, exposure, loan type breakdown |
| Concentration Risk | State-wise and segment-wise over-exposure |
| DPD Bucket Analysis | SMA-0 to Doubtful classification (RBI norms) |
| NPA Rate by Type | Gross NPA % by Personal/Home/Business/Vehicle |
| Vintage Default Trend | Year-on-year cohort default rate movement |
| High-Risk Micro-Segments | Credit score < 600 + DPD > 30 active accounts |
| Interest Rate vs Default | Correlation between pricing and stress |
| Branch-level Risk | Identifying high-default origination branches |

---

## 🤖 ML Model — Default Predictor

**Algorithm:** Logistic Regression + Random Forest  
**Features Used:** Credit score, DPD history, loan-to-income ratio, tenure, employment type, existing loans  
**Target:** Binary default flag (Default/NPA/Written-Off = 1)

```python
from sklearn.linear_model import LogisticRegression
from sklearn.ensemble import RandomForestClassifier
from sklearn.metrics import roc_auc_score, classification_report

# Model outputs: default probability score per borrower
# Used to: rank borrowers by risk, flag early-stage stress accounts
```

---

## 📈 Power BI Dashboards

**Dashboard 1 — Portfolio Overview**
- Total exposure by loan type and geography
- Monthly disbursement trend
- Portfolio health scorecard

**Dashboard 2 — Default & DPD Risk Monitor**
- DPD bucket waterfall (SMA-0 → Doubtful)
- NPA rate trend over time
- Written-off vs restructured accounts

**Dashboard 3 — Micro-Segment Risk Heatmap**
- Risk heat map: Segment × Employment Type
- Top 10 high-risk borrower cohorts
- Credit score band distribution

---

## 🛠️ How to Run

```bash
# 1. Clone the repo
git clone https://github.com/vishaaaal15/Enterprise-Credit-Risk-Loan-Portfolio-Intelligence-Platform

# 2. Install dependencies
pip install pandas numpy scikit-learn matplotlib seaborn

# 3. Generate / load data
python data/generate_data.py

# 4. Run ML model
python python_models/credit_risk_model.py

# 5. SQL queries — run in any SQL client (MySQL / PostgreSQL / Hive)
# Open sql_queries/ folder and execute in order
```

---

## 🏷️ Topics
`credit-risk` `loan-portfolio` `sql` `python` `power-bi` `machine-learning` `logistic-regression` `npa` `kri` `risk-analytics` `banking-analytics` `independent-risk-assessment`
