-- what should be improved:
  -- contries count is hardcoded, instead of select count(*) into @countries_count from countries;
  -- random should use seed
  -- names generation should be improved

DELIMITER //

FOR i IN 1..40000
DO
    SELECT LEFT(UUID(), 8) INTO @name;
    SELECT FLOOR(1 + RAND() * 10 ) INTO @country_id;
   
    INSERT INTO users(email, citizenship_country_id) VALUES (CONCAT(@name, '@gmail.com'), @country_id);
END FOR;
//