CREATE TABLE Xrhsths(
Id int,
Username varchar(20),
Passwordd varchar(20),
Email varchar(50),
Onoma varchar(20),
Epwnymo varchar(20)
);



CREATE TABLE Moderator(
Id int,
Username varchar(20),
Passwordd varchar(20),
Email varchar(50),
Onoma varchar(20),
Epwnymo varchar(20)
);

CREATE TABLE ChangeSettings(
Id int,
Username varchar(20),
Passwordd varchar(20),
Email varchar(50),
Onoma varchar(20),
Epwnymo varchar(20)
);

CREATE TABLE Parametroi(
Mera varchar(20),
Mhnas varchar(20),
Wra varchar(20),
Giorth varchar(20),
Kairos varchar(20)
);


CREATE TABLE Sylogh(
Id int,
OnomaSuloghs varchar(20),
Filtro boolean,
Public boolean,
Private boolean
);

CREATE TABLE Fonta(
Id int,
Megethos varchar(20),
Link varchar(50)
);

CREATE TABLE Library(
Id int,
Titlos varchar(50),
Sxolio varchar(200),
Report varchar(200),
LikeLibrary boolean,
DislikeLibrary boolean
);

CREATE TABLE Subscribe(
Username varchar(20),
HmeromhniaPlhrwmhs varchar(20),
PosoPlhrwmhs int
);

CREATE TABLE VipSubscribe(
Username varchar(20),
HmeromhniaPlhrwmhs varchar(20),
PosoPlhrwmhs int,
VathmidaSub varchar(20)
);



