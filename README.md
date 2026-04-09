# PlatinumRx Data Analyst Assignment - Prathish

Hi! This is my submission for the Data Analyst role at PlatinumRx. I have completed all three phases of the assignment, focusing on SQL database management, Spreadsheet data cleaning, and Python logic.

## 📁 What's in this Repo?

* **SQL/**: Contains two files. One for the Hotel booking system and another for the Clinic profit/loss analysis.
* **Python/**: Includes two scripts for time conversion and string cleaning.
* **Spreadsheet Link**: Access to my data cleaning and pivot table work is below.

---

## 🏨 Phase 1: SQL Logic
I built schemas for two different systems:
1.  **Hotel System**: I focused on joining `bookings` with `commercials` to find the total bill amounts. 
    * *Key Query*: Finding the 2nd highest bill using `LIMIT 1 OFFSET 1`.
2.  **Clinic System**: I used `strftime` to group data by month so I could subtract expenses from sales to find the monthly profit.

---

## 📊 Phase 2: Spreadsheet Analysis
For this part, I worked with ticket and feedback data.
* **VLOOKUP**: I used this to pull the `created_at` date into the feedback sheet.
* **Logic Columns**: I created formulas to check if a ticket was closed on the **same day** and in the **same hour**.
* **Pivot Tables**: I summarized the data by `outlet_id` to see which locations resolve issues the fastest.

🔗 **[View my Google Sheet Here](https://docs.google.com/spreadsheets/d/12UBbD7_CcNufRBJk6Rnpd6d_xwEuZP6KhxSpolKgwNQ/edit?usp=sharing)**

---

## 🐍 Phase 3: Python Tasks
1.  **Time Converter**: A simple script using `//` (floor division) and `%` (modulo) to turn minutes into a readable "X hrs Y mins" format.
2.  **Duplicate Remover**: I used a `for` loop to build a new string character by character, only adding a letter if it wasn't already there.

---

## 💡 What I Learned
* How to handle `NULL` values or duplicates in SQL using constraints.
* The importance of data types in Excel when comparing timestamps.
* Keeping code clean and commented so others can read it easily.

**Thank you for reviewing my work!**
