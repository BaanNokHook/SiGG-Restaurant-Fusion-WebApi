-----------------------------------------------------TEAM NAME: DATA CRUNCHERS------------------------------------------------------------------------------------------------------------

-------------------------------------------------------------CREATE QUERY--------------------------------------------------------------------------------------------------------------------


---------------------------------------------------------CREATE DATABASE----------------------------------------------------------------------------------------------------------------

CREATE DATABASE Data_Crunchers;    
use Data_Crunchers;

----------------------------------------------------------------CREATE TABLE RESTAURANT---------------------------------------------------------------------------------------------------
create table restaurant(  
restaurant_id bigint identity(100,2) not null, 
restaurant_name varchar(25),  
restaurant_location varchar(25),   
contact_number bigint,     
opening_time time(0) not null,  
closing_time time(0) not null,     
constraint restaurnat_pk primary key (restaurant_id),
);  ALTER



-----------------------------------------------------------------CREATE TABLE MENU--------------------------------------------------------------------------------------------------------
CREATE TABLE Menu(         
Menu_id int not null,  
Menu_type varchar(25) not null,   
CONSTRAINT Menu_Type_CHK CHECK     
      ( Menu_Type IN ('Drinks', 'Food', 'Desert') ),                   
restaurant_id bigint not null,   
constraint menu_pk primary key (Menu_id),    
constrint restaurant_fk foreign key(restaurant_id) references restaurant(restaurant_id)
);      


----------------------------------------------------------------CREATE TABLE FOOD_ITEM----------------------------------------------------------------------------------------------------
CREATE TABLE Food_time(   
Food_item_id bigint identity(1,1) not null,   
Food_Name varchar(25),      
CONSTRAINT Food_Name_CHK CHECK     
      (Food_Name IN ('Espresso', 'Tea', 'Orange Juice', 'Hot Chocolate', 'Chai Latte', 'Lemonade', 
	'Mocha', 'Beer', 'Vodka', 'Whiskey', 'Nachos', 'Spaghetti', 'Penne', 'Pizza', 'Panini', 'Curry', 
	'Noodles', 'Burger', 'Fries', 'Salad', 'Mousse', 'Pudding', 'Brownie', 'Pie', 'Cup Cake', 'Waffles', 
	'Muffin', 'Cookies', 'Cheesecake', 'Ice Cream', 'Tart')),
Food_Price int not null,
Menu_id int not null,  
constraint food_pk primary key (Food_item_id),   
constraint menu_fk foreign key (Menu_id) references Menu(Menu_id)
);  


----------------------------------------------------------------------------CREATE TABLE CUSTOMER----------------------------------------------------------------------------------------

create table Customer(
customer_id bigint identity(1001,1) not null,
customer_name varchar(25),
Restaurant_id bigint  not null,
constraint cust_pk primary key (customer_id),
constraint restaurant_fk1 foreign key(Restaurant_id) references Restaurant(Restaurant_id)
);

----------------------------------------------------------------------------CREATE FUNCTION YEARLYINCOME---------------------------------------------------------------------------------

CREATE FUNCTION dbo.YearlyIncome(@MonthlyIncome INT)
RETURNS INT
AS
BEGIN 
   RETURN 15.30* @MonthlyIncome;
END;

---------------------------------------------------------------------------CREATE TABLE EMPLOYEE-----------------------------------------------------------------------------------------

CREATE TABLE Employee(
Employee_ID INT not null,
Employee_Name VARCHAR(25),
Employee_Start_Date DATE,
Employee_End_Date DATE,
Role VARCHAR(25),
CONSTRAINT Role_CHK CHECK
	(Role IN ('Waiter', 'Manager', 'Chef', 'Cashier')),
Birth_Date DATE,
Restaurant_ID bigint  not null,
EmployeeSalary INT,
YearlyIncome AS dbo.YearlyIncome(EmployeeSalary),
SSN varchar(80),
CONSTRAINT Employee_pk primary key (Employee_ID),
CONSTRAINT Employee_fk1 foreign key(Restaurant_ID) references Restaurant(Restaurant_id),
CONSTRAINT ssn_number UNIQUE (SSN)
);



