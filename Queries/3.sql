SELECT author, COUNT(1) AS NumPosts
FROM `bigquery-public-data.hacker_news.comments`
GROUP BY author
HAVING COUNT(1) > 10000

SELECT COUNT(1) AS deleted_posts_num
FROM `bigquery-public-data.hacker_news.comments`
WHERE deleted = True