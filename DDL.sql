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

create table lms.candidate_bank_details(
candidate_bank_details_id int auto_increment primary key,
candidate_id int not null,
name varchar(45) not null,
account_number varchar(30) not null,
is_account_number_verified boolean not null,
ifsc_code varchar(20) not null,
ifsc_code_verified boolean not null,
pan_number varchar (15) not null,
pan_number_verified boolean not null,
addhaar_number varchar(15) not null,
addhaar_number_verified boolean not null,
creator_stamp datetime not null,
creator_user varchar(45) not null,
foreign key(candidate_id) references lms.fellowship_candidate(fellowship_candidate_id)
);

describe lms.candidate_bank_details;

create table lms.candidate_qualification(
candidate_qualification_id int auto_increment primary key,
candidate_id int not null,
diploma varchar(100) not null,
degree_name varchar(100) not null,
is_degree_name_verified boolean not null,
employee_decipline varchar(20) not null,
is_employee_decipline_verified boolean not null,
passing_year varchar(15) not null,
is_passing_year_verified boolean not null,
aggregate_percentage varchar(10) not null,
final_year_percentage varchar(10) not null,
is_final_year_percentage_verified boolean not null,
training_institute varchar(100) not null,
is_training_institute_verified boolean not null,
training_duration_month varchar(100) not null,
is_training_duration_month_verified boolean not null,
other_training varchar(200) not null,
is_other_training_verified boolean not null,
creator_stamp datetime not null,
creator_user varchar(45) not null,
foreign key (candidate_id) references lms.fellowship_candidate(fellowship_candidate_id)
);

describe lms.candidate_qualification;

create table lms.candidate_document (
id int primary key auto_increment,
candidate_id int not null,
doc_type varchar(200) not null,
doc_path varchar(200) not null,
status varchar(15) not null,
creator_stamp datetime not null,
creator_user varchar(45) not null,
foreign key(candidate_id) references lms.fellowship_candidate(fellowship_candidate_id)
);

describe lms.candidate_document;

create table lms.company (
id int primary key auto_increment,
name varchar (100) not null,
address varchar(200) not null,
location varchar(200) not null,
status varchar(200) not null,
creator_stamp datetime not null,
creator_user varchar(200) not null
);

describe lms.company;

create table lms.tech_stack (
tech_stack_id int primary key auto_increment,
tech_name varchar(100) not null,
image_path varchar(100) null,
framework varchar(100) not null,
current_status varchar(50) not null,
creator_stamp datetime not null,
creator_user varchar(100) not null
);

describe lms.tech_stack;