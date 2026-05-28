SELECT 
 id as user_id,
 date(date_format (createdat, "yyyy-MM-dd")) as user_enrollment_date,
 firstname,
 lastname,
 email as contact_email,
 phone as mobile_contact,
 address as street_address,
 city,
 zip as zipcode,
 state,
 country  
FROM
{{ ref("bronze_users")}}