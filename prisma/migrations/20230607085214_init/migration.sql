/*
  Warnings:

  - Added the required column `user_id` to the `user_detail` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `user_detail` ADD COLUMN `user_id` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `user_detail` ADD CONSTRAINT `user_detail_user_id_fkey` FOREIGN KEY (`user_id`) REFERENCES `users`(`Id`) ON DELETE RESTRICT ON UPDATE CASCADE;
