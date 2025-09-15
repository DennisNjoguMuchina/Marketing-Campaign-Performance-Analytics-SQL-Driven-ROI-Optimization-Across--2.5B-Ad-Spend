--Which campaigns wasted budget (high spend, low conversions)?
SELECT
    Campaign_Type,
    sum(conversion_rate)/sum(Acquisition_Cost) as conversions_per_dollar,
    sum(Acquisition_Cost) AS total_spend
FROM
    marketing_campaign
GROUP BY
    campaign_type
ORDER BY
    conversions_per_dollar ASC       
