-- List the name of all the instructors whose name contains āsā and salary is above 50,000.

SELECT
  person.first_name || ' ' || person.last_name "Name",
  instructor.salary
FROM 
  person
JOIN
  instructor
ON
  (person.person_id = instructor.person_id)
WHERE
  person.position = 'inst'
AND
  salary > 50000
AND
  LOWER(person.first_name) ||  LOWER(person.last_name)
LIKE
  '%s%'
;

  -- OK

