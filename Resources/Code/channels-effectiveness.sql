-- Cost Efficiency of Marketing Campaign Types
SELECT 
    campaign_type,
    sum(conversion_rate)/sum(Acquisition_Cost) AS conversions_per_dollar,
    sum(Acquisition_Cost) as Cost
FROM 
    marketing_campaign
GROUP BY   
    campaign_type
ORDER BY conversions_per_dollar DESC
