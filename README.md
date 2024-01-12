# Dom Contestabile Data Analysis Portfolio
Description: Data and statistics portfolio containing past projects that demonstrate my analysis skills and my technical abilities in SAS, SQL, & Power BI

# [Evaluation of Self-Inflicted vs. Non-Self-Inflicted Gunshot Wounds and Associated Injuries Involving the Hand and Upper Extremity - Retrospective Orthopedic Resident Project](https://github.com/domcontestabile/Dom_Portfolio/blob/main/Gun_Shot_Wound_Analysis)

Objective: To evaluate self-inflicted vs. non-self-inflicted gunshot wounds to the hand and upper extremity. The primary outcomes measured include the average number of trips to the OR, fracture pattern involved, initial management of injury, types of surgeries required, associated neurovascular damage, hand function after management via DASH and VAS scores, ability to return to work, and type of gun if available. This is a retrospective cohort analysis of patients who visited Allegheny General Hospital's Emergency Department with self-inflicted GSW to the hand or upper extremity from 1/1/2012 to 12/1/2022.  Study was submitted to MDPI's Healthcare journal for publication (acceptance is currently pending).

Data Tool: SAS

Overview:
- Calculated descriptive statistics for all continuous and categorical variables
- Created tables of study patient descriptive statistics
- Performed chi-square tests, fisher's exact tests, and t-tests for primary variables and their association between types of gun shot wound velocities and types of surgeries
- Performed two logistic regression analyses: where velocity is the outcome and gustilo-anderson (classification of open injuries into based on wound size, level of contamination, and osseous injury) and ethnicity are covariates & where velocity is the outcome and tscherne (classification of soft tissue injury associated with fracture trauma based on fracture pattern and energy involved) and ethnicity are covariates

# [COVID-19 State-level Changes in Positive Cases Between States with Early and Delayed Removal of Social Distancing Restrictions in 2020 Report](https://github.com/domcontestabile/Dom_Portfolio/blob/main/COVID19_State_level_Changes_during_2020)

Objective: Compare the trajectory of positive cases between states that aggressively relaxed distancing restrictions in mid-May 2020 and states that delayed such measures. Assess whether there were changes in the case hospitalization rate (CHR) from early in the pandemic to later, considering potential factors such as underlying severity and/or the evolution of clinical management.

Data Tool: SAS

Overview:
- Merged state population/re-opening approach dataset with state covid cases/hospitalizations/deaths dataset
- Calculated descriptive statistics and a box plot for the number of positive cases per capita by time (April vs. December) and re-opening approach (early vs. delayed)
- Computed a mixed effect regression model of positive cases per capita (100,000 cases/population) on re-opening approach 
- Calculated descriptive statistics for case hospitalization rate (CHR), defined as 100 * (total hospitalizations in a month / total positive cases in a month) during April 2020, December 2020, and the change in CHR within states (December minus April)
- Assessed whether the change in CHR within states was statistically significantly different than 0 using a paired t-test

