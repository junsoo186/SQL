create table tb_team(
	team_id int auto_increment,
    team_name varchar(50) not null,
    home_city varchar(30) not null,
    established_year year(4) not null,
    primary key(team_id)
);

create table tb_player(
	player_id int auto_increment,
    player_name varchar(50) not null,
    position varchar(30) not null,
    birth_date date not null,
    team_id int,
    primary key(player_id),
    foreign key(team_id) references tb_team(team_id)
);
drop table tb_team;
drop table tb_player;
-- desc tb_team;
-- desc tb_player;

insert into tb_team
(team_name, home_city, established_year) values 
	   ('롯데', '부산', '1982'),
       ('해태', '전라', '1982'),
       ('넥센', '서울', '1982');

desc tb_team;
select * from tb_team;
       