-- Exercise 15: Group by and counts
-- This query contains fake data to populate tables in ex15.db

INSERT INTO pet
    VALUES(0, 'Burst', 'Cheetah', 0, '0');
INSERT INTO pet
    VALUES(1, 'Brass', 'Tiger', 11, '0');
INSERT INTO pet
    VALUES(2, 'Birth', 'Cheetah', 9, '0');
INSERT INTO pet
    VALUES(3, 'Baby', 'Ox', 20, '1');
INSERT INTO pet
    VALUES(4, 'Army', 'Cheetah', 8, '1');
INSERT INTO pet
    VALUES(5, 'Bone', 'Cheetah', 11, '1');
INSERT INTO pet
    VALUES(6, 'Argument', 'Zebra', 7, '1');
INSERT INTO pet
    VALUES(7, 'Argument', 'Ox', 8, '0');
INSERT INTO pet
    VALUES(8, 'Bike', 'Ox', 6, '1');
INSERT INTO pet
    VALUES(9, 'Belief', 'Ox', 17, '1');
INSERT INTO pet
    VALUES(10, 'Attraction', 'Cheetah', 16, '0');
INSERT INTO pet
    VALUES(11, 'Burn', 'Cheetah', 3, '1');
INSERT INTO pet
    VALUES(12, 'Bubble', 'Ox', 4, '1');
INSERT INTO pet
    VALUES(13, 'Answer', 'Zebra', 12, '0');
INSERT INTO pet
    VALUES(14, 'Amusement', 'Tiger', 20, '1');
INSERT INTO pet
    VALUES(15, 'Band', 'Ox', 1, '1');
INSERT INTO pet
    VALUES(16, 'Blow', 'Tiger', 19, '0');
INSERT INTO pet
    VALUES(17, 'Aunt', 'Cheetah', 15, '0');
INSERT INTO pet
    VALUES(18, 'Bean', 'Tiger', 1, '0');
INSERT INTO pet
    VALUES(19, 'Bear', 'Cheetah', 4, '1');
INSERT INTO pet
    VALUES(20, 'Bean', 'Zebra', 8, '1');
INSERT INTO pet
    VALUES(21, 'Aftermath', 'Ox', 7, '0');
INSERT INTO pet
    VALUES(22, 'Airplane', 'Tiger', 16, '0');
INSERT INTO pet
    VALUES(23, 'Basket', 'Ox', 5, '0');
INSERT INTO pet
    VALUES(24, 'Advice', 'Cheetah', 16, '1');
INSERT INTO pet
    VALUES(25, 'Cabbage', 'Tiger', 13, '1');
INSERT INTO pet
    VALUES(26, 'Basket', 'Zebra', 10, '0');
INSERT INTO pet
    VALUES(27, 'Bee', 'Tiger', 2, '0');
INSERT INTO pet
    VALUES(28, 'Adjustment', 'Ox', 1, '1');
INSERT INTO pet
    VALUES(29, 'Bird', 'Ox', 15, '1');
INSERT INTO pet
    VALUES(30, 'Cactus', 'Ox', 10, '1');
INSERT INTO pet
    VALUES(31, 'Bird', 'Ox', 18, '0');
INSERT INTO pet
    VALUES(32, 'Brass', 'Cheetah', 19, '1');
INSERT INTO pet
    VALUES(33, 'Art', 'Tiger', 11, '1');
INSERT INTO pet
    VALUES(34, 'Band', 'Zebra', 2, '0');
INSERT INTO pet
    VALUES(35, 'Cakes', 'Ox', 2, '0');
INSERT INTO pet
    VALUES(36, 'Beetle', 'Tiger', 3, '0');
INSERT INTO pet
    VALUES(37, 'Attention', 'Zebra', 16, '1');
INSERT INTO pet
    VALUES(38, 'Box', 'Ox', 15, '0');
INSERT INTO pet
    VALUES(39, 'Actor', 'Zebra', 8, '1');
INSERT INTO pet
    VALUES(40, 'Building', 'Ox', 0, '0');
INSERT INTO pet
    VALUES(41, 'Bedroom', 'Cheetah', 18, '1');
INSERT INTO pet
    VALUES(42, 'Blade', 'Cheetah', 5, '1');
INSERT INTO pet
    VALUES(43, 'Box', 'Cheetah', 6, '0');
