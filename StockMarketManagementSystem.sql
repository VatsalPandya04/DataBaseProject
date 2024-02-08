CREATE TABLE stockHolder (
    stockholderid INT PRIMARY KEY,
    firstname VARCHAR(255) NOT NULL,
    lastname VARCHAR(255) NOT NULL,
    dateofbirth DATE,
    email VARCHAR(255),
    phone VARCHAR(15),
    address TEXT
);

CREATE TABLE stock (
    stockid INT PRIMARY KEY,
    stocksymbol VARCHAR(10) NOT NULL,
    companyname VARCHAR(255) NOT NULL,
    sector VARCHAR(50),
    marketprice DECIMAL(10, 2),
    volume INT,
    dividendyield DECIMAL(5, 2),
    peratio DECIMAL(5, 2)
);

CREATE TABLE market (
    marketid INT PRIMARY KEY,
    marketname VARCHAR(255) NOT NULL,
    location VARCHAR(255) NOT NULL,
    openingtime TIME,
    closingtime TIME,
    tradingdays VARCHAR(50)
);

CREATE TABLE marketorder (
    orderid INT PRIMARY KEY,
    stockid INT,
    stockholderid INT,
    marketid INT,
    ordertype VARCHAR,
    orderdate DATE,
    quantity INT,
    price DECIMAL(10, 2)
);

INSERT INTO stock (stockid, stocksymbol, companyname, sector, marketprice, volume, dividendyield, peratio)
VALUES
    (1, 'TCS', 'Tata Consultancy Services', 'Information Technology', 3500.50, 1000000, 1.50, 25.30),
    (2, 'HDFC', 'Housing Development Finance Corporation', 'Finance', 2600.75, 500000, 2.20, 20.45),
    (3, 'ICICI', 'ICICI Bank', 'Finance', 700.25, 2000000, 1.75, 15.90),
    (4, 'INFY', 'Infosys Limited', 'Information Technology', 1800.00, 800000, 1.40, 22.80),
    (5, 'RELI', 'Reliance Industries Limited', 'Oil & Gas', 2400.50, 1500000, 2.60, 30.75),
    (6, 'ONGC', 'Oil and Natural Gas Corporation', 'Oil & Gas', 120.75, 3000000, 3.80, 12.60),
    (7, 'SBIN', 'State Bank of India', 'Finance', 450.20, 2500000, 2.00, 11.40),
    (8, 'WIPRO', 'Wipro Limited', 'Information Technology', 600.25, 1200000, 1.25, 18.90),
    (9, 'ITC', 'ITC Limited', 'Consumer Goods', 220.30, 1800000, 2.10, 16.75),
    (10, 'HINDU', 'Hindustan Unilever Limited', 'Consumer Goods', 2500.80, 700000, 1.80, 28.50),
    (11, 'MARUTI', 'Maruti Suzuki India Limited', 'Automobile', 8500.25, 600000, 2.60, 20.15),
    (12, 'HCLTECH', 'HCL Technologies Limited', 'Information Technology', 1200.75, 900000, 1.90, 26.80),
    (13, 'ADANI', 'Adani Ports and Special Economic Zone', 'Logistics', 750.50, 1200000, 1.30, 15.40),
    (14, 'LT', 'Larsen & Toubro Limited', 'Infrastructure', 1600.00, 700000, 2.00, 19.60),
    (15, 'SUNPHARMA', 'Sun Pharmaceutical Industries Limited', 'Healthcare', 450.80, 800000, 1.80, 14.25),
    (16, 'HDFCBANK', 'HDFC Bank Limited', 'Finance', 1700.25, 3000000, 2.20, 22.90),
    (17, 'COALINDIA', 'Coal India Limited', 'Mining', 250.75, 1500000, 4.50, 9.75),
    (18, 'TECHM', 'Tech Mahindra Limited', 'Information Technology', 1000.20, 1000000, 1.60, 19.80),
    (19, 'BRITANNIA', 'Britannia Industries Limited', 'Consumer Goods', 3800.75, 400000, 1.10, 32.40),
    (20, 'TATASTEEL', 'Tata Steel Limited', 'Metals & Mining', 1200.25, 1800000, 2.80, 15.70),
    (21, 'AXISBANK', 'Axis Bank Limited', 'Finance', 750.40, 2000000, 1.90, 16.80),
    (22, 'ONGC', 'Oil and Natural Gas Corporation', 'Oil & Gas', 125.35, 4000000, 3.40, 11.75),
    (23, 'INFY', 'Infosys Limited', 'Information Technology', 1750.65, 1000000, 1.20, 23.60),
    (24, 'TATAPOWER', 'Tata Power Company Limited', 'Utilities', 110.55, 1500000, 2.50, 12.45),
    (25, 'HDFCLIFE', 'HDFC Life Insurance Company Limited', 'Insurance', 650.80, 800000, 1.60, 29.40),
    (26, 'CIPLA', 'Cipla Limited', 'Pharmaceuticals', 900.25, 700000, 2.00, 18.90),
    (27, 'WIPRO', 'Wipro Limited', 'Information Technology', 620.30, 1200000, 1.90, 17.75),
    (28, 'RELIANCE', 'Reliance Industries Limited', 'Oil & Gas', 2500.75, 2000000, 2.80, 32.15),
    (29, 'ICICIBANK', 'ICICI Bank Limited', 'Finance', 600.50, 3000000, 1.70, 15.60),
    (30, 'HCLTECH', 'HCL Technologies Limited', 'Information Technology', 1205.40, 900000, 1.80, 26.75);

