# Financial Data ETL Pipeline

An end-to-end Data Engineering pipeline that extracts live financial data, performs automated transformations, and loads it into a persistent SQL database.

## Project Overview
As a 3rd-year Computer Engineering student at Istanbul Aydin University, I developed this project to demonstrate core **Data Engineering** principles. The system automates the flow of market data, ensuring data integrity and persistence—skills that are essential for data-driven sectors like banking and finance.

### Tech Stack
* **Language:** Python 3.x
* **Libraries:** Pandas, SQLAlchemy, yfinance
* **Database:** SQLite (Relational Storage)
* **Workflow:** ETL (Extract, Transform, Load)



---

## How It Works

### 1. Extract
Using the `yfinance` API, the system retrieves 1-minute interval market data (e.g., BTC-USD) for the last 24 hours.
* **Error Handling:** Implemented `try-except` blocks to ensure the pipeline remains robust during API connection issues.

### 2. Transform
Raw data is processed using **Pandas** to meet production-ready standards:
* **Cleaning:** Automatically removes unnecessary columns like `Stock Splits` and `Dividends`.
* **Normalization:** Converts column names to lowercase for seamless SQL compatibility.
* **Metadata:** Adds `ticker` symbols and `ingested_at` timestamps to maintain a clear **Audit Trail**.
* **Timezone Handling:** Standardizes timestamps by removing UTC offsets to ensure database consistency.

### 3. Load
The cleaned data is streamed into a **SQLite** database (`market_data.db`) using **SQLAlchemy**.
* **Persistence:** Utilizes `if_exists='append'` logic to build a continuous time-series dataset, preventing data loss across multiple runs.

---

## Results & Validation
During testing, the pipeline successfully processed and stored over **550+ records** with 100% data integrity. This architecture serves as a foundation for more complex projects, such as my current work on **Hybrid Energy Potential Assessment**.



## Getting Started

1. **Clone the repository:**
   ```bash
   git clone [https://github.com/silapeksen/financial-data-pipeline.git](https://github.com/silapeksen/financial-data-pipeline.git)

2. **Install dependencies:**
   ```bash
   pip install -r requirements.txt

3. **Run the pipeline:**
   ```bash
   python data_ingestion.py

4. **Verify the database:**
   ```bash
   python check_db.py

---

## 👤 Author

<div align="center">
  <img src="https://img.shields.io/badge/Author-Sıla%20Pekşen-blue?style=for-the-badge&logo=github" alt="Sıla Pekşen">
</div>

<p align="center">
  <b>3rd Year Computer Engineering Student</b><br>
  <i>Passionate about Data Engineering, Automation, and Backend Systems.</i>
</p>

<div align="center">
  
  [![LinkedIn](https://img.shields.io/badge/LinkedIn-0077B5?style=for-the-badge&logo=linkedin&logoColor=white)](www.linkedin.com/in/sila-peksen)
  [![GitHub](https://img.shields.io/badge/GitHub-100000?style=for-the-badge&logo=github&logoColor=white)](https://github.com/silapeksen)
  [![Mail](https://img.shields.io/badge/Mail-D14836?style=for-the-badge&logo=gmail&logoColor=white)](mailto:slpkn503@gmail.com)

</div>

<p align="center">
  "Turning raw data into meaningful insights, one pipeline at a time."
</p>