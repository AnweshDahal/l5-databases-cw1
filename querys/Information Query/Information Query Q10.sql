-- 19030735 Anwesh Dahal

SELECT
  person.first_name || ' ' || person.last_name "Name",
  person.m_country "Perm. Country",
  person.m_province "Perm. Province",
  person.m_city "Perm. City",
  person.m_province "Perm. Province",
  person.m_street "Perm. Street",
  person.m_house_no "Perm. House No.",
  address.country "Temp. Country",
  address.province "Temp. Province",
  address.city "Temp. City",
  address.street "Temp. Street",
  address.house_no "Temp. House No."
FROM
  person
LEFT JOIN
  person_address
ON
  (person.person_id = person_address.person_id)
LEFT JOIN
  address
ON
  (person_address.address_id = address.address_id)
WHERE
  person.position = 'inst'
AND
  person.first_name LIKE '%a'
;
