# Dom Contestabile Data Portfolio
Description: Data analysis and statistics portfolio containing past projects that demonstrate my coding abilities in SAS, SQL, & Google Sheets

# [SAVIOR II Study: Non-invasive Vagus Nerve Stimulation (nVNS) for the Prophylaxis and Treatment of Acute Respiratory Distress Syndrome in COVID-19 Patients](https://github.com/domcontestabile/Dom_Portfolio/blob/main/SaviorII_study_statistics_code)

Objective: Investigate whether non-invasive vagus nerve stimulation (nVNS) can reduce respiratory distress in COVID-19 patients, who were admitted to Allegheny General Hospital in 2020. Assess the effectiveness of nVNS in improving respiratory symptoms, reducing inflammation, and enhancing cardiopulmonary outcomes, with the goal of potentially using nVNS as a non-invasive and easy-to-administer therapy for acute respiratory distress syndrome (ARDS).

Programming: SAS

Overview:
- Recoded new labels on already exisiting variables
- Utilized two-sample t tests and Fisher’s exact tests to determine any significant relationships between patient treatment group and continuous and categorical variables, respectively  
- Observed a significant difference (p<0.05) between average patient PaO2/FiO2 (or P/F) ratios and their treatment group
- Created a Table 1 of study patient descriptive statistics 
- Created a boxplot to visually show the signifcant difference between average patient P/F ratios and their treatment group

