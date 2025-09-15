--Channels To Scale Up
SELECT
    Campaign_Type,
    SUM(Clicks) AS Clicks,
    AVG(Engagement_Score) AS avg_eng,
    SUM(Impressions) AS Impressions,
    SUM(Conversion_Rate)/SUM(Acquisition_Cost) AS conversions_per_dollar
FROM
    marketing_campaign
GROUP BY
    Campaign_Type
ORDER BY
    conversions_per_dollar DESC