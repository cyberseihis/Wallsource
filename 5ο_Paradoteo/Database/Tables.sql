



CREATE TABLE Xrhsths(
Id int AUTO_INCREMENT,
Username varchar(20) NOT NULL,
Passwordd varchar(20) NOT NULL,
Email varchar(50) NOT NULL,
Onoma varchar(20) NOT NULL,
Epwnymo varchar(20) NOT NULL,
primary key(id)
);



CREATE TABLE Moderator(
Id int,
Username varchar(20) NOT NULL,
Passwordd varchar(20) NOT NULL,
Email varchar(50) NOT NULL,
Onoma varchar(20) NOT NULL,
Epwnymo varchar(20) NOT NULL,
primary key(id)
);

CREATE TABLE ChangeSettings(
Id int,
Username varchar(20) NOT NULL,
Passwordd varchar(20) NOT NULL,
Email varchar(50) NOT NULL,
Onoma varchar(20) NOT NULL,
Epwnymo varchar(20) NOT NULL,
primary key(id)
);

CREATE TABLE Parametroi(
Mera varchar(20) NOT NULL,
Mhnas varchar(20) NOT NULL,
Wra varchar(20) NOT NULL,
Kairos varchar(20) NOT NULL
);


CREATE TABLE Sylogh(
Id int,
OnomaSuloghs varchar(20) ,
Filtro boolean,
Public boolean,
Private boolean,
images varbinary(10000),
primary key(id)
);

CREATE TABLE Fonta(
Id int,
Megethos varchar(20) NOT NULL,
Link varchar(50) NOT NULL,
image varbinary(10000),
primary key(id)
);

CREATE TABLE Library(
Id int,
Titlos varchar(50) NOT NULL,
Sxolio varchar(200) NOT NULL,
Report varchar(200) NOT NULL,
LikeLibrary boolean,
DislikeLibrary boolean,
primary key(id)
);

CREATE TABLE Subscribe(
Username varchar(20) NOT NULL,
HmeromhniaPlhrwmhs varchar(20) NOT NULL,
PosoPlhrwmhs int
);

CREATE TABLE VipSubscribe(
Username varchar(20) NOT NULL,
HmeromhniaPlhrwmhs varchar(20) NOT NULL,
PosoPlhrwmhs int,
VathmidaSub varchar(20) NOT NULL
);


