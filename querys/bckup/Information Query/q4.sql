-- List the modules comes under the ‘Multimedia’ specification.

SELECT
  modules.modules_code,
  modules.modules_name
FROM 
  modules_specification
JOIN
  modules 
ON
  (modules.modules_code = modules_specification.modules_code)
WHERE 
  modules_specification.specification_id = 
  (SELECT 
    specification_id 
  FROM 
    specification 
  WHERE 
    specification_name = 'Multimedia')
;

-- OK
