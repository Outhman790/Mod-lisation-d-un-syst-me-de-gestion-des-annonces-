CREATE TABLE Client (
 	clientID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	firstName VARCHAR(50) NOT NULL,
	lastName VARCHAR(50) NOT NULL,
	email VARCHAR(50) NOT NULL,
	password VARCHAR(50) NOT NULL,
	phone INT NOT NULL
);
CREATE TABLE Annonce (
	annonceID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	title VARCHAR(50) NOT NULL,
	price INT NOT NULL,
	publicationDate DATETIME NOT NULL,
	lastModificationDate DATETIME NOT NULL,	
	type VARCHAR(50) NOT NULL,
	category VARCHAR(50) NOT NULL,
	country VARCHAR(50),
	postalCode INT NOT NULL,
	city VARCHAR(50) NOT NULL,
	clientID INT NOT NULL,
	FOREIGN KEY(clientID) REFERENCES Client(clientID)
);
CREATE TABLE Image (
	imageID INT NOT NULL PRIMARY KEY AUTO_INCREMENT,
	imagePath VARCHAR(200) NOT NULL,
	imageType VARCHAR(20) NOT NULL,
	annonceID INT NOT NULL,
	FOREIGN KEY(annonceID) REFERENCES Annonce(annonceID)
);
