
-- Use the "bookstore" database
USE bookstore;

-- Insert store information
# We are going to create 4 different stores in our bookstore chain:
INSERT INTO store VALUES('34782','09:00:00','20:00:00','2456228514','660 Burroughs Ave Collinsville, Illinois(IL), 62234');
INSERT INTO store VALUES('20957','08:00:00','18:00:00','5617546768','7051 Church St Hanover Park, Illinois(IL), 60133');
INSERT INTO store VALUES('89152','09:30:00','19:00:00','8614066372','29 Moseley Ave Needham, Massachusetts(MA), 02492');
INSERT INTO store VALUES('51120','09:00:00','19:30:00','9025068570','1010 W San Ysidro Blvd San Ysidro, California(CA), 92173');

-- Insert employee information
# We are going to add employees to each of the stores:
INSERT INTO employee VALUES('0034176481','August','Mcarthur','August.Mcarthur@gmail.com','2000-02-14','34782','2021-06-12','2195426114');
INSERT INTO employee VALUES('6478002207','Derren','Thatcher','Derren.Thatcher@gmail.com','1987-10-23','89152','2022-12-22','4307326395');
INSERT INTO employee VALUES('4611455254','Roxanne','Wright','Roxanne.Wright@gmail.com','1996-06-12','51120','2019-09-08','3411449497');
INSERT INTO employee VALUES('9636105673','Tiarna','Newman','Tiarna.Newman@gmail.com','2001-08-03','20957','2022-07-14','8130980610');
INSERT INTO employee VALUES('3084954601','Sumayya','Olson','Sumayya.Olson@gmail.com','1992-03-17','51120','2021-11-16','2150410333');
INSERT INTO employee VALUES('0429218286','Sue','Mcloughlin','Sue.Mcloughlin@gmail.com','1973-12-11','20957','2021-05-18','7942679834');
INSERT INTO employee VALUES('2179057248','Courteney','Pearson','Courteney.Pearson@gmail.com','1987-05-21','34782','2020-01-11','6712401532');
INSERT INTO employee VALUES('6011351272','Zander','Hartley','Zander.Hartley@gmail.com','1995-06-20','51120','2019-04-24','5327996443');
INSERT INTO employee VALUES('4665695482','Kohen','Valenzuela','Kohen.Valenzuela@gmail.com','2000-07-07','89152','2021-10-05','3417933815');
INSERT INTO employee VALUES('7280426124','Amal','Murillo','Amal.Murillo@gmail.com','1978-11-03','34782','2021-01-18','9155468523');
INSERT INTO employee VALUES('3071506519','Simeon','Wolfe','Simeon.Wolfe@gmail.com','1990-08-15','89152','2020-07-01','1555171795');
INSERT INTO employee VALUES('4428412188','Marcie','Akhtar','Marcie.Akhtar@gmail.com','1969-01-09','20957','2021-02-07','2574691505');

-- Insert employee positions
# We are going to add the positions each of these employees qualify for:
INSERT INTO employee_positions VALUES('0034176481','manager');
INSERT INTO employee_positions VALUES('0034176481','recepcionist');
INSERT INTO employee_positions VALUES('0034176481','storage');
INSERT INTO employee_positions VALUES('6478002207','director');
INSERT INTO employee_positions VALUES('6478002207','manager');
INSERT INTO employee_positions VALUES('4611455254','storage');
INSERT INTO employee_positions VALUES('4611455254','recepcionist');
INSERT INTO employee_positions VALUES('9636105673','recepcionist');
INSERT INTO employee_positions VALUES('3084954601','director');
INSERT INTO employee_positions VALUES('3084954601','manager');
INSERT INTO employee_positions VALUES('3084954601','storage');
INSERT INTO employee_positions VALUES('0429218286','recepcionist');
INSERT INTO employee_positions VALUES('2179057248','manager');
INSERT INTO employee_positions VALUES('2179057248','storage');
INSERT INTO employee_positions VALUES('6011351272','storage');
INSERT INTO employee_positions VALUES('6011351272','manager');
INSERT INTO employee_positions VALUES('6011351272','recepcionist');
INSERT INTO employee_positions VALUES('4665695482','director');
INSERT INTO employee_positions VALUES('7280426124','storage');
INSERT INTO employee_positions VALUES('7280426124','manager');
INSERT INTO employee_positions VALUES('3071506519','director');
INSERT INTO employee_positions VALUES('3071506519','recepcionist');
INSERT INTO employee_positions VALUES('4428412188','storage');
INSERT INTO employee_positions VALUES('4428412188','director');

