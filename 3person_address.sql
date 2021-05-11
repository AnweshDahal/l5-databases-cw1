INSERT INTO person_address VALUES (
  1, 1
);
INSERT INTO person_address VALUES (
  2, 2
);
INSERT INTO person_address VALUES (
  3, 3
);
INSERT INTO person_address VALUES (
  4, 4
);
INSERT INTO person_address VALUES (
  5, 5
);

-- 

INSERT INTO person_address VALUES (
  6, 6
);
INSERT INTO person_address VALUES (
  7, 7
);

select 
  person_address.person_id, 
  person.first_name || ' ' || person.last_name AS "Full name",
  address.country
from person_address
join person on (person_address.person_id = person.person_id)
join address on (person_address.address_id = address.address_id)
; 
