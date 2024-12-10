# CS 506 Boston Budget Final Project
### YT Presentation Link: https://youtu.be/VOY79GzFD28
### Data Link: https://drive.google.com/drive/folders/19DqIJCp8-4ZRq8dY3uqzIVpVTMs_Ej46?usp=sharing

## Operating Budget

The operating budget is the expenses generated to run the government on a day-to-day basis. This dataset contains columns such as Department, Programs, FY22 spending, FY23 Spending, FY24 spending, and the budget for FY25. ‘FY’ in this case refers to Fiscal Year, which means a one year period that the government or other organization used for financial reporting. When looking at this dataset, there was a lot of missing data (seen as ‘#Missing’ in the operating budget, which was replaced by 0). Some programs have missing data for the fiscal year of FY22 - FY24. We removed them for this visualization.

### Program Spending

The "Top 10 Programs by Largest Spending (FY22 - FY24)" bar chart displays the most significant financial allocations across various programs within a specified period, emphasizing the key areas where funds are primarily directed. The program with the highest spending is "Pensions," with expenditures exceeding $1 billion, signifying a substantial investment in retiree benefits. Following closely are "BPS Finance" and "BPS Operations," highlighting significant funding for Boston Public Schools' administrative and operational costs. Other high-expenditure areas include "Charter School Tuition," "Boston Fire Suppression," and "Health Insurance," illustrating priorities in education, public safety, and employee benefits. "Bureau of Field Services" and "Debt Service" also command notable portions of the budget, reflecting essential services and fiscal responsibilities. Programs for "K-8" and "Elementary" education round out the top ten, indicating strong support for foundational educational services. This distribution of funds underscores a balanced approach to addressing pensions, education, public safety, and essential services in the city's budget strategy.

![plot](./images/vi-figure-1.jpeg)


The bar chart titled "Top 10 Programs by Smallest Total Spending (FY22 - FY24)" highlights the programs that received the lowest funding within this period, with allocations generally below $0.3 million. "Human Rights History" and "Equity & Inclusion History" are the least funded programs, reflecting a minimal budget allocation towards these historical and social initiatives. Other low-funded areas include "Internal Affairs Oversight Panel (IOAP)" and "Trust," suggesting limited financial support for oversight and trust-building functions. Programs like "Civilian Review Board (CRB)," "Consumer Affairs," and "Diversity" receive modest funding, indicating these areas are relatively low on the city's fiscal priorities. Meanwhile, "Coordinated Response Team," "Grants Administration," and "Tourism" have slightly higher, yet still minimal, budgets, showing restrained investments in emergency response coordination, administrative support, and tourism. Overall, these allocations suggest that, compared to other sectors, these programs are designated as lower-priority areas within the city's budgetary strategy.


![plot](./images/vi-figure-2.png)


The chart displays the top 10 programs in Boston with the highest budget growth from fiscal year 2022 (FY22) to fiscal year 2024 (FY24), reflecting key city priorities. Leading with around 600% growth, the Trust program tops the list, followed closely by Revenue Monitoring at approximately 550%, signaling a focus on revenue oversight. Programs related to Equity and Affirmative Action saw growth near 500% and 400%, respectively, indicating a strong commitment to inclusion and diversity. The Mayor’s Office of Community Safety experienced similar growth, emphasizing public safety. Programs like Program & Partnerships and Turnaround and Transformation grew around 300%, likely supporting reform and collaboration efforts. Additionally, significant investments in LCA (Language and Communication Access), Office of Civic Organizing, and Small & Local Business reveal a focus on civic engagement and local economic development. These budgetary increases demonstrate Boston’s strategic emphasis on equity, safety, financial stability, and economic support for local communities. Future analysis could examine the impacts of these investments to ensure they achieve the intended social and economic outcomes.

![plot](./images/vi-figure-3.jpeg)


## Capital Budget Analysis

### Overview
The **Capital Budget dataset** for Boston’s FY25 outlines planned investments in the city's infrastructure and public assets. It includes detailed information about each project, such as the managing department, project name, scope, target neighborhood, and allocated budget. This budget focuses on long-term improvements for city facilities, roads, parks, and other community spaces, reflecting Boston’s commitment to maintaining and developing public infrastructure.

Notably, there was no missing data, so no preprocessing was required for this dataset.

---

### Geographic Spending

We examined the capital budget by geography (neighborhood) to understand if funding aligns with population needs and to uncover potential geographic disparities in spending. By looking at total spending and per capita spending, we aimed to see which neighborhoods receive the most funding in absolute terms and relative to their populations. This geographic breakdown helps identify areas where Boston may prioritize development, maintenance, or economic revitalization and sheds light on possible funding imbalances across neighborhoods.

#### **Total Project Budget by Neighborhood**

![plot](./images/george-figure-1.png)

- **Citywide** received the highest funding overall, likely supporting projects that benefit the entire city. 
- Among specific neighborhoods, **Charlestown**, **Downtown/Government Center**, and **Roxbury** received significant funding allocations. 
  - These areas may have higher project needs, such as infrastructure improvements or community development initiatives.


**Distribution of Project Status**

![download](https://github.com/user-attachments/assets/186318fa-f364-432c-82fb-174ca939c9ff)

This pie chart shows the distribution of project statuses for Boston’s FY25 capital projects, offering insight into the stages of various city initiatives: 
- The large proportion of projects **"In Design"** and **"To Be Scheduled"** suggests a focus on forward planning and preparation. 
- The **"Annual Program"** and **"In Construction"** categories demonstrate that Boston also prioritizes active and recurring projects, ensuring both new and essential services are being maintained. 


### Per Capita Spending by Geography

![plot](./images/george-figure-3.png)

To meaningfully compare budget allocations relative to population, we: 
1. Collected population data from the **2020 Census**. 
2. Aligned neighborhood names between the census and the capital budget datasets.
3. Merged the population data with the capital budget to calculate **per capita spending**

This process uncovered potential geographic disparities in funding.

#### **High Budget Per Capita**

- **Chinatown**, **Charlestown**, **Downtown/Government Center**, and **North End** have high budgets per capita. 
  - These are central or historically significant areas. 
  - Funding likely supports infrastructure, tourism, economic development, and historical preservation. 
  - This trend indicates prioritization of central or historically significant neighborhoods, possibly to maintain attractiveness for tourism and economic activities. 

#### **Low Budget Per Capita**

- Neighborhoods like **Allston/Brighton**, **Fenway-Kenmore**, and **Hyde Park** receive lower budgets per capita despite substantial populations. 
  - These areas might not receive the same level of investment due to their distance from the city center or primarily residential nature. 
  - This could suggest a lower emphasis on neighborhood-specific projects in these areas, possibly due to fewer economic or historical landmarks.

---

### Immigration Percentage by Neighborhood

![immigration%](https://github.com/user-attachments/assets/8ab71a08-ddff-45c3-bf5a-a07816c89542)

- #### **Highest Immigration Percentages** 
  - **East Boston** has the highest immigrant population percentage, standing out significantly from other neighborhoods. 
  - **Chinatown** and **Fenway-Kenmore** also have notable immigrant representation.
- #### **Moderate Immigration Percentages** 
  - Neighborhoods like **Allston/Brighton**, **West End**, and **Mission Hill** exhibit moderate immigrant percentages. 
- #### **Lowest Immigration Percentages** 
  - **South Boston**, **North End**, and **Charlestown** have the lowest percentages, indicating fewer immigrant populations relative to their total populations.

---
### Immigration and Total Budget per Neighborhood
![immigration:budget](https://github.com/user-attachments/assets/7a6a6a91-3223-40de-aadc-32aa1b18db1f)

#### Observations
1. **East Boston**:
  - Despite having the highest immigration percentage, it does not have the highest total budget allocation.
  - Suggests a potential disparity between immigrant populations and funding. 
2. **Chinatown**:
  - Receives significant budget allocation compared to its relatively high immigrant population. 
3. **Dorchester**: 
  - While it has moderate immigration percentages, it receives substantial funding, likely due to prioritization of infrastructure or development needs.

#### Insights
- **Spending Patterns**: Some neighborhoods with high immigrant populations (e.g., **East Boston**, **Fenway-Kenmore**) do not receive proportional funding. 
- **Policy Implications**: Highlights an opportunity to assess funding distribution to ensure alignment with demographic needs, particularly in neighborhoods with large immigrant communities.
- **Outliers**: Neighborhoods like **Chinatown** and **Dorchester** seem to receive higher budgets relative to their immigrant percentages, suggesting additional factors influence spending decisions.

--- 

### Department Spending

For department spending, we looked at the Boston City government planned capital budget for FY25 - FY29. 

- The clear leader in financing is going to be the Boston Public School Department taking up more than 25%. The following data makes sense as a large number of schools in the area require constant government funding to support their facilities and maintenance. On top of that staffing and salaries along with various student needs require significant financial resources. 
- A lot of the spending is going to be directed towards the Public Works Department. The city is planning to renew its infrastructure and the allocated costs show this very well. Worth noting,  the mentioned department also covers a lot of environment-directed initiatives such as recycling and waste management, which became a trend in big cities over the recent time.
- Further, a lot is also invested in renovating the city as a whole as Property Management and Park and Recreation are the next 2 biggest spending categories. A lot of space planning and maintenance repairs are going to be done by the city within the next 5 years.

![plot](./images/daniel-figure-1.png)

![plot](./images/daniel-figure-2.png)

---

### Public School Spending

Boston has a big public school network consisting of 137 schools spread across the city to serve its large population. More than $1.2B are allocated altogether towards the need of public schools.

![plot](./images/daniel-figure-3.png)

Let’s take a look at how exactly the money is going to be distributed among schools across different parts of the city.

- A lot of the government initiatives are directed towards citywide needs of the public school system. Despite that, there is also a visible contrast between how much money in total each neighborhood is receiving.
- Chinatown is the neighborhood to receive the most allocated funds out of all the neighborhoods. The reason for this is the construction of a completely new facility for Josiah Quincy Upper School, which alone is already over $200M.
- A lot of the spending is directed towards other central districts of the city such as Roxbury and South End.
- Dorchester, despite being home to 25 public schools, is among the bottom 50% of neighborhoods in terms of budget allocations.
- Neighborhoods such as Jamaica Plain, Mission Hill, and South Boston receive very little to no funding from the city department.

![plot](./images/daniel-figure-4.png)

Comparing neighborhoods simply by their total spending would not be efficient as they are different in size, number of public schools located in them which are also of different size as well. We can take the population of school aged children living in each neighborhood (information taken from Boston Public Schools website here) and use it to calculate spending per student in each district respectively.

**Note**: Further analysis only focuses on districts with available data on both budget allocations and school aged population. This constitutes the majority of the neighborhoods. For the most part, only smaller central business districts with no schools are the ones being excluded. Only direct budget allocations (not counting citywide plans) are counted to better compare individual needs of each district.

- Given the large reconstruction project and small size of the neighborhood, the spending per student living in Chinatown reaches an enormous sum of $400,000 dollars. The second neighborhood by the criteria, South End, only allocated $30,000 per student.
- Roslindale, Charlestown, Roxbury and Mattapan got around $10,000 - $20,000 per student.
- All of the other districts have less than $5,000 per capita with neighborhoods like Hyde Park and Fenway not having any direct allocations.

Safe to say, there is quite a large disparity between those numbers. There is a need to add that, obviously, schools may have students that live in other districts. Regardless of that, proximity factor is still quite vital and we can use our spending per capita metric to illustrate whether the city proportionally allocates funds when compared to the density of students in differently sized areas. 

![plot](./images/daniel-figure-5.png)

A more interesting question could be how public school budget allocations correlate with how developed the respective neighborhoods are. Do more wealthy parts of the city get better funding on average? Does the Boston government try to consider socio-economic factors into account when allocating the budget?

We can use the data from the most recent American Community Survey on average income in Boston neighborhoods found here. Given this, let’s try to see if there is a relationship between average income and spending per student across different neighborhoods of Boston. When plotted, we achieve, the following figure:

![plot](./images/daniel-figure-6.png)

The slope of our regression line is 0.86 which corresponds to the p-value of 0.335. With these numbers,it is clear we do not have sufficient evidence to confirm that there is correlation between how affluent the neighborhood is and how much funding do its public schools get.

Fair to say, it is a good thing that the Boston city government tries to equally allocate the budget among its different parts. This seems especially important from the perspective of less fortunate families in Roxbury and Mattapan who also cannot afford private schools for their children. 

However, we also cannot say for sure if there is a complete lack of correlation between the two numbers as we still received a positive slope and p-value that is not extremely high. Obviously, there are only so many districts in Boston which limits our pool of data.

It can also be argued that perhaps less fortunate parts of the city might, on the contrary, need respectively higher budgets due to historic reasons as children from more poor neighborhoods often do not have access to as many opportunities as their peers from better parts of the city. In this case, careful budget control could really help with solving socio-economic disparities in the city. Another question worth asking appears when we look at Chinatown, which is getting a brand new modern school built in it using city’ money. Would a project like this be done in the near future in Roxbury or Mattapan, for example? Would any significant projects at all be directed towards less affluent parts of the city any time soon?

## Checkbook Data

### General Information

For these visualizations, we decided to use the checkbook spending data. According to the website, the checkbook data, “provides up-to-date financial information about the City’s expenditures [and] … is updated monthly, with certain personal information omitted in order to ensure privacy” (https://data.boston.gov/dataset/checkbook-explorer). It is important to note that this data does not contain any payroll information. There were individual data files for each fiscal year from 2011 to 2024, so we needed to concatenate all the datasets. Here were our processing steps:

### Preprocessing and Cleaning Data

**Data Standardization** (standardize_column_names function):
This function handles the messy reality of government data where column names might be inconsistent across fiscal years. It creates a standardized format by converting everything to lowercase and replacing spaces with underscores. There's a specific mapping dictionary that handles common variations in column names (like 'vendor name' → 'vendor_name').
**Data Type Processing** (process_data_types function):
Given we're dealing with financial data, it's crucial to ensure consistent data types. We convert dates in the 'entered' column to proper datetime format. Handle department names by converting them to strings and filling any missing values with 'Unknown'. Then, we properly format monetary amounts by removing currency symbols ($) and commas, converting them to float values.
**Save Function** (save_dataframe function):
Ensures dates are saved in a consistent MM/DD/YYYY format. Uses UTF-8 encoding with BOM (byte order mark) to handle special characters.
**Main Processing Function** (process_checkbook_files):
This is where the heavy lifting happens for combining fiscal years 2011 - 2024. Uses a glob pattern to find all checkbook CSV files in the specified directory. Read each file with specific data type specifications to prevent issues. Applies the standardization and data type processing to each file. Concatenates all the fiscal year data into one comprehensive dataset. Saves the final cleaned dataset.

### Exploratory Analysis

Our group had to map departments to their assigned cabinets, this was done by looking at the Boston city government structure (https://www.boston.gov/departments/311/city-boston-government) on their official website and the operating budget dataset. Then, we aggregated total expenditures made by each cabinet per month and graphed the trend lines below.

![plot](./images/matthew-figure-1.png)

As expected, the education cabinet (which only contains the Boston Public School department), has made plenty of expenditures month-over-month. It is expected to see fluctuations in spending (as we shouldn’t see a cabinet consistently spending high amounts of money every single month). However, it is interesting to note that spending seems to have increased significantly past the year 2022. This could reflect the introduction of new programs meant for students or new facilities being built.

![plot](./images/matthew-figure-2.png)

Here is an interesting case with the Equity & Inclusion Cabinet. We actually see little to no spending prior to the year 2020, however, around the year 2021 we notice a significant increase in spending by this cabinet. This timing aligns with broader societal shifts and Boston's enhanced focus on equity initiatives surrounding racial justice movements and communities of color. The increased spending reflects the City's commitment to addressing systemic inequities through dedicated resources and programs. It's worth noting that prior to 2020, equity and inclusion initiatives may have been distributed across other departments or cabinets, making it harder to track total spending in these areas.

![plot](./images/matthew-figure-3.png)

As we were investigating cabinets, we reached an unusual graph. The People Operations Cabinet consists of these departments: Labor Relations, Human Resources, Workers Compensation Fund, Health Insurance, Registry Division, and Office of People Operations. The majority of spending prior the year 2022 is due to health insurance, so it is pretty odd that spending suddenly dropped for the People Operations Cabinet. We decided to investigate further as to why health insurance spending decreased for 2023, and we managed to find an official news article released by mass.gov (https://www.mass.gov/news/health-insurance-plan-default-enrollment-placements-for-benefits-effective-july-1-2023) that talked about a merger betwen different health plans. However, this does not seem relevant to health insurance spending by the People Operations Cabinet and the noticeable drop in spending. If we actually look at official documentation for the operating budget for health insurance, notice how spending is actually increasing rather than decreasing from fiscal year 2020 to fiscal year 2023 (the file can be found publicly available by searching for "boston people operations cabinet health insurance", but I have provided a screenshot below). 

![plot](./images/matthew-figure-4.png)

Our group concluded that the checkbook data is not a reliable dataset to look at due to mismatches in spending (in this case, the health insurance department under the People Operations Cabinet). There are a lot of potential reasons for the differences in official documentation and what the data shows. It is possible that health insurance for employees no longer needs to appear as a transaction in the checkbook data. However, we can not make this confirmation unless we speak to the City and ask how they have been collecting individual expenditures made by each individual department.

## Boston Utility Data

### General Information

According to this [link](https://data.boston.gov/dataset/city-of-boston-utility-data), the City of Boston collects monthly utility data for all its accounts, which comes from its Enterprise Energy Management System. One file for utility bills was provided (note that the dataset is constantly being updated).

### Preprocessing and Cleaning Data

When it comes to cleaning the data, first we needed to handle all the different typos in department naming. Our group decided to manually create a dictionary mapping and change the abbreviation of a department to its full name for better readability. Any values in the 'DepartmentName' column that is NA is simply replaced with the string 'UNKNOWN'. When it comes to plotting energy spending over time, we had to group the data at a monthly frequency based on the 'InvoiceDate'. We then pivot the table so that the 'InvoiceDate' is the index, the columns are 'DepartmentName', and the values within each cell is 'TotalCost'. 

### Exploratory Analysis

Our group was interested in these specific departments: 'Boston Public Schools' and 'Boston Transportation'. 

**Boston Public Schools**:

Let's investigate Boston Public Schools. In the figure below, we also included a light grey region to represent winter months. Looking at the graph, the overall spending is a lot more compared to the rest of the departments. This is to be expected (you can look at how much money is being allocated to the Boston Public Schools system in the analysis at the beginning of this README document). The amount of spending in energy is relatively consistent from 2011 to 2019 in a seasonal pattern. Spending increases during the winter months, most likely due to heating large buildings throughout the day. It is also important to note that there are most likely older, less efficient systems in many schools which can lead to greater costs. Schools have a wide range of things that can consume a lot of energy. For instance, indoor and outdoor lighting (classrooms, hallways, common areas, athletic fields), computing (computer labs, smartboards, projectors, servers), and kitchen equipment (industrial refrigerators and freezers, stoves and ovens, food preparation equipment). Another interesting region to look at is during COVID. Notice how spending seems to decrease and doesn't really increase until past 2021. What is unusual is that spending suddenly spikes past 2021 and maintains much higher peaks and drops compared to previous years. There can be many reasons, one of them could be due to new buildings being added or it could be some data collection error (look at 2024, where we see the highest peak). 

![plot](./images/matthew-figure-5.png)

In regards to energy type breakdown, nearly half of Boston Public Schools' energy comes from electricity. Our group is pretty surprised about how around 19% of energy comes from water. This is great to see, as we want high energy usage departments to start transitioning to reliable, sustainable and affordable clean energy. Regarding natural glass, it does have some great qualities. According to the [United States Energy Information Administration (EIA)](https://www.eia.gov/energyexplained/natural-gas/natural-gas-and-the-environment.php), it states, "Burning natural gas for energy results in fewer emissions of nearly all types of air pollutants and carbon dioxide (CO2) emissions than burning coal or petroleum products to produce an equal amount of energy." In other words, it is a pretty efficient energy source that is able to cleanly burn compared to things like coal and oil. However, it is still a producer of greenhouse gas as it is composed mainly of methane. Our group wonders if other sources of renewable energy such as wind or geothermal (like Boston University's Center of Computing and Data Sciences) would ever be used, especially for such an energy intensive department.

![plot](./images/matthew-figure-7.png)

**Boston Transportation Department**:

Let's investigate the Boston Transportation Department. This department has much less spending compared to Boston Public Schools. There is increased spending during the winter months, which is to be expected. However, we once again notice a sudden spike in spending and continued volatility in spending past the year 2021. Given that this is also happening in Boston Public Schools, we are suspecting that there might be something happening in the way the data is collected (the system could be missing essential invoice data for certain departments) because spending should not suddenly double. It is safe to ignore later months for the year of 2024 because the data hasn’t been aggregated yet. 

![plot](./images/matthew-figure-6.png)

In regards to energy type breakdown, this was expected. The following information has been retrieved from this website [here](https://www.mbta.com/sustainability/greening-the-fleet-decarbonizing-the-mbta). The Massachusetts Bay Transportation Authority (MBTA) operates the fully electric subway and light rail lines, which includes: the red, blue, orange, green lines (for the green line, there was a complete overhaul so that new trains would have efficient HVAC systems and regenerative braking). However, for buses, a majority of the fleet still relies on diesel, which "consumes more fuel and generates more greenhouse gas" (1). Fortunately, hybrid buses and battery buses were introduced in 2010 and 2019 respectively and their is an ongoing, active transition to these versions. This department is the least of our concerns in regards to energy spending, but there might be an argument for increasing the budget for this department. 

![plot](./images/matthew-figure-8.png)

**Amount of Invoices Across Each Year and Energy Type (All Departments Considered)**

When we look at the amount of invoices across the year and look at the energy type percentage make up for each year, there are a few important things to consider. Electricity has remained pretty consistent since 2011, making up around 70% to 80% of invoices for each year. This is the same for natural gas usage, which makes up around 8% to 10% for each year. Besides this, our group noticed the increased percentage of water invoices. This could reflect the City of Boston's commitment in pursuing hydropower, a renewable energy source that is abundant. However, since the year of 2024 is not finished, the proportions may be inaccurate as we have not collected and aggregated all invoices for the year. Oil energy invoices only appears in the years 2017 to 2019, possibly due to some project that requires it, and steam energy invoices do not appear at all. 

![plot](./images/matthew-figure-9.png)

## Boston Employee Earnings Data

### General Information

According to this [link](https://data.boston.gov/dataset/employee-earnings-report), the City of Boston publishes its payroll data for its employees, providing features like the name of the employee, the job they are working, and the amount they make from their base salary and overtime. For the following cleaning and analysis, our group will only be focused on the years from 2021 to 2023 and focus on a select few departments. 

### Preprocessing and Cleaning Data

First, we needed to standardize column names across all separate datasets. This would allow us to easily concatenate the data frames vertically. The end product is a stacked data frame with employee earnings information from years 2021 to 2023. The main issue in the combined dataset now is standardizing department names. One big issue is that a lot of department names are not being aggregated to a single department. For example, 'Chief Academic Officer;, 'Eliot K-8', 'Murphy K-8', 'Curley K-8', 'Madison Park Tech Vocational', 'Quincy Elementary', 'Tynan Elementary',  'Trotter Elementary', 'Lyon High', 'Dearborn 6-12 STEM Academy', 'Warren-Prescott K-8', 'Edison K-8', etc. should all fall under the Education label. This means that our group needed to identify keywords associated with education, such as 'Elementary', 'High', 'Academy', etc. through regular expressions, then we simply assign it to the 'Education' department. Other departments like the 'Boston Police Department' and the 'Boston Fire Department' do not have these naming variations.

### Exploratory Analysis

Let's focus our analysis on 'Education Department', 'Police Department', and the 'Fire Department'. We do this by filtering by the specific department name and focusing on 'Regular', 'Overtime', and 'Total Gross' columns.

**Comparison of Median Pay Components**

The reason why our group decided to choose to look at the median of pay components is because the departments have plenty of outliers, which can influence the mean heavily. So, we are treating the median as a slightly more robust measure. Starting with the median base pay, the fire department has the highest out of the other two departments. This seems to be pretty reasonable to us because besides dealing with fires, they need to help with vehicular accidents, hazardous material incidents, rescue operations, and medical assistance (see [here](https://www.boston.gov/departments/fire-operations#:~:text=We%20respond%20to%20emergencies%20including,events%20held%20in%20the%20city.)). They need to deal with high-risk cases and need to always be on standby (the same could be said about police). Another interesting thing to note is that education base pay is higher than police base pay. But, we can observe the large disparity when we look at total gross pay. This means that there are plenty of other incentives for police officers, which includes the Quinn Bill (which provides education funding for police officers) and plenty of overtime opportunities (night shifts, court appearances, planned events, holidays). Note that arguments have been brought up about how police officers might actually be abusing overtime to get higher pay, with some actually getting caught and arrested. See this press release by the Department of Justice [here](https://www.justice.gov/usao-ma/pr/nine-boston-police-officers-arrested-overtime-fraud-scheme).

![plot](./images/matthew-figure-10.png)

**Distribution of Total Gross Pay**

If we actually look at a distribution or histogram, with the x-axis being total gross pay and the y-axis being frequency, we could see that the police and fire department have similar distributions, which looks like a flattened normal curve. They don't have many employees relative to the education department and the variance in total gross pay is massive (some employees are making only $50000, which is not sufficient for cost of living in Boston), while others are exceeding $200000 in total gross pay. The center of the distribution for both the police and fire department seems to fall at around $150000. There are a lot more employees in the education department, and we do see that a lot of employees have between $100000 to $150000 in total gross pay (observe the peak of the education distribution), but they never seem to exceed the $200000 in total gross pay.

![plot](./images/matthew-figure-11.png)


**Box Plot of Total Gross Pay (Top 10 Departments)**

Notice the amount of outliers for both the police department and fire department. In addition, their medians and the range of total gross pay for these departments is significantly greater than the rest of the departments. They both have a lot more employees than the rest of the departments (please look at the exploratory data analysis notebook to get summary statistics). An interesting case is that the Office of People Operations, Enrollment Services Department, and the Office of Labor Relations, only have 6, 10, and 11 employees respectively. These departments are still considered as the top 10 departments in terms of median total gross pay (we could possibly dealing with executives or high ranking board members, rather than the ordinary employee). Our group wonders if there is some opt-out option to not have salary data publicly available, especially since the data already provides sensitive information like the name of the employee and their role in a specific department. It would be ideal to have access to a larger corpus of employee data as it may uncover some interesting insight about employee paychecks.

![plot](./images/matthew-figure-12.png)

## Boston Homelessness Analysis Using Boston's Mayor of Housing Budget

### Growth in single adults who are staying at shelters

![plot](./images/v_j-figure-1.png)

**Analysis**

This plot illustrates the number of single adults in different types of shelters over time. The overall trend reflects a decrease in homelessness among single adults until 2021, followed by a notable increase, possibly due to socioeconomic or policy changes. One important trend to notice is the increase between 2021 - 2024. This will be helpful in our next analysis.

### Growth in Persons in Families by Shelter Type

![plot](./images/v_j-figure-2.png)

**Analysis**

We can notice that there is overall steady increase in family homelessness with a dip around 2021, followed by a steady increase into 2024 conforming in general to the above single adults homelessness trends. In addition, the red line closely follows the emergency shelter trend, suggesting the majority of homeless families rely on emergency shelters.

![plot](./images/v_j-figure-3.png)

**Analysis**

The above graph shows the growth in the number of families by shelter type. It correlates with what we've seen above in the sense that there is a steady increase in family homelessness with a dip around 2021, followed by a steady increase into 2024. With this in mind, it is only logical to question the reason for such a strange trend. In order to answer the above dilemma we proposed to analyze and utilize multiple statistical and probabilistic tools to analyze the correlations between our hypothesis and the actual observed trend. These findings support the claim that Boston have the highest number of sheltered homeless people in the United States as most of them are in shelters, and few are on the street.

![plot](./images/v_j-figure-4.png)

For the sake of simplicity, we decided to aggregate the above values into one chart, which makes further analysis simpler.

![plot](./images/v_j-figure-5.png)

Going further, our first analysis is testing whether there is any correlation between domestic violence and homelessness rate.
As such we define our Null hypothesis H0 as follows: There is no significant linear relationship between the two variables (domestic violence programs and homeless families).

The p-value tests the null hypothesis. If the p-value is less than the chosen significance level (commonly 𝛼 = 0.05), the null hypothesis is rejected.

### Results:

Correlation Coefficient: -0.370 (a weak negative correlation)
P-value: 0.326 (greater than 0.05)

### Conclusion:

Since the p-value (0.326) is greater than 0.05, we fail to reject the null hypothesis. This means there is insufficient evidence to conclude that a significant linear relationship exists between the two variables. The weak negative correlation suggests a trend, but it is not statistically significant.

![plot](./images/v_j-figure-6.png)

**Boston's Year-to-Year Total of Homeless People**

By Combining the total number of single adults and a number of individuals in families, we can capture the number of homeless people in Boston, and the changes they endure year to year.
The graph shows the trends in total homelessness from 2016 to 2024, with a noticeable decline from 2016 to 2022, reaching its lowest point in 2022. However, a sharp increase is observed from 2022 to 2024, reversing the earlier downward trend and returning to near 2018 levels.

**Possible implications**

The sharp increase from 2022 to 2024 may be due to the economic downturn due to the COVID-19 pandemic, especially because the graph shows a decline from 2016-2022. It's possible that people take loans to sustain themselves during the year 2020-2021 during the pandemic, and also because of the government handouts. However, after with high inflation and a bad job market after the pandemic, the number of homeless people increases significantly.

![plot](./images/v_j-figure-8.png)

**Analysis of Total Homelessness vs. Mayor's Office of Housing Operating Expenses**

Statistical Results
Correlation Coefficient: 0.9998 (a very strong positive correlation)
P-value: 0.012 (statistically significant at a 5% significance level)
Covariance: 4.70 × 10^9

Null Hypothesis
H₀: There is no linear relationship between total homelessness and the Mayor's Office of Housing operating expenses.
H₁: There is a significant linear relationship between the two variables.

**Conclusion**

The p-value (0.012) is less than 0.05, leading to a rejection of the null hypothesis. This means the data provides strong evidence of a significant linear relationship between homelessness and housing operating expenses.

**Interpretation**
Trend Observation:

Both total homelessness and operating expenses have steadily increased from 2022 to 2024.
The extremely high correlation (0.9998) suggests that changes in homelessness are closely mirrored by changes in the operating expenses of the Mayor's Office of Housing.

**Possible Implications:**

The increasing expenses might reflect the city's response to rising homelessness, such as funding shelter programs or housing initiatives.
However, the simultaneous increase in homelessness suggests that despite rising expenses, the interventions may not be sufficient to curb the overall trend.

Nonetheless, correlation does not imply causation. The relationship might be influenced by other external factors like economic trends, housing markets, or policy shifts.

![plot](./images/v_j-figure-9.png)

**Analysis of Year-to-Year Growth of Total Homelessness vs Mayor's Office of Housing Operating Expenses**

The graph compares total homelessness with the Mayor's Office of Housing operating expenses from 2022 to 2024. While both metrics show a steady upward trend, homelessness increased by 17.2% during this period, outpacing the 13% rise in housing-related expenses. This suggests that despite increased spending, homelessness continues to grow, indicating potential inefficiencies or limitations in addressing the underlying causes.

![plot](./images/v_j-figure-10.png)

**Analysis of House Price Index for All Transactions for The City of Boston vs Total Homelessness**

Statistical Analysis:
Correlation coefficient: -0.6550539119685094 (A moderate-to-strong negative relationship)
P-value: 0.05550066761257748 (Not statistically significant at the 5% level)

Null Hypothesis:

H₀: There is no linear relationship between total homelessness and the housing price index.
H₁: There is a significant linear relationship between the two variables.

**Conclusion**

The p-value (0.012) is less than 0.05, leading to a rejection of the null hypothesis. This means the data provides strong evidence of a significant linear relationship between homelessness and housing operating expenses.

**Interpretation**

Based on the Correlation Coefficient as the housing price index increases, total homelessness tends to decrease, and vice versa. The strength of the relationship (-0.6551) suggests a meaningful inverse association, though it is not perfect. However, it is important to note that correlation does not imply causation—other factors, such as economic policies, social programs, or regional conditions, may also influence the observed trends.

**Possible Implications:**

The negative correlation aligns with the potential hypothesis that rising housing prices could reflect broader economic stability or increased investment in housing resources, which may reduce homelessness. However, there may be some other external factors that may cause this trend.

![plot](./images/v_j-figure-11.png)

**Analysis of the Growth of House Prices vs Growth of Total Homelessness**

Statistical Analysis:
Covariance = -44.06707548243705

**Interpretation**

The covariance value of −44.07 indicates a negative relationship between the growth percentages of the Housing Price Index (HPI) and Total Homelessness from 2016 to 2024. Specifically, when the growth percentage of the Housing Price Index increases, the growth percentage of Total Homelessness tends to decrease, and vice versa.

**Possible Implications:**

This could reflect the impact of economic stability, housing policies, or investments in affordable housing, though external factors like government programs or economic shocks may also influence the trend.

## Boston Homelessness Analysis Using Boston's Fair Housing & Equity

![plot](./images/v_j-figure-12.png)

**Analysis of the Fair Housing & Equity Budget**

The graph illustrates the Fair Housing & Equity Budget from FY22 to FY25, showing a sharp increase from approximately $280,000 in FY22 to $370,000 in FY23. This is followed by a significant decrease to around $310,000 in the FY24 appropriation, and then a moderate rise to $330,000 in the FY25 budget. These fluctuations reflect shifts in funding priorities over the years.

![plot](./images/v_j-figure-13.png)
