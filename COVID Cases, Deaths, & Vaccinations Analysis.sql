--COVID Deaths & Vaccinations Analysis
--Programmer: Dom Contestabile

SELECT *
	FROM PortfolioProject..CovidDeaths$
	ORDER BY 3,4

SELECT *
	FROM PortfolioProject..CovidVaccinations$
	ORDER BY 3,4

SELECT location, date, total_cases, new_cases, total_deaths, population
	FROM PortfolioProject..CovidDeaths$
	ORDER BY 1,2 -- Ordering by date & location

-- Using Total Cases & Total Deaths to calculate COVID Mortality Rate(%)

SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS mortality_rate
	FROM PortfolioProject..CovidDeaths$
	ORDER BY 1,2

-- Calculating Mortality Rate(%) of only the United States
-- Mortality Rate = liklihood of dying from a disease

SELECT location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 AS us_mortality_rate
	FROM PortfolioProject..CovidDeaths$
	WHERE location LIKE '%states%'
	ORDER BY 1,2
	--Results:
	--Between April-August of 2020, US COVID Mortality Rate range was approximately 3-6%
	--Between September-December of 2020, US COVID Mortality Rate range was approximately 1-3%
	--Between January-April of 2021, US COVID Mortality Rate range was approximately 1.68-1.82% (after vaccines were publicly available)

-- Using Total Cases & Population to calculate COVID Prevalence Rate(%)
-- Prevalence Rate = includes all cases (new and existing) and measures the overall burden of the disease

SELECT location, date, population, total_cases, (total_cases/population)*100 AS us_prevalence_rate
	FROM PortfolioProject..CovidDeaths$
	WHERE location LIKE '%states%'
	ORDER BY 1,2
	--Results:
	--By July 12, 2020, 1% of the U.S. population had contracted COVID-19
	--By December 14, 2020, 5% of the U.S. population had contracted COVID-19

--Countries with the highest single-day infection rates relative to their population:

SELECT location, population, MAX(total_cases) AS highest_infection_count, MAX((total_cases/population))*100 AS infection_rate
	FROM PortfolioProject..CovidDeaths$
	GROUP BY location, population
	ORDER BY infection_rate DESC -- orders from highest to lowest
	--Results:
	--Andorra (17.1%), Montenegro (15.5%), & Czechia (15.2%) were the top 3 countries with the highest single-day infection rates
	--US (9.8%) placed 9th for the highest single-day infection rates

--Countries with the highest total death count:

--Since total_death is categorized as varchar, I am using 'cast' to convert data type to integer
SELECT location, MAX(cast(total_deaths AS INT)) AS total_death_count
	FROM PortfolioProject..CovidDeaths$
	GROUP BY location
	ORDER BY total_death_count DESC -- orders from highest to lowest
	--Results:
	--Noticed that query returns continents in location column when continent column is null
	--Adjusting query to return ONLY countries, not continents

--As long as continent column is not NULL, location column will only show countries
SELECT location, MAX(cast(total_deaths AS INT)) AS total_death_count
	FROM PortfolioProject..CovidDeaths$
	WHERE continent IS NOT NULL
	GROUP BY location
	ORDER BY total_death_count DESC
	--Results:
	--US (576k), Brazil (404k), & Mexico (217k) were the top 3 countries with the highest total death count
	--US (9.8%) placed 9th for the highest single-day infection rates

--Continents with the highest total death count:

SELECT location, MAX(cast(total_deaths AS INT)) AS total_death_count
	FROM PortfolioProject..CovidDeaths$
	WHERE continent IS NULL
	GROUP BY location
	ORDER BY total_death_count DESC
	--Results:
	--Europe (>1 mil),North America (848k), & South America (672k) were the top 3 continents with the highest total death count

-- Total global COVID cases, deaths, & mortality rate

--Since new_deaths is categorized as varchar, I am using 'cast' to convert data type to integer
SELECT SUM(new_cases) AS global_total_cases, SUM(cast(new_deaths AS INT)) AS global_total_deaths, 
SUM(cast(new_deaths AS INT))/SUM(new_cases)*100 AS mortality_rate
	FROM PortfolioProject..CovidDeaths$
	WHERE continent IS NOT NULL
	ORDER BY 1,2
	--Results between 1/26/2020 - 4/30/2021:
	--Total global cases = 150,574,977
	--Total global deaths = 3,180,206
	--Total global mortality rate = 2.11%

--Joining COVID Deaths table with COVID Vaccinations table

SELECT *
	FROM PortfolioProject..CovidDeaths$
	JOIN PortfolioProject..CovidVaccinations$
		ON CovidDeaths$.location = CovidVaccinations$.location
		AND CovidDeaths$.date = CovidVaccinations$.date

--Total amount of people in the world who have been vaccinated

SELECT CovidDeaths$.continent, CovidDeaths$.location, CovidDeaths$.date, CovidDeaths$.population, CovidVaccinations$.new_vaccinations
	FROM PortfolioProject..CovidDeaths$
	JOIN PortfolioProject..CovidVaccinations$
		ON CovidDeaths$.location = CovidVaccinations$.location
		AND CovidDeaths$.date = CovidVaccinations$.date
	WHERE CovidDeaths$.continent IS NOT NULL
	ORDER BY 2,3 -- Ordering by location & date
	--Results:
	--Canada started rolling out vaccinations on 12/15/2020
	--By March 2021, Canada began consistently administering >100k new vaccinations per day
	--By April 2021, Canada began consistently administering >200k new vaccinations per day

