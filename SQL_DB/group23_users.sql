create table users
(
    email      varchar(255) not null
        primary key,
    first_name varchar(255) null,
    last_name  varchar(255) null,
    address    varchar(255) null,
    password   varchar(255) null,
    user_name  varchar(255) null,
    constraint users_user_name_uindex
        unique (user_name)
);

INSERT INTO group23.users (email, first_name, last_name, address, password, user_name) VALUES ('ben@post.bgu.ac.il', 'בן', 'גבאי', null, '123', 'ben');
INSERT INTO group23.users (email, first_name, last_name, address, password, user_name) VALUES ('dor@gmail.com', 'אלמוג', 'דור', null, '098', 'almog');
INSERT INTO group23.users (email, first_name, last_name, address, password, user_name) VALUES ('elad@gmail.com', 'אלעד', 'גבאי', null, '098', 'elad');
INSERT INTO group23.users (email, first_name, last_name, address, password, user_name) VALUES ('eyal@asd.com', 'איל', 'אלעזרי', null, '145', 'eyal');
INSERT INTO group23.users (email, first_name, last_name, address, password, user_name) VALUES ('liron@gmail.com', 'עמיאל', 'לירון', null, '678', 'liron');
INSERT INTO group23.users (email, first_name, last_name, address, password, user_name) VALUES ('ofir@gmal.com', 'אופיר', 'נגאוקר', null, '134', 'ofir');
INSERT INTO group23.users (email, first_name, last_name, address, password, user_name) VALUES ('rotem21694@gmail.com', 'רותם', 'סרוסי', null, '123', 'rotem');
INSERT INTO group23.users (email, first_name, last_name, address, password, user_name) VALUES ('sd@gmail.com', 'טום', 'גרשון', null, '123', 'tom');
INSERT INTO group23.users (email, first_name, last_name, address, password, user_name) VALUES ('tal@gmail.com', 'ron', 'choen', null, '148', 'ron');
