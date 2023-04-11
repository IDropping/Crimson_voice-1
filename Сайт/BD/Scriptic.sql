create database site;
use site;

create table player (
_long timestamp primary key,
nazvanie varchar (50) not null
);

create table music (
id int primary key,
music_Name varchar (50) not null,
Genre varchar (50) not null,
_long timestamp not null,
compositor varchar (50),
album varchar (50),
foreign key (_long) references player (_long)
);

create table genre (
id int,
genre_Name varchar (50) not null,
foreign key (id) references music (Genre)
);

create table performers (
_id int,
perf_Name varchar (50) not null,
foreign key (_id) references music (compositor)
);