-----------------------------------------------------------TEAM NAME: DATA CRUNCHERS-----------------------------------------------------------------------------------------------

------------------------------------------------------------------DATA ENTRY QUERY-----------------------------------------------------------------------------------------------

USE Data_Crunchers;

-----------------------------------------------------------INSERT INTO RESTAURANT-----------------------------------------------------------------------------------------------

insert into restaurant values('Revati','boston',2340974839,'09:10:20','20:10:09');
insert into restaurant values('Rukbat','New York City',3462893450,'08:12:20','22:18:00');
insert into restaurant values('Chertan','Los Angeles',5920693859,'09:00:00','20:00:00');
insert into restaurant values('Terebellum','Miami',78539025778,'08:00:00','22:00:00');
insert into restaurant values('Aspidiske','Miami',6709238574,'09:30:00','23:10:00');
insert into restaurant values('Electra','Detroit',4582905786,'08:30:00','23:00:00');
insert into restaurant values('Barlyon','Boston',4803578238,'09:00:00','22:00:00');
insert into restaurant values('Larawag','New Jersy',6703479421,'07:30:00','23:30:00');
insert into restaurant values('Ginan','Waltham',4905683278,'08:00:00','22:30:00');
insert into restaurant values('Homam','Norwood',35465069483,'09:30:00','23:00:00');



-----------------------------------------------------------INSERT INTO MENU------------------------------------------------------------------------------------------------
insert into Menu values (100,'Drinks',100);  
insert into Menu values (200,'Food',100);    
insert into Menu values (300,'Desert',100); 
insert into Menu values (102,'Drinks', 102);
insert into Menu values (202,'Food', 102); 
insert into Menu values (302,'Desert',102);
insert into Menu values (104,'Drinks',104);
insert into Menu values (204,'Food',104);
insert into Menu values (304,'Desert',104);

insert into Menu values (106,'Drinks',106);
insert into Menu values (206,'Food',106);
insert into Menu values (306,'Desert',106);

insert into Menu values (108,'Drinks',108);
insert into Menu values (208,'Food',108);
insert into Menu values (308,'Desert',108);

insert into Menu values (110,'Drinks',110);
insert into Menu values (210,'Food',110);
insert into Menu values (310,'Desert',110);

insert into Menu values (112,'Drinks',112);
insert into Menu values (212,'Food',112);
insert into Menu values (312,'Desert',112);

insert into Menu values (114,'Drinks',114);
insert into Menu values (214,'Food',114);
insert into Menu values (314,'Desert',114);

insert into Menu values (116,'Drinks',116);
insert into Menu values (216,'Food',116);
insert into Menu values (316,'Desert',116);

insert into Menu values (118,'Drinks',118);
insert into Menu values (218,'Food',118);
insert into Menu values (318,'Desert',118);

----------------------------------------------------------INSERT INTO FOOD_ITEM------------------------------------------------------------------------------------------------

insert into Food_item values ('Chai Latte',200,100)
insert into Food_item values ('Spaghetti',200,204);
insert into Food_item values ('Mousse',200,308);
insert into Food_item values ('Penne',200,200);
insert into Food_item values ('Pudding',200,312);
insert into Food_item values ('Hot Chocolate',200,106);
insert into Food_item values ('Panini',200,218);		
insert into Food_item values ('Mocha',200,110);
insert into Food_item values ('Curry',200,214);
insert into Food_item values ('Pie',200,308)	
insert into Food_item values ('Noodles',200,216);
insert into Food_item values ('Cup Cake',200,300);
insert into Food_item values ('Whiskey',200,102);
insert into Food_item values ('Fries',200,214);
insert into Food_item values ('Waffles',200,316);
insert into Food_item values ('Espresso',200,112);
insert into Food_item values ('Pizza',200,210);
insert into Food_item values ('Burger',200,214);
insert into Food_item values ('Cheesecake',200,306);
insert into Food_item values ('Cookies',200,312);
insert into Food_item values ('Vodka',200,104);
insert into Food_item values ('Ice Cream',200,300);
insert into Food_item values ('Lemonade',200,102);
insert into Food_item values ('Salad',200,218);			
insert into Food_item values ('Tart',200,302);
insert into Food_item values ('Nachos',200,210);
insert into Food_item values ('Muffin',200,312);
insert into Food_item values ('Beer',200,104);
insert into Food_item values ('Brownie',200,314);
insert into Food_item values ('Tea',200,110);

