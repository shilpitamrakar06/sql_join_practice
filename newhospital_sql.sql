use hospital_db;
show tables;
select * from wards;
select * from appointments;
select* from doctors;
select * from departments;
select * from patients;
select * from prescriptions;
select doctor_name,specialization,salary from 
doctors where status = "active";

select * from patients  where admission_date >="2024-01-01"
and admission_date< "2024-02-01" ;

select ward_name, total_beds from wards where  department_id = 1 ; 

select appointment_id,appointment_date,status 
from appointments where status = "completed";



