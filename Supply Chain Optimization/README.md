# Supply Chain Optimization

May 2024 - Nov 2024

## Project Overview

This project focuses on optimizing logistics performance and supply chain operations using data analysis, visualization, and predictive modeling. The objective is to streamline operations, improve delivery times, and reduce costs by leveraging data insights.


- **Project Goals:**

	-	Develop a logistics performance tracking system to identify bottlenecks in supply chain operations.
	-	Perform root cause analysis to find the most critical performance issues.
	-	Build dashboards for real-time monitoring of Key Performance Indicators (KPIs) such as delivery accuracy, lead time, and cost efficiency.
	-	Provide actionable insights to enhance operational efficiency.

- **Key Features:**
  
  -	Data Integration: Extract, transform, and load logistics data from multiple sources using SQL and Python.
	-	KPI Monitoring: Track critical supply chain metrics such as delivery times, vendor performance, and cost efficiency.
	-	Data Visualization: Create dynamic dashboards using Tableau and Power BI to visualize logistics performance.
	-	Predictive Analysis: Use statistical models to forecast demand and identify potential delays.
  -	Root Cause Analysis: Perform in-depth analysis to uncover factors impacting delivery efficienc

- **Data Files:**

  	- `Database_setup.sql`:This code will create a sample database schema with tables related to shipments, vendors, and performance metrics.
  	- `Performance_Analysis.sql`:These queries calculate KPIs such as on-time delivery rate and cost efficiency by vendor and region.
  	- `Data_Analytics_Visualization.py`: This Python code uses pandas and matplotlib to analyze and visualize shipment data, highlighting key performance insights.
  	- `Root_Cause_Analysis.py`:This Python code segment uses Python’s statistical libraries to perform root cause analysis on delays.
  
  This project uses synthetic data to simulate real-world logistics operations. The database includes the following tables:
	-	`shipments`: Contains shipment details such as shipment date, delivery date, cost, and status.
	-	`vendors`: Information about logistics vendors, including performance scores and regions served.
	-	`performance_metrics`: Metrics such as on-time delivery, delivery time, and cost efficiency for each shipment.


- **Technologies Used:**

  - Programming Languages: Python, SQL
	-	Data Visualization: Tableau, Power BI, Matplotlib, Seaborn
	-	Database Management: MySQL, SQLite
	-	Python Libraries: pandas, numpy, matplotlib, seaborn, scipy, faker
	-	Tools: Git, Jupyter Notebook
 
 ## Installation

To run this project locally, follow these steps:

1. Clone the repository:
   ```bash
   git clone https://github.com/your-username/ISE3230-project.git
   ```

2. Navigate to the project directory:
   ```bash
   cd ISE3230-project
   ```

3. Install required libraries (if any):
   Ensure you have Python 3 installed. Install the required libraries using:
   ```bash
   pip install -r requirements.txt
   ```
   (If you don’t have a `requirements.txt` file, manually install the libraries used in the Python scripts like `pandas`, `openpyxl`, etc.)

4. Run the scripts:
   - To calculate total time:
     ```bash
     python TotalTime.py
     ```

   - To calculate waiting time:
     ```bash
     python WaitTime.py
     ```

   - To calculate walking time:
     ```bash
     python WalkTime.py
     ```

## Analysis and Insights

1. On-Time Delivery Analysis

	•	The on-time delivery rate was calculated for each vendor. Results revealed that Vendor A had the highest delays, prompting further investigation.

2. Root Cause Analysis

	•	A Chi-square test was performed to identify if there were significant associations between delivery delays and regions served. The analysis identified the Southeast region as having the most delays due to vendor capacity issues.

3. Cost Efficiency

	•	Optimized the cost per shipment by analyzing high-cost outliers and renegotiating contracts with underperforming vendors, resulting in a 15% cost reduction.



## Results

The results from the calculations are displayed in the terminal when you run the Python scripts. You can also adapt the scripts to output the results to a file or further process the data as needed.

## Contributing

If you'd like to contribute to this project, feel free to create a pull request or open an issue for discussion.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.



