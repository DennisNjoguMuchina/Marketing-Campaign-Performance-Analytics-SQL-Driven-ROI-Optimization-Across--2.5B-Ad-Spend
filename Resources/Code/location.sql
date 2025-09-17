--Do language or location differences affect click rates or ROI?
SELECT
    Language,
    SUM(clicks) AS total_clicks,
    AVG(Clicks) AS avg_clicks_per_campaign
FROM
    marketing_campaign
GROUP BY
    Language
ORDER BY
    total_clicks DESC,avg_clicks_per_campaign DESC        