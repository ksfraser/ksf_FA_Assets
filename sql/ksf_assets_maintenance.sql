-- Assets module database schema for FrontAccounting
-- Table: 0_ksf_assets_maintenance

ALTER TABLE IF EXISTS `fa_asset_maintenance` RENAME TO `0_ksf_assets_maintenance`;

CREATE TABLE IF NOT EXISTS `0_ksf_assets_maintenance` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `asset_id` INT(11) NOT NULL,
    `maintenance_type` ENUM('preventive','repair','inspection','upgrade') NOT NULL DEFAULT 'preventive',
    `description` TEXT,
    `cost` DECIMAL(10,2) DEFAULT NULL,
    `performed_by` INT(11) DEFAULT NULL,
    `performed_at` DATETIME DEFAULT NULL,
    `next_due_date` DATE DEFAULT NULL,
    `created_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `asset_id` (`asset_id`),
    KEY `next_due_date` (`next_due_date`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
