--What’s the average acquisition cost per channel?
SELECT
    Channel_Used,
    AVG(Acquisition_Cost) AS Avg_acquisition_cost
FROM 
    marketing_campaign  
GROUP BY
    channel_used
ORDER BY
   Avg_acquisition_cost DESC         