import pandas as pd

#assigning the file path as string to a variable
file_path = r'E:\\Project\\heart_disease.csv'
data = pd.read_csv(file_path)       #using pandas to read the file location and import it

# Normalize into separate tables

#first table patients
patients = data[['Age','Gender','Heart Disease Status']].reset_index(drop=True)
patients.index +=1
patients.insert(0,'patient_ID',patients.index)

#second table lifestyle
lifestyle = data[['Exercise Habits', 'Smoking','Alcohol Consumption','Stress Level','Sleep Hours','Sugar Consumption']].reset_index(drop=True)
lifestyle.insert(0,'patient_ID',patients['patient_ID'])


#third table health_metrics

health_metrics=data[['Blood Pressure', 'Cholesterol Level','BMI','Triglyceride Level','Fasting Blood Sugar','CRP Level','Homocysteine Level']].reset_index(drop=True)
health_metrics.insert(0,'patient_ID',patients['patient_ID'])

#fourth table medical_history

medical_history = data[['Family Heart Disease','Diabetes','High Blood Pressure','Low HDL Cholesterol','High LDL Cholesterol']].reset_index(drop=True)
medical_history.insert(0,'patient_ID',patients['patient_ID'])

patients.to_csv('E:\\Project\\patients.csv', index=False)
lifestyle.to_csv('E:\\Project\\lifestyle.csv', index=False)
health_metrics.to_csv('E:\\Project\\health_metrics.csv', index=False)
medical_history.to_csv('E:\\Project\\medical_history.csv', index=False)




