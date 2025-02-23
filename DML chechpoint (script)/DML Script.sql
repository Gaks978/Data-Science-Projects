select * from information_schema.tables where table_name = 'Department';
create table Department (
Num_S int primary key,
label varchar (255),
manager_name varchar (255)
);

select * from information_schema.tables where table_name = 'Employee';
create table Employee (
Num_E int primary key,
name varchar (255),
position varchar (255),
salary decimal (10,2),
Num_S int,
foreign key (Num_S) references Department(Num_S)
);

select * from information_schema.tables where table_name = 'Project';
create table Project (
Num_P int primary key,
title varchar (255),
start_date date,
end_date date,
Num_S int,
foreign key (Num_S) references Department(Num_S)
);

select * from information_schema.tables where table_name = 'Employee_project';
create table Employee_project (
role varchar (255),
Num_P int,
Num_E int,
foreign key (Num_P) references Project(Num_P),
foreign key (Num_E) references Employee(Num_E)
);

insert into Department (Num_S, label, manager_name) values
(1, 'IT', 'Alice Johnson'),
(2, 'HR', 'Bob Smith'),
(3, 'Marketing', 'Clara Bennet');

select * from Department;

insert into Employee (Num_E, name, position, salary, Num_S) values
(101, 'John Doe', 'Developer', 60000, 1),
(102, 'Jane Smith', 'Analyst', 55000, 2),
(103, 'Mike Brown', 'Designer', 50000, 3),
(104, 'Sarah Johnson', 'Data Scientist', 70000, 1),
(105, 'Emma Wilson', 'HR Specialist', 52000, 2);

select * from Employee;

insert into Project (Num_P, title, start_date, end_date, Num_S) values
(201, 'Website Redesign', '2024-01-15', '2024-06-30', 1),
(202, 'Employee Onboarding', '2024-03-01', '2024-09-01', 2),
(203, 'Market Research', '2024-02-01', '2024-07-31', 3),
(204, 'IT Ifrastructure Setup', '2024-04-01', '2024-12-31', 1);

select * from Project;

insert into Employee_project (Num_E, Num_P, role) values
(101, 201, 'Frontend Developer'),
(104, 201, 'Backend Developer'),
(102, 202, 'Trainer'),
(105, 202, 'Coordinator'),
(103, 203, 'Research Lead'),
(101, 204, 'Network Specialist');

select * from Employee_project;

update Employee_project
set role = 'Full Stack Developer'
where Num_E = 101;

select * from Employee_project;

delete from Employee_project where Num_E = 103;
delete from Employee where Num_E = 103;

select * from Employee;
select * from Employee_project;










