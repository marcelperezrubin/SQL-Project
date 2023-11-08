/* The average grade that is given by each professor */

SELECT
    p.professor_id,
    p.first_name AS professor_first_name,
    p.last_name AS professor_last_name,
    AVG(g.grade) AS average_grade
FROM
    professors p
INNER JOIN
    grades g ON p.professor_id = g.professor_id
GROUP BY
    p.professor_id, p.first_name, p.last_name;