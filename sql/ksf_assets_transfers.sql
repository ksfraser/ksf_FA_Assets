-- Assets module database schema for FrontAccounting
-- Table: 0_ksf_assets_transfers

ALTER TABLE IF EXISTS `fa_asset_transfers` RENAME TO `0_ksf_assets_transfers`;

CREATE TABLE IF NOT EXISTS `0_ksf_assets_transfers` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `asset_id` INT(11) NOT NULL,
    `from_type` ENUM('employee','location','customer') DEFAULT NULL,
    `from_id` INT(11) DEFAULT NULL,
    `to_type` ENUM('employee','location','customer') NOT NULL,
    `to_id` INT(11) NOT NULL,
    `transferred_by` INT(11) NOT NULL,
    `transferred_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    KEY `asset_id` (`asset_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
