INSERT INTO modules_person VALUES(
  'CS100', 1
);
INSERT INTO modules_person VALUES(
  'CS200', 1
);
INSERT INTO modules_person VALUES(
  'CS200', 2
);
INSERT INTO modules_person VALUES(
  'CS300', 2
);
INSERT INTO modules_person VALUES(
  'CS300',	3
);

-- 

INSERT INTO modules_person VALUES(
  'CS400', 4
);
INSERT INTO modules_person VALUES(
  'CS500', 5
);
INSERT INTO modules_person VALUES(
  'CS100', 5
);
INSERT INTO modules_person VALUES(
  'CS600', 6
);
INSERT INTO modules_person VALUES(
  'CS700', 7
);

-- 

INSERT INTO modules_person VALUES(
  'CS900', 7
);
INSERT INTO modules_person VALUES(
  'CS900', 8
);
INSERT INTO modules_person VALUES(
  'MA100', 9
);
INSERT INTO modules_person VALUES(
  'MA200', 9
);
INSERT INTO modules_person VALUES(
  'CS100', 10
);

-- 

INSERT INTO modules_person VALUES(
  'CS200', 10
);
INSERT INTO modules_person VALUES(
  'CS300', 11
);
INSERT INTO modules_person VALUES(
  'CS400', 11
);
INSERT INTO modules_person VALUES(
  'CS100', 12
);
INSERT INTO modules_person VALUES(
  'CS500', 12
);

-- 

INSERT INTO modules_person VALUES(
  'CS500', 13
);
INSERT INTO modules_person VALUES(
  'CS600', 13
);
INSERT INTO modules_person VALUES(
  'CS700', 14
);
INSERT INTO modules_person VALUES(
  'CS800', 14
);
INSERT INTO modules_person VALUES(
  'CS900', 15
);

-- 

INSERT INTO modules_person VALUES(
  'CS700', 15
);
INSERT INTO modules_person VALUES(
  'CS100', 16
);
INSERT INTO modules_person VALUES(
  'CS200', 16
);
INSERT INTO modules_person VALUES(
  'CS200', 17
);
INSERT INTO modules_person VALUES(
  'CS300', 17
);

-- 

INSERT INTO modules_person VALUES(
  'CS200', 18
);
INSERT INTO modules_person VALUES(
  'CS300', 18
);
INSERT INTO modules_person VALUES(
  'CS100', 19
);
INSERT INTO modules_person VALUES(
  'CS400', 19
);
INSERT INTO modules_person VALUES(
  'MA100', 20
);

-- 

INSERT INTO modules_person VALUES(
  'MA200', 20
);
INSERT INTO modules_person VALUES(
  'MA100', 21
);
INSERT INTO modules_person VALUES(
  'MA200', 21
);
INSERT INTO modules_person VALUES(
  'MA100', 22
);
INSERT INTO modules_person VALUES(
  'MA200', 22
);

-- 

INSERT INTO modules_person VALUES(
  'MA100', 23
);
INSERT INTO modules_person VALUES(
  'MA200', 23
);
INSERT INTO modules_person VALUES(
  'CS400', 3
);
INSERT INTO modules_person VALUES(
  'CS300', 4
);
INSERT INTO modules_person VALUES(
  'CS500', 6
);

-- 

INSERT INTO modules_person VALUES(
  'CS700', 8
);
INSERT INTO modules_person VALUES(
  'CS100', 24
);
INSERT INTO modules_person VALUES(
  'CS200', 24
);
INSERT INTO modules_person VALUES(
  'CS100', 25
);
INSERT INTO modules_person VALUES(
  'CS500', 25
);

-- 

INSERT INTO modules_person VALUES(
  'CS100', 26
);
INSERT INTO modules_person VALUES(
  'CS600', 26
);
INSERT INTO modules_person VALUES(
  'CS500', 27
);
INSERT INTO modules_person VALUES(
  'CS600', 27
);
INSERT INTO modules_person VALUES(
  'CS200', 28
);

-- 

INSERT INTO modules_person VALUES(
  'CS600', 28
);
INSERT INTO modules_person VALUES(
  'CS100', 2
);
INSERT INTO modules_person VALUES(
  'CS100', 3
);
INSERT INTO modules_person VALUES(
  'CS100', 4
);
INSERT INTO modules_person VALUES(
  'CS100', 6
);

-- 

INSERT INTO modules_person VALUES(
  'CS100', 7
);
INSERT INTO modules_person VALUES(
  'MA100', 29
);

SELECT 
  modules_code, 
  count(person_id) "Teachers" 
FROM 
  modules_person 
WHERE 
  person_id 
IN 
  (SELECT 
    person_id 
  FROM 
    person 
  WHERE 
    position = 'inst') 
GROUP BY 
  modules_code 
HAVING 
  count(person_id) > 1 
ORDER BY modules_code;