SELECT classes.name AS "class_name", 
(SELECT Count(Classes_id) FROM students_classes WHERE classes.id = students_classes.classes_id) as "amount", 
(SELECT concat(round(Count(classes_id) * 100.0 / (SELECT COUNT(classes_id) FROM students_classes)), '%') FROM students_classes WHERE classes.id = students_classes.classes_id) as "percentage"
FROM classes ORDER BY percentage DESC;