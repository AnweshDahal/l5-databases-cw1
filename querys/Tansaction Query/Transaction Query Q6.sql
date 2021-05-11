-- 19030735 Anwesh Dahal

SELECT
  instructor.person_id,
  person.first_name || ' ' || person.last_name "Course Leader",
  course.course_name
FROM
  instructor
JOIN
  person
ON
  (instructor.person_id = person.person_id)
JOIN
  course
ON
  (instructor.course_id = course.course_id)
WHERE
  role = 'crs ldr'
;
