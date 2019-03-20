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
-- Table `mydb`.`message`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `mydb`.`message` ;

CREATE TABLE IF NOT EXISTS `mydb`.`message` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `user_name` VARCHAR(45) NULL,
  `message_title` VARCHAR(45) NULL,
  `message_body` TEXT(1000) NULL,
  `creation_date` VARCHAR(45) NULL,
  `last_edited` VARCHAR(45) NULL,
  `is_active` TINYINT NOT NULL DEFAULT 1,
  PRIMARY KEY (`id`))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;

-- -----------------------------------------------------
-- Data for table `mydb`.`message`
-- -----------------------------------------------------
START TRANSACTION;
USE `mydb`;
INSERT INTO `mydb`.`message` (`id`, `user_name`, `message_title`, `message_body`, `creation_date`, `last_edited`, `is_active`) VALUES (1, 'todd', 'do dishes', 'Lorem ipsum dolor sit amet, ei alii mazim aeterno sea, ut pri malis nominati dissentias. Duo docendi eleifend contentiones no. Probatus forensibus id quo, his te option conceptam.', 'Tue Mar 18 08:59:05 MDT 2019', 'Tue Mar 18 08:59:05 MDT 2019', 1);
INSERT INTO `mydb`.`message` (`id`, `user_name`, `message_title`, `message_body`, `creation_date`, `last_edited`, `is_active`) VALUES (2, 'todd', 'do laundry', 'Lorem ipsum dolor sit amet, ei alii mazim aeterno sea, ut pri malis nominati dissentias. Duo docendi eleifend contentiones no. Probatus forensibus id quo, his te option conceptam.', 'Tue Mar 18 09:59:05 MDT 2019', 'Tue Mar 18 09:59:05 MDT 2019', 1);

COMMIT;