----------------------------------------------------------INSERT INTO CUSTOMER------------------------------------------------------------------------------------------------

insert into Customer values ('Shelly','100');
insert into Customer values ('Sasha','100');
insert into Customer values ('Wilson','100');
insert into Customer values ('Martin','100');
insert into Customer values ('Tim','100');

insert into Customer values ('Shelly','102');
insert into Customer values ('Pete','102');
insert into Customer values ('Ferguson','102');
insert into Customer values ('Aly','102');
insert into Customer values ('Samantha','102');
insert into Customer values ('Alison','102');

insert into Customer values ('Nolan','104');
insert into Customer values ('Hashim','104');
insert into Customer values ('Sasha','104');
insert into Customer values ('Baker','104');
insert into Customer values ('Cain','104');
insert into Customer values ('Quail','104');

insert into Customer values ('Samson','106');
insert into Customer values ('Howard','106');
insert into Customer values ('Sheldon','106');
insert into Customer values ('Leonard','106');
insert into Customer values ('Lee','106');
insert into Customer values ('Quail','106');

insert into Customer values ('Raj','108');
insert into Customer values ('Berk','108');
insert into Customer values ('Barney','108');
insert into Customer values ('Ted','108');
insert into Customer values ('Robin','108');

insert into Customer values ('Joey','110');
insert into Customer values ('Chandler','110');
insert into Customer values ('Rachel','110');
insert into Customer values ('Monica','110');
insert into Customer values ('Ross','110');

insert into Customer values ('Phoebe','112');
insert into Customer values ('Penny','112');
insert into Customer values ('Amir','112');
insert into Customer values ('Charlie','112');
insert into Customer values ('Alan','112');

insert into Customer values ('Jake','114');
insert into Customer values ('John','114');
insert into Customer values ('Kim','114');
insert into Customer values ('Dwayne','114');
insert into Customer values ('Kylie','114');

insert into Customer values ('Darwin','116');
insert into Customer values ('Shane','116');
insert into Customer values ('Jess','116');
insert into Customer values ('Nick','116');
insert into Customer values ('Winston','116');

insert into Customer values ('Ernie','118');
insert into Customer values ('Schmidt','118');
insert into Customer values ('Cecelia','118');
insert into Customer values ('Sam','118');
insert into Customer values ('Peter','118');