INSERT INTO market (marketid, marketname, location, openingtime, closingtime, tradingdays)
VALUES
    (1, 'Bombay Stock Exchange (BSE)', 'Mumbai', '09:00:00', '15:30:00', 'Monday, Tuesday, Wednesday, Thursday, Friday'),
    (2, 'National Stock Exchange (NSE)', 'Mumbai', '09:00:00', '15:30:00', 'Monday, Tuesday, Wednesday, Thursday, Friday'),
    (3, 'Calcutta Stock Exchange (CSE)', 'Kolkata', '09:30:00', '15:30:00', 'Monday, Tuesday, Wednesday, Thursday, Friday'),
    (4, 'Madras Stock Exchange (MSE)', 'Chennai', '09:15:00', '15:30:00', 'Monday, Tuesday, Wednesday, Thursday, Friday'),
    (5, 'Ahmedabad Stock Exchange (ASE)', 'Ahmedabad', '09:30:00', '15:30:00', 'Monday, Tuesday, Wednesday, Thursday, Friday'),
    (6, 'Delhi Stock Exchange (DSE)', 'Delhi', '09:15:00', '15:30:00', 'Monday, Tuesday, Wednesday, Thursday, Friday'),
    (7, 'Pune Stock Exchange (PSE)', 'Pune', '09:30:00', '15:30:00', 'Monday, Tuesday, Wednesday, Thursday, Friday'),
    (8, 'Bangalore Stock Exchange (BSE)', 'Bangalore', '09:00:00', '15:30:00', 'Monday, Tuesday, Wednesday, Thursday, Friday'),
    (9, 'Hyderabad Stock Exchange (HSE)', 'Hyderabad', '09:15:00', '15:30:00', 'Monday, Tuesday, Wednesday, Thursday, Friday'),
    (10, 'Coimbatore Stock Exchange (CoSE)', 'Coimbatore', '09:30:00', '15:30:00', 'Monday, Tuesday, Wednesday, Thursday, Friday');