INSERT INTO pet
    VALUES(44, 'Beam', 'Cheetah', 2, '1');
INSERT INTO pet
    VALUES(45, 'Bridge', 'Cheetah', 10, '0');
INSERT INTO pet
    VALUES(46, 'Agreement', 'Zebra', 12, '1');
INSERT INTO pet
    VALUES(47, 'Cap', 'Ox', 18, '0');
INSERT INTO pet
    VALUES(48, 'Boot', 'Cheetah', 10, '1');
INSERT INTO pet
    VALUES(49, 'Birth', 'Tiger', 1, '0');
INSERT INTO pet
    VALUES(50, 'Addition', 'Tiger', 3, '1');
INSERT INTO pet
    VALUES(51, 'Apple', 'Zebra', 14, '0');
INSERT INTO pet
    VALUES(52, 'Bead', 'Ox', 12, '0');
INSERT INTO pet
    VALUES(53, 'Business', 'Zebra', 15, '1');
INSERT INTO pet
    VALUES(54, 'Authority', 'Tiger', 4, '1');
INSERT INTO pet
    VALUES(55, 'Banana', 'Tiger', 17, '0');
INSERT INTO pet
    VALUES(56, 'Arch', 'Ox', 12, '1');
INSERT INTO pet
    VALUES(57, 'Bird', 'Tiger', 16, '1');
INSERT INTO pet
    VALUES(58, 'Balloon', 'Ox', 9, '0');
INSERT INTO pet
    VALUES(59, 'Beginner', 'Ox', 5, '0');
INSERT INTO pet
    VALUES(60, 'Brass', 'Zebra', 9, '0');
INSERT INTO pet
    VALUES(61, 'Cannon', 'Ox', 9, '0');
INSERT INTO pet
    VALUES(62, 'Battle', 'Cheetah', 2, '1');
INSERT INTO pet
    VALUES(63, 'Boat', 'Cheetah', 4, '0');
INSERT INTO pet
    VALUES(64, 'Baseball', 'Cheetah', 8, '1');
INSERT INTO pet
    VALUES(65, 'Bean', 'Ox', 4, '0');
INSERT INTO pet
    VALUES(66, 'Bag', 'Tiger', 5, '0');
INSERT INTO pet
    VALUES(67, 'Bread', 'Ox', 12, '0');
INSERT INTO pet
    VALUES(68, 'Book', 'Ox', 5, '1');
INSERT INTO pet
    VALUES(69, 'Canvas', 'Zebra', 13, '1');
INSERT INTO pet
    VALUES(70, 'Border', 'Ox', 7, '0');
INSERT INTO pet
    VALUES(71, 'Bedroom', 'Ox', 19, '0');
INSERT INTO pet
    VALUES(72, 'Arm', 'Cheetah', 9, '1');
INSERT INTO pet
    VALUES(73, 'Bag', 'Cheetah', 14, '1');
INSERT INTO pet
    VALUES(74, 'Cake', 'Ox', 16, '1');
INSERT INTO pet
    VALUES(75, 'Alarm', 'Cheetah', 0, '0');
INSERT INTO pet
    VALUES(76, 'Army', 'Tiger', 15, '0');
INSERT INTO pet
    VALUES(77, 'Bath', 'Cheetah', 20, '1');
INSERT INTO pet
    VALUES(78, 'Bed', 'Cheetah', 8, '0');
INSERT INTO pet
    VALUES(79, 'Baby', 'Tiger', 18, '0');
INSERT INTO pet
    VALUES(80, 'Advice', 'Cheetah', 20, '1');
INSERT INTO pet
    VALUES(81, 'Beef', 'Ox', 9, '0');
INSERT INTO pet
    VALUES(82, 'Airport', 'Ox', 7, '1');
INSERT INTO pet
    VALUES(83, 'Cakes', 'Tiger', 11, '0');
INSERT INTO pet
    VALUES(84, 'Airport', 'Tiger', 20, '1');
INSERT INTO pet
    VALUES(85, 'Balloon', 'Zebra', 3, '0');
INSERT INTO pet
    VALUES(86, 'Addition', 'Ox', 12, '0');
INSERT INTO pet
    VALUES(87, 'Amount', 'Tiger', 12, '1');
INSERT INTO pet
    VALUES(88, 'Blade', 'Zebra', 9, '0');
