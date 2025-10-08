# 🍕 Pizza Sales Analysis Dashboard


Welcome to the **Pizza Sales Analysis Dashboard** — a full-stack data analytics project that transforms raw sales data into **actionable business insights**.  
This project combines the power of **SQL**, **Python**, and **Power BI** to uncover sales patterns, highlight top-performing products, and support data-driven decisions for improved revenue, inventory management, and marketing strategy.

With stunning visual dashboards, dynamic metrics, and automated data pipelines, this project demonstrates end-to-end proficiency in modern data analysis and business intelligence.

---

![Power BI](https://img.shields.io/badge/Power%20BI-F2C811?style=for-the-badge&logo=powerbi&logoColor=black)
![MySQL](https://img.shields.io/badge/MySQL-CC2927?style=for-the-badge&logo=microsoft-MySQL&logoColor=white)
![Python](https://img.shields.io/badge/Python-3776AB?style=for-the-badge&logo=python&logoColor=white)
![Pandas](https://img.shields.io/badge/Pandas-150458?style=for-the-badge&logo=pandas&logoColor=white)

## 📚 Table of Contents
- [📊 Project Overview](#-project-overview)
- [🎯 Business Objective](#-business-objective)
- [📈 Dashboard Preview](#-dashboard-preview)
- [🔍 Key Insights](#-key-insights)
- [🛠️ Tools & Technologies](#️-tools--technologies)
- [📁 Project Structure](#-project-structure)
- [📊 SQL Analysis](#-sql-analysis)
- [📉 Dashboard Features](#-dashboard-features)
- [💡 Business Recommendations](#-business-recommendations)
- [📝 Dataset Information](#-dataset-information)
- [🎓 Learning Outcomes](#-learning-outcomes)
- [🔮 Future Enhancements](#-future-enhancements)
- [📧 Contact & Author](#-contact--author)
- [⭐ Show Your Support](#-show-your-support)

---

## 📊 Project Overview

An end-to-end business intelligence solution analyzing pizza sales data from January to December 2015. This project demonstrates comprehensive data analysis skills using SQL for data extraction, Python for automation, and Power BI for interactive visualization.

## 🎯 Business Objective

To analyze pizza sales patterns and provide actionable insights for:
- Revenue optimization
- Inventory management
- Staffing decisions
- Menu optimization
- Marketing strategies

---

## 📈 Dashboard Preview

### Home Dashboard
![Home Dashboard](\\images\\home_dashboard.png)

**Key Metrics:**
- 💰 Total Revenue: **$1.15M**
- 📦 Average Order Value: **$53.75**
- 🍕 Total Pizzas Sold: **69,555**
- 📋 Total Orders: **21,350**
- 📊 Average Pizzas Per Order: **3.26**

### Best/Worst Sellers Dashboard
![Sellers Dashboard](\\images\\best_or_worst_dashboard.png)

---

## 🔍 Key Insights

### 📅 Temporal Patterns

**Busiest Days:**
- 🔥 Friday and Saturday evenings generate maximum orders
- Peak ordering times: Lunch (12-2 PM) and Dinner (5-8 PM)

**Monthly Trends:**
- July and January show maximum orders
- Consistent performance throughout the year with seasonal variations

### 📊 Sales Performance

**By Category:**
- 🥇 Classic Category: **29.95%** of total sales
- 🥈 Supreme Category: **24.19%** of total sales
- 🥉 Veggie Category: **23.66%** of total sales
- 🐔 Chicken Category: **22.23%** of total sales

**By Size:**
- 🔵 Large: **38.12%** of total sales (highest)
- 🟣 Medium: **31.59%** of total sales
- 🔴 Regular: **29.09%** of total sales
- ⚪ X-Large & XX-Large: Combined **1.20%** (consider menu optimization)

### 🏆 Product Performance

**Top 5 Performers (by Revenue):**
1. The Barbecue Chicken Pizza
2. The Thai Chicken Pizza
3. The California Chicken Pizza
4. The Classic Deluxe Pizza
5. The Spicy Italian Pizza

**Bottom 5 Performers (by Revenue):**
1. The Spinach Pesto Pizza
2. The Spinach Supreme Pizza
3. The Mediterranean Pizza
4. The Green Garden Pizza
5. The Brie Carre Pizza

### 📦 Quantity Sold by Category

- Classic: **10,859** pizzas
- Supreme: **9,085** pizzas
- Veggie: **8,941** pizzas
- Chicken: **8,536** pizzas

---

## 🛠️ Tools & Technologies

| Tool | Purpose |
|------|---------|
| **MySQL** | Database management and complex queries |
| **Python** | Data extraction, transformation, and automation |
| **Pandas** | Data manipulation and analysis |
| **Matplotlib** | Data pattern and analysis |
| **seaborn** | Data pattern and analysis |
| **Power BI** | Interactive dashboard creation and visualization |
| **DAX** | Custom measures and calculations |

---

## 📁 Project Structure

```
pizza-sales-analysis/
│
├── data/
│   ├── pizza_sales.csv              # Dataset
│
├── sql/
│   └── analysis_queries.sql         # SQL queries for analysis
│
├── python/
│   └── exploratory_data_analysis.ipynb         # Python EDA perform
│
├── power_bi/
│   └── pizza_sales_dashboard.pbix   # Power BI dashboard file
│
├── screenshots/                      # Dashboard screenshots
│   ├── home_dashboard.png
│   └── sellers_dashboard.png
│
├── documentation/
│   └── project_guide.md             # Detailed project documentation
│
└── README.md                         # This file
```

## 📊 SQL Analysis

### Key Queries Implemented

**KPI Calculations:**
- Total Revenue
- Average Order Value
- Total Pizzas Sold
- Total Orders
- Average Pizzas Per Order

**Trend Analysis:**
- Daily order trends (by day of week)
- Monthly order trends
- Hourly order patterns
- Quarterly performance

**Category Analysis:**
- Sales percentage by pizza category
- Sales percentage by pizza size
- Quantity sold by category

**Performance Metrics:**
- Top 5 pizzas by revenue, quantity, and orders
- Bottom 5 pizzas by revenue, quantity, and orders

---

## 📉 Dashboard Features

### Page 1: Home Dashboard
- **KPI Cards**: 5 key metrics at a glance
- **Daily Trend Chart**: Orders by day of week
- **Monthly Trend Chart**: Year-round order patterns
- **Sales by Category**: Donut chart with percentages
- **Sales by Size**: Donut chart showing size distribution
- **Category Quantity**: Bar chart of pizzas sold

### Page 2: Best/Worst Sellers
- **Top 5 Charts**: By revenue, quantity, and total orders
- **Bottom 5 Charts**: By revenue, quantity, and total orders
- **Interactive Filters**: Category and date slicers

### Navigation
- Home button for quick access
- Best/Worst Sellers toggle
- Date range slicer (1/1/2015 - 12/31/2015)
- Category filter dropdown

---

## 💡 Business Recommendations

### 1. **Optimize Inventory Management**
- Stock more ingredients for Classic and Supreme categories
- Focus on Large size pizza production
- Reduce inventory for X-Large and XX-Large sizes

### 2. **Staffing Optimization**
- Increase staff on Friday/Saturday evenings
- Schedule more delivery drivers during 5-8 PM
- Optimize lunch shift (12-2 PM) coverage

### 3. **Marketing Strategies**
- Promote Barbecue Chicken and Thai Chicken pizzas
- Create combo deals with top-performing pizzas
- Run promotions for bottom-performing items or consider menu removal

### 4. **Menu Engineering**
- Consider discontinuing XX-Large size (minimal sales)
- Evaluate profitability of bottom 5 pizzas
- Introduce variations of top sellers

### 5. **Seasonal Planning**
- Prepare for peak months (July, January)
- Plan promotions during slower months (September, October)
- Adjust inventory based on monthly patterns

---

## 📝 Dataset Information

**Source:** Pizza Sales Dataset (2015)  
**Records:** 21,350 orders  
**Time Period:** January 1, 2015 - December 31, 2015  
**Columns:**
- `order_id`: Unique order identifier
- `order_date`: Date of order
- `order_time`: Time of order
- `pizza_name`: Name of pizza
- `pizza_category`: Category (Classic, Supreme, Veggie, Chicken)
- `pizza_size`: Size (S, M, L, XL, XXL)
- `quantity`: Number of pizzas ordered
- `unit_price`: Price per pizza
- `total_price`: Total order value

---

## 🎓 Learning Outcomes

This project demonstrates proficiency in:

✅ **SQL Skills:**
- Complex queries with aggregations
- Window functions
- Date/Time functions
- Subqueries and CTEs
- Performance optimization

✅ **Python Skills:**
- Database connectivity (pyodbc)
- Data manipulation (pandas)
- Automation and scripting
- Data export workflows

✅ **Power BI Skills:**
- Interactive dashboard design
- DAX measure creation
- Visual best practices
- User experience design

✅ **Business Analysis:**
- KPI identification
- Trend analysis
- Performance metrics
- Actionable insights generation

---

## 🔮 Future Enhancements

- [ ] Add predictive analytics for sales forecasting
- [ ] Implement customer segmentation analysis
- [ ] Create real-time dashboard with live data connection
- [ ] Integrate customer feedback analysis
- [ ] Develop mobile-responsive dashboard
---

## 📧 Contact & Author

**Your Name**  
📧 Email: your.email@example.com  
💼 LinkedIn: [linkedin.com/in/vikrant-shekhar-prajapati-61a6a3307/](https://linkedin.com/in/vikrant-shekhar-prajapati-61a6a3307/)  
🐱 GitHub: [github.com/vi.krant9515](https://github.com/vi.krant9515)  

---

## ⭐ Show Your Support

If you found this project helpful, please consider giving it a ⭐ on GitHub!

---

**Last Updated:** October 2025  
**Project Status:** ✅ Complete
