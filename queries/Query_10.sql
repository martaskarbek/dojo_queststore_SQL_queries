10.

SELECT user_details.surname as "Surname",  user_details.name as "Name", count(status_id) as "Value"
FROM user_details LEFT JOIN student_quests
 ON student_quests.wallet_id = user_details.id
WHERE user_details.role_id = 3 and student_quests.status_id = 3
GROUP BY user_details.id
ORDER BY "Value" DESC, "Surname"
LIMIT 5