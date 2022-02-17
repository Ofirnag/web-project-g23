create table package
(
    serial_number int          not null
        primary key,
    package_name  varchar(255) null,
    price         double       null,
    photo         varchar(255) null,
    hebrew_name   varchar(255) null,
    `desc`        text         null
);

INSERT INTO group23.package (serial_number, package_name, price, photo, hebrew_name, `desc`) VALUES (1, 'havila1', 1000, '/static/media/img/havila1.jpg', 'יומהולדת', 'חבילת יומהולדת- מכיל
2 ק”ג אנטריקוט
1 מגש כבד אווז
1 מגש ביתי של המבורגר
1 ק”ג צלעות טלה
1 ק”ג פרגית
מתאים ל-10 סועדים');
INSERT INTO group23.package (serial_number, package_name, price, photo, hebrew_name, `desc`) VALUES (2, 'havila2', 1000, '/static/media/img/havila2.jpg', 'ברית', 'חבילת ברית- מכיל
4 יחידות אנטריקוט
6 מדליוני פילה בקר
6 שיפודי פרגית
מגש כנפיים
1 ק”ג לבבות עוף
1 ק”ג פחמים
מתאים ל-10 סועדים');
INSERT INTO group23.package (serial_number, package_name, price, photo, hebrew_name, `desc`) VALUES (3, 'havila3', 600, '/static/media/img/havila3.jpg', 'בר מצווה', 'חבילת בר מצווה- מכיל
4 יחידות אנטריקוט
6 שיפודי פרגית
5 יחידות צלעות טלה
1 ק”ג לבבות עוף
מתאים ל-5 סועדים');
INSERT INTO group23.package (serial_number, package_name, price, photo, hebrew_name, `desc`) VALUES (4, 'havila4', 750, '/static/media/img/havila4.jpg', 'מסיבת רווקים', 'חבילת מסיבת רווקים- מכיל
1 ק"ג אנטריקוט
1 ק"ג שיפודי פרגית במרינדה
1 ק"ג בשר טחון טרי
1 ק”ג לבבות עוף
מתאים ל-6 סועדים');
INSERT INTO group23.package (serial_number, package_name, price, photo, hebrew_name, `desc`) VALUES (5, 'havila5', 1200, '/static/media/img/havila5.jpg', 'חינה', 'חבילת חינה- מכיל
2 ק"ג אנטריקוט
2 ק"ג שיפודי פרגית
2 ק"ג טחול טרי
2 ק”ג לבבות עוף
מתאים ל-10 סועדים');
INSERT INTO group23.package (serial_number, package_name, price, photo, hebrew_name, `desc`) VALUES (6, 'havila6', 700, '/static/media/img/havila6.jpg', 'הצעת נישואין', 'חבילת הצעת נישואין- מכיל
12 יח’ שיפודי אנטריקוט
12 יח’ פילה בקר
12 יח’ שיפודי פרגית
2 ק”ג כנפי עוף
מתאים ל-10 סועדים');
INSERT INTO group23.package (serial_number, package_name, price, photo, hebrew_name, `desc`) VALUES (7, 'selfassembly', 0, '/static/media/img/selfassembly.png', 'הרכבה עצמית', null);
INSERT INTO group23.package (serial_number, package_name, price, photo, hebrew_name, `desc`) VALUES (8, 'סדנא', null, '/static/media/img/selfassembly.png', 'סדנא', null);
