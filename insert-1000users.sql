DELIMITER //

-- SELECT count(*) INTO @max_countries FROM countries;

-- FOR i IN 1..@max_countries
FOR i IN 1..3
DO
    INSERT INTO users(email, citizenship_country_id) VALUES ('tim@gmail.com', 1);
END FOR;
//