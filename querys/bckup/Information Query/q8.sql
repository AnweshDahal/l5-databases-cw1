-- List the specification falls under the BIT course.

SELECT
  specification_id,
  specification_name
FROM
  specification
WHERE
  course_id = (
    SELECT
      course_id
    FROM
      course
    WHERE
      course_name = 'BIT'
  )
;

-- OK