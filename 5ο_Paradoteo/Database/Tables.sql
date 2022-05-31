


CREATE TABLE Xrhsths(
Id int AUTO_INCREMENT,
Username varchar(20) NOT NULL,
Passwordd varchar(20) NOT NULL,
Email varchar(50) NOT NULL,
Onoma varchar(20) NOT NULL,
Epwnymo varchar(20) NOT NULL,
primary key(id,username)

);



CREATE TABLE Moderator(
M_Id int NOT NULL,
M_Username varchar(20) NOT NULL,
Passwordd varchar(20) NOT NULL,
M_Email varchar(50) NOT NULL,
Onoma varchar(20) NOT NULL,
Epwnymo varchar(20) NOT NULL,
primary key(M_Id,M_email,M_username)
);

CREATE TABLE ChangeSettings(
CS_Id int NOT NULL,
CS_Username varchar(20) NOT NULL,
Passwordd varchar(20) NOT NULL,
Email varchar(50) NOT NULL,
Onoma varchar(20) NOT NULL,
Epwnymo varchar(20) NOT NULL,
primary key(CS_Id,CS_Username)
);

CREATE TABLE Parametroi(
p_id int NOT NULL,
Mera varchar(20) NOT NULL,
Mhnas varchar(20) NOT NULL,
Wra varchar(20) NOT NULL,
Kairos varchar(20) NOT NULL,
primary key(p_id)
);

CREATE TABLE E_support_ticket(
e_Id int NOT NULL,
Seira_prot  varchar(20) NOT NULL,
Parapona varchar(20) NOT NULL,
Primary key (e_Id)
);


CREATE TABLE Sylogh(
S_Id int,
OnomaSyloghs varchar(20) ,
Filtro boolean,
Public boolean,
Private boolean,
images varbinary(10000),
primary key(S_Id,OnomaSyloghs)
);

CREATE TABLE Fonta(
F_Id int,
Megethos varchar(20) NOT NULL,
Link varchar(50) NOT NULL,
image varbinary(10000),
primary key(F_id)
);

CREATE TABLE Library(
L_Id int,
Titlos varchar(50) NOT NULL,
Sxolio varchar(200) NOT NULL,
Report varchar(200) NOT NULL,
LikeLibrary boolean,
DislikeLibrary boolean,
primary key(L_Id,Titlos)
);

CREATE TABLE Subscribe(
Sub_Username varchar(20) NOT NULL,
Sub_onoma_Syloghs varchar(20) NOT NULL,
HmeromhniaPlhrwmhs1 varchar(20) NOT NULL,
PosoPlhrwmhs1 int NOT NULL,
primary key(Sub_Username,Sub_onoma_Syloghs)
);

CREATE TABLE VipSubscribe(
Vip_Username varchar(20) NOT NULL,
HmeromhniaPlhrwmhs2 varchar(20) NOT NULL,
PosoPlhrwmhs2 int,
VathmidaSub varchar(20) NOT NULL,
Primary key (VathmidaSub)
);

CREATE TABLE Sylogh_Subscribe(
Onoma_Syloghs_Sub varchar(20) NOT NULL,
HmeromhniaPlhr varchar(20) NOT NULL,
PosoPlhr int NOT NULL,
primary key(Onoma_Syloghs_Sub)
);

CREATE TABLE Syloghexei(
Id_parametrou int NOT NULL,
Onoma_syloghs  varchar(20) NOT NULL,
Primary key (Id_parametrou,Onoma_syloghs),
Constraint Syl_exei
Foreign key (Id_parametrou) References Parametroi(P_id)
);

CREATE TABLE StelneiParapona(
Username_xrhsth varchar(20)  NOT NULL,
Id_support_ticket  int NOT NULL,
Primary key (Username_xrhsth,Id_support_ticket ),
Constraint Stelnei 
Foreign key (Id_support_ticket) References  E_support_ticket(e_Id)
);

CREATE TABLE ParaponastonMod(
Id_Mod_Ticket int NOT NULL,
Email_mod  varchar(20)  NOT NULL,
Primary key (Id_Mod_Ticket,Email_mod),
Constraint stelnontai_mod
Foreign key (Id_Mod_Ticket)  References Moderator(M_Id)
);

CREATE TABLE ModElegxei(
Id_Fontwn int NOT NULL,
Id_mod  int NOT NULL,
Primary key (Id_Fontwn,Id_mod),
Constraint mod_elegxei
Foreign key (Id_Fontwn)  References Fonta(F_Id),
Constraint mod_elegxei2
Foreign key (Id_mod )  References Moderator(M_Id)
);

CREATE TABLE FontaSyloghs(
Onoma_Syl varchar(20)  NOT NULL,
Id_Fontwn int NOT NULL,
Primary key (Onoma_Syl,Id_Fontwn),
Constraint fonta_per
Foreign key (Id_Fontwn)  References Fonta(F_Id)

);

CREATE TABLE Mod__diorganwnei(
Id_moder int NOT NULL,
Id_event int NOT NULL,
Primary key (Id_moder,Id_event),
Constraint Mod_dior
Foreign key (Id_moder)  References Moderator(M_Id)
);

CREATE TABLE Xrhsths_antidra(
Xr_onoma int NOT NULL,
Xr_id int NOT NULL,
Primary key (Xr_onoma ,Xr_id),
Constraint antidra
Foreign key (Xr_id )  References Xrhsths(Id),
Constraint antidra2
Foreign key (Xr_onoma)  References Sylogh(S_Id)
);

CREATE TABLE Xrhsths_sxoliazei(
Xs_onoma int NOT NULL,
Xs_id int NOT NULL,
Primary key (Xs_onoma ,Xs_id),
Constraint sxoliazei
Foreign key (Xs_id )  References Xrhsths(Id),
Constraint sxoliazei2
Foreign key (Xs_onoma)  References Sylogh(S_Id)
);

CREATE TABLE Xrhsths_vlepei(
Titlos_lib int NOT NULL,
Xv_id int NOT NULL,
Primary key (Titlos_lib,Xv_id),
Constraint vlepei
Foreign key (Xv_id)  References Xrhsths(Id),
Constraint vlepei2
Foreign key (Titlos_lib)  References Library(L_Id)
);

CREATE TABLE Xrhsths_rithmiseis(
Xr_id int NOT NULL,
ri_id int NOT NULL,
Primary key (Xr_id,ri_id),
Constraint rithmizei
Foreign key (Xr_id)  References Xrhsths(Id),
Constraint rithmizei2
Foreign key (ri_id)  References ChangeSettings(CS_Id)
);

CREATE TABLE Xrhsths_sub(
Xrsub_username int NOT NULL,
Xrsub_onoma int NOT NULL,
vathmida varchar(20) NOT NULL,
Primary key (Xrsub_username ,Xrsub_onoma),
Constraint kaneisub
Foreign key (Xrsub_username)  References Xrhsths(Id),
Constraint kaneisub3
Foreign key (vathmida)  References VipSubscribe(VathmidaSub)
);




