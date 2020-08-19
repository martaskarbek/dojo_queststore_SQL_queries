2.

SELECT roles.name as "Name", 
(SELECT Count(role_id) FROM user_details WHERE roles.id = user_details.role_id) as "Amount", 
(SELECT concat(round(Count(role_id) * 100.0 / (SELECT COUNT(role_id) FROM user_details)), '%') FROM user_details WHERE roles.id = user_details.role_id) as "Percentage"
FROM roles;