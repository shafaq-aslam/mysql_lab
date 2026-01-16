USE mysql_subquery;

-- 1. Find the movie with highest profit (vs order by)
SELECT * FROM movies
WHERE (gross - budget) = (SELECT MAX(gross - budget) FROM movies);

-- OR
SELECT * FROM movies
ORDER BY (gross - budget) DESC LIMIT 1;

-- 2. Find how many movies have a rating > the avg of all the movies ratings (Find the count of above avg movies)
-- 3. Find the highest rated movie of 2000
-- 4. Find the highest rated movie among all movies whose number of votes are > the dataset avg votes
    