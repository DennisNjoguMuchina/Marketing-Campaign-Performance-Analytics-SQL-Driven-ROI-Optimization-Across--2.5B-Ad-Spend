--Which customer segments (e.g., “Fashionistas”, “Health & Wellness”) show the highest engagement score?
SELECT
    Customer_Segment,
    sum(Engagement_Score) AS engagement_score
FROM marketing_campaign
GROUP BY
    Customer_Segment
ORDER BY engagement_score DESC    
