Create database QA_Resturant;
use QA_Resturant;
create table Customers(
Customer_ID INT Unique Not Null Auto_Increment,
Customer_Name Varchar(100) Not Null,
Email Varchar(100) Default "Not Provided",
Phone_Number Char(11) Not Null,
Address_1 VarChar(200) Not Null,
Address_2 VarChar(200) Default"",
Town_City VarChar(100) Default"",
Post_Code VarChar(10) Not Null,
Delivery_Info VarChar(300) Default "",
Subscribe_To_Newsletter Boolean Default 0,
Marketing_Preferences_Email Boolean Default 0,
Marketing_Preferences_Text Boolean Default 0,
Marketing_Preferences_Post Boolean Default 0,
Primary Key(Customer_ID));

Create Table Menu(
Item_ID INT Unique Not Null Auto_Increment,
Item_Name VarChar(200) Unique Not Null,
Item_Description VarChar(500) Not Null,
Allergens VarChar(200) Default "No Common Allergens, Please ask for specific allergens",
Price Decimal(6,2) Not Null,
Calories Int Not Null,
Availability Boolean Default 1,
Primary Key(Item_ID));

Insert into Customers ( Customer_Name, Email, Phone_Number, Address_1, Address_2, Town_City, Post_Code, Delivery_Info, Subscribe_To_Newsletter, Marketing_Preferences_Email, Marketing_Preferences_Text, Marketing_Preferences_Post) Values ("Nationwide House", "Nationwide@Nationwide.co.uk", "00800302011", "Nationwide House", "Pipers Way", "Swindon", "SN31TA", "Please leave with reception", True, True, False, False);
Insert into Customers ( Customer_Name, Phone_Number, Address_1, Town_City, Post_Code, Delivery_Info, Subscribe_To_Newsletter, Marketing_Preferences_Email, Marketing_Preferences_Text, Marketing_Preferences_Post) Values ("David Robberts", "01231678265", "Backstreet Cottage", "Cardiff", "CF112AD", "Please ring bell twice and do not LEAVE with No.12", False, True, False, True);
Insert into Customers ( Customer_Name, Phone_Number, Address_1, Town_City, Post_Code,Subscribe_To_Newsletter, Marketing_Preferences_Email, Marketing_Preferences_Text, Marketing_Preferences_Post) Values ("Shaun", "07983046712", "Ealing Studio", "London", "N8 1TL",0,0,0,0);
Insert into Customers ( Customer_Name, Email, Phone_Number, Address_1, Address_2, Town_City, Post_Code, Delivery_Info, Subscribe_To_Newsletter, Marketing_Preferences_Email, Marketing_Preferences_Text, Marketing_Preferences_Post) Values ("Danny Butterman", "Danny@EveryoneNTheirMums.co.uk", "00000000999", "Police Station", "Law Road", "Sandford", "BH20 7AX", "Do NOT leave with the Andies", True, True, True, True);
Insert into Customers ( Customer_Name, Email, Phone_Number, Address_1, Town_City, Post_Code, Delivery_Info, Subscribe_To_Newsletter, Marketing_Preferences_Email, Marketing_Preferences_Text, Marketing_Preferences_Post) Values ("Andrew Wainright", "AndyWainright@SandfordPD.co.Gov", "00000000999", "Sandford PS", "Sandford", "BH20 7AX", "Hurry Up I should be in the Pub", False, False, False, False);
 
 Insert into Menu ( Item_Name, Item_Description, Allergens, Price, Calories, Availability) Values ( "Cheese on Toast", "Cheese Between bread and then toasted under the grill", "Dairy, Gluten", 12.99, 450, True);
 Insert into Menu ( Item_Name, Item_Description, Allergens, Price, Calories, Availability) Values ( "Nut Roast", "May have forgotten that the rest was Vegan", "Nuts", 22.99, 622, True);
 Insert into Menu ( Item_Name, Item_Description, Allergens, Price, Calories, Availability) Values ( "Almost gone scone", "A Vegan twist on a clasic", "Soy", 13.95, 250, False);
 Insert into Menu ( Item_Name, Item_Description, Allergens, Price, Calories, Availability) Values ( "Toast", "Bread toasted under the grill", "Gluten", 13.99, 120, True);
 Insert into Menu ( Item_Name, Item_Description, Allergens, Price, Calories, Availability) Values ( "The Jake", "Four Whole fried almost chickens and a coke", "Gluten, Sugar", 45.99, 2150, True);

update Menu set Price = "45.99" where Item_ID = 5;
Update Customers Set Delivery_Info = "Hot Fuzz Ref" where Customer_ID = 6;

Create Table Orders(
Order_ID INT Unique Not Null Auto_Increment,
Order_Date datetime Not Null,
Cust_ID Int Not Null,
Total_Order Decimal (6,2),
Primary Key (Order_ID),
Foreign Key (Cust_ID) References Customers(Customer_ID));

Create Table Order_Items(
Order_Items_ID INT Unique Not Null Auto_Increment,
Ord_ID Int Not Null,
It_ID Int Not Null,
Total_Items Decimal (6,2),
Primary Key (Order_Items_ID),
Foreign Key (Ord_ID) References Orders(Order_ID),
Foreign Key (It_ID) References Menu(Item_ID));

Insert into Orders (Order_Date, Cust_ID,Total_Order) Values ("2022/09/21 12:00", 1, 10.99);
Insert into Orders (Order_Date, Cust_ID,Total_Order) Values ("2022/09/21 12:30", 3, 100.00),("2022/09/21 14:42", 5, 72.38);
Insert into Orders (Order_Date, Cust_ID,Total_Order) Values ("2022/09/21 15:30", 6, 106.90),("2022/09/21 15:32", 1, 88.28);

Insert Into Order_Items (Ord_ID, It_ID, Total_Items) Values (1, 3, 4);
Insert Into Order_Items (Ord_ID, It_ID, Total_Items) Values (2, 2, 4),(3,4,2),(4,5,1),(5,1,3);

Show Tables;
Describe Customers;
Describe Menu;
Describe Order_Items;
Describe Orders;
Select * from Customers;
Select * from Menu;
Select * From Orders;
Select * From Order_Items;

SELECT * FROM Menu ORDER BY Item_ID DESC LIMIT 4;
SELECT * FROM Menu ORDER BY Item_Name DESC LIMIT 3;