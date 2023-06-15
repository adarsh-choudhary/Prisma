/*
  Warnings:

  - You are about to drop the `Users` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `Users`;

-- CreateTable
CREATE TABLE `user` (
    `Id` INTEGER NOT NULL AUTO_INCREMENT,
    `User_Name` VARCHAR(191) NOT NULL,
    `Password` VARCHAR(191) NOT NULL,
    `Contact` INTEGER NOT NULL,

    UNIQUE INDEX `user_Contact_key`(`Contact`),
    PRIMARY KEY (`Id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
