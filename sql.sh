PSQL="psql --username=freecodecamp --dbname=salon -c"


echo $($PSQL "
  drop table appointments;
  drop table services;
  drop table customers;")


echo $($PSQL "
  create table customers(
    customer_id serial primary key, 
    phone varchar(20) unique, 
    name varchar(20))")


echo $($PSQL "create table services(
  service_id serial primary key,
   name varchar(20))")


echo $($PSQL "create table appointments(
  appointment_id serial primary key,
  customer_id int,
  service_id int,
  time varchar(20),
  FOREIGN KEY (customer_id) REFERENCES customers(customer_id),
  FOREIGN KEY (service_id) REFERENCES services(service_id),
   name varchar(20))")


echo $($PSQL "
insert into services(name) values ('cut'),  ('color') , ('perm'),  ('style') , ('trim');
")
