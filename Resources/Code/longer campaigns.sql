SELECT 
   -- Campaign_Type,
    CAST(SPLIT_PART(Duration, ' ', 1) AS INT) AS duration_days,
    SUM(Conversion_Rate)/SUM(Acquisition_Cost) AS conversions_per_dollar,
    SUM(Clicks) AS total_clicks,
    SUM(Impressions) AS total_impressions
FROM
     marketing_campaign
GROUP BY
    duration_days
    
ORDER BY
    conversions_per_dollar DESC;

