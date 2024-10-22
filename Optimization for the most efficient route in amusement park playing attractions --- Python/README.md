# Optimized the most efficient route for amusement park attractions

## Project Overview

This project aims to analyze the average waiting times and walking distances between various attractions. It includes calculations for waiting times, walking times, and total times at different attractions using provided datasets and Python scripts.

### Project Structure

- **Data Files:**
  - `Attractions Avg Watingtime (mins).xlsx`: Contains data on the average waiting times (in minutes) for different attractions.
  - `distance_attraction.xlsx`: Contains data on walking distances between attractions.

- **Python Scripts:**
  - `TotalTime.py`: A script that calculates the total time spent at each attraction, combining both waiting and walking times.
  - `WaitTime.py`: A script that handles the calculation and processing of average waiting times for each attraction.
  - `WalkTime.py`: A script that calculates the walking time between different attractions based on the data in `distance_attraction.xlsx`.
  - `test.py`: A test script to validate functionality and correctness of the other Python scripts.

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

## Usage

Each script performs specific calculations related to the attractions. You can modify the datasets or scripts to analyze different data or scenarios.

### Datasets

- `Attractions Avg Watingtime (mins).xlsx`: Modify this file to update the waiting time data.
- `distance_attraction.xlsx`: Modify this file to update the walking distance data between attractions.

### Python Scripts

- `TotalTime.py`: Combines both waiting and walking times.
- `WaitTime.py`: Focuses on waiting time calculations.
- `WalkTime.py`: Focuses on walking time calculations.

## Results

The results from the calculations are displayed in the terminal when you run the Python scripts. You can also adapt the scripts to output the results to a file or further process the data as needed.

## Contributing

If you'd like to contribute to this project, feel free to create a pull request or open an issue for discussion.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.


