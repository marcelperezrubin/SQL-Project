/* The top grades for each student */

SELECT
    s.student_id,
    s.first_name AS student_first_name,
    s.last_name AS student_last_name,
    MAX(g.grade) AS top_grade
FROM
    students s
INNER JOIN
    grades g ON s.student_id = g.student_id
GROUP BY
    s.student_id, s.first_name, s.last_name;