-- Insert authors
# We are going to add some authors:
INSERT INTO author VALUES('309212','Miguel','De cervantes');
INSERT INTO author VALUES('653541','Thomas','Paine');
INSERT INTO author VALUES('761229','Adam','Smith');
INSERT INTO author VALUES('533815','William','Shakespeare');
INSERT INTO author VALUES('222654','John Stewart','Mill');
INSERT INTO author VALUES('727216','Anne','Frank');
INSERT INTO author VALUES('500303','Agatha','Christie');
INSERT INTO author VALUES('354317','Stephen','King');
INSERT INTO author VALUES('129834','Ramez','Elmasri');
INSERT INTO author VALUES('673647','Shamkant','Navathe');

-- Insert cafe information for each store
# We are going to add the cafe information of each store(s):
# A store can have more than one cafe.
INSERT INTO cafe VALUES('13456','89152','08:30:00','20:00:00','3376016137');
INSERT INTO cafe VALUES('71707','34782','09:15:00','21:00:00','6815297038');
INSERT INTO cafe VALUES('36907','51120','09:00:00','20:30:00','9584188346');
INSERT INTO cafe VALUES('45804','34782','10:00:00','22:00:00','3968218026');
INSERT INTO cafe VALUES('51804','89152','08:30:00','19:45:00','2081810908');
INSERT INTO cafe VALUES('12871','20957','09:30:00','20:15:00','2747349041');

-- Insert books
# We are going to add books:
INSERT INTO book VALUES('6755247816214','44','Pearson','84','Hamlet','235','1976-02-21','20');
INSERT INTO book VALUES('9081559271072','31','Reed Elsevier','88','Common Sense','879','1993-11-11','09');
INSERT INTO book VALUES('3845276513698','69','Wolters Kluwer','100','Don Quixote','206','1974-04-10','77');
INSERT INTO book VALUES('7095351596686','27','Pearson','91','The Wealth of Nations','610','1965-07-09','72');
INSERT INTO book VALUES('5135475157122','21','Reed Elsevier','81','The Tempest','403','1988-07-05','34');
INSERT INTO book VALUES('8777552024353','32','ThomsonReuters','84','Rights of Man','497','1989-05-03','26');
INSERT INTO book VALUES('4838762722419','52','Pearson','87','Utilitarianism','769','1993-04-22','22');
INSERT INTO book VALUES('3753721886312','34','Pearson','88','the Diary of a Young Girl','469','1977-02-24','12');
INSERT INTO book VALUES('3378508832773','20','Reed Elsevier','79','Romeo & Juliet','705','1987-02-27','18');
INSERT INTO book VALUES('0251569715050','38','ThomsonReuters','95','La Galatea','662','1996-05-11','65');
INSERT INTO book VALUES('9456587996137','46','Pearson','86','The Shinning','168','1987-12-09','30');
INSERT INTO book VALUES('5846238775543','24','Wolters Kluwer','84','Julius Caesar','231','1983-09-03','14');
INSERT INTO book VALUES('3371308558926','51','Pearson','82','Othello','297','1984-06-28','08');
INSERT INTO book VALUES('2690871331105','73','Wolters Kluwer','89','Rinconete & Cortadillo','485','1980-10-20','08');
INSERT INTO book VALUES('8403523828150','22','Pearson','93','The Green Mile','643','1994-02-05','10');
INSERT INTO book VALUES('0404864414086','67','ThomsonReuters','97','It','811','1975-04-02','03');
INSERT INTO book VALUES('3912645798383','54','Pearson','80','Fundamentals of Database System','902','2016-02-02','02');

