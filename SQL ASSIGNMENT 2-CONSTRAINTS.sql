create database sales;
use sales;
create table Orders (
Order_ID varchar(50) unique primary key,
Customer_Name char(20) not null,
Product_category char(20),
Ordered_Item char(50),
mobile_number int(15) not null);

-- ADDING NEW COLUMN
alter table Orders add Order_quantity int;

-- RENAME
alter table Orders rename to Sales_Orders;

-- INSERTING VALUES
insert into Sales_Orders (Order_ID ,Customer_Name,
Product_category, Ordered_item, mobile_number,
Order_quantity) values 
(123,'ram','electronics','tv', 667859766,1),
(132,'alex','clothing', 'shirt', 627846375,2),
(143,'bony','stationary','pen',986735461,5),
(176,'manu','electronics','laptop',679845672,3),
(145,'nelson','clothing','joggers',986756453,2),
(198,'ancy', 'stationary','book',657483978,5),
(190,'aloshy','electronics','mobile',658797979,2),
(156,'meena','stationary','pin',975647262,5),
(170,'renu','electronics','calculator',997643728,2),
(189,'philip','clothing','tshirt',998876655,5);
-- RETRIEVING COLUMNS

select customer_name, ordered_item from sales_orders;
-- DELETING TABLE

drop table sales_orders;