use smarthmsph;


insert into citizen(id,citizenname,surname1,surname2,mail,phoneNumber) 
values(111,'Leiner','Castro','Gonzalez','leiner@gmail.com','555555');
insert into citizen(id,citizenname,surname1,surname2,mail,phoneNumber)  
values(222,'John','Richmond','Solis','john@gmail.com','666666');
insert into citizen(id,citizenname,surname1,surname2,mail,phoneNumber) 
values(333,'Antony','Oviedo','Alfaro','antony@gmail.com','777777');
insert into citizen(id,citizenname,surname1,surname2,mail,phoneNumber) 
values(444,'Gerardo','Quintanilla','Guillen','gerardo@gmail.com','888888');


insert into citizen_user (username,password,role,citizen_id) 
values('lmcg','1234567','ciudadano',111);

insert into citizen_user (username,password,role,citizen_id) 
values('jbrs','1234567','ciudadano',222);

insert into citizen_user (username,password,role,citizen_id) 
values('ata','1234567','administrador',333);

insert into citizen_user (username,password,role,citizen_id) 
values('geqq','1234567','administrador',444);