---------------------------------------------------------------------------CREATE FUNCTION SHIFT_NAME-------------------------------------------------------------------------------------

create function dbo.shift_name(
@start_time TIME
)
returns varchar(100)
as
begin
 declare @shift_name varchar(50);
select @shift_name = case 
 when @start_time = '08:00:00' then 'Morning'
  when @start_time = '12:00:00' then 'Afternoon'
    when @start_time = '16:00:00' then 'Evening'
	  when @start_time = '18:00:00' then 'Night'
	end
 return @shift_name
 end;

 ------------------------------------------------------------------------CREATE TABLE SHIFT---------------------------------------------------------------------------------------------

CREATE TABLE [Shift](
Shift_ID INT not null,
[Start_Time] TIME(0) not null,
[End_Time] Time(0) not null,
[shift_Name]  AS dbo.shift_name([Start_Time]),
CONSTRAINT Shift_PK PRIMARY KEY (Shift_ID)
);

------------------------------------------------------------------------CREATE TABLE EMPLOYEE_SHIFT-------------------------------------------------------------------------------------

CREATE TABLE Employee_shift(
Employee_ID INT not null,
Shift_ID INT not null
CONSTRAINT emp_Shift_fk1 FOREIGN KEY (Employee_ID) REFERENCES Employee (Employee_ID),
CONSTRAINT emp_Shift_fk2 FOREIGN KEY (Shift_ID) REFERENCES [Shift] (Shift_ID)
);

-----------------------------------------------------------------------CREATE TABLE ORDERS----------------------------------------------------------------------------------------------

CREATE TABLE Orders(
Order_ID INT not null,
Start_Time TIME(0),
End_Time TIME (0),
--Bill_Amount DECIMAL(6,2),
Customer_ID bigINT not null,
Employee_ID INT not null,
CONSTRAINT Orders_PK PRIMARY KEY (Order_ID),
CONSTRAINT Orders_fk1 FOREIGN KEY (Customer_ID) REFERENCES Customer (Customer_ID),
CONSTRAINT Orders_fk2 FOREIGN KEY (Employee_ID) REFERENCES Employee (Employee_ID)
);

-----------------------------------------------------------------------CREATE TABLE FOOD_ORDER------------------------------------------------------------------------------------------

CREATE TABLE Food_Order(
Order_ID INT not null,
Food_Item_ID bigint  not null,
CONSTRAINT Food_Order_fk1 FOREIGN KEY (Order_ID) REFERENCES Orders (Order_ID),
CONSTRAINT Food_Order_fk2 FOREIGN KEY (Food_Item_ID) REFERENCES Food_Item (Food_Item_ID)
);

----------------------------------------------------------------------CREATE TABLE INGREDIENTS------------------------------------------------------------------------------------------

CREATE TABLE Ingredients(
Ingredient_ID INT  not null,
Ingredient_Name VARCHAR(25),
CONSTRAINT Ingredient_Name_CHK CHECK
	(Ingredient_Name IN ('Onion', 'Potato', 'Cream', 'Beer', 'Whiskey', 'Garlic', 'Eggs', 'Corn Flour',
	'Milk', 'Coffee', 'Pasta', 'Chocolate', 'Bell Pepper','Bread', 'Mushroom', 'Olives', 'Corn', 'Spices',
	'Tea leaves', 'Apple', 'Banana', 'Rice', 'Orange')),
Quantity INT,
[Expiry_Date] DATE,
CONSTRAINT Ingredients_PK PRIMARY KEY (Ingredient_ID)
);

---------------------------------------------------------------------CREATE TABLE FOOD_INGREDIENTS--------------------------------------------------------------------------------------

CREATE TABLE Food_Ingredient(
Ingredient_ID INT not null,
Food_Item_ID bigint  not null,
CONSTRAINT Food_Ingredient_fk1 FOREIGN KEY (Ingredient_ID) REFERENCES Ingredients (Ingredient_ID),
CONSTRAINT Food_Ingredient_fk2 FOREIGN KEY (Food_Item_ID) REFERENCES Food_Item (Food_Item_ID)
);

--------------------------------------------------------------------CREATE PROCECURE 1. SALARYHIKE--------------------------------------------------------------------------------------

