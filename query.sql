-- Show all countries with more than 1000 (4) users, sorted by user count. The
-- country with the most users should be at the top.

SELECT c.id, name, iso, users.citizenship_country_id, count(citizenship_country_id) as citizens FROM countries c
INNER JOIN users ON users.citizenship_country_id = c.id
GROUP BY c.id
-- HAVING count(citizenship_country_id) > 4
HAVING citizens > 4
ORDER BY citizens DESC