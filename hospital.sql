create database hospital
use hospital
------
create table department(
department_id smallint primary key,
department_name varchar(80) not null)
select * from department
------
create table rooms(
room_id  smallint primary key,
room_no smallint not null,
capacity smallint not null)
------
create table doctors(
doctor_id int primary key,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(50) not null,
phone char(11),
mainspecialization varchar(50),
subspecialization varchar(50),
department_id smallint foreign key references department(department_id))
------
create table patients(
patient_id bigint primary key not null,
first_name varchar(50) not null,
last_name varchar(50) not null,
email varchar(50) not null,
phone char(11),
admissionDate timestamp,
dateofbirth date,
room_id  smallint foreign key references rooms(room_id)) 
-----
create table medicines(
medicine_id int primary key,
medicine_name varchar(50) not null,
costperunit float not null,
dosage float not null)
------
create table treatment(
treatment_id int primary key not null,
doctor_id int foreign key references doctors(doctor_id),
patient_id bigint foreign key references patients(patient_id),
medicine_id int foreign key references medicines(medicine_id))
