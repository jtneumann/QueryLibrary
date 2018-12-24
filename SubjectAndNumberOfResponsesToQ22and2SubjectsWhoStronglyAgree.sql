--Show the subject and total number of students who A_STRONGLY_AGREE to question 22 for each of the subjects 
--'(8) Computer Science' and '(H) Creative Arts and Design'
SELECT subject, SUM(A_STRONGLY_AGREE * response/100)
FROM nss
WHERE question='Q22' AND (subject='(8) Computer Science'
OR subject = '(H) Creative Arts and Design')
GROUP BY subject;