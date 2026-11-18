-- Assets module database schema for FrontAccounting
-- Table: 0_ksf_assets

ALTER TABLE IF EXISTS `fa_assets` RENAME TO `0_ksf_assets`;

CREATE TABLE IF NOT EXISTS `0_ksf_assets` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(255) NOT NULL,
    `serial_number` VARCHAR(100) DEFAULT NULL,
    `category_id` INT(11) NOT NULL,
    `purchase_date` DATE DEFAULT NULL,
    `purchase_cost` DECIMAL(12,2) DEFAULT NULL,
    `current_value` DECIMAL(12,2) DEFAULT 0,
    `location` VARCHAR(100) DEFAULT NULL,
    `assigned_to` INT(11) DEFAULT NULL,
    `assigned_type` ENUM('employee','location','customer') DEFAULT NULL,
    `status` ENUM('active','in_storage','in_repair','disposed','retired') NOT NULL DEFAULT 'active',
    `notes` TEXT,
    `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `serial_number` (`serial_number`),
    KEY `category_id` (`category_id`),
    KEY `assigned_to` (`assigned_to`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
