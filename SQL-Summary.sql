/* Create a summary report of courses and their average grades,
sorted by the most challenging course (course with the lowest average grade) 
to the easiest course */

SELECT c.course_name, AVG(g.grade) AS average_grade
FROM courses c
LEFT JOIN grades g ON c.course_id = g.course_id
GROUP BY c.course_name
ORDER BY average_grade;