CREATE PROCEDURE salaryHike @location NVARCHAR(50),
@FirstResult NVARCHAR(MAX) OUT
AS
  BEGIN
 
update Employee
	set EmployeeSalary = EmployeeSalary + 50
	where Employee.restaurant_id = (select Restaurant_ID from (select top 1 r.restaurant_id,r.restaurant_location,sum(food_price)as revenue from restaurant r 
		inner join Customer c on r.restaurant_id = c.Restaurant_id
		inner join Orders o on c.customer_id = o.Customer_ID inner join food_order fo on fo.order_id = o.Order_ID
		inner join food_item i on fo.food_item_id = i.food_item_id
		where r.restaurant_location = @location
		group by r.restaurant_id,r.restaurant_location
		order by revenue desc) as unique_table);

	SELECT @FirstResult =
	(
      SELECT e.Restaurant_ID,e.Employee_Name,e.Employee_ID,e.EmployeeSalary
        FROM Employee e where e.restaurant_id = (select Restaurant_ID from (select top 1 r.restaurant_id,r.restaurant_location,sum(food_price)as revenue from restaurant r 
		inner join Customer c on r.restaurant_id = c.Restaurant_id
		inner join Orders o on c.customer_id = o.Customer_ID inner join food_order fo on fo.order_id = o.Order_ID
		inner join food_item i on fo.food_item_id = i.food_item_id
			where r.restaurant_location = @location
			group by r.restaurant_id,r.restaurant_location
			order by revenue desc) as unique_table)
			FOR JSON AUTO
	);
	END;
	

	
DECLARE @employeelist NVARCHAR(MAX);
EXEC salaryHike 'Miami', @employeelist OUTPUT;
SELECT * INTO emp1 FROM OpenJson(@employeelist)
WITH (Restaurant_id int '$.Restaurant_ID', [Name] NVARCHAR(50) '$.Employee_Name',
Employee_Id int '$.Employee_ID', Employee_Salary int '$.EmployeeSalary');
select * from emp1;


---------------------------------------------------------------------CREATE PROCEDURE 2. REQUIRE_QUANTITY-------------------------------------------------------------------------------

CREATE PROCEDURE require_quantity(
@ingredient_name varchar(25),
@require INT OUTPUT)
AS
BEGIN
	select @require = ( i.Quantity- count(f.Ingredient_ID)) from Food_Ingredient f inner join Ingredients i on
	i.Ingredient_ID = f.Ingredient_ID
	where i.Ingredient_Name = @ingredient_name
	group by f.Ingredient_ID,i.Quantity

	IF (@require<1)
	BEGIN
	UPDATE Ingredients set Quantity = (@require)+20
	where Ingredients.Ingredient_Name = @ingredient_name
	END

	ELSE
	BEGIN
    UPDATE Ingredients set Quantity = @require
	where Ingredients.Ingredient_Name = @ingredient_name
	END
	select @require = i.Quantity from Ingredients i where i.Ingredient_Name = @ingredient_name;
END;

DECLARE @count INT
EXEC require_quantity
@ingredient_name = 'milk',
@require = @count OUTPUT;
SELECT @count AS 'quantity after restocking';

------------------------------------------------------------------CREATE PROCEDURE 3. GETWORKINGEMPLOYEES----------------------------------------------------------------------------------------

CREATE PROCEDURE GetWorkingEmployees
(
@startDate DATE,
@endDate DATE,
@employee_count INT OUTPUT
)
AS
BEGIN

	SELECT 
		restaurant.restaurant_id, restaurant.restaurant_name, Employee.Employee_ID, Employee.Employee_Name,
		Employee.Employee_Start_Date, Employee.Employee_End_Date
	FROM employee 
	INNER JOIN restaurant ON employee.restaurant_ID = restaurant.restaurant_ID

	WHERE employee.Employee_Start_Date >= @startDate AND (employee.Employee_End_Date >= @endDate OR Employee.Employee_End_Date is null)
	ORDER BY restaurant_id;
	select @employee_count  = @@ROWCOUNT;
END;

DECLARE @count INT
EXEC GetWorkingEmployees
@startDate = '01/01/2017', @endDate = null,
@employee_Count = @count OUTPUT;
SELECT @count AS 'Active Employee';

