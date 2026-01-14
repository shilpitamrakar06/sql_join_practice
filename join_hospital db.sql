use hospital_db;
show tables ;
select * from medical_records;
select * from appointments;
select * from beds;
select * from departments;
select * from diagnoses;
select * from doctors;
select * from medical_recodrs;
select * from patients;
select * from prescriptions;
select * from wards;
# Q.1

select doctor_name,specialization,
department_name  from doctors d inner
join departments dp on d.department_id=
dp.department_id ;

#Q.2
select patient_name, appointment_date,
doctor_name from appointments ap
 inner join patients p on ap.patient_id
 = p.patient_id inner join
 doctors d 
 on d.doctor_id = ap.doctor_id ;
 #Q.3
 select medication_name,dosage,
 patient_name from prescriptions pr inner
 join patients p on  pr.patient_id=
 p.patient_id ;
 
 #q.4
 select ward_name, bed_number,
 patient_name
 from  wards w inner join beds b on
 w.ward_id = b.ward_id inner join 
 patients p on p.patient_id = b.patient_id;
 
 #Q.5
  select diagnosis_description, 
  doctor_name,
  patient_name from diagnoses d
  inner join  doctors Dp on
  d.doctor_id = Dp.doctor_id
  inner join patients p on p.patient_id
  = d.patient_id;
  
#Q.6

select doctor_name,patient_name,
appointment_date,appointment_type
from appointments A inner join 
doctors d  on A.doctor_id = d.doctor_id
inner join patients p on p.patient_id =
A.patient_id inner join departments De on De.department_id
= A.department_id where de.department_id = 1 ;

#Q.7
select doctor_name,patient_name,
diagnosis_description,severity from doctors D inner join 
diagnoses a on D.doctor_id = a.doctor_id
inner join patients p on p.patient_id
=a.patient_id where severity = "severe";

#Q.8
select doctor_name,patient_name,appointment_date
from doctors d inner join appointments a on
d.doctor_id = a.doctor_id
inner join patients p on p.patient_id=
a.patient_id inner join departments c on
c.department_id = a.department_id where 
a.department_id = 2;

#Q.9
select patient_name,medication_name,dosage,
city from patients p inner join prescriptions
a on p.patient_id = a.patient_id where city = 'New York';

#Q.10
select patient_name,visit_date,blood_pressure
from medical_records m inner join patients p
on m.patient_id = p.patient_id
 where blood_pressure>140;
 
# Q.11
select doctor_name,patient_name,
appointment_date from appointments  a
inner join doctors d on d.doctor_id =
a.doctor_id 
inner  join patients p on p.patient_id
=a.patient_id where appointment_date >=" 2024-04-01";
select * from wards;
select * from beds;
select * from patients;
select * from departments;
# Q.12
select ward_name,bed_number,patient_name
from beds b  inner join wards w   on b.ward_id= w.ward_id
 inner join patients p on p.patient_id
=b.patient_id join departments d on w.department_id
=d.department_id where bed_status = "occupied"  and d.department_id = 1;
#Q.13
select doctor_name ,appointment_date,patient_name 
from doctors D left join  appointments A on d.doctor_id
= A.doctor_id left join patients P on p.patient_id
= A.patient_id;
 # Q.14
 select patient_name, diagnosis_description, severity 
 from patients p  left join diagnoses d on p.patient_id=
 d.patient_id   ;
 
 #Q.15
 select department_name, doctor_name, specialization 
 from doctors d left join departments dP on
 dP.department_id = d.department_id;
 
 # Q.16
 select ward_name,bed_number,patient_name from wards w 
 left join beds b on w.ward_id = b.ward_id left join 
 patients p on p.patient_id = b.patient_id ;
 
 # Q.17
 select patient_name,visit_date, blood_pressure,
 heart_rate from patients p left join  medical_records m on
 p.patient_id = m.patient_id;
 
 #Q.18
 
 select doctor_name,appointment_id from doctors d 
 left join appointments  a on a.doctor_id = d.doctor_id;

#Q.19

select doctor_name,a.status,appointment_date, patient_name,appointment_type
from doctors d left join appointments a on
d.doctor_id = a.doctor_id left join patients p on
p.patient_id = a.patient_id  left join departments dP on
dP.department_id = a.department_id where a.status = "scheduled";

#Q.20
select patient_name,medication_name,dosage,frequency from
patients p left join  prescriptions pr on 
p.patient_id = pr.patient_id  where city = "New york" and 
pr.status = " active";

#Q.21
select ward_name,d.department_id, total_beds, available_beds from 
wards w left join departments d on
w.department_id = d.department_id where  d.department_id = 3;

#Q.22
select doctor_name,a.status,appointment_date, patient_name from 
doctors d  left join appointments a on d.doctor_id =
a.doctor_id left join patients p 
on p.patient_id = a.patient_id 
where a.status = "comleted" and appointment_date = "2024-01-01";

# Q.23
select  appointment_id, doctor_name,appointment_date
from appointments a right join doctors d on 
a.doctor_id = d.doctor_id  where d.doctor_id;

#Q.24
select diagnosis_description, severity,patient_name 
from diagnoses d right join patients p on 
d.patient_id = p.patient_id;

#Q.25
 select medication_name, dosage, patient_name from 
 prescriptions p   right join patients pt
 on p.patient_id = pt.patient_id;
 
 #Q.26
 select doctor_name, patient_name,department_name
 appointment_date,appointment_type 
 from appointments a 
 inner join patients p on 
 a.patient_id = p.patient_id 
 inner join doctors d on d.doctor_id = a.doctor_id
 inner join departments dp on dp.department_id = a.department_id;
 
 #Q.27
 select patient_name, doctor_name,diagnosis_description,
 severity, department_name from patients p 
 inner join 
 diagnoses d on p.patient_id = d.patient_id 
 inner join doctors dp on dp.doctor_id = d.doctor_id
 inner join departments de on de.department_id = dp.department_id;
 
 #Q.28
 select patient_name, doctor_name, medication_name, dosage, frequency, specialization
 from patients p inner join prescriptions pr on 
 p.patient_id = pr.patient_id 
 inner join doctors d on d. doctor_id = pr.doctor_id;
 
 #Q.29
 
 select ward_name, bed_number, patient_name, expected_discharge, department_name
 from wards w  inner join beds b on w.ward_id = b.ward_id
 inner join patients p on p.patient_id = b.patient_id
 inner join departments d on d.department_id = w.department_id;

#Q.30  
select 
patient_name, doctor_name, visit_date, blood_pressure, 
temperature, specialization
from  patients p inner join medical_records m on 
p.patient_id = m.patient_id 
inner join doctors d on d.doctor_id =  m.doctor_id;

#Q.31








 