-- Link books and authors
# We are going to link books and authors. We have to create a separate table for this because a book can have more than one author:
INSERT INTO book_author VALUES('6755247816214','533815','Tragedy');
INSERT INTO book_author VALUES('9081559271072','653541','Non-fiction');
INSERT INTO book_author VALUES('3845276513698','309212','Novel');
INSERT INTO book_author VALUES('7095351596686','761229','Non-fiction');
INSERT INTO book_author VALUES('5135475157122','533815','Drama');
INSERT INTO book_author VALUES('8777552024353','653541','Non-fiction');
INSERT INTO book_author VALUES('4838762722419','222654','Philosophycal');
INSERT INTO book_author VALUES('3753721886312','727216','Autobiography');
INSERT INTO book_author VALUES('3378508832773','533815','Tragedy');
INSERT INTO book_author VALUES('0251569715050','309212','Novel');
INSERT INTO book_author VALUES('9456587996137','354317','Horror');
INSERT INTO book_author VALUES('5846238775543','533815','Tragedy');
INSERT INTO book_author VALUES('3371308558926','533815','Tragedy');
INSERT INTO book_author VALUES('2690871331105','309212','Novel');
INSERT INTO book_author VALUES('8403523828150','354317','Mystery');
INSERT INTO book_author VALUES('0404864414086','354317','Horror');
INSERT INTO book_author VALUES('3912645798383','129834','Education');
INSERT INTO book_author VALUES('3912645798383','673647','Education');

-- Insert book stock information
# We are going to create a table to represent the quantity in stock of a book at a particular store. There are books that are avalibale in more than one store.
# It is important to keep in mind that we must use the UPDATE function to update the quantity attribute if any sale or modification is performed 
INSERT INTO book_stock VALUES('6755247816214','66','20957');
INSERT INTO book_stock VALUES('6755247816214','21','89152');
INSERT INTO book_stock VALUES('6755247816214','17','34782');
INSERT INTO book_stock VALUES('9081559271072','41','89152');
INSERT INTO book_stock VALUES('3845276513698','35','89152');
INSERT INTO book_stock VALUES('7095351596686','61','34782');
INSERT INTO book_stock VALUES('5135475157122','57','89152');
INSERT INTO book_stock VALUES('8777552024353','78','89152');
INSERT INTO book_stock VALUES('4838762722419','40','51120');
INSERT INTO book_stock VALUES('3753721886312','20','20957');
INSERT INTO book_stock VALUES('3378508832773','79','20957');
INSERT INTO book_stock VALUES('0251569715050','57','34782');
INSERT INTO book_stock VALUES('9456587996137','97','51120');
INSERT INTO book_stock VALUES('5846238775543','11','51120');
INSERT INTO book_stock VALUES('3371308558926','19','34782');
INSERT INTO book_stock VALUES('2690871331105','16','51120');
INSERT INTO book_stock VALUES('8403523828150','18','51120');
INSERT INTO book_stock VALUES('0404864414086','16','34782');

INSERT INTO book_stock VALUES('6755247816214','41','51120');
INSERT INTO book_stock VALUES('9081559271072','64','34782');
INSERT INTO book_stock VALUES('3845276513698','11','34782');
INSERT INTO book_stock VALUES('7095351596686','44','51120');
INSERT INTO book_stock VALUES('5135475157122','40','51120');
INSERT INTO book_stock VALUES('8777552024353','57','20957');
INSERT INTO book_stock VALUES('4838762722419','89','89152');
INSERT INTO book_stock VALUES('3753721886312','61','34782');
INSERT INTO book_stock VALUES('3378508832773','60','34782');
INSERT INTO book_stock VALUES('0251569715050','15','20957');

-- Insert cafe items
# We are going to add cafe items:
INSERT INTO cafe_item VALUES('87701','coffee','2','Beverage');
INSERT INTO cafe_item VALUES('79980','wine','6','Beverage');
INSERT INTO cafe_item VALUES('75211','muffin','4','Breakfast');
INSERT INTO cafe_item VALUES('97330','hamburger','8','Hot food');
INSERT INTO cafe_item VALUES('36450','sandwich','9','Hot food');

-- Insert cafe stock information
# We are going to specify the cafe items in stock for each cafe:
INSERT INTO cafe_stock VALUES('87701','98','13456');
INSERT INTO cafe_stock VALUES('79980','60','13456');
INSERT INTO cafe_stock VALUES('75211','30','13456');
INSERT INTO cafe_stock VALUES('97330','73','13456');
INSERT INTO cafe_stock VALUES('36450','17','13456');

INSERT INTO cafe_stock VALUES('87701','36','71707');
INSERT INTO cafe_stock VALUES('79980','43','71707');
INSERT INTO cafe_stock VALUES('75211','60','71707');
INSERT INTO cafe_stock VALUES('97330','67','71707');
INSERT INTO cafe_stock VALUES('36450','84','71707');