![positive cases per capita by time and reopening approach](https://github.com/domcontestabile/Dom_Portfolio/assets/134414164/3ec39f52-e1e7-41cc-af7b-dbd6b75754c8) 

[Final Report - Dom Contestabile.docx](https://github.com/domcontestabile/Dom_Portfolio/files/11547336/Final.Report.-.Dom.Contestabile.docx)

# [Data Professional Survey Breakdown](https://github.com/domcontestabile/Dom_Portfolio/blob/main/Data%20Professional%20Survey%20Breakdown.pptx)

Objective: Generate helpful insights from a survey (sourced from Alex Freberg) administered to over 600 data professionals, who are subscribed to Alex's Youtube channel, "Alex the Analyst".  Use Power BI to create multiple interactive data visualizations that simplify the data collected from the survery into appropriate topics, such as salary, favorite programming language, and work/life balance satisfaction.

Data Tool: Power BI

Overview:
- Cleaned dataset using Power BI's Power Query feature by removing unnecessary columns, altering salary from a range variable to a numeric variable, and re-labeling detailed optional write-in responses as "Other" for certain survery questions
- Created a stacked bar chart highlighting average salary differences between multiple data job titles (ex: Data Scientist, Data Analyst, Data Engineer, etc.)
- Created a stacked column chart highlighting the most preffered programming languages amongst the survey takers broken down by job title
- Created an interactive treemap organized by the survery takers' home countries
- Created a donut chart that displays the survey takers' opinions towards how difficult they believe it is to break into a data profession
- Created two gauge graphics that display the average score out of 10 for the survey takers' happiness towards their salary and work/life balance
- Created two card graphics that display the total count and average age of the survey takers

![Data Professional Survery Breakdown](https://github.com/domcontestabile/Dom_Portfolio/assets/134414164/cc7b65c0-9d5c-48f2-867d-5a051b2aeb0c)

# [Multiple Sclerosis (MS) Data Analysis Project](https://github.com/domcontestabile/Dom_Portfolio/blob/main/MS_Data_Analysis)

Objective: Practice the role of a data analyst and work with a real dataset (sourced from Kaggle) to conduct an exploratory analysis and draw out meaningful findings.  I chose to analyze a dataset from a prospective cohort study that was conducted in Mexican patients newly diagnosed with Multiple Sclerosis (MS), who presented at the National Institute of Neurology and Neurosurgery (NINN) in Mexico City, Mexico, between 2006 and 2010.  Answer the following questions to help gain insight on certain predictor variables:

Data Tool: SAS

Overview:
- Re-named and created new variables from existing variables for analysis purposes (ex: changing age from a continuous variable into a categorical range variable)
- Calculated descriptive statistics for all continuous and categorical variables
- Performed a chi-square test and calculated the odds ratio for the association between CDMS (clinically definite MS) group and gender
- Created frequency tables and data visualizations (bar graphs)
- Provided clear interpretations of the values produced from each data step 

![Stacked bar gender bar graph](https://github.com/domcontestabile/Dom_Portfolio/assets/134414164/60440849-834e-4a91-891a-11c95059da09)

# [NY Citi Bike Data Analysis Project](https://secure-web.cisco.com/1wJiRYOwgAdWiqq5q-HGfiwA5vFwWywHs3tGlPaNAbGiideu-DxiMNS8Nf6r6zvrOfwy2Zlassc9bBOx_vspSUls0jlmXEPtBJaDn5g4ymP7bcDqluJ0rhDk-hrO6_GeNRoXxuswuQrXtwgvPizp24NQlPHNibirFIxc-axXJFKjXQ9GS0GClRhRgVh4U3V3A5yoIHHedujTJFN6yf_4TZCgzEblhEQsmPqOYLLauAbj1_wWuch_NaJiJC-pwdO6KJ_SQ2u4jO2whgspWzcMZp-BJX5RkyulE01bnUEbAaYZ7iCyvTeAa6BMku7WXuI7N/https%3A%2F%2Fdocs.google.com%2Fspreadsheets%2Fd%2F1XlpHhsr8NQSZBynY95BAMer_1cFC3vZExQeeWlrOZ6I%2Fedit%3Fusp%3Dsharing)

Objective: Practice the role of a data analyst and work with a real dataset (sourced from Kaggle) to solve a hypothetical business challenge. For the purposes of this project, I chose to analyze a dataset from a bike-sharing company, known as Citi Bike. Answer the following questions to help key stakeholders to make smart, data-driven decisions based on the insights I uncover:

1. What are the most popular pick-up locations across the city for NY Citi Bike rental?
2. How does the average trip duration vary across different age groups?
3. Which age group rents the most bikes?
4. How does bike rental vary across the two user groups (one-time users vs long-term subscribers) on different days of the week?
5. Does user age impact the average bike trip duration?

Data Tool: Power BI & Google Sheets

Overview:
- Cleaned a NY Citi Bike dataset, removed duplicates, and handled missing data
- Conducted an exploratory data analysis, calculated descriptive statistics, and created pivot tables in order to better understand the data
- Created data visualizations with Power BI in order to summarize and present key findings in a concise and accessible format
- Crafted a polished, professional presentation, ready to share with stakeholders

![popular pickup locations](https://github.com/domcontestabile/Dom_Portfolio/assets/134414164/5a46446b-abac-4605-b566-cd0c92728eff)

[Citi Bike Data Analysis.pptx](https://github.com/domcontestabile/Dom_Portfolio/files/13922166/Citi.Bike.Data.Analysis.pptx)

# [SAVIOR II Study: Non-invasive Vagus Nerve Stimulation (nVNS) for the Prophylaxis and Treatment of Acute Respiratory Distress Syndrome in COVID-19 Patients](https://github.com/domcontestabile/Dom_Portfolio/blob/main/SaviorII_study_statistics_code)

Objective: Investigate whether non-invasive vagus nerve stimulation (nVNS) can reduce respiratory distress in COVID-19 patients, who were admitted to Allegheny General Hospital in 2020. Assess the effectiveness of nVNS in improving respiratory symptoms, reducing inflammation, and enhancing cardiopulmonary outcomes, with the goal of potentially using nVNS as a non-invasive and easy-to-administer therapy for acute respiratory distress syndrome (ARDS).  Study abstract was submitted and accepted by the MHSRS (Military Health System Research Symposium).

Data Tool: SAS

Overview:
- Recoded new labels on already exisiting variables
- Utilized two-sample t-tests and Fisher’s exact tests to determine any significant relationships between patient treatment group and continuous and categorical variables, respectively  
- Observed a statistically significant difference (p<0.05) between average patient PaO2/FiO2 (or P/F) ratios and their treatment group
- Created a Table 1 of study patient descriptive statistics 
- Created a boxplot to visually show the difference between average patient P/F ratios and their treatment group

![PaO2 FiO2 boxplot](https://github.com/domcontestabile/Dom_Portfolio/assets/134414164/2fa605a2-a6dd-4ded-ac27-406566538869)

# [Stryker Spine Observational Trial of Clinical Outcomes following Anterior Cervical Discectomy and Fusion with Instrumentation using Allograft or Tritanium - Retrospective Patient Statistics](https://github.com/domcontestabile/Dom_Portfolio/blob/main/Stryker_Spine_Implant_Retrospective_Study_Patients)

Objective: To compare the rate of fusion success and adverse events, patients who undergo anterior cervical discectomy and fusion (ACDF) utilizing Tritanium C (Stryker Spine) will be retrospectively compared to a sample of 20 former patients. Create descriptive statistics for the 20 retrospective patients who underwent instrumented ACDF utilizing structural allograft bone with plates.

Data Tool: SAS

Overview:
- Calculated descriptive statistics for the retrospective patient sample's continuous and categorical variables (continuous: age, weight, height, & BMI; categorical: sex, race, ethnicity, treated cervical index level, diagnosis, & smoking status)

# [NBA "Player of the Week" Data Dig Project](https://github.com/domcontestabile/Dom_Portfolio/blob/main/NBA%20_Player_of_the_Week_Data_Dig)

Objective: Find an existing data set, and use advanced SELECT queries to discover things about the data.

Data Tool: SQL

Overview:
- Calculated the average, maximum, and minimum values for player height, weight, and age
- Calculated similar statistics per category in the data using HAVING statements
- Grouped data by transforming numerical data into categorical data for player height, weight, and age
- Filtered the data for players that received "player of the week" early and late in their careers using AND/OR statements 

# [Second-hand Vinyl Store Database Project](https://github.com/domcontestabile/Dom_Portfolio/blob/main/Second_hand_Vinyl_Store_Database) 

Objective: Create a hypothetical store that specializes in selling one type of thing, such as clothing or bikes. Create a table for all the items in your store, and at least 5 columns for the kind of data you think you'd need to store. You should sell at least 15 items, and use SELECT statements to order your items by price and show at least one statistic about the items.

Data Tool: SQL

Overview:  
- Created a database for a second-hand vinyl store
- Organized the store's inventory by price in ascending order
- Calculated the average price for each vinyl

# [Movie Actors/Actresses Joined Tables Project](https://github.com/domcontestabile/Dom_Portfolio/blob/main/Movie_Actors%26Actresses_Joined_Tables)

Objective: Demonstrate how to combine two tables of related data based on ID numbers.

Data Tool: SQL

Overview:
- Created two tables of data associated with famous movie actors/actresses
- Combined tables based on a similar primary key (ID) using a JOIN statement

# [Exercise Log App Impersonator Project](https://github.com/domcontestabile/Dom_Portfolio/blob/main/Exercise_Log_App_Impersonator)

Objective: Demonstrate how to update and delete already existing data.

Data Tool: SQL

Overview:
- Created a table of data for a hypothetical exercise tracker app where you log your physical activity details
- Altered an already existing variable's category setting using an UPDATE statement
- Experimented with deleting rows of data based on specific criteria using a DELETE statement
