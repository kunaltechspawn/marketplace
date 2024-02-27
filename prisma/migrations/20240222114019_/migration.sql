-- CreateTable
CREATE TABLE `Session` (
    `id` VARCHAR(191) NOT NULL,
    `shop` VARCHAR(191) NOT NULL,
    `state` VARCHAR(191) NOT NULL,
    `isOnline` BOOLEAN NOT NULL DEFAULT false,
    `scope` VARCHAR(1000) NULL,
    `expires` DATETIME(3) NULL,
    `accessToken` VARCHAR(191) NOT NULL,
    `userId` BIGINT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Settings` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `shop` VARCHAR(191) NOT NULL,
    `default_commision` DOUBLE NULL,
    `allows_shipping` VARCHAR(191) NULL,
    `available_sizes` JSON NULL,
    `auto_publish_vendors` JSON NULL,
    `seller_shipping_methods` JSON NULL,
    `auto_publish_products` JSON NULL,
    `allowed_categories` JSON NULL,
    `allowed_countries` JSON NULL,
    `minimum_order_amount` DOUBLE NULL,
    `quantity_limit` INTEGER NULL,
    `onboarding_step` INTEGER NULL,
    `from_email` VARCHAR(191) NULL,
    `from_email_api_key` VARCHAR(191) NULL,

    UNIQUE INDEX `Settings_shop_key`(`shop`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Variants` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `shop` VARCHAR(191) NOT NULL,
    `title` VARCHAR(191) NOT NULL,
    `key` VARCHAR(191) NULL,
    `values` JSON NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
