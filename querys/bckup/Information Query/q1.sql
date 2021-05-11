-- List all the students with all their addresses with their phone numbers.

SELECT
  person.person_id,
  person.first_name || ' ' || person.last_name "Name",
  person.m_country "Perm. Country",
  person.m_province "Perm. Province",
  person.m_city "Perm. City",
  person.m_street "Perm. Street",
  person.m_house_no "Perm. House Number",
  person.m_phone_no "Perm. Phone Number",
  person_address.address_id,
  address.country,
  address.province,
  address.city,
  address.street,
  address.house_no,
  address.phone_no
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
  position = 'stud'
ORDER BY
  person_id
;

-- OK

