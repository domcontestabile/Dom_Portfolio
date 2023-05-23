# Dom_Portfolio
Data analysis and statistics portfolio containing past projects that demonstrate my coding abilities in SAS and SQL

# [COVID-19 State-level Changes during 2020 Project](https://github.com/domcontestabile/Dom_Portfolio/blob/main/COVID19_State_level_Changes_during_2020)

Objective: Compare the trajectory of positive cases between states that aggressively relaxed distancing restrictions in mid-May 2020 and states that delayed such measures. Assess whether there were changes in the case hospitalization rate (CHR) from early in the pandemic to later, considering potential factors such as underlying severity and/or the evolution of clinical management.

Programming: SAS

Overview:
- Calculated descriptive statistics and a box plot for the number of positive cases per capita by time (April vs. December) and re-opening approach (early vs. delayed)
- Computed a mixed effect regression model of positive cases per capita (100,000 cases/population) on re-opening approach treating state/DC as a random subject effect in the repeated statement using maximum likelihood estimation and an unstructured covariance structure
- Calculated descriptive statistics for case hospitalization rate (CHR), defined as 100 * (total hospitalizations in a month / total positive cases in a month) during April 2020, December 2020, and the change in CHR within states (December minus April)
- Assessed whether the change in CHR within states was statistically significantly different than 0 using a paired t-test.

[Final Report - Dom Contestabile.docx](https://github.com/domcontestabile/Dom_Portfolio/files/11547336/Final.Report.-.Dom.Contestabile.docx)

Datasets: 
- [COVIDTrackingApr2020_Dec2020.csv](https://github.com/domcontestabile/Dom_Portfolio/files/11547347/COVIDTrackingApr2020_Dec2020.csv) 
- [state_info.csv](https://github.com/domcontestabile/Dom_Portfolio/files/11547349/state_info.csv)

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
- Grouped data by transofrming numerical data into categorical data for player height, weight, and age
- Filtered the data for players that received "player of the week" early and late in their careers using AND/OR statements 
