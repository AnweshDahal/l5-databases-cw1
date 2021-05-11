-- 19030735 Anwesh Dahal

SELECT 
  course.course_id, 
  course.course_name, 
  count(student.person_id) "Total Students", 
  max(student.marks) "Highest Marks"
FROM 
  course 
LEFT JOIN 
  student 
ON 
  (course.course_id = student.course_id) 
GROUP BY 
  course.course_id, course.course_name
ORDER BY
  course.course_id
; 
