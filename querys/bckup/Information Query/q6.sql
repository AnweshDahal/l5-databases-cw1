-- List all Students who have enrolled in ‘networking’ specifications.

SELECT
  student.person_id,
  person.first_name || ' ' || person.last_name "Name"
FROM
  student
JOIN
  person
ON
  (student.person_id = person.person_id)
WHERE
  student.specification_id = (
    SELECT
      specification_id
    FROM
      specification
    WHERE
      specification_name = 'Networking'
  )
;


-- OK