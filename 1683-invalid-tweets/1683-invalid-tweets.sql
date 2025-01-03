/* Write your PL/SQL query statement below */
SELECT tweet_id
FROM tweets
WHERE LENGTH(content) > 15;