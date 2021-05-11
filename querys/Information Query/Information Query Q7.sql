-- 19030735 Anwesh Dahal

SELECT 
  modules_person.person_id,
  person.first_name || ' ' || person.last_name "Name",
  person.m_fax_no "Perm. Fax No.",
  address.fax_no "Temp. Fax No."
FROM
  modules_person
JOIN
  person
ON
  (modules_person.person_id = person.person_id)
LEFT JOIN
  person_address
ON
  (modules_person.person_id = person_address.address_id)
LEFT JOIN
  address
ON
  (person_address.address_id = address.address_id)
WHERE
  modules_person.person_id 
IN 
(
    SELECT
      person_id
    FROM
      person
    WHERE
      position = 'inst'
)
AND
  modules_person.modules_code = (
    SELECT
      modules_code
    FROM
      modules
    WHERE
      modules_name = 'Databases'
  )
;