--------------------------------------------------------------CREATE PROCEDURE 4. RETURNFOODORDERED--------------------------------------------------------------------------------------------

CREATE PROCEDURE returnFoodOrdered
(
@customer INT,
@restaurant INT,
@Food_Item_Count INT OUTPUT
)
AS
BEGIN

	SELECT
		Customer.Restaurant_id, Customer.customer_id, Customer.customer_name,
		food_order.order_ID, food_item.food_item_ID, food_item.food_name
		from Customer
		INNER JOIN Orders ON orders.Customer_ID = Customer.customer_id
		Inner join food_order ON food_order.order_ID = orders.order_ID
		INNER JOIN Food_item ON food_item.food_item_ID = food_order.food_item_ID

		WHERE customer.customer_id = @customer AND Customer.restaurant_id=@restaurant
		ORDER BY food_item_ID;
		select @Food_Item_Count = @@ROWCOUNT;
		END;

DECLARE @count INT
EXEC returnFoodOrdered
@customer = 1022, @restaurant = 108,
@Food_Item_Count = @count OUTPUT;
SELECT @count AS 'Total Number of food items ordered';

-------------------------------------------------------------CREATE TABLE EMPLOYEEAUDIT AND TRIGGER 1. EMPLOYEECHANGES---------------------------------------------------------------------------------------------

CREATE TABLE [dbo].[employeeAudit](
employeeAuditID INT PRIMARY KEY IDENTITY (1,1),
Employee_Name [varchar](25) NOT NULL,
Employee_Start_Date[varchar](25)not null,
Employee_End_Date[varchar](25)null,
[Role] VARCHAR(25)null,
Birth_Date VARCHAR(25)null,
Restaurant_ID INT not null,
salary INT,
yearly_income INT,
SSN VARCHAR(80),
[Action] VARCHAR(25),
ActionDate DATETIME
);
GO
	CREATE TRIGGER employeeChanges ON employee
	AFTER INSERT
	AS
	BEGIN
	INSERT INTO employeeAudit(Employee_Name, Employee_Start_Date, Employee_End_Date, [Role],Birth_Date,Restaurant_ID,salary,yearly_income,SSN,[action], actiondate)
	SELECT e.employee_name, e.employee_start_date, e.employee_end_date, e.[role], e.birth_date, e.restaurant_ID,e.EmployeeSalary,e.YearlyIncome,e.SSN,'I', getdate()
	FROM inserted e;
	END;

---------------------------------------------------------------------CREATE TRIGGER InsertSSN---------------------------------------------------------------------------------------------------------------

CREATE TRIGGER InsertSSN on dbo.employee
FOR INSERT
AS
BEGIN

  if exists(SELECT * FROM inserted WHERE LEN(SSN)<> 9)
  BEGIN
  Raiserror('Invalid length of SSN', 16,1);
  rollback;
  END;
  end
     
	 drop trigger insertSSN
	 insert into Employee values (1234,'abc','11/20/2019', null, 'Manager', '01/01/1985',100,2000,999999999,EncryptByKey( Key_GUID('SQLSymmetricKey'),
	 CONVERT(varchar,'999999999')));
	 delete from Employee where Employee_ID =1234


------------------------------------------------------------CREATE TABLE UPDATEFOODITEM AND TRIGGER 2. FOODITEMCHANGES----------------------------------------------------------------------------------------------

CREATE TABLE [dbo].[updateFoodItem]
(
foodPriceAuditID int primary key identity(1,1),
Food_Item_ID char(4) not null,
Food_Name varchar(25) not null,
Food_Price varchar(25) null,
[Action] char (1),
ActionDate datetime
);

CREATE TRIGGER foodItemChanges ON dbo.food_Item
FOR UPDATE
AS
BEGIN
	
	INSERT INTO [dbo].[updateFoodItem] (Food_Item_ID, Food_Name, Food_Price,
	[action], actiondate)
	SELECT d.Food_Item_ID, d.Food_Name, d.Food_Price, 'U', GETDATE()
	FROM deleted d;
END;

