-- MySQL Script generated by MySQL Workbench
-- Thu Oct  6 14:22:24 2022
-- Model: New Model    Version: 1.0
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
SHOW WARNINGS;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `answears`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `answears` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `answears` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(45) NULL,
  `is_right` TINYINT NULL,
  `questions_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`id`, `questions_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `questions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `questions` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `questions` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `students`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `students` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `students` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` VARCHAR(45) NULL,
  `surname` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `students_has_tests`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `students_has_tests` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `students_has_tests` (
  `students_id` INT UNSIGNED NOT NULL,
  `tests_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`students_id`, `tests_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `tests`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tests` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `tests` (
  `id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` VARCHAR(45) NULL,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;

SHOW WARNINGS;

-- -----------------------------------------------------
-- Table `tests_has_questions`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `tests_has_questions` ;

SHOW WARNINGS;
CREATE TABLE IF NOT EXISTS `tests_has_questions` (
  `tests_id` INT UNSIGNED NOT NULL,
  `questions_id` INT UNSIGNED NOT NULL,
  PRIMARY KEY (`tests_id`, `questions_id`))
ENGINE = InnoDB;

SHOW WARNINGS;

SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;