INSERT INTO pet
    VALUES(89, 'Caption', 'Tiger', 17, '0');
INSERT INTO pet
    VALUES(90, 'Basketball', 'Tiger', 13, '1');
INSERT INTO pet
    VALUES(91, 'Breakfast', 'Ox', 17, '0');
INSERT INTO pet
    VALUES(92, 'Birthday', 'Cheetah', 7, '1');
INSERT INTO pet
    VALUES(93, 'Advice', 'Tiger', 16, '0');
INSERT INTO pet
    VALUES(94, 'Airplane', 'Zebra', 20, '0');
INSERT INTO pet
    VALUES(95, 'Bike', 'Cheetah', 16, '0');
INSERT INTO pet
    VALUES(96, 'Business', 'Cheetah', 8, '0');
INSERT INTO pet
    VALUES(97, 'Branch', 'Cheetah', 19, '0');
INSERT INTO pet
    VALUES(98, 'Apparel', 'Zebra', 0, '1');
INSERT INTO pet
    VALUES(99, 'Beginner', 'Tiger', 7, '0');
INSERT INTO person
    VALUES(0, 'Crack', 'Chin', 12, '2017-10-25 05:37:45.862940');
INSERT INTO person
    VALUES(1, 'Discovery', 'Clock', 23, '1979-09-19 01:37:45.863185');
INSERT INTO person
    VALUES(2, 'Cook', 'Direction', 24, '2010-10-31 10:37:45.863200');
INSERT INTO person
    VALUES(3, 'Dress', 'Dress', 73, '2006-12-20 18:37:45.863212');
INSERT INTO person
    VALUES(4, 'Current', 'Coast', 45, '1986-03-11 13:37:45.863224');
INSERT INTO person
    VALUES(5, 'Daughter', 'Cave', 97, '1980-06-12 09:37:45.863235');
INSERT INTO person
    VALUES(6, 'Chalk', 'Chicken', 70, '2007-09-26 07:37:45.863247');
INSERT INTO person
    VALUES(7, 'Comfort', 'Desk', 64, '1973-07-24 02:37:45.863259');
INSERT INTO person
    VALUES(8, 'Cause', 'Cart', 69, '1972-09-16 17:37:45.863270');
INSERT INTO person
    VALUES(9, 'Curve', 'Coat', 40, '1991-12-07 10:37:45.863281');
INSERT INTO person
    VALUES(10, 'Circle', 'Dime', 34, '1994-05-27 14:37:45.863293');
INSERT INTO person
    VALUES(11, 'Crack', 'Circle', 12, '1982-06-07 17:37:45.863304');
INSERT INTO person
    VALUES(12, 'Crow', 'Current', 2, '2004-04-05 19:37:45.863315');
INSERT INTO person
    VALUES(13, 'Coil', 'Channel', 86, '1970-07-10 23:37:45.863327');
INSERT INTO person
    VALUES(14, 'Drawer', 'Doctor', 77, '2012-10-19 04:37:45.863338');
INSERT INTO person
    VALUES(15, 'Drug', 'Cent', 63, '1992-10-11 18:37:45.863349');
INSERT INTO person
    VALUES(16, 'Cook', 'Club', 58, '1979-03-20 21:37:45.863361');
INSERT INTO person
    VALUES(17, 'Cellar', 'Cow', 24, '2006-12-07 02:37:45.863372');
INSERT INTO person
    VALUES(18, 'Condition', 'Card', 100, '2017-09-23 22:37:45.863383');
INSERT INTO person
    VALUES(19, 'Competition', 'Club', 85, '1985-09-04 03:37:45.863394');
INSERT INTO person
    VALUES(20, 'Crime', 'Crook', 37, '1991-12-23 10:37:45.863406');
INSERT INTO person
    VALUES(21, 'Drop', 'Cattle', 74, '2009-09-10 05:37:45.863417');
INSERT INTO person
    VALUES(22, 'Crowd', 'Clam', 37, '1993-11-22 15:37:45.863428');
INSERT INTO person
    VALUES(23, 'Cracker', 'Crow', 17, '2010-01-11 08:37:45.863439');
INSERT INTO person
    VALUES(24, 'Digestion', 'Distance', 35, '1971-11-20 13:37:45.863451');
