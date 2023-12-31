
select *
from mobile;

-- check mobile features and price list
select Phone_name, Price 
from mobile;

-- find out the top 5 most expensive phones
select *
from mobile
Order by Price desc
Limit 5;

-- find out the top 5 cheapest phones

select * 
from mobile 
order by Price asc
limit 5;

-- top 5 samsung phones with most expensive price and features

select *
from mobile
where Brands = "Samsung"
order by price DESC
Limit 5;

-- List of top 5 only android phones with the highest price

select * from mobile
where Operating_System_Type = "Android"
order by price desc
limit 5;

-- androind phone with top lower price

select * from mobile
where Operating_System_Type = "Android"
order by price asc
limit 5;

-- ios phone with top 5 highest price

select * from mobile
where Operating_System_Type = "iOS"
order by price desc
limit 5;

-- ios phone with top 5 lowest price

select * from mobile
where Operating_System_Type = "iOS"
order by price asc
limit 5;

-- top 5 expensive phones that supports 5g

select * from mobile
where 5G_Availability = "Yes"
order by price desc
limit 5;

-- total price of the phones by brand name

select Brands, sum(Price) as Total_Price
from mobile
GROUP by Brands;



