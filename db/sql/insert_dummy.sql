insert into users (id, gender, age, with_children) values
(1, "man", 9, false),
(2, "man", 10, false),
(3, "man", 25, false),
(4, "man", 40, true),
(5, "man", 58, false),
(6, "woman", 20, false),
(7, "woman", 16, false),
(8, "woman", 26, true);

insert into toilets (id, x, y, name, quantity, type, equipment) values
(1, 100, 110, "渋谷区つたや", 10, "洋式", "でかい鏡"),
(2, 120, 130, "新宿bookoff", 14, "洋式", "なんかある"),
(3, 100, 140, "北千住公園", 4, "洋式", "よさげな蛇口");

insert into comments (title, content, rate, toilet_id, user_id) values
("渋谷区つたや", "洋式", 5, 1, 1),
("よさげ", "普通によさげ", 3, 2, 2),
("よさげ", "普通によさげ", 3, 3, 2),
("臭え", "個室で弁当くってるやついる", 1, 1, 3),
("しらんわ", "よくみんなトイレの評価なんて真面目にするな", 2, 2, 4),
("なんか", "トイレの評価楽しくなってきた", 4, 3, 4);

