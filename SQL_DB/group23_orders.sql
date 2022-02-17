create table orders
(
    serial_number int auto_increment
        primary key,
    user          varchar(255) not null,
    address       text         null,
    paid          int          null,
    supply_date   date         null,
    constraint orders_serial_number_uindex
        unique (serial_number)
);

INSERT INTO group23.orders (serial_number, user, address, paid, supply_date) VALUES (1, 'ben', 'asd', 1, '2022-03-11');
INSERT INTO group23.orders (serial_number, user, address, paid, supply_date) VALUES (2, 'ben', 'ff', 1, '2022-03-08');
INSERT INTO group23.orders (serial_number, user, address, paid, supply_date) VALUES (3, 'ben', 'asd', 1, '2022-03-03');
INSERT INTO group23.orders (serial_number, user, address, paid, supply_date) VALUES (4, 'ben', 'asd', 1, '2022-03-04');
INSERT INTO group23.orders (serial_number, user, address, paid, supply_date) VALUES (5, 'ben', 'שדגשדג', 1, '2022-03-08');
INSERT INTO group23.orders (serial_number, user, address, paid, supply_date) VALUES (6, 'ben', 'asd', 1, '2022-03-10');
INSERT INTO group23.orders (serial_number, user, address, paid, supply_date) VALUES (7, 'ben', 'ff', 1, '2022-03-02');
INSERT INTO group23.orders (serial_number, user, address, paid, supply_date) VALUES (8, 'ben', 'qwe', 1, '2022-03-04');
INSERT INTO group23.orders (serial_number, user, address, paid, supply_date) VALUES (9, 'ben', 'asd', 1, '2022-03-11');
INSERT INTO group23.orders (serial_number, user, address, paid, supply_date) VALUES (10, 'ben', 'asd', 1, '2022-03-10');
INSERT INTO group23.orders (serial_number, user, address, paid, supply_date) VALUES (11, 'ben', 'asd', 1, '2022-03-03');
INSERT INTO group23.orders (serial_number, user, address, paid, supply_date) VALUES (12, 'ben', 'asd', 1, '2022-02-18');