-------------------------------------------------------INSERT INTO EMPLOYEE---------------------------------------------------------------------------------------------------

Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4100,'Mark','08/01/2018',null,'Manager','04/12/1989',100,2000,123456789);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4200,'Mike','07/01/2018',null,'Waiter','08/15/1988',100,500,785634901);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4300,'Joe','05/11/2019',null,'Chef','09/18/1980',100,1500,673489012);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4400,'Miller','07/07/2017','10/20/ 2018','Cashier','07/12/1990',100,1000,992384691);

Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4102,'Dave','09/07/2015',null,'Manager','08/03/1987',102,2000,602482956);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4202,'Shane','10/09/2010',null,'Waiter','07/30/1980',102,500,380163893);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4302,'Duke','08/05/2010','09/10/2019','Cashier','09/05/1990',102,1000,390126297);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4402,'Bob','07/01/2019',null,'Chef','09/04/2008',102,1500,290481945);

Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4104,'Walter','12/31/2008','09/05/2019','Manager','12/02/1967',104,2000,602379340);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4204,'Jessi','07/06/2000',null,'Waiter','01/21/1972',104,500,602378456);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4304,'Skinny','05/04/2017',null,'Chef','04/07/1962',104,1500,910462890);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4404,'Sal','03/30/2000','07/11/2019','Cashier','08/19/1967',104,1000,490126834);

Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4106,'Gustavo','12/09/2010','06/14/2019','Manager','06/21/1971',106,2000,902374189);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4206,'Micheal','09/04/2015','07/11/2019','Waiter','04/14/1972',106,500,190347923);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4306,'Aaron','07/20/2005',null,'Chef','11/03/1965',106,1500,802379346);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4406,'Bryan','07/20/2005',null,'Cashier','03/11/1962',106,1000,924601278);

Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4108,'Paul','11/30/2006',null,'Manager','09/25/1968',108,2000,345619034);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4208,'Skyler','02/19/2010',null,'Waiter','06/19/1979',108,500,669012452);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4308,'Anna','11/19/2003',null,'Chef','05/31/1968',108,1500,993255690);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4408,'Hank','06/11/2017',null,'Cashier','11/04/1969',108,1000,112673487);

Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4110,'Dean','07/22/2017','11/14/2019','Manager','08/24/1976',110,2000,448829336);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4210,'Norris','07/22/2017','03/07/2019','Waiter','10/20/1964',110,500,993260056);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4310,'Marrie','07/22/2017','03/07/2019','Chef','01/15/1980',110,1500,341794459);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4410,'Jon','07/22/2017',null,'Cashier','03/21/1969',110,1000,970053682);

Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4112,'Betsy','04/08/2014',null,'Manager','08/07/1972',112,2000,550244776);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4212,'Jonathan','04/08/2014',null,'Waiter','12/21/1980',112,500,689230056);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4312,'Bob','04/15/2016',null,'Chef','05/24/1965',112,1500,335882897);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4412,'Saul','02/20/2017','07/11/2019','Cashier','01/08/1983',112,1000,388544920);

Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4114,'Charles','07/31/2009',null,'Manager','08/01/1964',114,2000,664892114);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4214,'Jesse','07/31/2009','06/09/2019','Waiter','07/30/1970',114,500,903368854);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4314,'Todd','07/31/2009','07/08/2019','Chef','04/23/1985',114,1500,655388679);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4414,'Matt','07/31/2009','07/08/2019','Cashier','12/16/1980',114,1000,456332789);

Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4116,'Matthew','04/15/2016','06/08/2019','Manager','04/24/1981',116,2000,904566324);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4216,'David','03/03/2005','09/16/2019','Waiter','12/18/1965',116,500,769940032);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4316,'Jennifer','02/19/2010',null,'Chef','06/14/1990',116,1500,894556023);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4416,'Courtney','06/11/2017',null,'Cashier','02/04/1983',116,1000,904667134);

Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4118,'Krysten','12/08/2015','09/04/2019','Manager','10/29/1982',118,2000,590335626);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4218,'Jane','08/10/2018',null,'Waiter','02/22/1976',118,500,690224536);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4318,'Giancarlo','12/08/2015','08/09/2019','Chef','03/31/1966',118,1500,671894560);
Insert into Employee(Employee_ID, Employee_Name,Employee_Start_Date, Employee_End_Date, [Role], Birth_date, Restaurant_ID, EmployeeSalary, SSN)
Values(4418,'Lydia','08/16/2017',null,'Cashier','08/10/1980',118,1000,257225634);

-----------------------------------------------------------------------------COLUMN ENCRYPTION--------------------------------------------------------------------------------------------

CREATE MASTER KEY ENCRYPTION BY  
PASSWORD = 'Password-1'  
GO  

CREATE CERTIFICATE SelfSignedCertificate  
WITH SUBJECT = 'Protect Data';  
GO  

CREATE SYMMETRIC KEY SQLSymmetricKey  
WITH ALGORITHM = AES_128  
ENCRYPTION BY CERTIFICATE SelfSignedCertificate;  
GO 

