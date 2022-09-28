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


