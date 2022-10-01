create table User
(
	personalID varchar(20),
	name varchar(20),
	password varchar(20),
	phoneNumber varchar(10),
	isSubscribed boolean DEFAULT 0,
	primary key (personalID)
) ENGINE=INNODB;

create table Users_Email
(
	personalID varchar(20),
	emailAddress varchar(70),

	primary key (personalID),
	foreign key (personalID) references User(personalID)
	ON DELETE CASCADE  ON UPDATE CASCADE
)ENGINE=INNODB;

create table Address
(
	addressID int AUTO_INCREMENT,
	postalCode varchar(6),
	streetName varchar(30),
	city varchar(30),
	country varchar(3),
	primary key (addressID),
)ENGINE=INNODB;

create table User_Address
(
	personalID varchar(20),
	addressID int,

	primary key (personalID),
	foreign key (addressID) references Address(addressID)
	on delete SET NULL
)ENGINE=INNODB;

create table `Order`
(
	orderID int,
	personalID varchar(20),
	orderDate TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	paymentRef varchar(64),
	trackingID varchar(10),
	status int,

	primary key (orderID),
	foreign key (personalID) references User(personalID)
	ON DELETE CASCADE  ON UPDATE CASCADE
)ENGINE=INNODB;

create table Department
(
	dID int AUTO_INCREMENT,
	title varchar(50),
	description TEXT,

	primary key (DId),
)ENGINE=INNODB;

create table Has
(
	rootID int,
	dID int,

	primary key (rootID),
	foreign key (rootID, dID) references Department(dID, dID)
	ON DELETE CASCADE  ON UPDATE CASCADE
)ENGINE=INNODB;

create table Product
(
	pID int AUTO_INCREMENT,
	dID int,

	title varchar(50),
	description TEXT,
	originalPrice int,
	discount float,
	isFeatured boolean DEFAULT 0,
	tax float,
	PQuantity int,

	primary key (pID),
	foreign key (dID) references Department(dID)
	on delete SET NULL
)ENGINE=INNODB;

create table Product_Keyword
(
	pID int,
	keyword varchar(30) NOT NULL,

	primary key (pID, keyword),
	foreign key (pID) references Product(pID)
	on delete SET NULL
)ENGINE=INNODB;

create table Review
(
	personalID varchar(20),
	pID int,
	star int,
	comment TEXT,

	primary key(personalID, pID) ,
	foreign key (personalID) references User(personalID)
		on delete cascade,
	foreign key (pID) references Product(pID)
	ON DELETE CASCADE  ON UPDATE CASCADE
)ENGINE=INNODB;

create table Added
(
	orderID int,
	pID int,
	oQuantity int,
	totalPrice int,

	primary key(orderID, pID),
	foreign key (orderID) references `Order`(orderID)
		on delete cascade,
	foreign key (pID) references Product(pID)
	ON DELETE CASCADE  ON UPDATE CASCADE
)ENGINE=INNODB;