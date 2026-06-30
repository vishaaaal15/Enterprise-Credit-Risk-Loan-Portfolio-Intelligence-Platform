# Enterprise Credit Risk & Loan Portfolio Intelligence Platform

**Tools:** SQL · Python (Pandas, NumPy, Scikit-learn) · Power BI
**Scope:** 500,000+ loan records · ₹850M+ portfolio exposure

## Overview
An end-to-end credit risk analytics project simulating a retail lending portfolio for a financial services institution. The goal was to identify concentration risk across customer segments, predict default probability, and translate findings into business-ready early-warning signals — the kind of work a credit risk analytics team uses to inform lending policy.

## What I did
- Built and queried a relational loan dataset (customers, loans, payments, defaults — 500,000+ records) using SQL.
- Performed exploratory data analysis to identify 3 high-default customer segments, surfacing ₹147M+ of at-risk exposure within the ₹850M+ portfolio.
- Defined and tracked 21 Key Risk Indicators (KRIs) across 3 Power BI dashboards for ongoing portfolio monitoring.
- Trained a logistic regression model (AUC: 0.82, 80/20 stratified train-test split) to estimate default probability and support proactive risk flagging. Credit utilization, prior delinquency count, and credit score were the strongest predictors of default.
- Documented data requirements, cleaning steps, and assumptions to keep the analysis reproducible and auditable.

## Why it matters
Credit risk teams need to spot deteriorating segments before they show up in delinquency numbers. This project mirrors that workflow: define risk indicators, monitor them visually, and back decisions with a predictive signal rather than hindsight.

## Limitations
This analysis uses synthetic data structured to resemble real lending 
patterns, so correlations and KRI thresholds are illustrative rather 
than production-calibrated. A real deployment would require out-of-time 
validation, regulatory fair-lending checks, and recalibration against 
live portfolio data.

## Repo contents
- `/sql` — risk segmentation and KRI queries
- `/python` — data cleaning, EDA, and logistic regression model
- `/dashboards` — Power BI files and exported screenshots
- `/docs` — data dictionary and methodology notes

## Data note
This project uses a synthetic/public loan dataset structured to resemble a retail lending portfolio. No real customer or institutional data is used.
