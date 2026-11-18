-- Assets module database schema for FrontAccounting
-- Table: 0_ksf_assets_categories

ALTER TABLE IF EXISTS `fa_asset_categories` RENAME TO `0_ksf_assets_categories`;

CREATE TABLE IF NOT EXISTS `0_ksf_assets_categories` (
    `id` INT(11) NOT NULL AUTO_INCREMENT,
    `name` VARCHAR(100) NOT NULL,
    `description` VARCHAR(255) DEFAULT NULL,
    `depreciation_type` ENUM('none','straight_line','declining','sum_of_years') NOT NULL DEFAULT 'none',
    `useful_life_years` INT(3) DEFAULT NULL,
    `salvage_value` DECIMAL(12,2) DEFAULT 0,
    `parent_category_id` INT(11) DEFAULT NULL,
    PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
