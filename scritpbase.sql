-- MySQL Script generated by MySQL Workbench
-- Sat Feb  8 21:58:15 2020
-- Model: New Model    Version: 1.0
-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema smartmsph
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `smartmsph` ;

-- -----------------------------------------------------
-- Schema smartmsph
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `smartmsph` DEFAULT CHARACTER SET utf8 ;
USE `smartmsph` ;

-- -----------------------------------------------------
-- Table `smartmsph`.`complain`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `smartmsph`.`complain` ;

CREATE TABLE IF NOT EXISTS `smartmsph`.`complain` (
  `Complain_id` SMALLINT(20) NOT NULL,
  `Description` VARCHAR(200) NOT NULL,
  `state` VARCHAR(45) NOT NULL,
  `Person_Id` BIGINT(20) NULL DEFAULT NULL,
  `User_id` SMALLINT(20) NULL DEFAULT NULL,
  `employee` VARCHAR(45) NOT NULL,
  `employee_department` VARCHAR(45) NULL DEFAULT NULL,
  `Department_Id` SMALLINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`Complain_id`),
  CONSTRAINT `fk_User_complain1`
    FOREIGN KEY (`User_id`)
    REFERENCES `smartmsph`.`user` (`User_Id`),
  CONSTRAINT `fk_complain_Person`
    FOREIGN KEY (`Person_Id`)
    REFERENCES `smartmsph`.`person` (`Person_Id`),
  CONSTRAINT `fk_complain_department1`
    FOREIGN KEY (`Department_Id`)
    REFERENCES `smartmsph`.`department` (`Department_Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_complain_citizen1_idx` ON `smartmsph`.`complain` (`Person_Id` ASC) VISIBLE;

CREATE INDEX `fk_complain_department1_idx` ON `smartmsph`.`complain` (`Department_Id` ASC) VISIBLE;

CREATE INDEX `fk_User_complain1_idx` ON `smartmsph`.`complain` (`User_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `smartmsph`.`denounces`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `smartmsph`.`denounces` ;

CREATE TABLE IF NOT EXISTS `smartmsph`.`denounces` (
  `Denounces_id` SMALLINT(20) NOT NULL,
  `Description` VARCHAR(3999) NOT NULL,
  `State` VARCHAR(45) NOT NULL,
  `Ticket_id` SMALLINT(20) NULL DEFAULT NULL,
  `Person_id` BIGINT(20) NULL DEFAULT NULL,
  `User_id` SMALLINT(20) NULL DEFAULT NULL,
  `Photo` VARCHAR(50) NULL DEFAULT NULL,
  `Latitud` VARCHAR(100) NULL DEFAULT NULL,
  `Longitud` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`Denounces_id`),
  CONSTRAINT `fk_User_Denounces`
    FOREIGN KEY (`User_id`)
    REFERENCES `smartmsph`.`user` (`User_Id`),
  CONSTRAINT `fk_denounces_person`
    FOREIGN KEY (`Person_id`)
    REFERENCES `smartmsph`.`person` (`Person_Id`),
  CONSTRAINT `fk_denounces_ticket1`
    FOREIGN KEY (`Ticket_id`)
    REFERENCES `smartmsph`.`ticket` (`Ticket_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_denounces_ticket1_idx` ON `smartmsph`.`denounces` (`Ticket_id` ASC) VISIBLE;

CREATE INDEX `fk_denounces_citizen1_idx` ON `smartmsph`.`denounces` (`Person_id` ASC) VISIBLE;

CREATE INDEX `fk_User_denounces_idx` ON `smartmsph`.`denounces` (`User_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `smartmsph`.`department`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `smartmsph`.`department` ;

CREATE TABLE IF NOT EXISTS `smartmsph`.`department` (
  `Department_Id` SMALLINT(20) NOT NULL,
  `DepartmentName` VARCHAR(45) NOT NULL,
  `Person_Id` BIGINT(20) NULL DEFAULT NULL,
  PRIMARY KEY (`Department_Id`),
  CONSTRAINT `fk_Department_Person1`
    FOREIGN KEY (`Person_Id`)
    REFERENCES `smartmsph`.`person` (`Person_Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE UNIQUE INDEX `id_UNIQUE` ON `smartmsph`.`department` (`Department_Id` ASC) VISIBLE;

CREATE UNIQUE INDEX `DepartmentName_UNIQUE` ON `smartmsph`.`department` (`DepartmentName` ASC) VISIBLE;

CREATE INDEX `fk_Department_Person1_idx` ON `smartmsph`.`department` (`Person_Id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `smartmsph`.`news`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `smartmsph`.`news` ;

CREATE TABLE IF NOT EXISTS `smartmsph`.`news` (
  `News_Id` SMALLINT(20) NOT NULL,
  `Description` VARCHAR(1000) NOT NULL,
  `Photo1` VARCHAR(100) NULL DEFAULT NULL,
  PRIMARY KEY (`News_Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `smartmsph`.`person`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `smartmsph`.`person` ;

CREATE TABLE IF NOT EXISTS `smartmsph`.`person` (
  `Person_Id` BIGINT(20) NOT NULL,
  `Name` VARCHAR(50) NOT NULL,
  `LastName1` VARCHAR(50) NOT NULL,
  `LastName2` VARCHAR(50) NOT NULL,
  `Email` VARCHAR(50) NULL DEFAULT NULL,
  `phoneNumber` VARCHAR(50) NULL DEFAULT NULL,
  PRIMARY KEY (`Person_Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE UNIQUE INDEX `id_UNIQUE` ON `smartmsph`.`person` (`Person_Id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `smartmsph`.`role`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `smartmsph`.`role` ;

CREATE TABLE IF NOT EXISTS `smartmsph`.`role` (
  `Role_id` SMALLINT(6) NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Role_id`))
ENGINE = InnoDB
AUTO_INCREMENT = 4
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `smartmsph`.`ticket`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `smartmsph`.`ticket` ;

CREATE TABLE IF NOT EXISTS `smartmsph`.`ticket` (
  `Ticket_id` SMALLINT(20) NOT NULL,
  `Department_id` SMALLINT(20) NULL DEFAULT NULL,
  `Ticketcol` VARCHAR(45) NULL DEFAULT NULL,
  PRIMARY KEY (`Ticket_id`),
  CONSTRAINT `fk_ticket_department1`
    FOREIGN KEY (`Department_id`)
    REFERENCES `smartmsph`.`department` (`Department_Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE INDEX `fk_ticket_department1_idx` ON `smartmsph`.`ticket` (`Department_id` ASC) VISIBLE;


-- -----------------------------------------------------
-- Table `smartmsph`.`user`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `smartmsph`.`user` ;

CREATE TABLE IF NOT EXISTS `smartmsph`.`user` (
  `User_Id` SMALLINT(20) NOT NULL,
  `UserName` VARCHAR(45) NOT NULL,
  `Password` VARCHAR(45) NOT NULL,
  `Person_id` BIGINT(20) NULL DEFAULT NULL,
  `Role_id` SMALLINT(6) NOT NULL,
  `department_id` SMALLINT(6) NULL DEFAULT NULL,
  PRIMARY KEY (`User_Id`),
  CONSTRAINT `fk_User_Role1`
    FOREIGN KEY (`Role_id`)
    REFERENCES `smartmsph`.`role` (`Role_id`),
  CONSTRAINT `fk_department_user_department`
    FOREIGN KEY (`department_id`)
    REFERENCES `smartmsph`.`department` (`Department_Id`),
  CONSTRAINT `fk_person_user_Person`
    FOREIGN KEY (`Person_id`)
    REFERENCES `smartmsph`.`person` (`Person_Id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;

CREATE UNIQUE INDEX `id_UNIQUE` ON `smartmsph`.`user` (`User_Id` ASC) VISIBLE;

CREATE UNIQUE INDEX `UserName_UNIQUE` ON `smartmsph`.`user` (`UserName` ASC) VISIBLE;

CREATE INDEX `fk_citizen_user_citizen1_idx` ON `smartmsph`.`user` (`Person_id` ASC) VISIBLE;

CREATE INDEX `fk_User_Role1_idx` ON `smartmsph`.`user` (`Role_id` ASC) VISIBLE;

CREATE INDEX `fk_department_user_department_idx` ON `smartmsph`.`user` (`department_id` ASC) VISIBLE;

USE `smartmsph` ;

-- -----------------------------------------------------
-- procedure UsuarioRegistro
-- -----------------------------------------------------

USE `smartmsph`;
DROP procedure IF EXISTS `smartmsph`.`UsuarioRegistro`;

DELIMITER $$
USE `smartmsph`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `UsuarioRegistro`(Ppersona_id bigint, Pnombre varchar(100), Papellido1 varchar(100),
Papellido2 varchar(100),Pcorreo varchar(100), Ptelefono varchar(100), Pusuario_Id smallint, PnombreUsuario varchar(100),
Ppassword varchar(100), Prole smallint  
)
BEGIN
insert into person values(Ppersona_id,Pnombre,Papellido1,Papellido2,Pcorreo,Ptelefono);

insert into user select MAX(User_Id) + 1 
,PnombreUsuario
,Ppassword
,Ppersona_id
,Prole
,null 
from user; 

END$$

DELIMITER ;
-- -----------------------------------------------------
-- procedure DepartamentoRegistro
-- -----------------------------------------------------
USE `smartmsph`;
DROP procedure IF EXISTS `smartmsph`.`DepartamentoRegistro`;

DELIMITER $$
USE `smartmsph`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `DepartamentoRegistro`(
  `PDepartment_Id` SMALLINT(20),
  `PDepartmentName` VARCHAR(45),
  `PPerson_Id` BIGINT(20)
)
BEGIN

INSERT INTO `department` values (`PDepartment_Id`, `PDepartmentName`,`PPerson_Id`);

END$$
DELIMITER ;


-- -----------------------------------------------------
-- procedure VerifyCredentials
-- -----------------------------------------------------

USE `smartmsph`;
DROP procedure IF EXISTS `smartmsph`.`VerifyCredentials`;

DELIMITER $$
USE `smartmsph`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `VerifyCredentials`( IN Puser varchar(45), IN Ppassword varchar(45))
BEGIN

SELECT a.*,b.Name,b.LastName1,b.LastName2,b.Email,b.phoneNumber,c.DepartmentName
FROM user a 
JOIN person b ON a.Person_Id=b.Person_Id
LEFT JOIN department c ON a.department_id = c.Department_Id
 where a.UserName=Puser and a.Password = Ppassword;

END$$

DELIMITER ;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;


insert into person(Person_Id,Name, LastName1, LastName2, Email, phoneNumber) values (207640246,'Antony','Oviedo', 'Alfaro', 'antony-08@hotmail.com', '50687898967');
insert into role(Role_id, Name ) values (1, 'superUser');
insert into department(Department_Id, DepartmentName, Person_Id ) values (0, 'IT', 207640246);
insert into user(User_Id,UserName,Password,Person_id,Role_id,department_id) values (1,'tony','12345678',207640246,1,0);