![PaO2 FiO2 boxplot](https://github.com/domcontestabile/Dom_Portfolio/assets/134414164/2fa605a2-a6dd-4ded-ac27-406566538869)

# [COVID-19 State-level Changes in Positive Cases Between States with Early and Delayed Removal of Social Distancing Restrictions in 2020 Report](https://github.com/domcontestabile/Dom_Portfolio/blob/main/COVID19_State_level_Changes_during_2020)

Objective: Compare the trajectory of positive cases between states that aggressively relaxed distancing restrictions in mid-May 2020 and states that delayed such measures. Assess whether there were changes in the case hospitalization rate (CHR) from early in the pandemic to later, considering potential factors such as underlying severity and/or the evolution of clinical management.

Programming: SAS

Overview:
- Merged state population/re-opening approach dataset with state covid cases/hospitalizations/deaths dataset
- Calculated descriptive statistics and a box plot for the number of positive cases per capita by time (April vs. December) and re-opening approach (early vs. delayed)
- Computed a mixed effect regression model of positive cases per capita (100,000 cases/population) on re-opening approach 
- Calculated descriptive statistics for case hospitalization rate (CHR), defined as 100 * (total hospitalizations in a month / total positive cases in a month) during April 2020, December 2020, and the change in CHR within states (December minus April)
- Assessed whether the change in CHR within states was statistically significantly different than 0 using a paired t-test.

![positive cases per capita by time and reopening approach](https://github.com/domcontestabile/Dom_Portfolio/assets/134414164/3ec39f52-e1e7-41cc-af7b-dbd6b75754c8) 

[Final Report - Dom Contestabile.docx](https://github.com/domcontestabile/Dom_Portfolio/files/11547336/Final.Report.-.Dom.Contestabile.docx)

# [Multiple Sclerosis (MS) Data Analysis Project](https://github.com/domcontestabile/Dom_Portfolio/blob/main/MS_Data_Analysis)

Objective: Practice the role of a data analyst and work with a real dataset (sourced from Kaggle) to conduct an exploratory analysis and draw out meaningful findings.  I chose to analyze a dataset from a prospective cohort study that was conducted in Mexican patients newly diagnosed with Multiple Sclerosis (MS), who presented at the National Institute of Neurology and Neurosurgery (NINN) in Mexico City, Mexico, between 2006 and 2010.  Answer the following questions to help gain insight on certain predictor variables:

Programming: SAS

Overview:
- Re-named variables and created new variables from existing variables for analysis purposes (ex: changing age from a continuous variable into a categorical range variable)
- Calculated descriptive statistics for all continuous and categorical variables
- Performed a chi-square test and calculated the odds ratio for the association between CDMS group and gender
- Created frequency tables and data visualizations (bar graphs)
- Provided clear interpretations of the values produced from each data step 

![Stacked bar gender bar graph](https://github.com/domcontestabile/Dom_Portfolio/assets/134414164/1f82a9b5-ca9e-47d0-9cd9-1a965fb01be8) 

# [Evaluation of Self-Inflicted vs. Non-Self-Inflicted Gunshot Wounds and Associated Injuries Involving the Hand and Upper Extremity - Retrospective Orthopedic Resident Project](https://github.com/domcontestabile/Dom_Portfolio/blob/main/Gun_Shot_Wound_Analysis)

Objective: To evaluate self-inflicted vs. non-self-inflicted gunshot wounds to the hand and upper extremity. The primary outcomes measured include the average number of trips to the OR, fracture pattern involved, initial management of injury, types of surgeries required, associated neurovascular damage, hand function after management via DASH and VAS scores, ability to return to work, and type of gun if available. This is retrospective cohort analysis of patients who present to Allegheny General Hospital Emergency Department with self-inflicted GSW to the hand or upper extremity from 1/1/2012 to 12/1/2022.

Programming: SAS

Overview:
- Calculated descriptive statistics for all continuous and categorical variables
- Performed chi-square tests, fisher's exact tests, and t-tests for primary variables and their association between types of gun shot wound velocities and types of surgeries
- Performed two logistic regression analyses: where velocity is the outcome and gustilo-anderson and ethnicity are covariates & where velocity is the outcome and tscherne and ethnicity are covariates

# [Stryker Spine Observational Trial of Clinical Outcomes following Anterior Cervical Discectomy and Fusion with Instrumentation using Allograft or Tritanium - Retrospective Patient Statistics](https://github.com/domcontestabile/Dom_Portfolio/blob/main/Stryker_Spine_Implant_Retrospective_Study_Patients)

Objective: To compare the rate of fusion success and adverse events, patients who undergo anterior cervical discectomy and fusion (ACDF) utilizing Tritanium C (Stryker Spine) will be retrospectively compared to a sample of 20 former patients. Create descriptive statistics for the 20 retrospective patients who underwent instrumented ACDF utilizing structural allograft bone with plates.

Programming: SAS

Overview:
- Calculated descriptive statistics for the retrospective patient sample's continuous and categorical variables (continuous: age, weight, height, & BMI; categorical: sex, race, ethnicity, treated cervical index level, diagnosis, & smoking status)

# [NY Citi Bike Data Analysis Project](https://secure-web.cisco.com/1wJiRYOwgAdWiqq5q-HGfiwA5vFwWywHs3tGlPaNAbGiideu-DxiMNS8Nf6r6zvrOfwy2Zlassc9bBOx_vspSUls0jlmXEPtBJaDn5g4ymP7bcDqluJ0rhDk-hrO6_GeNRoXxuswuQrXtwgvPizp24NQlPHNibirFIxc-axXJFKjXQ9GS0GClRhRgVh4U3V3A5yoIHHedujTJFN6yf_4TZCgzEblhEQsmPqOYLLauAbj1_wWuch_NaJiJC-pwdO6KJ_SQ2u4jO2whgspWzcMZp-BJX5RkyulE01bnUEbAaYZ7iCyvTeAa6BMku7WXuI7N/https%3A%2F%2Fdocs.google.com%2Fspreadsheets%2Fd%2F1XlpHhsr8NQSZBynY95BAMer_1cFC3vZExQeeWlrOZ6I%2Fedit%3Fusp%3Dsharing)

Objective: Practice the role of a data analyst and work with a real dataset (sourced from Kaggle) to solve a hypothetical business challenge. For the purposes of this project, I chose to analyze a dataset from a bike-sharing company, known as Citi Bike. Answer the following questions to help key stakeholders to make smart, data-driven decisions based on the insights I uncover:

1. What are the most popular pick-up locations across the city for NY Citi Bike rental?
2. How does the average trip duration vary across different age groups?
3. Which age group rents the most bikes?
4. How does bike rental vary across the two user groups (one-time users vs long-term subscribers) on different days of the week?
5. Does user age impact the average bike trip duration?

Programming: Google Sheets

Overview:
- Cleaned a NY Citi Bike dataset, removed duplicates, and handled missing data
- Conducted an exploratory data analysis, calculated descriptive statistics, and created pivot tables in order to better understand the data
- Created data visualizations in order to summarize and present key findings in a concise and accessible format
- Crafted a polished, professional presentation, ready to share with stakeholders

[NY Citi Bike Data Analysis Presentation - Dom Contestabile](https://secure-web.cisco.com/1LxKQHMUwWHNQ5Mq6g5YM5NfqDvSZXAyAQlF1m0WE9Ibm3rip01h-aJ-kCAo3hx7vWN4O_MMPwo1pl-ZFp0gsSVL88MRc6xIIP3gMGB4FymI4dM1IlLC4kZqpcggDjJjplbeGrx-4-J_rdY6JOEzUpWkulscQzevlFI8j9yMxVZGrM75j9OY1f0AUqp9LsKyGa3Xl-xLHmmi83R8-kjDDOVE8_eog6dhBkqyKHyesCxYtBEY0t8zuYC_YP8Gkiq9IRgcmPbe50Vd4MkWQPXMWFm4tqGV6hjtRlGn4MPCuK-FR7OwbKmkMtFy5Uom2zrCq/https%3A%2F%2Fdocs.google.com%2Fpresentation%2Fd%2F18wUVyXCMzsylhfGgkgcEazK83IBnb_4sN4fOmW1vlms%2Fedit%3Fusp%3Dsharing)

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
