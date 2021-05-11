--  List all the modules which are taught by more than one instructor.

SELECT 
  modules_code, 
  count(person_id) "Teachers" 
FROM 
  modules_person 
WHERE 
  person_id 
IN 
  (SELECT 
    person_id 
  FROM 
    person 
  WHERE 
    position = 'inst') 
GROUP BY 
  modules_code 
HAVING 
  count(person_id) > 1 
ORDER BY modules_code;

-- OK