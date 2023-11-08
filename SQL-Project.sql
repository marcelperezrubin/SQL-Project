
USE university_sql_course_schema;

-- Insertar datos de estudiantes

INSERT INTO students (first_name, last_name)
VALUES
    ('John', 'Doe'),
    ('Jane', 'Smith'),
    ('Bob', 'Johnson'),
    ('Alice', 'Williams'),
    ('David', 'Brown'),
    ('Emily', 'Jones'),
    ('Michael', 'Taylor');

-- Insertar datos de asignaturas
INSERT INTO courses (course_name)
VALUES
    ('Mathematics'),
    ('History'),
    ('Computer Science'),
	('Geography'),
    ('Chemistry'),
    ('Sports'),
    ('Language');

-- Insertar datos en la tabla de professors
INSERT INTO professors (first_name, last_name)
VALUES
    ('Professor', 'Smith'),
    ('Professor', 'Johnson'),
    ('Professor', 'Maria');

-- Insertar datos en la tabla de grades
INSERT INTO grades (student_id, course_id, professor_id, grade)
VALUES
    (1, 1, 1, 90.5),
    (1, 2, 2, 85.0),
    (2, 1, 1, 88.0),
    (2, 2, 2, 92.5),
    (3, 3, 1, 78.5);