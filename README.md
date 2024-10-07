# CS506-Final-Project

**Note:** A majority of the information below was taken from the Spark! document provided [here](https://docs.google.com/document/d/1s_OOKYuMY0NAXTanh5ElXVzlXIaA8Yr_28oRL6CbOsw/edit). Much of this document is subject to change as the class progresses (we will be learning new data science tools and methodologies). 

## What is the description of the project?

Each year, the City of Boston establishes a total amount for its operating and capital budgets. The operating budget focuses on covering everyday expenses for the city, such as paying personnel like teachers, police officers, and firefighters, as well as funding services like housing, recycling, and transportation. The capital budget, funded through a mix of sources like bonds, city funds, and grants (state, federal, or private), is aimed at acquiring or enhancing the city's physical assets and financing the related work. This project seeks to analyze how these budgets are allocated.

## What are the clear goal(s)?

For the **BASE** project (main part we are trying to accomplish at the end of the semester):

- Perform exploratory data analysis with around 5 to 7 visualizations (and discuss any initial patterns that can be explored further). Most of the goals are pretty similar, just different categories to group by.
  - **SPENDING BY DEPARTMENT** Analyze how the budget is distributed among various city departments (e.g., police, education, health, transportation) over time.
    - Which departments have seen the largest budget increases or cuts?
    - Are certain deparmtnets consistently under or over projected budget?
    - *METRIC* Percentage change in spending per department year-over-year.
    - *METRIC* Comparison between projected vs. actualy spending per department.
  - **SPENDING BY BUDGET** Break down the spending into categories such as salaries, infrastructure, public servfices, etc., and analyze how the alloation within each category has shifted.
    - Are there any shifts in budget priorities?  (e.g. increased spending on health services vs. infrastructure)
    - Which categories are consistently growing or shrinking?
    - *METRIC* Breakdown of the percentage of the budget allocated to each category.
    - *METRIC* Year-over-year changes in each category.
  - **SPENDING BY GEOGRAPHY** Identify geographical areas (e.g., districts, neighborhoods) receiving the most/least funding.
    - Which areas receive the most funding, and how does this compare to population or other needs-based factors?
    - Are there geographic disparities in spending?
    - *METRIC* Total spending by geography.
    - *METRIC* Per capita spending by geography (spending per resident in each area).
  - **SPENDING BY PROGRAM** Analyze spending by specific programs (e.g., education programs, health initiatives, public safety programs).
    - Are certain programs consistently over/under budget?
    - How has funding for specific programs evolved over time?
    - *METRIC* Total and per capita spending on key programs.
    - *METRIC* Projected vs. actual spending on major programs.
  - **PER CAPITA SPENDING** Measure spending per capita (for example, per citizen or per child in schools) to assess how equitably funds are distributed relative to the population.
    - Are certain areas or programs underfunded when adjusted for population size?
    - How has per capita spending changed over time?
    - *METRIC* Spending per capita for each department, category, or geography.

For the **EXTENDED** project (optional, if we have time):

- How has housing cost or rental prices impacted the city’s spending on affordable housing?
  - Is there a direct correlation between rising housing costs and increased budget allocation to affordable housing programs?
- What other economic factors have influenced changes in Boston’s budget allocation?
  - Are there any patterns of budget changes that align with broader economic trends?
- How has the city's revenue stream influenced spending?
  - What role do non-tax revenue sources, such as grants or federal funding, play in shaping specific budget allocations?

## What data do you need to gather and how will you collect it?

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

## How you plan on modeling the data?

- **Linear Regression:** To determine the relationship between two continuous variables, such as how population growth in specific districts impacts the city’s spending on public services. This can reveal how budget allocations for areas like education or infrastructure scale with population size, helping to identify whether certain regions receive proportionate funding based on their growth.
- **Clustering:** To group city departments, budget categories, or geographic areas with similar spending patterns. This could highlight districts that consistently receive similar funding levels for infrastructure or public safety, helping to identify patterns of equitable or unequal distribution across neighborhoods. Clustering by geography could also reveal regions that have similar population sizes but differing budget allocations.
- **Decision Trees:** To analyze which factors most strongly influence geographic budget allocations. For example, decision trees can identify whether factors like population density, economic status, or crime rates have the greatest impact on how much funding different areas receive for services like public safety or housing. This can help uncover disparities in budget allocations across neighborhoods.
- **Time-Series Analysis:** To forecast future budget allocations by district based on historical spending data and economic trends. This can project how the budget for specific neighborhoods or districts might evolve, helping to predict which areas will see increased funding for projects like transportation or education based on past trends.
- **Neural Networks:** To model complex relationships between multiple factors influencing geographic budget allocations. Neural networks can predict how funding will be distributed across neighborhoods by analyzing variables like population growth, economic disparities, housing costs, and infrastructure needs, capturing the non-linear relationships that drive budget decisions in different regions of the city.

## How do you plan on visualizing the data?

Our group plans on using a [website](https://www.data-to-viz.com/) to help us decide what visualizations we can make.

- **Histograms:** To compare different budget categories or departments.
- **Box plots:** To display the distribution of budget allocations.
- **Scatter plots:** To explore relationships between variables (e.g., housing cost vs. affordable housing budget).
- **Line plots:** For visualizing time-series data (e.g., trends in spending over several years).

## What is your test plan? 

- Preprocess data (removing nulls, removing duplicates, imputing missing information, and more).
- Perform exploratory data analysis using Python libraries like Matplotlib, Seaborn, Pandas, and Scipy.
- Fit machine learning models to data (please refer to the previous section for more specifics):
  - Split data into training, validation, and testing datasets.
  - Perform hyperparameter tuning (if needed) using validation set. 
  - For regression models, use techniques like cross-validation and calculate performance metrics (R-squared, Mean Squared Error).
  - For clustering, evaluate the quality of clusters (e.g., using the silhouette score).
