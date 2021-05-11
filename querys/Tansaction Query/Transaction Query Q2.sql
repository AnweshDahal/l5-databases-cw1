-- 19030735 Anwesh Dahal

SELECT
  address_id, 
  country, 
  province, 
  city, 
  street, 
  house_no, 
  NVL(phone_no, '1234567890') "Contact details"
FROM
  address
;