INSERT INTO stockHolder (stockholderid, firstname, lastname, dateofbirth, email, phone, address)
VALUES
    (1, 'Rajesh', 'Sharma', '1990-05-15', 'rajesh.sharma@example.com', '9876543210', '123, Main Street, Delhi'),
    (2, 'Priya', 'Patel', '1985-08-22', 'priya.patel@example.com', '9876543211', '456, Park Avenue, Mumbai'),
    (3, 'Amit', 'Singh', '1982-03-10', 'amit.singh@example.com', '9876543212', '789, Central Road, Kolkata'),
    (4, 'Neeta', 'Desai', '1995-12-03', 'neeta.desai@example.com', '9876543213', '101, Gandhi Nagar, Chennai'),
    (5, 'Rahul', 'Gupta', '1988-07-19', 'rahul.gupta@example.com', '9876543214', '234, MG Road, Bangalore'),
    (6, 'Meera', 'Verma', '1992-09-25', 'meera.verma@example.com', '9876543215', '567, Lake View, Hyderabad'),
    (7, 'Nitin', 'Rao', '1980-02-18', 'nitin.rao@example.com', '9876543216', '890, Hilltop Avenue, Pune'),
    (8, 'Kavita', 'Menon', '1993-06-30', 'kavita.menon@example.com', '9876543217', '321, Paradise Road, Ahmedabad'),
    (9, 'Anil', 'Nair', '1986-11-12', 'anil.nair@example.com', '9876543218', '456, River Side, Jaipur'),
    (10, 'Sunita', 'Thakur', '1998-04-08', 'sunita.thakur@example.com', '9876543219', '789, Orchard Lane, Lucknow'),
    (11, 'Rajiv', 'Kumar', '1991-09-28', 'rajiv.kumar@example.com', '9876543220', '111, Riverside Road, Delhi'),
    (12, 'Sneha', 'Reddy', '1984-12-14', 'sneha.reddy@example.com', '9876543221', '222, Green Park, Hyderabad'),
    (13, 'Vikram', 'Chopra', '1994-03-02', 'vikram.chopra@example.com', '9876543222', '333, Silver Street, Mumbai'),
    (14, 'Kavita', 'Joshi', '1989-06-17', 'kavita.joshi@example.com', '9876543223', '444, Diamond Avenue, Bangalore'),
    (15, 'Deepak', 'Mehra', '1997-02-09', 'deepak.mehra@example.com', '9876543224', '555, Crystal Lane, Chennai');

