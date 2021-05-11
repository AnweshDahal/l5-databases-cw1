-- 19030735 Anwesh Dahal

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