--Adding Cumulative Vaccinations by using New Vaccinations variable

SELECT CovidDeaths$.continent, CovidDeaths$.location, CovidDeaths$.date, CovidDeaths$.population, CovidVaccinations$.new_vaccinations,
SUM(CONVERT(INT,CovidVaccinations$.new_vaccinations)) --another way to change data type from varchar to integer
OVER (Partition by CovidDeaths$.location ORDER BY CovidDeaths$.location, CovidDeaths$.date) --every time it gets to a new location, cumulative count will start over
AS cumulative_vaccinations
	FROM PortfolioProject..CovidDeaths$
	JOIN PortfolioProject..CovidVaccinations$
		ON CovidDeaths$.location = CovidVaccinations$.location
		AND CovidDeaths$.date = CovidVaccinations$.date
	WHERE CovidDeaths$.continent IS NOT NULL
	ORDER BY 2,3 -- Ordering by location & date

--Percentage of Vaccinated People in EACH Country

--Using a CTE: a temporary result set that you can reference within a SELECT, INSERT, UPDATE, or DELETE query. Helps make complex queries more readable and easier to maintain.
WITH PopvsVac (continent, location, date, population, new_vaccinations, cumulative_vaccinations)
AS --if # of columns in CTE does NOT match # of columns in SELECT statement, it will not work
(
    SELECT 
        CovidDeaths$.continent, 
        CovidDeaths$.location, 
        CovidDeaths$.date, 
        CovidDeaths$.population, 
        CovidVaccinations$.new_vaccinations,
        SUM(CONVERT(INT, CovidVaccinations$.new_vaccinations)) --another way to change data type from varchar to integer
        OVER (PARTITION BY CovidDeaths$.location ORDER BY CovidDeaths$.location, CovidDeaths$.date) --every time it gets to a new location, cumulative count will start over
        AS cumulative_vaccinations
    FROM 
        PortfolioProject..CovidDeaths$
    JOIN 
        PortfolioProject..CovidVaccinations$
        ON CovidDeaths$.location = CovidVaccinations$.location
        AND CovidDeaths$.date = CovidVaccinations$.date
    WHERE 
        CovidDeaths$.continent IS NOT NULL)

SELECT continent, location, date, population, new_vaccinations, cumulative_vaccinations, (cumulative_vaccinations/population)*100 AS vaccination_percentage
	FROM PopvsVac;
	--Results:
	--Columns added to display rolling (cumulative) counts of:
		--# of people vaccinated for each country
		--% of people vaccinated for each country

--Creating a Temp Table

DROP TABLE IF EXISTS #PercentPopulationVaccinated
--By dropping any existing instance of the temp table, the code ensures that any previous data stored in #PercentPopulationVaccinated is removed, making sure that only fresh, newly inserted data is processed
--If you're running this script multiple times (i.e., testing or re-executing after changes), the DROP TABLE IF EXISTS command makes it easier to rerun without having to manually drop the temporary table

CREATE TABLE #PercentPopulationVaccinated
(
Continent nvarchar(255),
Location nvarchar(255),
Date datetime,
Population numeric,
New_vaccinations numeric,
Cumulative_vaccinations numeric
)

INSERT INTO #PercentPopulationVaccinated
    SELECT 
        CovidDeaths$.continent, 
        CovidDeaths$.location, 
        CovidDeaths$.date, 
        CovidDeaths$.population, 
        CovidVaccinations$.new_vaccinations,
        SUM(CONVERT(INT, CovidVaccinations$.new_vaccinations)) 
        OVER (PARTITION BY CovidDeaths$.location ORDER BY CovidDeaths$.location, CovidDeaths$.date) 
        AS cumulative_vaccinations
    FROM 
        PortfolioProject..CovidDeaths$
    JOIN 
        PortfolioProject..CovidVaccinations$
        ON CovidDeaths$.location = CovidVaccinations$.location
        AND CovidDeaths$.date = CovidVaccinations$.date
    WHERE 
        CovidDeaths$.continent IS NOT NULL

SELECT *, (cumulative_vaccinations/population)*100 AS vaccination_percentage
	FROM #PercentPopulationVaccinated

--Creating View (permanent table) to store data for later visualization

CREATE VIEW PercentPopulationVaccinated AS
	SELECT 
        CovidDeaths$.continent, 
        CovidDeaths$.location, 
        CovidDeaths$.date, 
        CovidDeaths$.population, 
        CovidVaccinations$.new_vaccinations,
        SUM(CONVERT(INT, CovidVaccinations$.new_vaccinations)) 
        OVER (PARTITION BY CovidDeaths$.location ORDER BY CovidDeaths$.location, CovidDeaths$.date) 
        AS cumulative_vaccinations
    FROM 
        PortfolioProject..CovidDeaths$
    JOIN 
        PortfolioProject..CovidVaccinations$
        ON CovidDeaths$.location = CovidVaccinations$.location
        AND CovidDeaths$.date = CovidVaccinations$.date
	WHERE CovidDeaths$.continent IS NOT NULL