INSERT INTO person
    VALUES(25, 'Chin', 'Cloud', 33, '1986-09-22 02:37:45.863467');
INSERT INTO person
    VALUES(26, 'Drain', 'Cheese', 0, '2002-03-13 00:37:45.863479');
INSERT INTO person
    VALUES(27, 'Daughter', 'Creator', 75, '2010-01-11 05:37:45.863491');
INSERT INTO person
    VALUES(28, 'Cause', 'Crate', 24, '2000-04-06 02:37:45.863502');
INSERT INTO person
    VALUES(29, 'Dirt', 'Debt', 47, '1991-10-19 14:37:45.863514');
INSERT INTO person
    VALUES(30, 'Cat', 'Cherry', 92, '1992-01-28 10:37:45.863529');
INSERT INTO person
    VALUES(31, 'Dad', 'Cattle', 54, '1998-12-21 15:37:45.863541');
INSERT INTO person
    VALUES(32, 'Downtown', 'Crook', 34, '1969-11-07 02:37:45.863552');
INSERT INTO person
    VALUES(33, 'Disgust', 'Committee', 2, '1978-09-16 08:37:45.863563');
INSERT INTO person
    VALUES(34, 'Discussion', 'Dad', 20, '1978-12-03 07:37:45.863574');
INSERT INTO person
    VALUES(35, 'Cave', 'Cheese', 10, '2018-02-16 20:37:45.863585');
INSERT INTO person
    VALUES(36, 'Cover', 'Coil', 45, '2010-05-20 21:37:45.863597');
INSERT INTO person
    VALUES(37, 'Dinosaurs', 'Chain', 99, '1976-02-13 09:37:45.863609');
INSERT INTO person
    VALUES(38, 'Collar', 'Drawer', 65, '1981-03-21 13:37:45.863620');
INSERT INTO person
    VALUES(39, 'Discussion', 'Disgust', 63, '2009-06-25 14:37:45.863631');
INSERT INTO person
    VALUES(40, 'Creature', 'Chair', 31, '2000-05-07 19:37:45.863643');
INSERT INTO person
    VALUES(41, 'Competition', 'Company', 10, '2006-05-21 19:37:45.863654');
INSERT INTO person
    VALUES(42, 'Downtown', 'Cushion', 8, '1998-09-27 14:37:45.863665');
INSERT INTO person
    VALUES(43, 'Development', 'Celery', 65, '2007-09-26 16:37:45.863677');
INSERT INTO person
    VALUES(44, 'Driving', 'Crime', 56, '1992-12-11 08:37:45.863688');
INSERT INTO person
    VALUES(45, 'Cause', 'Cart', 94, '1998-06-17 09:37:45.863699');
INSERT INTO person
    VALUES(46, 'Design', 'Copper', 48, '1986-03-17 02:37:45.863710');
INSERT INTO person
    VALUES(47, 'Chair', 'Crayon', 46, '1994-10-13 06:37:45.863722');
INSERT INTO person
    VALUES(48, 'Desire', 'Desire', 15, '1976-07-12 03:37:45.863733');
INSERT INTO person
    VALUES(49, 'Death', 'Crib', 64, '1973-04-22 14:37:45.863744');
INSERT INTO person
    VALUES(50, 'Door', 'Cause', 98, '1969-09-05 07:37:45.863756');
INSERT INTO person
    VALUES(51, 'Card', 'Clock', 10, '1999-03-01 13:37:45.863767');
INSERT INTO person
    VALUES(52, 'Curtain', 'Crime', 58, '1994-07-16 16:37:45.863778');
INSERT INTO person
    VALUES(53, 'Coil', 'Daughter', 93, '1992-01-06 20:37:45.863789');
INSERT INTO person
    VALUES(54, 'Coast', 'Dinner', 2, '2001-08-11 00:37:45.863801');
INSERT INTO person
    VALUES(55, 'Coach', 'Dress', 11, '2010-08-05 07:37:45.863812');
INSERT INTO person
    VALUES(56, 'Distance', 'Control', 91, '2012-04-20 03:37:45.863823');
INSERT INTO person
    VALUES(57, 'Dust', 'Dust', 44, '2015-05-17 05:37:45.863834');
INSERT INTO person
    VALUES(58, 'Curve', 'Discovery', 67, '1982-09-11 14:37:45.863846');
