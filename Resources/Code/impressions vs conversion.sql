SELECT
    Campaign_Type,
    sum(Impressions) AS Impressions,
    sum(Conversion_Rate)/sum(Acquisition_Cost) AS conversions_per_dollar,
    sum(Conversion_Rate)/sum(impressions) AS conversions_per_impression
FROM 
    marketing_campaign
GROUP BY
    campaign_type    
ORDER BY conversions_per_impression DESC;