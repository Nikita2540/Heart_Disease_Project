-- Active: 1733157153239@@127.0.0.1@3306@heart_disease
-- Active: 1733157153239@@127.0.0.1@3306@heart_disease-- Active: 1733157153239@@127.0.0.1@3306@heart_disease
CREATE TABLE patients(  
    patient_ID int PRIMARY KEY,
    Age int,
    Gender VARCHAR(10),
    Heart_Disease_Status VARCHAR(3)
);

CREATE TABLE lifestyle(  
    patient_ID int,
    Exercise_Habits VARCHAR(10),
    Smoking VARCHAR(10),
    Alcohol_Consumption VARCHAR(10),
    Stress_Level VARCHAR(10),
    Sleep_Hours VARCHAR(10),
    Sugar_Consumption VARCHAR(10)
);

ALTER Table lifestyle 
ADD Constraint foreign_1
Foreign Key (patient_ID) REFERENCES patients(patient_ID)

CREATE TABLE health_metrics(  
    patient_ID int,
    Blood_Pressure int,
    Cholesterol_Level int,
    BMI FLOAT,
    Triglyceride_Level FLOAT,
    Fasting_Blood_Sugar INT,
    CRP_Level FLOAT,
    Homocysteine_Level FLOAT,
    Foreign Key (patient_ID) REFERENCES patients(patient_ID)
);

    CREATE TABLE medical_history(  
    patient_ID int,
    Family_Heart_Disease VARCHAR(10),
    Diabetes VARCHAR(10),
    High_Blood_Pressure VARCHAR(10),
    Low_HDL_Cholesterol VARCHAR(10),
    High_LDL_Cholesterol VARCHAR(10),
    Foreign Key (patient_ID) REFERENCES patients(patient_ID)
);