INSERT INTO cafe_stock VALUES('87701','70','36907');
INSERT INTO cafe_stock VALUES('79980','91','36907');
INSERT INTO cafe_stock VALUES('75211','70','36907');
INSERT INTO cafe_stock VALUES('97330','44','36907');
INSERT INTO cafe_stock VALUES('36450','95','36907');

INSERT INTO cafe_stock VALUES('87701','73','45804');
INSERT INTO cafe_stock VALUES('79980','26','45804');
INSERT INTO cafe_stock VALUES('75211','47','45804');
INSERT INTO cafe_stock VALUES('97330','92','45804');
INSERT INTO cafe_stock VALUES('36450','66','45804');

INSERT INTO cafe_stock VALUES('87701','33','51804');
INSERT INTO cafe_stock VALUES('79980','67','51804');
INSERT INTO cafe_stock VALUES('75211','24','51804');
INSERT INTO cafe_stock VALUES('97330','82','51804');
INSERT INTO cafe_stock VALUES('36450','72','51804');

INSERT INTO cafe_stock VALUES('87701','54','12871');
INSERT INTO cafe_stock VALUES('79980','91','12871');
INSERT INTO cafe_stock VALUES('75211','95','12871');
INSERT INTO cafe_stock VALUES('97330','29','12871');
INSERT INTO cafe_stock VALUES('36450','37','12871');

-- Insert book sales
# We are going to add a couple of book sales:
# A book can be rented (Has a start date and an end date) or it can be purchased (only start date)
INSERT INTO book_sale VALUES('07822207','20957',NULL,'2022-02-21','2022-07-12','3378508832773','3');
INSERT INTO book_sale VALUES('35113232','89152',NULL,'2022-04-10',NULL,'3845276513698','12');
INSERT INTO book_sale VALUES('39232030','20957',NULL,'2022-03-14','2022-08-17','3753721886312','5');
INSERT INTO book_sale VALUES('79712872','51120','20','2021-12-16','2022-01-11','8403523828150','4');
INSERT INTO book_sale VALUES('34562872','51120','12','2022-02-06','2023-04-12','7095351596686','3');
INSERT INTO book_sale VALUES('46854379','51120','5','2022-03-15','2023-05-08','5135475157122','7');

-- Insert cafe item sales
# We are going to add a few cafe_item sales:
INSERT INTO cafe_sale VALUES('97568233','-5','2022-02-04','87701','12');
INSERT INTO cafe_sale VALUES('62718099','-8','2021-11-20','79980','10');
INSERT INTO cafe_sale VALUES('55789697','-2','2022-04-03','75211','5');
INSERT INTO cafe_sale VALUES('68231013','-4','2021-07-12','97330','15');
INSERT INTO cafe_sale VALUES('53524616','-6','2020-08-12','36450',NULL);
INSERT INTO cafe_sale VALUES('18902663','-5','2021-11-24','75211','5');

-- Insert shifts
# We are going to declare some shifts:
INSERT INTO shift VALUES('1814','34782');
INSERT INTO shift VALUES('3571','89152');
INSERT INTO shift VALUES('3719','51120');
INSERT INTO shift VALUES('6959','20957');

-- Insert shift schedules
# We are going to specify the schedule of the shifts. Now, our previously declared shifts can have more than one scheduled employee.
INSERT INTO shift_schedule VALUES('1814','0034176481','manager','2022-01-10 14:00:00');
INSERT INTO shift_schedule VALUES('1814','7280426124','recepcionist','2022-03-21 14:00:00');
INSERT INTO shift_schedule VALUES('3571','6478002207','storage','2022-02-14 13:00:00');
INSERT INTO shift_schedule VALUES('3719','4611455254','director','2022-03-19 15:00:00');
INSERT INTO shift_schedule VALUES('6959','9636105673','recepcionist','2022-04-12 12:00:00');
INSERT INTO shift_schedule VALUES('3571','4665695482','recepcionist','2022-03-05 12:00:00');
INSERT INTO shift_schedule VALUES('3719','3084954601','storage','2022-04-22 13:00:00');
INSERT INTO shift_schedule VALUES('3719','6011351272','manager','2022-01-12 12:00:00');