ALTER TABLE Employee
ADD PROTECT_DATA varbinary(MAX )NULL 

OPEN SYMMETRIC KEY SQLSymmetricKey  
DECRYPTION BY CERTIFICATE SelfSignedCertificate;  

UPDATE Employee
SET PROTECT_DATA = EncryptByKey(Key_GUID('SQLSymmetricKey'), SSN);  
GO  
select * from Employee 

--CLOSE SYMMETRIC KEY SQLSymmetricKey;


--alter table Employee drop constraint [ssn_number];
--alter table Employee drop column SSN;

OPEN SYMMETRIC KEY SQLSymmetricKey  
DECRYPTION BY CERTIFICATE SelfSignedCertificate;

SELECT employee_id, PROTECT_DATA AS 'Encrypted social security Number',
CONVERT(varchar, DecryptByKey(PROTECT_DATA)) AS 'Decrypted social security Number'
from employee;

------------------------------------------------------INSERT INTO SHIFT----------------------------------------------------------------------------------------------------

insert into [Shift] values (10,'08:00:00','14:00:00');
insert into [Shift] values (11,'12:00:00','18:00:00');
insert into [Shift] values (12,'16:00:00','22:00:00');
insert into [Shift] values (13,'18:00:00','00:00:00');

------------------------------------------------------INSERT INTO EMPLOYEE_SHIFT----------------------------------------------------------------------------------------------------

insert into Employee_shift values(4100,11);
insert into Employee_shift values(4200,10);
insert into Employee_shift values(4300,12);
insert into Employee_shift values(4400,13);
insert into Employee_shift values(4400,11);

insert into Employee_shift values(4102,11);
insert into Employee_shift values(4202,12);
insert into Employee_shift values(4202,10);
insert into Employee_shift values(4302,10);
insert into Employee_shift values(4402,13);

insert into Employee_shift values(4104,13);
insert into Employee_shift values(4204,12);
insert into Employee_shift values(4304,10);
insert into Employee_shift values(4404,11);

insert into Employee_shift values(4106,12);
insert into Employee_shift values(4206,13);
insert into Employee_shift values(4306,10);
insert into Employee_shift values(4406,11);

insert into Employee_shift values(4108,11);
insert into Employee_shift values(4208,13);
insert into Employee_shift values(4308,10);
insert into Employee_shift values(4408,12);

insert into Employee_shift values(4110,10);
insert into Employee_shift values(4210,11);
insert into Employee_shift values(4310,12);
insert into Employee_shift values(4410,13);

insert into Employee_shift values(4112,11);
insert into Employee_shift values(4212,12);
insert into Employee_shift values(4312,10);
insert into Employee_shift values(4412,13);

insert into Employee_shift values(4114,13);
insert into Employee_shift values(4214,12);
insert into Employee_shift values(4314,11);
insert into Employee_shift values(4414,10);

insert into Employee_shift values(4116,12);
insert into Employee_shift values(4216,10);
insert into Employee_shift values(4316,13);
insert into Employee_shift values(4416,11);

insert into Employee_shift values(4118,10);
insert into Employee_shift values(4218,12);
insert into Employee_shift values(4318,11);
insert into Employee_shift values(4418,13);

-----------------------------------------------------INSERT INTO ORDERS-----------------------------------------------------------------------------------------------------

insert into Orders values (1,'10:00:00','10:30:00',1001,4200);
insert into Orders values (2,'10:15:00','10:40:13',1007,4200);

insert into Orders values (201,'10:00:00','10:30:20',1011,4302);
insert into Orders values (202,'11:00:00','11:30:00',1005,4302);
insert into Orders values (203,'15:45:00','16:55:11',1018,4102);

insert into Orders values (401,'11:10:00','11:28:00',1013,4304);
insert into Orders values (402,'11:30:00','12:00:00',1021,4304);

insert into Orders values (601,'14:00:00','15:30:00',1022,4406);
insert into Orders values (602,'15:45:00','16:55:00',1026,4406);

