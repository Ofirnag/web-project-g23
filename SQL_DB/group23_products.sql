create table products
(
    serial_number int          not null
        primary key,
    Department    varchar(255) null,
    name          varchar(755) null,
    kosher_type   varchar(255) null,
    price         double       null,
    en_name       varchar(255) null,
    dicount_ratio int          null,
    img           varchar(255) null,
    onclick       varchar(255) null,
    `desc`        text         null,
    constraint products_serial_number_uindex
        unique (serial_number)
);

INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (1, 'פרימיום', 'בשר טלה', 'חלק בית יוסף', 110, 'Lamb', 100, '/static/media/img/leam.jpg', 'dis(Lamb)', 'בשר טלה
<br>
ניתן לתבל את הטלה לפי בקשתכם, מגיע ארוז בוואקום עם התיבול.
כשרות: חלק בית יוסף');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (2, 'פרימיום', 'שומן כבש', 'חלק בית יוסף', 115, 'Sheep_fat', 100, '/static/media/img/sheep.jpg', 'dis(Sheep_fat)', 'שומן כבש (ליה)
לאוהבי השומן , הדבר הראשון שירצו להריח ולטעום ישירות מהמנגל.
כשרות: חלק בית יוסף');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (3, 'פרימיום', 'אסאדו', 'חלק בית יוסף', 110, 'Asado', 100, '/static/media/img/asado.jpg', 'dis(Asado)', 'אסאדו
בשר אסאדו טרי מתובל אצלנו במפעל ונסגר בוואקום שיקבל את הטעמים של התיבול שלנו, שמים בתנור והתוצאה מטורפת
כשרות: חלק בית יוסף');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (4, 'בשרים', 'בשר טחון', 'חלק עטרה', 55, 'Mince', 100, '/static/media/img/tahon.jpg', 'Mince() ', 'בשר טחון
בשר בקר מס’ 2 טרי טחון.
כשרות: חלק עטרה');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (5, 'בשרים', 'דנוור קאט', 'חלק עטרה', 150, 'Denver_Cut', 100, '/static/media/img/denver.jpg', 'Denver_Cut()', 'דנוור קאט
דנוואר קאט הינו נתח עסיסי מהלב של צלעות של העגלה לרוב משויש . לנתח טעם עז של בשר .
כשרות: חלק עטרה');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (6, 'בשרים', 'המבורגר', 'חלק עטרה', 55, 'hamburger', 100, '/static/media/img/hamborger.jpg', 'hamburger()', 'המבורגר
המבורגר במשקל 250 גרם עשוי נתחי עגל טחונים עם שומן ואגיו גס מתאים להכנה על המנגל או על המחבת .
כשרות: חלק עטרה');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (7, 'בשרים', 'נתח קצבים', 'חלק עטרה', 160, 'Butchers_share', 100, '/static/media/img/katav.jpg', 'Butchers_share()()', 'נתח קצבים
נתח קצבים מוכר גם בשם "אונגלה " או בשם נוסף "רוטפליש" מקורו בסרעפת של העגלה ממוקם בקירבה לחלקי הפנים של העגלה
כשרות: חלק עטרה');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (8, 'בשרים', 'סטייק', 'חלק בית יוסף', 120, 'steak', 100, '/static/media/img/steck.jpg', 'steak()', 'סטייק
סטייק אנגוס פרה שחורה מטורף
כשרות: חלק בית יוסף');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (9, 'בשרים', 'פילה בקר', 'חלק בית יוסף', 200, 'fillet', 100, '/static/media/img/pile.jpg', 'fillet()', 'פילה בקר
נמצא בחלק האחורי של העגלה (באיזור המותן ) ומחובר לסינטה בעצם T . טעם הפילה טעם עדין מאוד של בשר .
כשרות: חלק בית יוסף');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (10, 'עופות', 'טחול', 'מחפוד', 70, 'thol', 100, '/static/media/img/thol.jpg', 'thol()', 'טחול
טעם עשיר ומרקם מיוחד משתדך הטחול למגוון תבשילים ויהיה מצוין גם בצלייה על האש
כשרות: מחפוד');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (11, 'עופות', 'עוף טחון', 'מחפוד', 35, 'chick', 100, '/static/media/img/chick.jpg', 'chick()', 'עוף טחון
טעם עשיר ומרקם מיוחד משתדך הטחול למגוון תבשילים ויהיה מצוין גם בצלייה על האחזה עוף טרי טחון
כשרות: מחפוד');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (12, 'עופות', 'כבד', 'מחפוד', 30, 'kaved', 100, '/static/media/img/kaved.jpg', 'kaved()', 'כבד
קצוץ, על האש או כחלק מתבשיל- הכבד הוא פשוט מעדן.
כשרות: מחפוד');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (13, 'עופות', 'כנפיים', 'מחפוד', 15, 'knafim', 100, '/static/media/img/knafim.jpg', 'knafim()', 'כנפיים
טעם העסיסי והכיף האינסופי לא יאפשרו לכם להפסיק לאכול.
כשרות: מחפוד');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (14, 'עופות', 'לבבות', 'מחפוד', 15, 'lev', 100, '/static/media/img/lev.jpg', 'lev()', 'לבבות
שיפודי לבבות נקיים ומשופדים
כשרות: מחפוד');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (15, 'עופות', 'פרגית', 'מחפוד', 65, 'pargit', 100, '/static/media/img/pargit.jpg', 'pargit()', 'פרגית
בגלל העסיסיות הרבה והטעם המשובח נחשבות הפרגיות לחלק המובחר בעוף.
כשרות: מחפוד');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (16, 'דגים', 'סלמון פרוס', 'רבנות', 90, 'sal', 100, '/static/media/img/sal.jpg', 'sal()', 'סלמון פרוס
פילה סלמון נורבגי פרוס למנות.
כשרות: רבנות');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (17, 'דגים', 'סלמון שלם', 'רבנות', 90, 'salmon', 100, '/static/media/img/salmon.jpg', 'salmon()', 'סלמון שלם
נתח פילה סלמון נורווגי שלם.
כשרות: רבנות');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (18, 'מוצרים נלווים', 'מלקחיים', null, 10, 'melk', 100, '/static/media/img/melk.jpg', 'melk()', 'מלקחיים
מלקחיים איכותיות מברזל');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (19, 'מוצרים נלווים', 'מנגל', null, 100, 'mangal', 100, '/static/media/img/mangal.jpg', 'mangal()', 'מנגל
גריל פחמים גדול הכולל רגליים מתקפלות וידיים להרמה פשוטה');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (20, 'מוצרים נלווים', 'פחמים', null, 20, 'peham', 100, '/static/media/img/peham.jpg', 'peham()', 'פחמים
פחם עץ טבעי');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (21, 'תוספות', 'צ''יפס', 'רבנות', 20, 'chips', 100, '/static/media/img/chips.jpg', 'chips()', 'ציפס
קפוא או מוכן');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (22, 'תוספות', 'טבעות בצל', 'רבנות', 20, 'onion_rings', 100, '/static/media/img/onion_rings.jpg', 'onion_rings()', 'טבעות בצל
קפוא או מוכן');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (23, 'תוספות', 'רוטב ברקביקיו', 'רבנות', 10, 'barbecue_sauce', 100, '/static/media/img/barbecue_sauce.jpg', 'barbecue_sauce()', 'רוטב ברביקיו
תוצרת הבית');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (24, 'תוספות', 'רוטב צימיצ''ורי', 'רבנות', 10, 'chimichuri', 100, '/static/media/img/chimichuri.jpg', 'chimichuri()', 'צימיצורי
תוצרת הבית');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (25, 'בשרים', 'קבב הבית', 'רבנות', 60, 'kabab', 90, '/static/media/img/kabab.jpg', 'kabab()', 'קבב הבית מוכן לצלייה
10 קציצות סך הכל 200 גרם');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (26, 'בשרים', 'נקניקיות', 'רבנות', 20, 'hot_dogs', 50, '/static/media/img/naknikiot.jpg', 'hot_dogs()', 'נקניקיות עוף
10 יחידות');
INSERT INTO group23.products (serial_number, Department, name, kosher_type, price, en_name, dicount_ratio, img, onclick, `desc`) VALUES (27, 'עוף', 'בשר הודו', 'רבנות', 50, 'hodu', 80, '/static/media/img/hodu.jpg', 'hodu()', 'בשר הודו טרי');
