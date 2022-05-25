

Insert INTO Xrhsths
Values (1234,'Jim',123456789,'Jim@gmail.com', 'Dimitris',' Papadopoulos') ,
	   (4321,'Bill',123456789,'Bill@gmail.com', 'Bill',' Papadopoulos'),
       (1243,'Panos',123456789,'Panos@gmail.com', 'Panos',' Papadopoulos') ;


Insert INTO Moderator
Values (1234,'Jim',123456789,'Jim@gmail.com', 'Dimitris',' Papadopoulos') ;

Insert INTO ChangeSettings
Values (1234,'Jim',123456789,'Jim@gmail.com', 'Dimitris',' Papadopoulos'),
	   (4321,'Bill',123456789,'Bill@gmail.com', 'Bill',' Papadopoulos'),
       (1243,'Panos',123456789,'Panos@gmail.com', 'Panos',' Papadopoulos') ;

Insert INTO Parametroi
Values ('Deutera','Iounios','12:00','Hliolousth') ,
       ('Trith','Dekemvrhs','20:00','Sunnefia') ;


Insert INTO Sylogh 
Values (1234,'Ellada',TRUE,TRUE,FALSE,LOAD_FILE('C:\img\1.png')),
       (1234,'Hawai',TRUE,TRUE,FALSE,LOAD_FILE('C:\img\2.png')),
       (1234,'Norway',TRUE,TRUE,FALSE,LOAD_FILE('C:\img\3.png'));


Insert INTO Fonta
Values (1234,'2MB','www.image.com',LOAD_FILE('C:\img\1.png')),
       (1234,'Hawaii','www.image.com',LOAD_FILE('C:\img\2.png')),
       (1234,'Norway','www.image.com',LOAD_FILE('C:\img\3.png'));


Insert INTO Library
Values ('1234','Library','Best Library','Report',TRUE, FAlSE);

Insert INTO Subscribe
Values ('Jim','01-06-22',10);

Insert INTO VipSubscribe
Values ('Jim','01-06-22',10,'Platinum');