INSERT INTO marketorder (orderid,stockid, stockholderid, marketid, ordertype, orderdate, quantity, price)
VALUES
    (1,1, 1, 1, 'Buy', '2023-10-03', 100, 3500.00),
    (2,5, 2, 2, 'Sell', '2023-10-04', 50, 2600.50),
    (3,10, 3, 3, 'Buy', '2023-10-05', 75, 700.75),
    (4,15, 4, 4, 'Sell', '2023-10-06', 60, 1800.25),
    (5,20, 5, 5, 'Buy', '2023-10-07', 90, 2400.50),
    (6,25, 6, 6, 'Sell', '2023-10-08', 30, 120.75),
    (7,30, 7, 7, 'Buy', '2023-10-09', 120, 450.20),
    (8,4, 8, 8, 'Sell', '2023-10-10', 40, 600.25),
    (9,9, 9, 9, 'Buy', '2023-10-11', 55, 220.30),
    (10,14, 10, 10, 'Sell', '2023-10-12', 70, 2500.80),
    (11, 11, 11, 1, 'Buy', '2023-10-13', 85, 8500.25),
    (12, 12, 12, 2, 'Sell', '2023-10-14', 70, 1200.75),
    (13, 13, 13, 3, 'Buy', '2023-10-15', 110, 750.50),
    (14, 14, 14, 4, 'Sell', '2023-10-16', 65, 1600.00),
    (15, 15, 15, 5, 'Buy', '2023-10-17', 40, 450.80),
    (16, 16, 1, 6, 'Sell', '2023-10-18', 95, 1700.25),
    (17, 17, 2, 7, 'Buy', '2023-10-19', 75, 250.75),
    (18, 18, 3, 8, 'Sell', '2023-10-20', 50, 1000.20),
    (19, 19, 4, 9, 'Buy', '2023-10-21', 60, 3800.75),
    (20, 20, 5, 10, 'Sell', '2023-10-22', 80, 1200.25),
    (21, 21, 6, 1, 'Buy', '2023-10-23', 70, 750.40),
    (22, 22, 7, 2, 'Sell', '2023-10-24', 120, 125.35),
    (23, 23, 8, 3, 'Buy', '2023-10-25', 90, 1750.65),
    (24, 24, 9, 4, 'Sell', '2023-10-26', 40, 110.55),
    (25, 25, 10, 5, 'Buy', '2023-10-27', 85, 650.80),
    (26, 26, 11, 6, 'Sell', '2023-10-28', 60, 900.25),
    (27, 27, 12, 7, 'Buy', '2023-10-29', 50, 620.30),
    (28, 28, 13, 8, 'Sell', '2023-10-30', 70, 2500.75),
    (29, 29, 14, 9, 'Buy', '2023-10-31', 75, 600.50),
    (30, 30, 15, 10, 'Sell', '2023-11-01', 55, 1205.40),
    (31, 1, 1, 1, 'Buy', '2023-11-02', 65, 3500.00),
    (32, 2, 2, 2, 'Sell', '2023-11-03', 80, 2600.50),
    (33, 3, 3, 3, 'Buy', '2023-11-04', 70, 700.75),
    (34, 4, 4, 4, 'Sell', '2023-11-05', 45, 1800.25),
    (35, 5, 5, 5, 'Buy', '2023-11-06', 55, 2400.50),
    (36, 6, 6, 6, 'Sell', '2023-11-07', 90, 120.75),
    (37, 7, 7, 7, 'Buy', '2023-11-08', 40, 450.20),
    (38, 8, 8, 8, 'Sell', '2023-11-09', 65, 600.25),
    (39, 9, 9, 9, 'Buy', '2023-11-10', 75, 220.30),
    (40, 10, 10, 10, 'Sell', '2023-11-11', 50, 2500.80),
    (41, 11, 11, 1, 'Buy', '2023-11-12', 85, 8500.25),
    (42, 12, 12, 2, 'Sell', '2023-11-13', 70, 1200.75),
    (43, 13, 13, 3, 'Buy', '2023-11-14', 110, 750.50),
    (44, 14, 14, 4, 'Sell', '2023-11-15', 65, 1600.00),
    (45, 15, 15, 5, 'Buy', '2023-11-16', 40, 450.80),
    (46, 16, 1, 6, 'Sell', '2023-11-17', 95, 1700.25),
    (47, 17, 2, 7, 'Buy', '2023-11-18', 75, 250.75),
    (48, 18, 3, 8, 'Sell', '2023-11-19', 50, 1000.20),
    (49, 19, 4, 9, 'Buy', '2023-11-20', 60, 3800.75),
    (50, 20, 5, 10, 'Sell', '2023-11-21', 80, 1200.25),
    (51, 21, 6, 1, 'Buy', '2023-11-22', 70, 750.40),
    (52, 22, 7, 2, 'Sell', '2023-11-23', 120, 125.35),
    (53, 23, 8, 3, 'Buy', '2023-11-24', 90, 1750.65),
    (54, 24, 9, 4, 'Sell', '2023-11-25', 40, 110.55),
    (55, 25, 10, 5, 'Buy', '2023-11-26', 85, 650.80),
    (56, 26, 11, 6, 'Sell', '2023-11-27', 60, 900.25),
    (57, 27, 12, 7, 'Buy', '2023-11-28', 50, 620.30),
    (58, 28, 13, 8, 'Sell', '2023-11-29', 70, 2500.75),
    (59, 29, 14, 9, 'Buy', '2023-11-30', 75, 600.50),
    (60, 30, 15, 10, 'Sell', '2023-12-01', 55, 1205.40),
    (61, 1, 1, 1, 'Buy', '2023-12-02', 65, 3500.00),
    (62, 2, 2, 2, 'Sell', '2023-12-03', 80, 2600.50),
    (63, 3, 3, 3, 'Buy', '2023-12-04', 70, 700.75),
    (64, 4, 4, 4, 'Sell', '2023-12-05', 45, 1800.25),
    (65, 5, 5, 5, 'Buy', '2023-12-06', 55, 2400.50),
    (66, 6, 6, 6, 'Sell', '2023-12-07', 90, 120.75),
    (67, 7, 7, 7, 'Buy', '2023-12-08', 40, 450.20),
    (68, 8, 8, 8, 'Sell', '2023-12-09', 65, 600.25),
    (69, 9, 9, 9, 'Buy', '2023-12-10', 75, 220.30),
    (70, 10, 10, 10, 'Sell', '2023-12-11', 50, 2500.80);


