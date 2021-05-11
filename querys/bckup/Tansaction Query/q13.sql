-- Show the name of all the students with the number of weeks since they have enrolled in the course.

SELECT
  student.person_id,
  person.first_name || ' ' || person.last_name "Name",
  round((SYSDATE - student.admission_date) / 7, 0) "Weeks since Enrollment"
FROM
  student
JOIN
  person
ON
  (student.person_id = person.person_id)
ORDER BY
  person_id
;

-- OK
