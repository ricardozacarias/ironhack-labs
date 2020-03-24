-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `mydb` ;

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`manufacturers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`manufacturers` ;

CREATE TABLE IF NOT EXISTS `mydb`.`manufacturers` (
  `manufacturer_id` INT NOT NULL AUTO_INCREMENT,
  `manufacturer_name` VARCHAR(45) NULL,
  PRIMARY KEY (`manufacturer_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`models`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`models` ;

CREATE TABLE IF NOT EXISTS `mydb`.`models` (
  `model_id` INT NOT NULL AUTO_INCREMENT,
  `model_name` VARCHAR(45) NULL,
  `manufacturers_manufacturer_id` INT NOT NULL,
  PRIMARY KEY (`model_id`),
  INDEX `fk_models_manufacturers1_idx` (`manufacturers_manufacturer_id` ASC) VISIBLE,
  CONSTRAINT `fk_models_manufacturers1`
    FOREIGN KEY (`manufacturers_manufacturer_id`)
    REFERENCES `mydb`.`manufacturers` (`manufacturer_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`cars`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`cars` ;

CREATE TABLE IF NOT EXISTS `mydb`.`cars` (
  `car_id` INT NOT NULL AUTO_INCREMENT,
  `vin` VARCHAR(17) NOT NULL,
  `color` VARCHAR(45) NULL,
  `year` VARCHAR(45) NULL,
  `models_model_id` INT NOT NULL,
  PRIMARY KEY (`car_id`),
  UNIQUE INDEX `vin_UNIQUE` (`vin` ASC) VISIBLE,
  INDEX `fk_cars_models_idx` (`models_model_id` ASC) VISIBLE,
  CONSTRAINT `fk_cars_models`
    FOREIGN KEY (`models_model_id`)
    REFERENCES `mydb`.`models` (`model_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`customers`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`customers` ;

CREATE TABLE IF NOT EXISTS `mydb`.`customers` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `customer_id` INT NOT NULL,
  `customer_name` VARCHAR(45) NULL,
  `phone_number` VARCHAR(45) NULL,
  `email` VARCHAR(45) NOT NULL,
  `address` VARCHAR(45) NULL,
  `zip_code` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `state_province` VARCHAR(45) NULL,
  `country` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`stores`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`stores` ;

CREATE TABLE IF NOT EXISTS `mydb`.`stores` (
  `store_id` INT NOT NULL AUTO_INCREMENT COMMENT '\n',
  `store_name` VARCHAR(45) NULL,
  PRIMARY KEY (`store_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`salespersons`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`salespersons` ;

CREATE TABLE IF NOT EXISTS `mydb`.`salespersons` (
  `salespersons_id` INT NOT NULL AUTO_INCREMENT,
  `staff_id` VARCHAR(45) NOT NULL,
  `sales_name` VARCHAR(45) NULL,
  `stores_store_id` INT NOT NULL,
  PRIMARY KEY (`salespersons_id`),
  INDEX `fk_salespersons_stores1_idx` (`stores_store_id` ASC) VISIBLE,
  CONSTRAINT `fk_salespersons_stores1`
    FOREIGN KEY (`stores_store_id`)
    REFERENCES `mydb`.`stores` (`store_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `mydb`.`invoices`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`invoices` ;

CREATE TABLE IF NOT EXISTS `mydb`.`invoices` (
  `invoice_id` INT NOT NULL AUTO_INCREMENT,
  `number` VARCHAR(45) NOT NULL,
  `date` VARCHAR(45) NOT NULL,
  `cars_car_id` INT NOT NULL,
  `salespersons_salespersons_id` INT NOT NULL,
  `customers_id` INT NOT NULL,
  PRIMARY KEY (`invoice_id`),
  INDEX `fk_invoices_cars1_idx` (`cars_car_id` ASC) VISIBLE,
  INDEX `fk_invoices_salespersons1_idx` (`salespersons_salespersons_id` ASC) VISIBLE,
  INDEX `fk_invoices_customers1_idx` (`customers_id` ASC) VISIBLE,
  CONSTRAINT `fk_invoices_cars1`
    FOREIGN KEY (`cars_car_id`)
    REFERENCES `mydb`.`cars` (`car_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_salespersons1`
    FOREIGN KEY (`salespersons_salespersons_id`)
    REFERENCES `mydb`.`salespersons` (`salespersons_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_invoices_customers1`
    FOREIGN KEY (`customers_id`)
    REFERENCES `mydb`.`customers` (`id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
