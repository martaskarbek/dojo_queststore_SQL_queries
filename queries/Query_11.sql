SELECT name, surname
FROM user_details, student_quests
WHERE user_details.id = student_quests.wallet_id and student_quests.status_id = 1
ORDER BY surname;;
