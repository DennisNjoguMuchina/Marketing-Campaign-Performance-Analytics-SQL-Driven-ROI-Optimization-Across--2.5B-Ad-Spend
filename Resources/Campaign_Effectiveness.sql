--Which campaign types (Email, Display, Influencer, etc.) generate the highest ROI?
SELECT 
    Campaign_Type,SUM(roi) as ROI
FROM 
    marketing_campaign
GROUP BY 
    campaign_type
ORDER BY 
    roi DESC