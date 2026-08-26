# HR Analytics Dashboard

A complete HR workforce analysis covering 22,214 employee records — from raw data cleaning
to an interactive 4-page Power BI dashboard, built to answer real business questions
around headcount, attrition, and diversity.

---

## The Problem

The organization needed visibility into workforce composition, attrition patterns, and diversity metrics to support HR planning decisions - but the raw HR export had no structure, inconsistent date formats, and undetected data quality issues that would have skewed every downstream metric if left unfixed.

---

## The Data

- 22,214 employee records, 14 original fields
- Source: company HR export (raw Excel)
- Found and fixed: records with logically invalid future termination dates and inconsistent formatting during preprocessing.

---

## Tools Used

- **Excel**: data cleaning, date standardization, pivot table validation
- **MySQL**: data querying via 10 clean, purpose-built SQL queries
- **Power BI**: 4-page interactive dashboard (Power Query only - no DAX)

---

## Key Findings

1. 1061 records had future termination dates - reclassified as active
2. Engineering accounts for ~30.1% of headcount
3. Active staff average 15 years tenure while leavers average 8 years
4. Total headcount is 22,214 with an overall attrition rate of 12.91%
5. Cleveland hub accounts for 16,871 of the total employees

---

## Dashboard Pages
- **Executive Overview** - company-wide KPIs at a glance
  !(images/page1_executive_overview.png)
- **Workforce Composition** - department, state, and race breakdown
  !(images/page2_workforce_composition.png)
- **Attrition & Tenure** - who's leaving, and when
  !(images/page3_attrition_tenure.png)
- **Diversity & Inclusion** - gender and race composition by department
  !(images/page4_diversity_inclusion.png)

  ---
  
## Recommendations

1. Implement data-validation rules to prevent future-dated entries
2. Track departmental attrition percentages rather than raw exit counts
3. Conduct retention analysis for mid-career staff between 5-10 years tenure
4. Expand remote hiring to geographically diversify the workforce outside Ohio

---
## How to Reproduce

1. Clean raw data using steps documented in [/excel/](excel/)
2. Import cleaned CSV into MySQL using [/sql/hr_analytics_queries.sql](sql/hr_analytics_queries.sql)
3. Open [/powerbi/HR_Analytics_Dashboard.pbix](powerbi/HR_Analytics_Dashboard.pbix) in Power BI Desktop

---
## Author

Shridevi Kulkarni -[LinkedIn](https://www.linkedin.com/in/shridevi-kulkarni-data-analyst) - shrikulkarni142001@gmail.com
