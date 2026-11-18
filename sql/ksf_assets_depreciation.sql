-- Assets module database schema for FrontAccounting
-- Table: 0_ksf_assets_depreciation

ALTER TABLE IF EXISTS `fa_asset_depreciation` RENAME TO `0_ksf_assets_depreciation`;

CREATE TABLE IF NOT EXISTS `0_ksf_assets_depreciation` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `asset_id` INT(11) NOT NULL,
    `year` YEAR NOT NULL,
    `opening_value` DECIMAL(12,2) NOT NULL,
    `depreciation` DECIMAL(12,2) NOT NULL,
    `closing_value` DECIMAL(12,2) NOT NULL,
    `recorded_at` DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`),
    UNIQUE KEY `asset_year` (`asset_id`,`year`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
