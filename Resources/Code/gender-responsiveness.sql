SELECT
    age_group,
    gender,AVG(conversion_rate) AS avg_conversion_rate,
    sum(conversion_rate)/sum(Acquisition_Cost) AS conversions_per_dollar
FROM 
    marketing_campaign
WHERE
    age_group NOT IN('All Ages')   
GROUP BY
    age_group,gender
ORDER BY avg_conversion_rate DESC    