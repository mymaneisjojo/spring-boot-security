create table account(
                        id int(11) primary key not null AUTO_INCREMENT,
                        username varchar(100) not null unique,
                        email varchar(100) not null unique,
                        password varchar(100) not null

);
create table role(
                     id int(11) primary key not null AUTO_INCREMENT,
                     name varchar(50) not null
);
create table account_roles(
                              account_id int(11) not null,
                              foreign key (account_id) references account(id),
                              role_id int(11) not null,
                              foreign key (role_id) references role(id),
                              primary key(account_id, role_id)
)