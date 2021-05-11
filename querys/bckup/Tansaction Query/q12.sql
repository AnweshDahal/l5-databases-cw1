-- Place the default Number 1234567890 if the list of phone numbers to the location of the address is empty and give the column name as ‘Contact details.

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

-- OK