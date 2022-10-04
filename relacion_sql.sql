create table people (
  id serial PRIMARY KEY,
  user_doc_id VARCHAR (10) NOT NULL UNIQUE,
  first_name  VARCHAR (255),
  last_name VARCHAR (255),
  email VARCHAR (255) NOT NULL UNIQUE,
  mobile NUMERIC (10) NOT NULL UNIQUE,
  created_on TIMESTAMP NOT null
);

insert into people (user_doc_id, first_name, last_name, email, mobile, created_on) values ('0917088015', 'Peter', 'Neville', 'neville.peter.2000@gmail.com', '0995293871', NOW());
insert into people (user_doc_id, first_name, last_name, email, mobile, created_on) values ('1709990848', 'Jose', 'Batallas', 'joselbatallas@gmail.com', '0984566817', NOW());
insert into people (user_doc_id, first_name, last_name, email, mobile, created_on) values ('1710255892', 'Eduardo', 'Vallejo', 'evb1710@yahoo.com', '0999743152', NOW());

select * from people;

create table country (
  id serial primary key,
  name varchar (255) not null unique,
  created_on timestamp not null
);

alter table people add column country_id integer;

alter table people add constraint fk_country_id foreign key (country_id) references country(id);

select s.* from people s
join country sc on sc.id = country_id 
where sc. "name" = 'Ecuador';

select s.first_name, s.last_name, sc."name" as contry_name from people s
join country sc on sc.id = country_id 
where sc."name" = 'Ecuador';