-----------------------------------------------------------CREATE VIEW 1. NUMBER_EMPLOYEE-----------------------------------------------------------------------------------------------

create view number_employee as
select s.shift_Name,count(e.Employee_ID) as total_employee
from employee e join Employee_shift es on e.Employee_ID = es.Employee_ID join [Shift] s on es.Shift_ID = s.Shift_ID
group by(s.shift_Name);

-----------------------------------------------------------CREATE VIEW 2. MOST_POPULAR_RESTAURANT-----------------------------------------------------------------------------------------------

CREATE VIEW most_popular_restaurant AS
select top 100
r.restaurant_id as Most_Popular_Restaurant ,count(customer_id) as total_customer from restaurant r 
join Customer c on r.restaurant_id = c.Restaurant_id
group by (r.restaurant_id)
order by total_customer desc,Most_Popular_Restaurant asc;
select * from most_popular_restaurant;

----------------------------------------------------------CREATE VIEW 2. NUMBER_RESTAURANT------------------------------------------------------------------------------------------------

create view number_restaurant as
select r.restaurant_location,count(r.restaurant_id) as restaurant from restaurant r
group by(r.restaurant_location);

----------------------------------------------------------CREATE VIEW 3. TOTAL_REVENUE------------------------------------------------------------------------------------------------

create view total_revenue as
select sum(food_price) as total_revenue from restaurant r inner join Customer c on r.restaurant_id = c.Restaurant_id
inner join Orders o on c.customer_id = o.Customer_ID inner join food_order fo on fo.order_id = o.Order_ID
inner join food_item i on fo.food_item_id = i.food_item_id
group by r.restaurant_location
having r.restaurant_location = 'boston';

----------------------------------------------------------CREATE FUNCTION AGEOFEMPLOYEES------------------------------------------------------------------------------------------------

CREATE FUNCTION ageOfEmployees
(
@employeeID INT
)

RETURNS varchar(25)
AS
BEGIN
DECLARE @age int
SELECT @age =
	DATEDIFF(year, Employee.Birth_Date, getdate())
	from Employee
	WHERE Employee.Employee_ID = @employeeID
	
RETURN @age;
END;
SELECT dbo.ageOfEmployees(4100) as Age_Of_Employee;

--------------------------------------------------------CREATE FUNCTION EXPIREDINGREDIENTS--------------------------------------------------------------------------------------------------

CREATE FUNCTION expiredIngredients
(
@ingredientID INT
)

RETURNS varchar(25)
AS
BEGIN
DECLARE @diff VARCHAR(25)
SELECT @diff = 
CASE 
	WHEN ingredients.Expiry_Date < getdate() then 'Expired'
	WHEN ingredients.Expiry_Date >= getdate() then 'Fresh' end
	--DATEDIFF(year, Employee.Birth_Date, getdate())
	from ingredients
	WHERE ingredients.ingredient_ID = @ingredientID
	
RETURN @diff;
END;
SELECT dbo.expiredIngredients(350) as Condition_Of_Ingredients;

-----------------------------------------------------CREATE FUNCTION BILLAMOUNT-----------------------------------------------------------------------------------------------------

CREATE FUNCTION billAmount
(
@customerID INT
)

RETURNS VARCHAR(25)
AS
BEGIN
DECLARE @sum INT
SELECT @sum = 
 sum(fi.food_price) from Customer c INNER JOIN  ORDERS o ON c.customer_id = o.customer_ID INNER JOIN FOOD_order fo ON o.order_ID = fo.Order_ID INNER JOIN Food_Item fi ON fo.food_item_ID = fi.food_Item_ID
	WHERE c.Customer_ID = @customerID
	
RETURN @sum;
END;
SELECT dbo.billAmount(1011) as Bill_Amount_for_the_Order;

-----------------------------------------------------CREATE NON-CLUSTERED INDEX-----------------------------------------------------------------------------------------------------

CREATE nonclustered INDEX fooditem_index
ON Food_item(Food_Name);

CREATE nonclustered INDEX employee_index_1
ON Employee(Employee_Name, Employee_Start_Date);

CREATE nonclustered INDEX employee_index_2
ON Employee(Employee_Name, Employee_Start_Date, Employee_End_Date);

------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------