INSERT INTO person
    VALUES(59, 'Copper', 'Disease', 47, '1974-06-25 11:37:45.863857');
INSERT INTO person
    VALUES(60, 'Duck', 'Donkey', 11, '1970-01-09 09:37:45.863868');
INSERT INTO person
    VALUES(61, 'Collar', 'Crowd', 4, '2013-09-07 22:37:45.863879');
INSERT INTO person
    VALUES(62, 'Distance', 'Comb', 98, '2006-02-13 23:37:45.863891');
INSERT INTO person
    VALUES(63, 'Comb', 'Dock', 28, '1989-06-23 19:37:45.863902');
INSERT INTO person
    VALUES(64, 'Competition', 'Crayon', 85, '1983-11-13 00:37:45.863917');
INSERT INTO person
    VALUES(65, 'Collar', 'Company', 72, '1985-11-15 16:37:45.863929');
INSERT INTO person
    VALUES(66, 'Donkey', 'Clock', 75, '2008-08-08 00:37:45.863940');
INSERT INTO person
    VALUES(67, 'Company', 'Decision', 35, '1998-05-28 08:37:45.863952');
INSERT INTO person
    VALUES(68, 'Daughter', 'Destruction', 65, '2003-01-31 14:37:45.863963');
INSERT INTO person
    VALUES(69, 'Coast', 'Curtain', 35, '2013-08-06 09:37:45.863974');
INSERT INTO person
    VALUES(70, 'Cellar', 'Curtain', 30, '2013-12-10 19:37:45.863985');
INSERT INTO person
    VALUES(71, 'Development', 'Connection', 7, '2016-01-03 21:37:45.863996');
INSERT INTO person
    VALUES(72, 'Chain', 'Celery', 27, '2007-10-27 16:37:45.864008');
INSERT INTO person
    VALUES(73, 'Cellar', 'Connection', 51, '1984-07-07 00:37:45.864019');
INSERT INTO person
    VALUES(74, 'Drawer', 'Copper', 96, '1986-12-17 03:37:45.864031');
INSERT INTO person
    VALUES(75, 'Degree', 'Debt', 95, '2017-09-29 20:37:45.864043');
INSERT INTO person
    VALUES(76, 'Cart', 'Copy', 61, '2008-07-16 02:37:45.864054');
INSERT INTO person
    VALUES(77, 'Cow', 'Condition', 4, '2005-02-08 22:37:45.864065');
INSERT INTO person
    VALUES(78, 'Chair', 'Dog', 59, '1991-07-03 17:37:45.864076');
INSERT INTO person
    VALUES(79, 'Clam', 'Driving', 49, '2006-11-11 02:37:45.864088');
INSERT INTO person
    VALUES(80, 'Cracker', 'Deer', 73, '1993-10-21 19:37:45.864099');
INSERT INTO person
    VALUES(81, 'Cub', 'Drain', 30, '1972-05-20 02:37:45.864110');
INSERT INTO person
    VALUES(82, 'Dust', 'Card', 8, '1999-04-04 17:37:45.864121');
INSERT INTO person
    VALUES(83, 'Decision', 'Day', 98, '1993-03-18 19:37:45.864133');
INSERT INTO person
    VALUES(84, 'Crowd', 'Dinner', 35, '2009-09-12 13:37:45.864144');
INSERT INTO person
    VALUES(85, 'Cough', 'Destruction', 93, '1987-05-31 01:37:45.864155');
INSERT INTO person
    VALUES(86, 'Cat', 'Cracker', 26, '1991-06-14 21:37:45.864166');
INSERT INTO person
    VALUES(87, 'Comb', 'Door', 71, '2008-12-11 04:37:45.864178');
INSERT INTO person
    VALUES(88, 'Celery', 'Card', 70, '1997-11-20 11:37:45.864189');
INSERT INTO person
    VALUES(89, 'Drawer', 'Cow', 48, '2002-10-12 19:37:45.864201');
INSERT INTO person
    VALUES(90, 'Cow', 'Digestion', 90, '2007-05-01 02:37:45.864212');
INSERT INTO person
    VALUES(91, 'Dirt', 'Dad', 62, '2009-10-27 14:37:45.864224');
INSERT INTO person
    VALUES(92, 'Coast', 'Clock', 46, '1973-03-23 20:37:45.864235');
