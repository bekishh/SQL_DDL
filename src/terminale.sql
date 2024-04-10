beqishh@beqishh-Lenovo-V15-G2-ITL:~$ sudo -u postgres psql
[sudo] пароль для beqishh:
psql (16.2 (Ubuntu 16.2-1.pgdg23.10+1))
Введите "help", чтобы получить справку.

postgres=# create table actors(id serial primary key, name varchar(50) not null);
CREATE TABLE
postgres=# insert into actors(name) values ('Eldyar'), ('Yzaat'), ('Nurmuhammed'), ('Bektur');
INSERT 0 4
postgres=# create table manager(id serial primary key, name varchar(50) not null, actor_id int references actors(id));
CREATE TABLE
postgres=# alter table manager rename to managers;
ALTER TABLE
postgres=# insert into managers(name, actor_id) values ('Elena', 4), ('Catrine', 3), ('Farida', 2), ('George', 1);
INSERT 0 4
postgres=# create table departments(id serial primary key, name varchar not null, staff_count int not null, manager_id int references managers(id));
CREATE TABLE
postgres=# insert into departments(name, staff_count, manager_id) values ('drama', 5, 3), ('thriller', 4, 1), ('historical', 7, 2), ('cartoon', 9, 4);
INSERT 0 4                    ^
postgres=# create table companies(id serial primary key, name varchar(50) not null, staff_count int not null, rating numeric);
CREATE TABLE
postgres=# insert into companies(name, staff_count, rating) values ('netflix', 4, 5.5), ('dream works', 3, 3.5), ('disney', 7, 4.5);
INSERT 0 3
postgres=# create table corporations(id serial primary key, name varchar(50) not null);
CREATE TABLE
postgres=# insert into corporations(name) values ('corporation 1'), ('corporation 2'), ('corporation 3');
INSERT 0 3
postgres=#