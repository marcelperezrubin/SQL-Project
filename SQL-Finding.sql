 /* Finding which student and professor have the most courses in common */

SELECT s1.student_id AS student_id,
       s1.first_name AS student_first_name,
       s1.last_name AS student_last_name,
       p1.professor_id AS professor_id,
       p1.first_name AS professor_first_name,
       p1.last_name AS professor_last_name,
       COUNT(DISTINCT g1.course_id) AS common_courses
FROM students s1
JOIN grades g1 ON s1.student_id = g1.student_id
JOIN professors p1 ON g1.professor_id = p1.professor_id
WHERE (s1.student_id, p1.professor_id) = (
    SELECT s2.student_id, p2.professor_id
    FROM students s2
    JOIN grades g2 ON s2.student_id = g2.student_id
    JOIN professors p2 ON g2.professor_id = p2.professor_id
    GROUP BY s2.student_id, p2.professor_id
    ORDER BY COUNT(DISTINCT g2.course_id) DESC
    LIMIT 1
)
GROUP BY s1.student_id, p1.professor_id;