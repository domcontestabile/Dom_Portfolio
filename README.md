# Dom Contestabile Data Portfolio
Description: Data analysis and statistics portfolio containing past projects that demonstrate my coding abilities in SAS and SQL

# [SAVIOR II Study: Non-invasive Vagus Nerve Stimulation (nVNS) for the Prophylaxis and Treatment of Acute Respiratory Distress Syndrome in COVID-19 Patients](https://github.com/domcontestabile/Dom_Portfolio/blob/main/SaviorII_study_statistics_code)

Objective: Investigate whether non-invasive vagus nerve stimulation (nVNS) can reduce respiratory distress in COVID-19 patients, who were admitted to Allegheny General Hospital in 2020. Assess the effectiveness of nVNS in improving respiratory symptoms, reducing inflammation, and enhancing cardiopulmonary outcomes, with the goal of potentially using nVNS as a non-invasive and easy-to-administer therapy for acute respiratory distress syndrome (ARDS).

Programming: SAS

Overview:
- Recoded new labels on already exisiting variables
- Utilized two-sample t tests and Fisher’s exact tests to determine any significant relationships between patient treatment group and continuous and categorical variables, respectively  
- Observed a significant difference (p<0.05) between average patient PaO2/FiO2 (or P/F) ratios and their treatment group
- Created a Table 1 of study patient descriptive statistics 
- Created a boxplot to visually show the signifcant difference between average patient P/F ratios and their treatment group

# [COVID-19 State-level Changes in Positive Cases Between States with Early and Delayed Removal of Social Distancing Restrictions in 2020 Report](https://github.com/domcontestabile/Dom_Portfolio/blob/main/COVID19_State_level_Changes_during_2020)

Objective: Compare the trajectory of positive cases between states that aggressively relaxed distancing restrictions in mid-May 2020 and states that delayed such measures. Assess whether there were changes in the case hospitalization rate (CHR) from early in the pandemic to later, considering potential factors such as underlying severity and/or the evolution of clinical management.

Programming: SAS

Overview:
- Merged state population/re-opening approach dataset with state covid cases/hospitalizations/deaths dataset
- Calculated descriptive statistics and a box plot for the number of positive cases per capita by time (April vs. December) and re-opening approach (early vs. delayed)
- Computed a mixed effect regression model of positive cases per capita (100,000 cases/population) on re-opening approach 
- Calculated descriptive statistics for case hospitalization rate (CHR), defined as 100 * (total hospitalizations in a month / total positive cases in a month) during April 2020, December 2020, and the change in CHR within states (December minus April)
- Assessed whether the change in CHR within states was statistically significantly different than 0 using a paired t-test.

![positive covid cases per capita boxplot](https://github.com/domcontestabile/Dom_Portfolio/assets/134414164/2bc59221-ac55-4fdf-bfb1-6add01c1d3f8)

[Final Report - Dom Contestabile.docx](https://github.com/domcontestabile/Dom_Portfolio/files/11547336/Final.Report.-.Dom.Contestabile.docx)

# [Second-hand Vinyl Store Database Project](https://github.com/domcontestabile/Dom_Portfolio/blob/main/Second_hand_Vinyl_Store_Database) 

Objective: Create a hypothetical store that specializes in selling one type of thing, such as clothing or bikes. Create a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use SELECT statements to order your items by price and show at least one statistic about the items.

Programming: SQL

Overview:  
- Created a database for a second-hand vinyl store
- Ordered the store's inventory by price in ascending order
- Calculated the average price for each vinyl

# [NBA "Player of the Week" Data Dig Project](https://github.com/domcontestabile/Dom_Portfolio/blob/main/NBA%20_Player_of_the_Week_Data_Dig)

Objective: Pick a data set or create a data set, and use advanced SELECT queries to discover things about the data.

Programming: SQL

Overview:
- Calculated the average, maximum, and minimum values for player height, weight, and age
- Calculated similar statistics per category in the data using HAVING statements
- Grouped data by transforming numerical data into categorical data for player height, weight, and age
- Filtered the data for players that received "player of the week" early and late in their careers using AND/OR statements 

# [Movie Actors/Actresses Joined Tables Project](https://github.com/domcontestabile/Dom_Portfolio/blob/main/Movie_Actors%26Actresses_Joined_Tables)

Objective: Demonstrate how to combine two tables of related data based on ID numbers.

Programming: SQL

Overview:
- Created two tables of data associated with famous movie actors/actresses
- Combined tables based on a similar primary key (ID) using a JOIN statement

# [Exercise Log App Impersonator Project](https://github.com/domcontestabile/Dom_Portfolio/blob/main/Exercise_Log_App_Impersonator)

Objective: Demonstrate how to update and delete already existing data.

Programming: SQL

Overview:
- Created a table of data for a hypothetical exercise tracker app where you log your physical activity details
- Altered an already existing variable's category setting using an UPDATE statement
- Experimented with deleting rows of data based on specific criteria using a DELETE statement
