create database if not exists messenger;

use messenger;


create table if not exists Role (
    id int primary key auto_increment,
    role_name varchar(50) not null
);

create table if not exists User (
	id int primary key auto_increment,
    email varchar(30) not null unique,
    nickname varchar(30) not null unique,
    user_password varchar(50) not null,
    role_id int not null,
    balance int not null,
    constraint role_fk
    foreign key (role_id) references Role (id)
    
);

create table if not exists Logs (
	id int primary key auto_increment,
    log_type varchar(50) not null,
    user_id int not null
);

create table if not exists Contacts (
	id int primary key auto_increment,
    contact_id int not null,
    user_id int not null,
    foreign key (user_id) references User (id)
);

create table if not exists Message (
	id int primary key auto_increment,
    message varchar(1000) not null,
    user_id int not null,
    foreign key (user_id) references User (id)
);

create table if not exists Archive (
	id int primary key auto_increment,
    user_id int not null,
    foreign key (user_id) references User (id)
);

create table if not exists Dialog (
	id int primary key auto_increment,
    archive_id int, 
    foreign key (archive_id) references Archive (id)
);

create table if not exists Settings (
	id int primary key auto_increment,
    color varchar(50) not null,
    user_id int not null,
    foreign key (user_id) references User (id)
);


create table if not exists FavoriteMessages (
	id int primary key auto_increment,
    message_id int not null,
    foreign key (message_id) references Message (id),
    user_id int not null,
    foreign key (user_id) references User (id)
);



create table if not exists UserDialogs (
	id int primary key auto_increment,
    dialog_id int not null, 
    foreign key (dialog_id) references Dialog (id) on delete cascade,
    user_id int not null,
    foreign key (user_id) references User (id) on delete cascade
);

create table if not exists DialogMessage(
	id int primary key auto_increment,
    dialog_id int not null, 
    foreign key (dialog_id) references Dialog (id) on delete cascade,
    message_id int not null,
    foreign key (message_id) references Message (id) on delete cascade
);



