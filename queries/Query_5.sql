SELECT classes.name AS "Class_name", Count(classes_id) AS "amount"
  FROM classes LEFT JOIN students_classes
    ON classes.id = students_classes.classes_id
 GROUP BY classes.name
 ORDER BY "amount" DESC;