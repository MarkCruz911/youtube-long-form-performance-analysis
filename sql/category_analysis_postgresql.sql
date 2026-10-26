-- PostgreSQL follow-up: import youtube_long_form_tableau.csv as videos first.
-- This script is provided for later execution; SQLite checks were run in the notebook.
-- Ensure views/revenue are numeric and publish_year is integer during import.
SELECT content_category, COUNT(*) AS video_count,
       percentile_cont(0.5) WITHIN GROUP (ORDER BY views) AS median_views,
       SUM(views) AS total_views,
       SUM(estimated_revenue_usd) AS total_revenue_usd,
       1000.0 * SUM(estimated_revenue_usd) / NULLIF(SUM(views),0) AS aggregate_revenue_per_1000_views_usd
FROM videos GROUP BY content_category ORDER BY median_views DESC;

SELECT publish_year, content_category, COUNT(*) AS video_count,
       percentile_cont(0.5) WITHIN GROUP (ORDER BY views) AS median_views
FROM videos GROUP BY publish_year, content_category
ORDER BY publish_year, median_views DESC;
