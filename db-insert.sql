-- insert command for review table 
Insert into Review (personalID,pID,star,comment)
values(91249909,1,3,"good"),(91249919,1,4,"good");
-- insert command for Product_Keyword 
INSERT into Product_Keyword 
(pID,keyword)
values(5,"asus"),
(6,"hp"),
(1,"dell"),
(2,"slim"),
(5,"slim");
-- insert command for added table 
insert into Added (orderID,pID,oQuantity,totalPrice)
values(1,1,2,9000),(1,2,2,9000),(1,3,2,12600);

-- insert command for order table 
INSERT into Orderr (orderID ,personalID , paymentRef ,trackingID ,status )
values (1,9124989,"d1231",null,1),
(2,91249909,"d1221",null,1),
(3,91249919,"d1881",null,1),
(4,91249929,"d1231",null,1);

-- insert command for product table 
INSERT into Product  (dID,title, description,originalPrice,discount,isFeatured,tax,PQuantity)
values (4,"dell desktop","dell desktop",5000,10,1,10,100),
(4,"apple desktop","apple desktop",6000,10,1,10,100),
(4,"acer desktop","acer desktop",7000,10,1,10,100),
(4,"asus desktop","asus desktop",8000,10,1,10,100),
(4,"hp desktop","hp desktop",9000,10,0,10,100);


-- insert command for has table 
INSERT into Has (did,rootID)
values (1,null),
(2,1),(3,2),
(4,3);

-- insert command for Department table 
INSERT into Department (title,description)
values ("group 3 online shopping","welcome text"),
("Electronics","parent department"),
("Computers and tablets","subdepartment of Electronics"),
("Desktops","subdepartment of Computers and tablets");

-- insert command for user table 
INSERT INTO `User`  (User.personalID , User.name , User.password , User.phoneNumber , User.isSubscribed )
VALUES ('91249999', 'Prashanna Rai', 'pwdpwd', '004646464', 1),
('9124989', 'Prashanna Rai', 'pwdpwd', '004646464', 1),
('91249979', 'Prashanna Rai', 'pwdpwd', '004646464', 1),
('91249969', 'Prashanna Rai', 'pwdpwd', '004646464', 1),
('91249949', 'Prashanna Rai', 'pwdpwd', '004646464', 1),
('91249939', 'Prashanna Rai', 'pwdpwd', '004646464', 1),
('91249929', 'Prashanna Rai', 'pwdpwd', '004646464', 1),
('91249919', 'Prashanna Rai', 'pwdpwd', '004646464', 1),
('91249909', 'Prashanna Rai', 'pwdpwd', '004646464', 1);

-- insert command for address table  
INSERT INTO Address (Address.addressID,Address.postalCode,Address.streetName,Address.city,Address.country)
values (1,"74323","flogsta","uppsala","swe"),
(2,"74323","flo","uppsala","swe"),
(3,"74323","flog","uppsala","swe"),
(4,"74323","flogs","uppsala","swe"), 
(5,"74323","storevreta","uppsala","swe"),
(6,"74323","sundsvall","sundsvall","swe"),
(7,"74323","luea","luea","swe")
,(8,"74323","umea","umea","swe"),
(9,"74323","stockholm","uppsala","swe"),
(10,"74323","arlanda","uppsala","swe");
