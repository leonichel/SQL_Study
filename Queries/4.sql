SELECT country_name, AVG(value) AS avg_ed_spending_pct
FROM `bigquery-public-data.world_bank_intl_education.international_education`
WHERE indicator_code = 'SE.XPD.TOTL.GD.ZS' and year >= 2010 and year <= 2017
GROUP BY country_name
ORDER BY avg_ed_spending_pct DESC

SELECT indicator_code, indicator_name, COUNT(1) AS num_rows
FROM `bigquery-public-data.world_bank_intl_education.international_education`
WHERE year = 2016
GROUP BY indicator_name, indicator_code
HAVING COUNT(1) >= 175
ORDER BY COUNT(1) DESC