-- Show all countries with more than 1000 users, sorted by user count. The
-- a country with the most users should be at the top.

use test_db;

SELECT name, iso, count(citizenship_country_id) as citizens FROM countries cs
INNER JOIN users ON users.citizenship_country_id = cs.id
GROUP BY cs.id
HAVING citizens > 1000
ORDER BY citizens DESC
