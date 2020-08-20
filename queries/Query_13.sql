SELECT concat(user_details.name, ' ',  user_details.surname) AS "student_name",
(SELECT count(wallet_id) from student_artifacts where student_artifacts.wallet_id = user_details.id) as "artifacts_amount" from user_details where role_id = 3
order by "artifacts_amount" desc, student_name  limit 5;
