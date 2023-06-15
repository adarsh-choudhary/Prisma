-- CreateTable
CREATE TABLE `Usesr` (
    `Id` INTEGER NOT NULL AUTO_INCREMENT,
    `User_Name` VARCHAR(191) NOT NULL,
    `Password` VARCHAR(191) NOT NULL,
    `Contact` INTEGER NOT NULL,

    UNIQUE INDEX `Usesr_Contact_key`(`Contact`),
    PRIMARY KEY (`Id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
