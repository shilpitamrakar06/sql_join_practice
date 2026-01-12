use muskan ;
show tables;
select * from employee;
select * from empproject;
select * from empdept;
select * from empsalary;
select * from project;
select * from country;
select * from clienttable;

# Select the department name of the company which is assigned to the employee whose employee id is grater 103.
 select deptname, empid  from employee  e join empdept d on e.department =  d.deptid where empid > 103 ; 
  select deptname from empdept  where deptid in (select department from employee where empid >103 ) ;
  
  #2. Select the name of the employee who is working under Abhishek.
   select * from employee;
   select e2.empname, e1.empname from employee e1 join employee e2 on e1.empid = e2.empheadip 
   where e1.empname = "abhishek";
   
select empname from employee  where empheadip in ( select empid from employee  where empname = "abhishek");
select empname from employee where empheadip = 105;

# 3 Select the name of the employee who is department head of HR.
select * from empdept;
select empname from employee e join empdept d on e.empid = d.depthead  where deptname = 'hr';
select empname from employee where empid in ( select depthead from empdept where deptname = 'hr');

# 4 Select the name of the employee head who is permanent.
 select * from empsalary;
 select * from employee e join empsalary s on e.empid = s.empid where  ispermanent = 'yes';
  select empname from employee  where empid in ( select empid from empsalary where ispermanent = 'yes');
  
  
  # 5 Select the name and email of the Dept Head who is not Permanent.
select * from empdept;
select * from employee;
select * from empsalary;
 select empname , emailid from employee e  join  empsalary s on e.empheadip = s.empid where ispermanent = "no";
 select empname, emailid from employee where empheadip in ( select empid from empsalary where ispermanent = "no");
 
 #6 Select the employe whose Dept_off is monday
 select * from employee;
 select * from empdept;
 select * from employee  e join empdept d  on e.department = d.deptid  where dept_off  = "monday"; 
 
 select empname from employee where department in ( select deptid from empdept  where dept_off = "monday");
 
#7  select the Indian clients details.
select * from clienttable c join country t on c.cid = t.cid where cname = "india";
select clientname from clienttable where cid in ( select cid from country where cname = "india");

#8 select the details of all employee working in development department.
select * from employee e join empdept d on e.department = d.deptid where deptname = "development";
select  * from employee where department in ( select deptid  from empdept where deptname = "development");

#9 Find the Second Highest salary from EmpSalary.
select * from empsalary order by salary desc  limit 1 offset 1 ;
select max(salary) from empsalary where salary < ( select max(salary) from empsalary);
#!0 Display those records whose Clientname end with ‘g’.
select * from clienttable;
select clientname from clienttable where clientname  like "%g" ;


  