INSERT INTO person
    VALUES(93, 'Cream', 'Cub', 80, '1968-07-08 04:37:45.864246');
INSERT INTO person
    VALUES(94, 'Daughter', 'Collar', 92, '1986-10-11 21:37:45.864257');
INSERT INTO person
    VALUES(95, 'Dress', 'Drain', 42, '1977-10-30 08:37:45.864269');
INSERT INTO person
    VALUES(96, 'Dad', 'Drug', 59, '2001-04-09 09:37:45.864280');
INSERT INTO person
    VALUES(97, 'Cattle', 'Cent', 0, '2002-09-05 21:37:45.864295');
INSERT INTO person
    VALUES(98, 'Dock', 'Digestion', 63, '2013-05-20 05:37:45.864307');
INSERT INTO person
    VALUES(99, 'Creature', 'Day', 63, '1987-12-07 15:37:45.864318');
INSERT INTO person_pet
    VALUES(85, 23, '2013-04-22 20:37:45.864332');
INSERT INTO person_pet
    VALUES(33, 79, '2016-02-27 09:37:45.864344');
INSERT INTO person_pet
    VALUES(66, 13, '1975-04-02 21:37:45.864355');
INSERT INTO person_pet
    VALUES(5, 82, '2005-12-28 08:37:45.864367');
INSERT INTO person_pet
    VALUES(34, 74, '1998-01-25 15:37:45.864378');
INSERT INTO person_pet
    VALUES(39, 64, '2018-01-28 17:37:45.864389');
INSERT INTO person_pet
    VALUES(74, 14, '1998-07-11 14:37:45.864404');
INSERT INTO person_pet
    VALUES(82, 73, '1990-01-20 14:37:45.864416');
INSERT INTO person_pet
    VALUES(10, 59, '2005-04-06 17:37:45.864427');
INSERT INTO person_pet
    VALUES(79, 27, '2019-02-23 19:37:45.864438');
INSERT INTO person_pet
    VALUES(45, 64, '2014-02-07 16:37:45.864449');
INSERT INTO person_pet
    VALUES(64, 29, '1976-09-06 09:37:45.864460');
INSERT INTO person_pet
    VALUES(53, 24, '2012-10-06 19:37:45.864471');
INSERT INTO person_pet
    VALUES(69, 72, '1989-07-04 16:37:45.864482');
INSERT INTO person_pet
    VALUES(30, 61, '1997-09-05 02:37:45.864493');
INSERT INTO person_pet
    VALUES(45, 15, '1970-09-25 22:37:45.864504');
INSERT INTO person_pet
    VALUES(14, 28, '1994-02-10 16:37:45.864514');
INSERT INTO person_pet
    VALUES(14, 64, '1973-12-18 14:37:45.864525');
INSERT INTO person_pet
    VALUES(33, 74, '1998-10-23 08:37:45.864536');
INSERT INTO person_pet
    VALUES(70, 41, '1999-11-25 01:37:45.864547');
INSERT INTO person_pet
    VALUES(16, 10, '1981-02-11 08:37:45.864558');
INSERT INTO person_pet
    VALUES(42, 6, '2013-04-23 13:37:45.864569');
INSERT INTO person_pet
    VALUES(28, 50, '2007-12-06 23:37:45.864580');
INSERT INTO person_pet
    VALUES(69, 7, '1985-10-20 19:37:45.864591');
INSERT INTO person_pet
    VALUES(56, 15, '2017-03-26 00:37:45.864602');
INSERT INTO person_pet
    VALUES(28, 11, '1976-10-29 18:37:45.864613');
INSERT INTO person_pet
    VALUES(10, 29, '1977-07-06 20:37:45.864624');
INSERT INTO person_pet
    VALUES(16, 67, '2007-07-17 13:37:45.864635');
INSERT INTO person_pet
    VALUES(24, 29, '2008-02-13 10:37:45.864646');
INSERT INTO person_pet
    VALUES(7, 12, '1992-11-19 20:37:45.864657');
INSERT INTO person_pet
    VALUES(16, 89, '1972-05-27 08:37:45.864668');
INSERT INTO person_pet
    VALUES(76, 78, '1989-04-20 01:37:45.864679');
INSERT INTO person_pet
    VALUES(35, 58, '1987-04-17 04:37:45.864690');