insert into Orders values (1001,'10:10:00','10:40:00',1018,4110);
insert into Orders values (1002,'12:15:00','12:55:00',1010,4210);

insert into Orders values (1201,'11:05:00','11:45:00',1029,4312);
insert into Orders values (1202,'11:40:00','12:15:00',1036,4312);
insert into Orders values (1203,'16:10:44','17:28:45',1023,4212);

insert into Orders values (1401,'13:30:00','14:00:00',1042,4314);
insert into Orders values (1402,'13:13:13','14:14:14',1045,4314);
insert into Orders values (1403,'17:45:17','18:34:37',1048,4214);
insert into Orders values (1404,'18:15:00','18:55:00',1028,4114);
insert into Orders values (1405,'22:45:00','23:55:00',1024,4114);

insert into Orders values (1801,'12:45:00','13:23:12',1003,4318);

----------------------------------------------------INSERT INTO FOOD_ORDER------------------------------------------------------------------------------------------------------

insert into Food_Order values (1,1);
insert into Food_Order values (1,2);
insert into Food_Order values (1,3);

insert into Food_Order values (2,4);
insert into Food_Order values (2,5);

insert into Food_Order values (201,6);
insert into Food_Order values (201,7);
insert into Food_Order values (201,8);
insert into Food_Order values (201,9);
insert into Food_Order values (201,10);

insert into Food_Order values (202,11);

insert into Food_Order values (203,12);
insert into Food_Order values (203,13);
insert into Food_Order values (203,13);

insert into Food_Order values (401,14);
insert into Food_Order values (401,15);
insert into Food_Order values (401,16);
insert into Food_Order values (401,17);

insert into Food_Order values (402,18);

insert into Food_Order values (601,19);
insert into Food_Order values (601,20);

insert into Food_Order values (602,21);

insert into Food_Order values (1001,21);
insert into Food_Order values (1001,22);
insert into Food_Order values (1001,23);

insert into Food_Order values (1002,24);
insert into Food_Order values (1002,25);
insert into Food_Order values (1002,26);

insert into Food_Order values (1201,27);

insert into Food_Order values (1202,28);

insert into Food_Order values (1203,29);

insert into Food_Order values (1401,30);
insert into Food_Order values (1401,1);
insert into Food_Order values (1401,2);
insert into Food_Order values (1401,3);
insert into Food_Order values (1401,4);
insert into Food_Order values (1401,5);
insert into Food_Order values (1401,6);

insert into Food_Order values (1402,7);
insert into Food_Order values (1402,8);
insert into Food_Order values (1402,9);

insert into Food_Order values (1403,10);
insert into Food_Order values (1403,11);

insert into Food_Order values (1404,12);

insert into Food_Order values (1405,13);
insert into Food_Order values (1405,14);
insert into Food_Order values (1405,15);

insert into Food_Order values (1801,16);
insert into Food_Order values (1801,17);

-----------------------------------------------------INSERT INTO INGREDIENTS-----------------------------------------------------------------------------------------------------

INSERT INTO Ingredients VALUES (350,'Onion', 3, '12/15/2019');
INSERT INTO Ingredients VALUES (352,'Potato', 4, '12/10/2019');
INSERT INTO Ingredients VALUES (354,'Cream', 5, '12/15/2019');
INSERT INTO Ingredients VALUES (356,'Garlic', 6, '12/25/2019');
INSERT INTO Ingredients VALUES (358,'Milk', 7, '11/10/2019');
INSERT INTO Ingredients VALUES (360,'Eggs', 3, '12/24/2019');
INSERT INTO Ingredients VALUES (362,'Tea leaves', 4, '01/31/2020');
INSERT INTO Ingredients VALUES (364,'Apple', 5, '12/10/2019');
INSERT INTO Ingredients VALUES (366,'Orange', 6, '12/15/2019');
INSERT INTO Ingredients VALUES (368,'Bread', 7, '11/30/2019');
INSERT INTO Ingredients VALUES (370,'Mushroom', 3, '12/26/2019');
INSERT INTO Ingredients VALUES (372,'Olives', 4, '02/24/2020');
INSERT INTO Ingredients VALUES (374,'Corn', 5, '01/15/2020');
INSERT INTO Ingredients VALUES (376,'Spices', 6, '08/31/2020');
INSERT INTO Ingredients VALUES (378,'Rice', 7, '07/05/2020');

