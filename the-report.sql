SELECT
    CASE
        WHEN Grades.Grade >= 8 THEN Students.Name
        ELSE NULL
    END AS Name,
    Grades.Grade AS Grade,
    Marks
FROM Students LEFT JOIN Grades
ON Students.Marks Between Grades.Min_Mark And Grades.Max_Mark
ORDER BY Grades.Grade DESC,
         Students.Name,
         Students.Marks