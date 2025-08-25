# SQL Data Cleaning and EDA on World Life Expectancy Dataset

## 📌 Project Overview  
This project demonstrates how to apply **SQL for data cleaning** and **exploratory data analysis (EDA)** on a global dataset of **life expectancy, GDP, mortality, and health indicators**.  
The objective is to clean inconsistencies, handle missing data, and extract valuable insights about health, economy, and life expectancy across countries.  

---

## 📂 Dataset Description  
The dataset (`WorldLifeExpectancy.csv`) contains:  
- **Country, Year** → Primary keys  
- **Life Expectancy** → Average lifespan by country-year  
- **GDP** → Economic measure for each country  
- **BMI** → Body Mass Index values  
- **Adult Mortality** → Mortality rate by age group  
- **Status** → Developed or Developing  

---

## 🛠️ Tools & Technologies Used  
- **SQL (MySQL)**  
- **CSV Dataset**  
- **GitHub for version control & documentation**  

---

## 🔍 Data Cleaning Steps  
Key operations performed in `Cleaning.sql`:  
- Identified and removed **duplicate rows** (`Country + Year` combinations)  
- Filled missing **Status** values using reference data (Developed / Developing)  
- Interpolated missing **Life Expectancy values** using averages of surrounding years  
- Ensured data consistency across years for each country  

---

## 📊 Exploratory Data Analysis (EDA)  
Key analysis performed in `EDA.sql`:  
- **Min/Max Life Expectancy** for each country and increase over years  
- **Average Life Expectancy trend by year** (global progress)  
- Correlation between **GDP and Life Expectancy** (high GDP → higher life expectancy)  
- **Grouping by GDP levels** (high vs low GDP countries)  
- Life Expectancy comparison by **Status** (Developed vs Developing countries)  
- Correlation between **BMI and Life Expectancy**  
- **Adult Mortality trends** over time with rolling totals  

---

## 📈 Key Insights Extracted  
- Countries with the **largest increase in life expectancy** over decades  
- Strong **positive correlation** between GDP and Life Expectancy  
- **Developed nations** have consistently higher average life expectancy compared to developing ones  
- **BMI also correlates** with longevity, though weaker than GDP  
- Declining **adult mortality rates** indicate global health improvements  

---

## 🚀 How to Run the Project  
1. Clone this repository:  
   ```bash git clone https://github.com/yourusername/your-repo-name.git
   cd your-repo-name
