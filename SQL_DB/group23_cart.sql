create table cart
(
    serial_number int auto_increment
        primary key,
    package_name  varchar(255)  not null,
    price         double        not null,
    user          varchar(255)  not null,
    desce         text          null,
    number        int default 1 null
);

INSERT INTO group23.cart (serial_number, package_name, price, user, desce, number) VALUES (95, 'havila2', 1000, 'ben', 'חבילת ברית- מכיל4 יחידות אנטריקוט6 מדליוני פילה בקר6 שיפודי פרגיתמגש כנפיים1 ק”ג לבבות עוף1 ק”ג פחמיםמתאים ל-10 סועדים', 1);
INSERT INTO group23.cart (serial_number, package_name, price, user, desce, number) VALUES (97, 'selfassembly', 20, 'ben', 'נקניקיות 1X', 1);
