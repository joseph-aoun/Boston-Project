# CS506-Final-Project

**Note:** A majority of the information below was taken from the Spark! document provided [here](https://docs.google.com/document/d/1s_OOKYuMY0NAXTanh5ElXVzlXIaA8Yr_28oRL6CbOsw/edit). Much of this document is subject to change as the class progresses (we will be learning new data science tools and methodologies). 

## Description of the project:

Each year, the City of Boston establishes a total amount for its operating and capital budgets. The operating budget focuses on covering everyday expenses for the city, such as paying personnel like teachers, police officers, and firefighters, as well as funding services like housing, recycling, and transportation. The capital budget, funded through a mix of sources like bonds, city funds, and grants (state, federal, or private), is aimed at acquiring or enhancing the city's physical assets and financing the related work. This project seeks to analyze how these budgets are allocated.

## Clear goal(s):

For the **BASE** project:

- Perform exploratory data analysis with around 5 to 7 visualizations (and discuss any initial patterns that can be explored further).

For the **EXTENDED** project:

- Economic analysis (how has housing cost or rental prices, for example, impacted the city’s spending on affordable housing?) There are a variety of data sets available here and ideas for other economic variables here.

## What data needs to be collected and how you will collect it:

Data is already provided for us by Spark!

For the **BASE** project:

- Operating Budget Data: This dataset should include the detailed breakdown of the operating budget for the City of Boston. It should provide information on the budget allocations for different departments, services, and personnel expenses such as teachers, police officers, and firefighters.
  [2024 Future: FY24 RECOMMENDED OPERATING BUDGET](https://data.boston.gov/dataset/operating-budget/resource/8f2971f0-7a0d-401d-8376-0289e3b810ba)
- Capital Budget Data: This dataset should include the capital budget for the City of Boston, specifying the funding sources, project descriptions, and budget allocations for acquiring or improving physical assets owned by the city.
  [2024 Future: FY24 RECOMMENDED CAPITAL BUDGET PLAN](https://data.boston.gov/dataset/capital-budget/resource/c62d666e-27ea-4c03-9cb1-d3a81a1fb641)

For the **EXTENDED** project:

- [Housing Cost](https://library.bu.edu/c.php?g=1151960&p=8408504)
- [FRED Economic Data for Boston](https://fred.stlouisfed.org/tags/series?t=boston)
- [Economic Variables](https://www.bostonplans.org/getattachment/c4bc18e1-d0a6-45dc-b26d-902078e6a491)

## How you plan on modeling the data: 

- Linear regression
- Clustering.
- Decision trees.
- Time-series analysis.
- Neural networks.

## How do you plan on visualizing the data? (e.g. interactive t-SNE plot, scatter plot of feature x vs. feature y)

Our group plans on using a [website](https://www.data-to-viz.com/) to help us decide what visualizations we can make.

- Histograms: To compare different budget categories or departments.
- Box plots: To display the distribution of budget allocations.
- Scatter plots: To explore relationships between variables (e.g., housing cost vs. affordable housing budget).
- Line plots: For visualizing time-series data (e.g., trends in spending over several years).

## What is your test plan? 

- Preprocess data (removing nulls, removing duplicates, imputing missing information, and more).
- Perform exploratory data analysis using Python libraries like Matplotlib, Seaborn, Pandas, and Scipy.
- Fit machine learning models to data:
  - Split data into training, validation, and testing datasets.
  - Perform hyperparameter tuning (if needed) using validation set. 
  - For regression models, use techniques like cross-validation and calculate performance metrics (R-squared, Mean Squared Error).
  - For clustering, evaluate the quality of clusters (e.g., using the silhouette score).
