SELECT
    Location,
    sum(Impressions) AS Impressions,
    SUM(Conversion_Rate)AS conversions_per_dollar
FROM
    marketing_campaign
GROUP BY
    location
ORDER BY
    conversions_per_dollar DESC;
