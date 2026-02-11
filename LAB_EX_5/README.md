# Smart Campus Monitoring Dashboard – Power BI

## Objective
The objective of this experiment is to design and develop an **interactive Smart Campus Monitoring Dashboard** using **Power BI**.  
The dashboard monitors student academic performance, attendance, and subject-wise resource utilization with dynamic filtering and drill-down analysis.

---

## Dataset Description
The dataset used is `student_performance_dataset.csv`, which contains academic and attendance details of students.

### Key Attributes:
- **Student_ID** – Unique identifier for each student  
- **Department** – Department name  
- **Semester** – Current semester  
- **Subject** – Subject name  
- **Assignment_Marks** – Assignment score  
- **Internal_Test_Score** – Internal test marks  
- **Attendance_Percentage** – Attendance percentage  

---

## Tools Used
- **Microsoft Power BI Desktop**
- **Power Query Editor**
- **DAX (Data Analysis Expressions)**

---

## Data Preparation

### 1. Import Dataset
- Open **Power BI Desktop**
- Select **Get Data → Text/CSV**
- Load `student_performance_dataset.csv`

### 2. Transform Data
- Click **Transform Data**
- Verify column names and data types

### 3. Create Calculated Column

```DAX
Overall_Academic_Score =
    'StudentData'[Assignment_Marks] +
    'StudentData'[Internal_Test_Score]
```

### 4. Apply Changes
- Click **Close & Apply**

---

## Dashboard Components

### KPI Cards
- **Average Attendance Percentage**
- **Average Overall Academic Score**

### Slicers
- Department Slicer
- Semester Slicer

### Clustered Column Chart
- **X-Axis:** Department  
- **Y-Axis:** Average Overall Academic Score  
- Drill-down hierarchy:
  - Department → Semester → Subject  

### Donut Chart
- Shows **count of students per subject**
- Represents subject-wise resource utilization

---

## Interactivity Features
- All visuals are interconnected.
- Selecting a department or semester updates:
  - KPI cards
  - Column chart
  - Donut chart
- Drill-down enabled for deeper analysis.

---

## Key Insights
- Performance differs across departments.
- Attendance impacts academic performance.
- Drill-down helps identify semester and subject-level trends.
- Subject distribution shows resource utilization patterns.

---

## How to Open the Dashboard
1. Install **Power BI Desktop**
2. Open the `.pbix` file
3. Refresh data if required
4. Use slicers and drill-down options to explore insights

---

## Conclusion
This dashboard demonstrates how interactive visual analytics in Power BI can be used for smart academic monitoring and data-driven decision-making.

---

## Author
**Roll No:** 23BAD072  
**Tool:** Power BI  
**Course:** Exploratory Data Analysis Lab