create or replace function get_stockholderdetails_byid(id int)returns Table(stockholderid int,
firstname varchar,
lastname varchar,
dateofbirth date,
email varchar,
phone varchar,
adress varchar)as $$
Begin
Return query 
select * from stockholder where stockholder.stockholderid=id;
end $$
language plpgsql;

create or replace function get_stockholderdetails_byfirstname(f_name varchar)returns Table(stockholderid int,
firstname varchar,
lastname varchar,
dateofbirth date,
email varchar,
phone varchar,
adress varchar)as $$
Begin
Return query 
select * from stockholder where stockholder.firstname=f_name;
end $$
language plpgsql;

create or replace function get_stockholderdetails_bylastname(l_name varchar)returns Table(stockholderid int,
firstname varchar,
lastname varchar,
dateofbirth date,
email varchar,
phone varchar,
adress varchar)as $$
Begin
Return query 
select * from stockholder where stockholder.lastname=l_name;
end $$
language plpgsql;

create or replace function get_marketdetails_byid(id int)returns Table(marketid int,
marketname varchar,
location varchar,
openingtime time without time zone,
closingtime time without time zone,
tradingdays varchar)as $$
Begin
Return query 
select * from market where market.marketid=id;
end $$
language plpgsql;

create or replace function get_marketdetails_byname(name varchar)returns Table(marketid int,
marketname varchar,
location varchar,
openingtime time without time zone,
closingtime time without time zone,
tradingdays varchar)as $$
Begin
Return query 
select * from market where market.marketname=name;
end $$
language plpgsql;

create or replace function get_marketdetails_bylocation(loc varchar)returns Table(marketid int,
marketname varchar,
location varchar,
openingtime time without time zone,
closingtime time without time zone,
tradingdays varchar)as $$
Begin
Return query 
select * from market where market.location=loc;
end $$
language plpgsql;

create or replace function get_stockdetails_byid(stock_id int)returns Table(stockid int,
tickersymbol varchar,
companyname varchar,
sector varchar,
marketprice numeric,
volume int,
dividendyeild numeric,
pe_ratio numeric)as $$
Begin
Return query 
select * from stock where stock.stockid=stock_id;
end $$
language plpgsql;



create or replace function get_stockdetails_bytickersymbol(ticker_symbol varchar)returns Table(stockid int,
tickersymbol varchar,
companyname varchar,
sector varchar,
marketprice numeric,
volume int,
dividendyeild numeric,
pe_ratio numeric)as $$
Begin
Return query 
select * from stock where stock.tickersymbol=ticker_symbol;
end $$
language plpgsql;

create or replace function get_stockdetails_bycompanyname(comp_name varchar)returns Table(stockid int,
tickersymbol varchar,
companyname varchar,
sector varchar,
marketprice numeric,
volume int,
dividendyeild numeric,
pe_ratio numeric)as $$
Begin
Return query 
select * from stock where stock.companyname=comp_name;
end $$
language plpgsql;

create or replace function get_stockdetails_bysector(sec_name varchar)returns Table(stockid int,
tickersymbol varchar,
companyname varchar,
sector varchar,
marketprice numeric,
volume int,
dividendyeild numeric,
pe_ratio numeric)as $$
Begin
Return query 
select * from stock where stock.sector=sec_name;
end $$
language plpgsql;