INSERT INTO person_pet
    VALUES(71, 30, '2005-05-18 15:37:45.864701');
INSERT INTO person_pet
    VALUES(59, 47, '1983-05-14 21:37:45.864713');
INSERT INTO person_pet
    VALUES(29, 45, '2005-09-27 07:37:45.864724');
INSERT INTO person_pet
    VALUES(50, 14, '1994-01-08 00:37:45.864735');
INSERT INTO person_pet
    VALUES(42, 11, '2013-02-05 12:37:45.864746');
INSERT INTO person_pet
    VALUES(47, 43, '1991-08-11 13:37:45.864757');
INSERT INTO person_pet
    VALUES(59, 58, '2012-01-04 19:37:45.864768');
INSERT INTO person_pet
    VALUES(18, 15, '1994-02-28 17:37:45.864779');
INSERT INTO person_pet
    VALUES(47, 9, '2000-12-29 02:37:45.864790');
INSERT INTO person_pet
    VALUES(57, 21, '2008-10-29 14:37:45.864804');
INSERT INTO person_pet
    VALUES(15, 33, '1976-02-24 09:37:45.864816');
INSERT INTO person_pet
    VALUES(72, 22, '1991-03-24 22:37:45.864827');
INSERT INTO person_pet
    VALUES(91, 57, '1995-05-19 19:37:45.864838');
INSERT INTO person_pet
    VALUES(32, 77, '2004-04-18 01:37:45.864849');
INSERT INTO person_pet
    VALUES(74, 51, '1974-04-19 19:37:45.864860');
INSERT INTO person_pet
    VALUES(18, 41, '1968-07-09 11:37:45.864871');
INSERT INTO person_pet
    VALUES(89, 72, '1977-05-19 07:37:45.864883');
INSERT INTO person_pet
    VALUES(86, 20, '1985-12-10 07:37:45.864894');
INSERT INTO person_pet
    VALUES(79, 89, '1987-07-06 04:37:45.864905');
INSERT INTO person_pet
    VALUES(64, 43, '2007-07-21 21:37:45.864915');
INSERT INTO person_pet
    VALUES(95, 52, '1982-07-19 10:37:45.864926');
INSERT INTO person_pet
    VALUES(61, 70, '1995-07-24 20:37:45.864937');
INSERT INTO person_pet
    VALUES(88, 5, '2011-01-02 03:37:45.864948');
INSERT INTO person_pet
    VALUES(36, 75, '1998-02-06 08:37:45.864959');
INSERT INTO person_pet
    VALUES(62, 60, '2001-09-06 16:37:45.864970');
INSERT INTO person_pet
    VALUES(21, 81, '1981-06-19 17:37:45.864981');
INSERT INTO person_pet
    VALUES(9, 13, '1974-08-09 09:37:45.864992');
INSERT INTO person_pet
    VALUES(60, 40, '2008-07-17 00:37:45.865003');
INSERT INTO person_pet
    VALUES(60, 50, '1977-12-24 05:37:45.865014');
INSERT INTO person_pet
    VALUES(32, 18, '2008-01-23 14:37:45.865025');
INSERT INTO person_pet
    VALUES(48, 74, '1993-11-13 18:37:45.865036');
INSERT INTO person_pet
    VALUES(70, 76, '2011-01-05 08:37:45.865046');
INSERT INTO person_pet
    VALUES(52, 30, '1977-10-02 22:37:45.865057');
INSERT INTO person_pet
    VALUES(69, 60, '1988-10-07 05:37:45.865068');
INSERT INTO person_pet
    VALUES(47, 16, '2010-10-13 12:37:45.865079');
INSERT INTO person_pet
    VALUES(59, 16, '2000-11-29 20:37:45.865090');
INSERT INTO person_pet
    VALUES(82, 45, '2004-08-26 17:37:45.865101');
INSERT INTO person_pet
    VALUES(73, 67, '2005-01-17 07:37:45.865112');
INSERT INTO person_pet
    VALUES(79, 37, '2005-05-15 02:37:45.865123');
INSERT INTO person_pet
    VALUES(69, 77, '1994-06-08 15:37:45.865134');
INSERT INTO person_pet
    VALUES(64, 89, '1980-12-19 06:37:45.865145');
INSERT INTO person_pet
    VALUES(41, 79, '2012-01-25 14:37:45.865156');
