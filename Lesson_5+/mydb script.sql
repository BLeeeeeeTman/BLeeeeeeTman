DROP DATABASE IF EXISTS `mydb`;
CREATE DATABASE `mydb`;
USE `mydb`;
SHOW TABLES;


CREATE TABLE IF NOT EXISTS `Hotels` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `Name` VARCHAR(45) NOT NULL,
  `Star` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`id`));

CREATE TABLE IF NOT EXISTS `Products` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));

CREATE TABLE IF NOT EXISTS `Kitchen` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NOT NULL,
  `Star` VARCHAR(45) NOT NULL,
  `Products_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Products_id`),
  INDEX `fk_Kitchen_Products1_idx` (`Products_id` ASC) VISIBLE,
  CONSTRAINT `fk_Kitchen_Products1`
    FOREIGN KEY (`Products_id`)
    REFERENCES `Products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS `Personal` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  `Personalcol` VARCHAR(45) NULL,
  `Hotels_id` INT NOT NULL,
  PRIMARY KEY (`id`),
  INDEX `fk_Personal_Hotels1_idx` (`Hotels_id` ASC) VISIBLE,
  CONSTRAINT `fk_Personal_Hotels1`
    FOREIGN KEY (`Hotels_id`)
    REFERENCES `Hotels` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS `Store` (
  `id` INT NOT NULL,
  `name` VARCHAR(45) NULL,
  PRIMARY KEY (`id`));


CREATE TABLE IF NOT EXISTS `Store_has_Hotels` (
  `id` VARCHAR(45) NOT NULL,
  `Store_id` INT NOT NULL,
  `Hotels_id` INT NOT NULL,
  PRIMARY KEY (`id`, `Store_id`, `Hotels_id`),
  INDEX `fk_Store_has_Hotels_Hotels1_idx` (`Hotels_id` ASC) VISIBLE,
  INDEX `fk_Store_has_Hotels_Store1_idx` (`Store_id` ASC) VISIBLE,
  CONSTRAINT `fk_Store_has_Hotels_Store1`
    FOREIGN KEY (`Store_id`)
    REFERENCES `Store` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Store_has_Hotels_Hotels1`
    FOREIGN KEY (`Hotels_id`)
    REFERENCES `Hotels` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

CREATE TABLE IF NOT EXISTS `Products_has_Store` (
  `Products_id` INT NOT NULL,
  `Store_id` INT NOT NULL,
  PRIMARY KEY (`Products_id`, `Store_id`),
  INDEX `fk_Products_has_Store_Store1_idx` (`Store_id` ASC) VISIBLE,
  INDEX `fk_Products_has_Store_Products1_idx` (`Products_id` ASC) VISIBLE,
  CONSTRAINT `fk_Products_has_Store_Products1`
    FOREIGN KEY (`Products_id`)+
    REFERENCES `Products` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Products_has_Store_Store1`
    FOREIGN KEY (`Store_id`)
    REFERENCES `Store` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION);

