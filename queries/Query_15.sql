SELECT 'was_bought' AS "name", 
count(DISTINCT artifact_id) AS "amount" ,
(concat(count(DISTINCT artifact_id) * 100 /  (SELECT COUNT(id) from artifacts) , ' %')) AS "percentage"
FROM student_artifacts
UNION
SELECT 'was_never_bought'as "name", 
(SELECT COUNT(id) from artifacts) - (select count(DISTINCT artifact_id) from student_artifacts) as "amount",
(concat(
cast((((SELECT COUNT(id) from artifacts) - (select count(DISTINCT artifact_id) from student_artifacts)) * 100) as bigint) / cast((select count(id) from artifacts) as bigint), ' %'
)) AS "percentage"
FROM student_artifacts
; 