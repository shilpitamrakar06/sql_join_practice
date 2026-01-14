use hospital_db;
show tables;
select * from appointments;
select * from beds;
select * from departments;
select * from doctors;
select appointment_id,appointment_date,status from
appointments where status = "completed";
select * from prescriptions;
select medication_name,dosage,frequency from prescriptions
where status = "active";
select doctor_name,specialization,years_experience from 
doctors where department_id = 1 and years_experience>10;
select * from patients;
select patient_name,city,admission_date from patients 
where status = "active" and city = "new york";
select * from patients;
select * from medical_records;

select patient_id,visit_date,blood_pressure 
from medical_records where blood_pressure >140
and visit_date>= "2024-01-01";

select * from diagnoses;
select diagnosis_description,severity,diagosis_date from diagnoses
where diagnosis_date>= "2024-01-01" and diagonsis_date <
"2024-03-01";
select * from appointments;
select  appointment_id,appointment_date,department_id,status
from appointments where status = "scheduled" and department_id
=1;

select bed_number,patient_id,expected_discharge from
beds where bed_status = "occupied" and  expected_discharge = "2024-04-01";

select doctor_name,salary,hire_date from
doctors where salary >170000 and hire_date >"2010-12-31";
use hospital_db;
update appointments set status  = "confiemed" where status ="pendig";

set sql_safe_updates = 0;
select * from appointments;
select * from beds;
select * from wards;
select * from patients;
select * from doctors;
update wards set available_beds = (available_beds>2) where department_id = 1;

update patients set status = "discharged" where patient_id = 3;
update doctors set salary = (salary*0.95)
 where hire_date < "2008-01-01";
 select * from beds;
 show tables;
 select * from prescriptions;
 
 update beds set bed_status = "maintenance" where bed_status=
 "available" and  ward_id = 1;
 
 UPDATE prescriptions
SET status = 'occupied'
WHERE expiry_date = "2024-02-10" ;
select * from diagnoses;

update diagnoses set status =  "released"
 where severity 
="mild" and status = "active";

select * from prescriptions;
update prescriptions set duration_days = (duration_days+7);

set sql_safe_updates = 0;
select * from doctors;


update doctors set salary = 195000  where department_id = 1
and years_experience  > 10 ;
select * from beds ;

select doctor_name,specialization,department_name
from doctors d inner join
 departments dp on d.department_id = dp.department_id ;
select * from departments;
select * from doctors;

select patient_name,appointment_date doctor_name from  appointments
a inner join  patients d on a.patient_id = d.patient_id  ;
select * from appointments;
select * from patients;
 create  algoritham = temtable view  docdept as (select d.doctor_name,d.email,d.status ,de.department_id, de.department_name 
 from doctors d  join departments de  on d.department_id = de.department_id);
 
 
 
select * from docdept;
update  doctors  set doctor_name  = "shilpi" where doctor_id = 1;
select * from doctors;
update docdept set doctor_name = "rashi" where department_id = 1;
select * from docdept;

select de.department_id , de.department_name from doctors join departments de on 
d.department_id = de.department_id ;