create database lms;

use lms;

create table user_details(
user_id int primary key,
email varchar (50) not null unique,
first_name varchar (50) not null,
last_name varchar (50) not null,
password varchar (50) not null,
contact_number varchar (10) not null,
verified boolean not null,
creator_stamp DATETIME not null,
creator_user varchar (50) not null
);

describe `lms`.`user_details`;