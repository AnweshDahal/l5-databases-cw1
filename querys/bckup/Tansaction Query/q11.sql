-- Show the students, course they enroll in and their fees. Reduce 10% of the fees if they are enrolled in a computing course.

SELECT
  student.person_id,
  person.first_name || ' ' || person.last_name "Name",
  course.course_name,
  specification.specification_name,
  student.fees "Old Fees",
  CASE student.specification_id
    WHEN 
      (SELECT 
        specification_id 
      FROM 
        specification 
      WHERE specification_name = 'Computing')
    THEN
      student.fees * 0.9
    ELSE student.fees
  END "New Fees"
FROM 
  student
JOIN
  person
ON
  (student.person_id = person.person_id)
JOIN
  specification
ON
  (student.specification_id = specification.specification_id)
join
  course
on
  (student.course_id = course.course_id)
;

-- OK