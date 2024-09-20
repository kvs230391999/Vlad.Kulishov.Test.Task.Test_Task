create table persons (
  id                    bigserial,
  username              varchar(60) not null unique,
  reviews               varchar(70) not null,
  rating                 varchar(90) unique,
  primary key (id)
);

create table roles (
  id                    serial,
  name                  varchar(50) not null,
  primary key (id)
);

create TABLE users_roles (
  person_id               bigint not null,
  role_id                 int not null,
  primary key (person_id, role_id),
  foreign key (person_id) references users (id),
  foreign key (role_id) references roles (id)
);

insert into roles (name)
values
('ROLE_PERSON'), ('ROLE_ADMIN');

insert into persons (username, reviews, rating)
values
('person', '$2a$04$Fx/SX9.BAvtPlMyIIqqFx.hLY2Xp8nnhpzvEEVINvVpwIPbA3v/.i', 'user@gmail.com'),
('admin', '$2a$04$Fx/SX9.BAvtPlMyIIqqFx.hLY2Xp8nnhpzvEEVINvVpwIPbA3v/.i', 'admin@gmail.com');

insert into persons_roles (person_id, role_id)
values
(1, 1),
(2, 2);


