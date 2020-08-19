1.

SELECT roles.name as "Name", Count(role_id) as "Amount"
  FROM roles LEFT JOIN user_details
    ON roles.id = user_details.role_id
 GROUP BY roles.name
 ORDER BY "Amount";