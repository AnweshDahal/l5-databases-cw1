-- List the name of the head of modules with the list of his phone number.

SELECT
  instructor.person_id,
  person.first_name || ' ' || person.last_name "Name",
  person.m_phone_no "Permanent Phone Number",
  address.phone_no "Temporary Phone Number"
FROM
  instructor
JOIN
  person
ON
  (instructor.person_id = person.person_id)
LEFT JOIN
  person_address
ON
  (instructor.person_id = person_address.person_id)
LEFT JOIN
  address
ON
  (person_address.address_id = address.address_id)
WHERE
  instructor.role = 'mod ldr'
;

-- OK
