CREATE TABLE order2(
orderID1 int PRIMARY KEY AUTO_INCREMENT, 
personalId int, 
orderDate DATE,
paymentRef int,
trackingId int,
status ENUM('delivered', 'inprocess'),
INDEX SHORT_DESC_IND (orderID1),
CONSTRAINT fk_order_personalID FOREIGN KEY (personalID) REFERENCES user(personalID)  ON DELETE CASCADE  ON UPDATE CASCADE
);


CREATE TABLE user_address (  
  personalID INT,  
  addressID int,
  CONSTRAINT fk_user_address_personalID FOREIGN KEY (personalID) REFERENCES user(personalID)  ON DELETE CASCADE  ON UPDATE CASCADE,
  CONSTRAINT fk_user_address_addressID FOREIGN KEY (addressID) REFERENCES address(addressID)  ON DELETE CASCADE  ON UPDATE CASCADE  
); 

create table user(
personalID int not null,
name varchar(255),
password varchar(255),phoneNumber varchar(10), isSubscribed BOOL, 
PRIMARY KEY (personalID)
);

CREATE TABLE user_email (  
  personalID INT,  
  emailAddress varchar(50) NOT NULL,  
  CONSTRAINT fk_customer FOREIGN KEY (personalID)  
  REFERENCES user(personalID)  ON DELETE CASCADE  ON UPDATE CASCADE  
); 

drop table address;

show table status;
SHOW TABLE STATUS WHERE Name = 'xxx';

SHOW ENGINE INNODB STATUS;





CREATE TABLE address (
    addressID int NOT NULL AUTO_INCREMENT,
    postalCode INT UNSIGNED,
    city varchar(255),
    streeName varchar(255),
    country varchar(255),
    primary key (addressID)
);


create table user(
personalID int not null,
name varchar(255),
password varchar(255),phoneNumber varchar(10), isSubscribed BOOL, 
PRIMARY KEY (personalID)
);

CREATE TABLE user_email (  
  personalID INT,  
  emailAddress varchar(50) NOT NULL,  
  CONSTRAINT fk_customer FOREIGN KEY (personalID)  
  REFERENCES user(personalID)  ON DELETE CASCADE  ON UPDATE CASCADE  
); 

drop table address;

show table status;
SHOW TABLE STATUS WHERE Name = 'xxx';

SHOW ENGINE INNODB STATUS;


