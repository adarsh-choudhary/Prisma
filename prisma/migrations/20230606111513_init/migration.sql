-- CreateTable
CREATE TABLE `User_detail` (
    `Id` INTEGER NOT NULL AUTO_INCREMENT,
    `Contact` INTEGER NOT NULL,
    `Address` VARCHAR(255) NOT NULL,

    UNIQUE INDEX `User_detail_Contact_key`(`Contact`),
    PRIMARY KEY (`Id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
