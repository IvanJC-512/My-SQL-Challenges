SELECT CONCAT(name, '(', LEFT(occupation, 1), ')') AS name_with_initial
FROM OCCUPATIONS
ORDER BY name ASC;


SELECT CONCAT(
           'There are a total of ', 
           COUNT(*), 
           ' ', 
           LOWER(occupation), 
           's.'
       ) AS occupation_count
FROM OCCUPATIONS
GROUP BY occupation
ORDER BY COUNT(*) ASC, occupation ASC;