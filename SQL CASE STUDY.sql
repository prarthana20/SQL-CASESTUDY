create database car_connect;
use car_connect;

-- Customer Table
create table customer
( customerid int not null,
firstname varchar(20),
lastname varchar(20),
email varchar(255),
phonenumber varchar(10),
address varchar(255),
username varchar(255) unique,
password varbinary(64),
registrationdate date,
primary key(customerid)) ;

-- Vehicle Table
create table vehicle
( vehicleid int not null,
model varchar(50),
make varchar(50),
year year,
colour varchar(20), 
registration_number varchar(15) unique,
availability bit,
daily_rate decimal(10,2),
primary key(vehicleid));

-- Reservation Table
create table reservation
(reservationid int not null,
customerid int,
vehicleid int,
startdate datetime,
enddate datetime,
totalcost decimal(10,2),
sta_tus varchar(20),
primary key(reservationid),
foreign key (customerid) references customer(customerid),
foreign key (vehicleid) references vehicle(vehicleid));

-- Admin Table
create table admin
(adminid int not null,
firstname varchar(20),
lastname varchar(30),
email varchar(50),
phonenumber varchar(10),
username varchar(50) unique ,
pass_word varbinary(64),
ro_le varchar(50),
join_date date, 
primary key (adminid));

insert into customer values(01,'Aarti','Varnekar','aaru25@gmail.com',9856621487,'Pune','AartiVarnekar25','Aaru#25','2023-12-06');
insert into customer values(02,'Sucheta','Pawar','suchu02@gmail.com',8379011970,'Solapur','SuchetaPawar02','Suchu*02','2022-09-02');
insert into customer values(03,'Swati','Swami','chanda56@gmail.com',8888817354,'Mumbai','SwatiSwami56','Swati$$3','2023-05-20');
insert into customer values(04,'Preeti','Gupta','preeti19@gmail.com',9373434679,'Mathura','PreetiG19','Preeto@19','2023-01-19');
insert into customer values(05,'Prerana','Patel','peru98@gmail.com',9673574848,'Gujarat','PatelPeru98','Peru#98','2023-07-15');
select * from customer;

insert into vehicle values(001,'Etron','Audi',2023,'Cataluny_Red','E101',True,500);
insert into vehicle values(002,'CR-V','Honda',2019,'Platinum_White','C505',True,750);
insert into vehicle values(003,'Accent','Hyundai',2022,'Black_Diamond','H402',False,250);
insert into vehicle values(004,'Taos','Volkswagen',2023,'Cataluny_Red','T804',False,350);
insert into vehicle values(005,'Land_Cruiser','Toyota',2023,'Gray_Metallic','C977',True,950);
select * from vehicle;

insert into reservation values(101,01,005,'2024-01-20 10:00:00', '2024-01-22 12:00:00',8000,'Completed');
insert into reservation values(102,05,003,'2023-12-20 09:00:00', '2023-12-23 11:30:00',25000,'pending');
insert into reservation values(103,04,001,'2023-12-20 07:30:00', '2023-12-25 05:00:00',45000,'pending');
insert into reservation values(104,03,002,'2024-01-15 05:00:00', '2024-01-18 12:30:00',25000,'confirmed');
insert into reservation values(105,02,004,'2024-01-19 18:00:00', '2024-01-22 10:00:00',15000,'confirmed');
select * from reservation;

insert into admin values(011,'Ketan','Ahire','ketan2001@gmail.com',9876541230,'KetanAhire12','Ketan@12','super_admin','2024-01-19');
insert into admin values(012,'Tejas','Thakare','tejas19@gmail.com',9881456700,'ThakareTajas19','tejaa@19','fleet_manager','2024-01-25');
insert into admin values(013,'Omkar','Kewate','omii25@gmail.com',7425368109,'OmiKewate25','omya@25','super_admin','2023-12-15');
insert into admin values(014,'Adesh','Choudhari','adya20@gmail.com',8854637192,'AadeshC20','adya@20','fleet_manager','2023-11-19');
insert into admin values(015,'Nikhil','Pokharkar','nikhlya30@gmail.com',8776598468,'PNikhil30','nikhil@30','super_admin','2024-01-05');
select * from admin;

