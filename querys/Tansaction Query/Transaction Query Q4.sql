-- 19030735 Anwesh Dahal

SELECT 
  instructor.person_id, 
  person.first_name || ' ' || person.last_name "Name",
  instructor.specification_id,
  instructor.salary
FROM 
  instructor
JOIN
  person
ON
  (instructor.person_id = person.person_id)
WHERE
  instructor.specification_id || instructor.salary
IN (
  SELECT 
    specification_id || salary
  FROM 
    instructor 
  GROUP BY 
    specification_id, salary 
  HAVING 
    count(*) > 1
);

