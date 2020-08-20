SELECT statuses.name AS "status_name", 
(SELECT Count(status_id) FROM student_quests WHERE statuses.id = student_quests.status_id) as "amount", 
(SELECT concat(round(COUNT(status_id) * 100.0 / (SELECT COUNT(status_id) FROM student_quests)), '%') FROM student_quests WHERE statuses.id = student_quests.status_id) AS "percentage"
FROM statuses ORDER BY statuses.id DESC;