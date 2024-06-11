create table UserTable (
    id int primary key auto_increment,
    username varchar(50) not null,
    email varchar(100) not null unique,
    password varchar(255) not null,
    address varchar(255),
    created_at timestamp default current_timestamp
);

create table ProductTable (
    id int primary key auto_increment,
    name varchar(100) not null,
    description TEXT,
    price DECIMAL(10,2) not null,
    stock int default 0,
    created_at TIMESTAMP default current_timestamp
);

create table OrderTable(
    id int primary key auto_increment,
    user_id int not null,
    total_price DECIMAL(10,2) not null,
   created_at TIMESTAMP default current_timestamp,
    foreign key(user_id) references UserTable(id)
);

create table OrderDetailTable (
    id int primary key auto_increment,
    order_id int not null,
    proudct_id int not null,
    count int not null,
    price DECIMAL(10,2) not null,
    foreign key(order_id) references OrderTable(id),
    foreign key(proudct_id) references ProductTable(id)
);