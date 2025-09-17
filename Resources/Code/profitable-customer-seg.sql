--Most Profitable Customer Segments
SELECT
    Customer_Segment,
    AVG(Engagement_Score) AS avg_engagement,
    SUM(Conversion_Rate)/SUM(Acquisition_Cost) AS conversions_per_dollar,
    AVG(roi) AS Return_on_investment,
    SUM(Impressions) AS Impressions
   
FROM
    marketing_campaign
GROUP BY
    Customer_Segment
ORDER BY
    conversions_per_dollar DESC