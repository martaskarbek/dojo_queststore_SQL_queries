3.

SELECT roles.name as "Name", 
(SELECT Count(is_active) FROM user_details WHERE is_active = true AND roles.id = user_details.role_id) as "Active", 
(SELECT Count(is_active) FROM user_details WHERE is_active = false AND roles.id = user_details.role_id) as "Not Active",
(SELECT Count(is_active) FROM user_details WHERE roles.id = user_details.role_id) as "Active + not Active"
FROM roles
ORDER BY "Active + not Active";