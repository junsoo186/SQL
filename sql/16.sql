

create table TB_USER(
	user_id int auto_increment,
    username varchar(50) not null,
    password varchar(50) not null,
    primary key(user_id)
);

create table TB_USER_details(
	details_id int auto_increment,
    user_id int unique,
    address varchar(100),
    phone_number varchar(15),
    email varchar(50),
    primary key(details_id),
    foreign key(user_id) references TB_USER(user_id)
);

