CREATE TABLE `User` (
    `userId` varchar(45) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    `name` varchar(45) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'no name',
    `email` varchar(45) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    `picture` varchar(45) CHARACTER SET utf8mb4 NOT NULL DEFAULT 'no picture',
    `createdAt` varchar(45) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    `lastLoginAt` varchar(45) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    PRIMARY KEY (`userId`),
    UNIQUE KEY `id_UNIQUE` (`userId`),
    UNIQUE KEY `email_UNIQUE` (`email`)
);

CREATE TABLE `Blog` (
    `blogId` varchar(45) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    `blogName` varchar(45) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    `createdAt` varchar(45) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    `blogAuthorId` varchar(45) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    PRIMARY KEY (`blogId`),
    UNIQUE KEY `blogId_UNIQUE` (`blogId`),
    KEY `blogAuthorId` (`blogAuthorId`),
    CONSTRAINT `blogAuthorId` FOREIGN KEY (`blogAuthorId`) REFERENCES `User` (`userId`) ON DELETE NO ACTION ON UPDATE NO ACTION
);

CREATE TABLE `Post` (
    `postId` varchar(45) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    `postTitle` varchar(45) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    `postContent` varchar(256) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    `blogId` varchar(45) CHARACTER SET utf8mb4 NOT NULL DEFAULT '',
    PRIMARY KEY (`postId`),
    UNIQUE KEY `postId_UNIQUE` (`postId`),
    KEY `blogId` (`blogId`),
    CONSTRAINT `blogId` FOREIGN KEY (`blogId`) REFERENCES `Blog` (`blogId`) ON DELETE NO ACTION ON UPDATE NO ACTION
);