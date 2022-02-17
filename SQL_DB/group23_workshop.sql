create table workshop
(
    name         text   null,
    descer       text   null,
    price        double not null,
    Participants int    not null,
    stayed       int    null
);

INSERT INTO group23.workshop (name, descer, price, Participants, stayed) VALUES ('סדנא לעישון בשרים', 'סדנה הכוללת לימוד עישון סוגי בשרים שונים במעשנת, מתקיימת בימי ראשון בשעה 20:00', 200, 20, 10);
INSERT INTO group23.workshop (name, descer, price, Participants, stayed) VALUES ('סדנת בשרים ובירות', 'ערב שמוקדש לבשרים על האש ובירות, מתקיימת בימי שלישי בשעה 19:00', 250, 20, 20);
INSERT INTO group23.workshop (name, descer, price, Participants, stayed) VALUES ('סדנת בשרים בניחוח אסייתי', 'שילוב תבלינים וטעמים מהמטבח האסייתי, מתקיימת בימי חמישי בשעה 18:00', 300, 20, 20);