create or replace function get_stockdetails_bymarketprice(m_price1 numeric,m_price2 numeric)returns Table(stockid int,
tickersymbol varchar,
companyname varchar,
sector varchar,
marketprice numeric,
volume int,
dividendyeild numeric,
pe_ratio numeric)as $$
Begin
Return query 
select * from stock where stock.marketprice between m_price1 and m_price2;
end $$
language plpgsql;

create or replace function get_stockdetails_bydividendyeild(d_yeild1 numeric,d_yeild2 numeric)returns Table(stockid int,
tickersymbol varchar,
companyname varchar,
sector varchar,
marketprice numeric,
volume int,
dividendyeild numeric,
pe_ratio numeric)as $$
Begin
Return query 
select * from stock where stock.dividendyeild between d_yeild1 and d_yeild2;
end $$
language plpgsql;`

create or replace function get_stockdetails_byperatio(ratio1 numeric, ratio2 numeric)returns Table(stockid int,
tickersymbol varchar,
companyname varchar,
sector varchar,
marketprice numeric,
volume int,
dividendyeild numeric,
pe_ratio numeric)as $$
Begin
Return query 
select * from stock where stock.pe_ratio between ratio1 and ratio2;
end $$
language plpgsql;

create or replace procedure add_stockdetails(stockid int,tickersymbol varchar,companyname varchar,sector varchar,marketprice numeric,volume int
,dividendyeild numeric,pe_ratio numeric)as $$
begin
Insert into stock values(stockid,tickersymbol,companyname,sector,marketprice,volume
,dividendyeild,pe_ratio);
Raise notice'1 row inserted';
end
$$
language plpgsql;

create or replace procedure delete_stockdetails(id int)as $$
begin
delete from stock where stockid=id;
Raise notice'1 row deleted';
end
$$
language plpgsql;

 create or replace procedure add_marketorderdetails(orderid int,stockid int,stockholderid int,marketid int,ordertype varchar,orderdate date
,quantity int,price numeric)as $$
begin
Insert into marketorder values(orderid,stockid,stockholderid,marketid,ordertype,orderdate,quantity,price);
Raise notice'1 row inserted';
end
$$
language plpgsql;

create or replace procedure delete_marketorderdetails(id int)as $$
begin
delete from marketorder where ordeid=id;
Raise notice'1 row deleted';
end
$$
language plpgsql;

 create or replace procedure add_marketdetails(id int,name varchar,loc varchar,openingtime time without time zone
,closingtime time without time zone,tradingdays varchar)as $$
begin
Insert into market values(id,name,loc,openingtime,closingtime,tradingdays);
Raise notice'1 row inserted';
end
$$
language plpgsql;


 create or replace procedure delete_marketdetails(id int)as $$
begin
delete from market where marketid=id;
Raise notice'1 row deleted';
end
$$
language plpgsql;

create or replace procedure change_email(id int,new_email varchar)as $$
begin
update stockholder set email=new_email where stockholderid=id;
Raise notice'email updated to:%',new_email;
end
$$
language plpgsql;


create or replace procedure change_phone(id int,new_phone varchar)as $$
begin
update stockholder set phone=new_phone where stockholderid=id;
Raise notice'phone updated to:%',new_phone;
end
$$
language plpgsql;

create or replace procedure change_address(id int,new_address varchar)as $$
begin
update stockholder set adress=new_address where stockholderid=id;
Raise notice'Adress updated to:%',new_address;
end
$$
language plpgsql;

 create or replace procedure add_stockholderdetails(stockholderid int,firstname varchar,lastname varchar,dateofbirth date,email varchar,phone varchar
,adress varchar)as $$
begin
Insert into stockholder values(stockholderid,firstname,lastname,dateofbirth,email,phone,adress);
Raise notice'1 row inserted';
end
$$
language plpgsql;


create or replace procedure delete_stockholderdetails(id int)as $$
begin
delete from stockholder where stockholderid=id;
Raise notice'1 row deleted';
end
$$
language plpgsql;
