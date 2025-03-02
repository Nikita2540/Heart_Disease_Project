select count(patient_ID) from patients WHERE Heart_Disease_Status = 'Yes';

select count(patient_ID) from patients WHERE Heart_Disease_Status LIKE 'No%';

SELECT * from patients;

SELECT DISTINCT Age, COUNT(*) from patients WHERE `Heart_Disease_Status` LIKE '%Yes%' GROUP BY `Age` ORDER BY COUNT(*) DESC LIMIT 2;

SELECT DISTINCT Age, COUNT(*) from patients WHERE `Heart_Disease_Status` LIKE '%Yes%' GROUP BY `Age`;

SELECT MIN (Age) FROM patients WHERE `Heart_Disease_Status` = 'Yes';

SELECT COUNT(`patient_ID`) FROM patients WHERE `Age`=(SELECT MIN (Age) from patients);

SELECT COUNT(`patient_ID`) FROM patients WHERE Heart_Disease_Status = 'Yes' AND `Age`= (SELECT MIN (Age) from patients);

SELECT (COUNT(CASE 
    WHEN `Heart_Disease_Status` = 'Yes' THEN 1 END)* 100)/COUNT(*) as percentage_of_18_yr_old_having_a_hearDisease
    FROM patients
    WHERE `Age` = (SELECT MIN(`Age`) FROM patients);

SELECT Round ((COUNT(CASE 
    WHEN `Heart_Disease_Status` = 'Yes' and `Age`=(SELECT MIN(`Age`) FROM patients) THEN 1 END)* 100)/COUNT(CASE 
        WHEN `Heart_Disease_Status` = 'Yes' THEN 1 END), 1) FROM patients;

SELECT DISTINCT Age, COUNT(*) 
FROM patients 
WHERE `Heart_Disease_Status` = 'Yes' 
GROUP BY `Age` 
HAVING `Age` BETWEEN 20 AND 30 
ORDER BY COUNT(*) DESC;