------------------------------------------------------INSERT INTO FOOD_INGREDIENTS----------------------------------------------------------------------------------------------------

Insert into Food_Ingredient VALUES (358,1);
Insert into Food_Ingredient VALUES (362,1);
Insert into Food_Ingredient VALUES (376,1);

Insert into Food_Ingredient VALUES (350,2);
Insert into Food_Ingredient VALUES (356,2);
Insert into Food_Ingredient VALUES (374,2);
Insert into Food_Ingredient VALUES (378,2);

Insert into Food_Ingredient VALUES (358,3);
Insert into Food_Ingredient VALUES (354,3);
Insert into Food_Ingredient VALUES (360,3);

Insert into Food_Ingredient VALUES (350,4);
Insert into Food_Ingredient VALUES (356,4);

Insert into Food_Ingredient VALUES (358,5);
Insert into Food_Ingredient VALUES (354,5);
Insert into Food_Ingredient VALUES (360,5);

Insert into Food_Ingredient VALUES (358,6);

Insert into Food_Ingredient VALUES (368,7);
Insert into Food_Ingredient VALUES (374,7);

Insert into Food_Ingredient VALUES (358,8);

Insert into Food_Ingredient VALUES (376,9);
Insert into Food_Ingredient VALUES (350,9);
Insert into Food_Ingredient VALUES (356,9);

Insert into Food_Ingredient VALUES (358,10);
Insert into Food_Ingredient VALUES (360,10);
Insert into Food_Ingredient VALUES (364,10);

Insert into Food_Ingredient VALUES (350,11);
Insert into Food_Ingredient VALUES (356,11);

Insert into Food_Ingredient VALUES (358,12);
Insert into Food_Ingredient VALUES (360,12);

Insert into Food_Ingredient VALUES (374,13);

Insert into Food_Ingredient VALUES (352,14);

Insert into Food_Ingredient VALUES (358,15);
Insert into Food_Ingredient VALUES (360,15);

Insert into Food_Ingredient VALUES (358,16);

Insert into Food_Ingredient VALUES (368,17);
Insert into Food_Ingredient VALUES (370,17);
Insert into Food_Ingredient VALUES (372,17);
Insert into Food_Ingredient VALUES (374,17);

Insert into Food_Ingredient VALUES (368,18);
Insert into Food_Ingredient VALUES (352,18);

Insert into Food_Ingredient VALUES (358,19);
Insert into Food_Ingredient VALUES (360,19);

Insert into Food_Ingredient VALUES (358,20);

Insert into Food_Ingredient VALUES (352,21);

Insert into Food_Ingredient VALUES (358,22);
Insert into Food_Ingredient VALUES (354,22);

Insert into Food_Ingredient VALUES (362,23);

Insert into Food_Ingredient VALUES (354,24);
Insert into Food_Ingredient VALUES (374,24);

Insert into Food_Ingredient VALUES (358,25);
Insert into Food_Ingredient VALUES (360,25);

Insert into Food_Ingredient VALUES (374,26);

Insert into Food_Ingredient VALUES (358,27);
Insert into Food_Ingredient VALUES (360,27);

Insert into Food_Ingredient VALUES (378,28);

Insert into Food_Ingredient VALUES (358,29);
Insert into Food_Ingredient VALUES (360,29);

Insert into Food_Ingredient VALUES (362,30);

----------------------------------------------------------------------------------------------------------------------------------------------------------
