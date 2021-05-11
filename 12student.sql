INSERT INTO student VALUES(
  10, 114000, '12-APR-19', 90, 1, 1
);
INSERT INTO student VALUES(
  11, 114000, '12-APR-19', 80, 1, 1
);
INSERT INTO student VALUES(
  12, 125000, '12-APR-19', 70, 2, 1
);
INSERT INTO student VALUES(
  13, 125000, '12-APR-20', 60, 2, 1
);
INSERT INTO student VALUES(
  14, 150000, '12-APR-20', 50, 3, 1
);

-- 

INSERT INTO student VALUES(
  15, 150000, '12-APR-20', 50, 3, 1
);
INSERT INTO student VALUES(
  16, 114000, '12-APR-20', 60, 1, 1
);
INSERT INTO student VALUES(
  17, 114000, '8-JAN-19', 70, 1, 1
);
INSERT INTO student VALUES(
  18, 114000, '8-JAN-19', 80, 1, 1
);
INSERT INTO student VALUES(
  19, 114000, '8-JAN-19', 80, 1, 1
);

-- 

INSERT INTO student VALUES(
  20, 150000, '8-JAN-20', 90, 4, 2
);
INSERT INTO student VALUES(
  21, 150000, '8-JAN-20', 80, 4, 2
);
INSERT INTO student VALUES(
  22, 150000, '8-JAN-20', 70, 4, 2
);
INSERT INTO student VALUES(
  23, 150000, '8-JAN-20', 60, 4, 2
);
INSERT INTO student VALUES(
  24, 125000, '21-DEC-12', 89, 2, 1
);

-- 

INSERT INTO student VALUES(
  25, 125000, '22-DEC-12', 88, 2, 1
);
INSERT INTO student VALUES(
  26, 125000, '12-DEC-12', 87, 2, 1
);
INSERT INTO student VALUES(
  27, 125000, '25-DEC-12', 86, 2, 1
);
INSERT INTO student VALUES(
  28, 125000, '21-DEC-12', 85, 2, 1
);


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
  course.course_id; 

