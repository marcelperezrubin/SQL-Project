/* Sort students by the courses that they are enrolled in */
    
SELECT s.student_id, s.first_name, s.last_name, c.course_name
FROM students s
JOIN grades g ON s.student_id = g.student_id
JOIN courses c ON g.course_id = c.course_id
ORDER BY s.student_id, c.course_name;