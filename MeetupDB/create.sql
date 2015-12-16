-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema meetupDB
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema meetupDB
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `meetupDB` ;
USE `meetupDB` ;

-- -----------------------------------------------------
-- Table `meetupDB`.`Meetup`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `meetupDB`.`Meetup` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Start` DATETIME NOT NULL,
  `Location` VARCHAR(150) NOT NULL,
  `Topic` VARCHAR(150) NOT NULL,
  `Description` VARCHAR(1000) NOT NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `meetupDB`.`Statuses`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `meetupDB`.`Statuses` (
  `Id` INT NOT NULL,
  `Value` VARCHAR(50) NOT NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `meetupDB`.`Users`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `meetupDB`.`Users` (
  `Id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(100) NOT NULL,
  `Birthdate` DATETIME NOT NULL,
  `Introduction` VARCHAR(500) NULL,
  `Avatar` VARCHAR(1000) NULL,
  `Email` VARCHAR(150) NULL,
  PRIMARY KEY (`Id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `meetupDB`.`MeetupRegistrations`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `meetupDB`.`MeetupRegistrations` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `StatusId` INT NOT NULL,
  `MeetupId` INT NOT NULL,
  `UserId` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `StatusId_idx` (`StatusId` ASC),
  INDEX `MeetupId_idx` (`MeetupId` ASC),
  INDEX `UserId_idx` (`UserId` ASC),
  CONSTRAINT `StatusId`
    FOREIGN KEY (`StatusId`)
    REFERENCES `meetupDB`.`Statuses` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `MeetupId`
    FOREIGN KEY (`MeetupId`)
    REFERENCES `meetupDB`.`Meetup` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `UserId`
    FOREIGN KEY (`UserId`)
    REFERENCES `meetupDB`.`Users` (`Id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
