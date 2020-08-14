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
creator_stamp datetime not null,
creator_user varchar (50) not null
);

describe lms.user_details;

alter table lms.user_details modify user_id int not null auto_increment; 

create table lms.hired_candidate (
  hired_candidate_id int auto_increment primary key,
  first_name varchar(45) not null,
  middle_name varchar(45),
  last_name varchar(45) not null,
  email_id varchar(45) not null unique,
  hired_city varchar(45) not null,
  degree varchar(45) not null,
  hired_date date not null,
  mobile_number varchar(45) not null,
  permanent_pincode int(6) not null,
  hired_lab varchar(45) not null,
  attitude varchar(45) not null,
  communication_remark varchar(45) not null,
  knowledge_remark varchar(45) not null,
  aggregate_remark varchar(45) not null,
  status VARCHAR(45) not null,
  creator_stamp datetime not null,
  creator_user varchar(45) not null
);

describe lms.hired_candidate;

create table lms.fellowship_candidate (
  fellowship_candidate_id int auto_increment primary key,
  first_name varchar(45) not null,
  middle_name varchar(45),
  last_name varchar(45) not null,
  email_id varchar(45) not null unique,
  hired_city varchar(45) not null,
  degree varchar(45) not null,
  hired_date date not null,
  mobile_number varchar(45) not null,
  permanent_pincode int(6) not null,
  hired_lab varchar(45) not null,
  attitude varchar(45) not null,
  communication_remark varchar(45) not null,
  knowledge_remark varchar(45) not null,
  aggregate_remark varchar(45) not null,
  creator_stamp datetime not null,
  creator_user varchar(45) not null,
  birth_date date not null,
  is_birth_date_verified boolean not null,
  parent_name varchar(45) not null,
  parent_occupation varchar(45) not null,
  parent_mobile_number varchar(10) not null,
  parent_anual_salary varchar(20) not null,
  local_address varchar(200) not null,
  parmanent_address varchar(200) not null,
  photo_path varchar(200) not null,
  joining_date date not null,
  candidate_status varchar(200) not null,
  personal_information varchar(200) not null,
  bank_information varchar(200) not null,
  educational_information varchar(200) not null,
  document_status boolean not null,
  remark varchar(200) not null
);

describe lms.fellowship_candidate;