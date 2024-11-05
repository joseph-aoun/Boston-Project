# CS 506 Boston Budget Final Project

## Operating Budget

The operating budget is the expenses generated to run the government on a day-to-day basis. This dataset contains columns such as Department, Programs, FY22 spending, FY23 Spending, FY24 spending, and the budget for FY25. ‘FY’ in this case refers to Fiscal Year, which means a one year period that the government or other organization used for financial reporting. When looking at this dataset, there was a lot of missing data (seen as ‘#Missing’ in the operating budget, which was replaced by 0). Some programs have missing data for the fiscal year of FY22 - FY24. We removed them for this visualization.

### Program Spending

The "Top 10 Programs by Largest Spending (FY22 - FY24)" bar chart displays the most significant financial allocations across various programs within a specified period, emphasizing the key areas where funds are primarily directed. The program with the highest spending is "Pensions," with expenditures exceeding $1 billion, signifying a substantial investment in retiree benefits. Following closely are "BPS Finance" and "BPS Operations," highlighting significant funding for Boston Public Schools' administrative and operational costs. Other high-expenditure areas include "Charter School Tuition," "Boston Fire Suppression," and "Health Insurance," illustrating priorities in education, public safety, and employee benefits. "Bureau of Field Services" and "Debt Service" also command notable portions of the budget, reflecting essential services and fiscal responsibilities. Programs for "K-8" and "Elementary" education round out the top ten, indicating strong support for foundational educational services. This distribution of funds underscores a balanced approach to addressing pensions, education, public safety, and essential services in the city's budget strategy.



The bar chart titled "Top 10 Programs by Smallest Total Spending (FY22 - FY24)" highlights the programs that received the lowest funding within this period, with allocations generally below $0.3 million. "Human Rights History" and "Equity & Inclusion History" are the least funded programs, reflecting a minimal budget allocation towards these historical and social initiatives. Other low-funded areas include "Internal Affairs Oversight Panel (IOAP)" and "Trust," suggesting limited financial support for oversight and trust-building functions. Programs like "Civilian Review Board (CRB)," "Consumer Affairs," and "Diversity" receive modest funding, indicating these areas are relatively low on the city's fiscal priorities. Meanwhile, "Coordinated Response Team," "Grants Administration," and "Tourism" have slightly higher, yet still minimal, budgets, showing restrained investments in emergency response coordination, administrative support, and tourism. Overall, these allocations suggest that, compared to other sectors, these programs are designated as lower-priority areas within the city's budgetary strategy.




The chart displays the top 10 programs in Boston with the highest budget growth from fiscal year 2022 (FY22) to fiscal year 2024 (FY24), reflecting key city priorities. Leading with around 600% growth, the Trust program tops the list, followed closely by Revenue Monitoring at approximately 550%, signaling a focus on revenue oversight. Programs related to Equity and Affirmative Action saw growth near 500% and 400%, respectively, indicating a strong commitment to inclusion and diversity. The Mayor’s Office of Community Safety experienced similar growth, emphasizing public safety. Programs like Program & Partnerships and Turnaround and Transformation grew around 300%, likely supporting reform and collaboration efforts. Additionally, significant investments in LCA (Language and Communication Access), Office of Civic Organizing, and Small & Local Business reveal a focus on civic engagement and local economic development. These budgetary increases demonstrate Boston’s strategic emphasis on equity, safety, financial stability, and economic support for local communities. Future analysis could examine the impacts of these investments to ensure they achieve the intended social and economic outcomes.


## Capital Budget

The Capital Budget dataset for Boston’s FY25 outlines planned investments in the city's infrastructure and public assets. It includes detailed information about each project, such as the managing department, project name, scope, target neighborhood, and allocated budget. This budget focuses on long-term improvements for city facilities, roads, parks, and other community spaces, highlighting Boston’s commitment to maintaining and developing public infrastructure.
There was no lost data, so we did not have to do any preprocessing for this dataset.

### Geographic Spending

We examined the capital budget by geography (neighborhood) to understand if funding aligns with population needs and to uncover potential geographic disparities in spending. By looking at total spending and per capita spending, we aimed to see which neighborhoods receive the most funding in absolute terms and relative to their populations. This geographic breakdown helps identify areas where Boston may prioritize development, maintenance, or economic revitalization and sheds light on possible funding imbalances across neighborhoods.

**Total Project Budget by Neighborhood**

Citywide received the most funding overall, which makes sense as this allocation likely funds projects that benefit the entire city.
Among specific neighborhoods, Charlestown and Downtown/Government Center received some of the highest funding allocations, with Roxbury also receiving substantial funds. These areas may have high project needs, such as infrastructure improvements or community development projects.

**Distribution of Project Status**

This pie chart shows the distribution of project statuses for Boston’s FY25 capital projects, providing insight into the stages of various city initiatives.
The high proportion of projects "In Design" and "To Be Scheduled" suggests a focus on forward planning and preparation.
Meanwhile, the "Annual Program" and "In Construction" categories show that the city is also prioritizing active and recurring projects, ensuring that both new and essential services are being maintained.

**Per Capita Spending by Geography**


The Capital dataset didn't include population, so we gathered population data from the 2020 Census, aligned neighborhood names, merged it with Boston’s capital budget data, and calculated per capita spending. This process enabled a meaningful comparison of budget allocations relative to population, helping to reveal potential geographic disparities in funding.

**High Budget Per Capita**

Chinatown, Charlestown, Downtown/Government Center, and North End have high budgets per capita.
These are central or historically significant areas. Funding here likely supports infrastructure, tourism, economic development, and historical preservation.
This trend suggests a prioritization of central areas or areas with significant historical importance, potentially to maintain attractiveness for tourism and economic activities.

**Low Budget Per Capita**

Neighborhoods like Allston/Brighton, Fenway-Kenmore, and Hyde Park receive lower budgets per capita despite having substantial populations.
These areas might not receive the same level of targeted investment because they are further from the city center or primarily residential. This could indicate less emphasis on neighborhood-specific projects here, possibly due to fewer economic or historical landmarks.

### Department Spending

For department spending, we looked at the Boston City government planned capital budget for FY25 - FY29. 

The clear leader in financing is going to be the Boston Public School Department taking up more than 25%. The following data makes sense as a large number of schools in the area require constant government funding to support their facilities and maintenance. On top of that staffing and salaries along with various student needs require significant financial resources. 
A lot of the spending is going to be directed towards the Public Works Department. The city is planning to renew its infrastructure and the allocated costs show this very well. Worth noting,  the mentioned department also covers a lot of environment-directed initiatives such as recycling and waste management, which became a trend in big cities over the recent time.
Further, a lot is also invested in renovating the city as a whole as Property Management and Park and Recreation are the next 2 biggest spending categories. A lot of space planning and maintenance repairs are going to be done by the city within the next 5 years.

## Checkbook Data

### General Information

For these visualizations, we decided to use the checkbook spending data. According to the website, the checkbook data, “provides up-to-date financial information about the City’s expenditures [and] … is updated monthly, with certain personal information omitted in order to ensure privacy” (https://data.boston.gov/dataset/checkbook-explorer). It is important to note that this data does not contain any payroll information. There were individual data files for each fiscal year from 2011 to 2024, so we needed to concatenate all the datasets. Here was our processing steps:


### Preprocessing and Cleaning Data

**Data Standardization** (standardize_column_names function):
This function handles the messy reality of government data where column names might be inconsistent across fiscal years. It creates a standardized format by converting everything to lowercase and replacing spaces with underscores. There's a specific mapping dictionary that handles common variations in column names (like 'vendor name' → 'vendor_name').
**Data Type Processing** (process_data_types function):
Given we're dealing with financial data, it's crucial to ensure consistent data types. We convert dates in the 'entered' column to proper datetime format. Handle department names by converting them to strings and filling any missing values with 'Unknown'. Then, we properly format monetary amounts by removing currency symbols ($) and commas, converting them to float values.
**Save Function** (save_dataframe function):
Ensures dates are saved in a consistent MM/DD/YYYY format. Uses UTF-8 encoding with BOM (byte order mark) to handle special characters.
**Main Processing Function** (process_checkbook_files):
This is where the heavy lifting happens for combining fiscal years 2011 - 2024. Uses a glob pattern to find all checkbook CSV files in the specified directory. Read each file with specific data type specifications to prevent issues. Applies the standardization and data type processing to each file. Concatenates all the fiscal year data into one comprehensive dataset. Saves the final cleaned dataset.
### Preliminary Analysis
Our group had to map departments to their assigned cabinets, this was done by looking at the Boston city government structure (https://www.boston.gov/departments/311/city-boston-government) on their official website and the operating budget dataset. Then, we aggregated total expenditures made by each cabinet per month and graphed the trend lines below.

As expected, the education cabinet which only contains the Boston Public School department, has made plenty of expenditures month-over-month. It is expected to see fluctuations in spending (as we shouldn’t see a cabinet consistently spending high amounts of money every single month). However, it is interesting to note that spending seems to have increased significantly past the year 2022. This could reflect the introduction of new programs meant for students or new facilities being built.



Here is an interesting case with the Equity & Inclusion Cabinet. We actually see little to no spending prior to the year 2020, however, around the year 2021 we notice a significant increase in spending by this cabinet. This timing aligns with broader societal shifts and Boston's enhanced focus on equity initiatives surrounding racial justice movements and communities of color. The increased spending reflects the City's commitment to addressing systemic inequities through dedicated resources and programs. It's worth noting that prior to 2020, equity and inclusion initiatives may have been distributed across other departments or cabinets, making it harder to track total spending in these areas.
