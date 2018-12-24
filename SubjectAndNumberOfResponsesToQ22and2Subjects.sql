--Show the subject and total number of students who responded 
--to question 22 for each of the subjects '(8) Computer Science' and '(H) Creative Arts and Design'.
SELECT subject,SUM(response) AS 'Total # of Students Responding'
  FROM nss
 WHERE question='Q22'
   AND (subject='(H) Creative Arts and Design'
   OR subject='(8) Computer Science')
 GROUP BY subject