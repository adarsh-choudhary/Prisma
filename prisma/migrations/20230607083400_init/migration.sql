/*
  Warnings:

  - You are about to drop the `User_detail` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `user` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `User_detail`;

-- DropTable
DROP TABLE `user`;

-- CreateTable
CREATE TABLE `users` (
    `Id` INTEGER NOT NULL AUTO_INCREMENT,
    `User_Name` VARCHAR(191) NOT NULL,
    `Password` VARCHAR(191) NOT NULL,
    `Contact` INTEGER NOT NULL,

    UNIQUE INDEX `users_Contact_key`(`Contact`),
    PRIMARY KEY (`Id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `user_detail` (
    `Id` INTEGER NOT NULL AUTO_INCREMENT,
    `Contact` INTEGER NOT NULL,
    `Address` VARCHAR(255) NOT NULL,

    UNIQUE INDEX `user_detail_Contact_key`(`Contact`),
    PRIMARY KEY (`Id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
