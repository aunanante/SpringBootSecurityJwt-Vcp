CREATE TABLE `DeltaSyncPosts` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fromId` bigint(20) unsigned NOT NULL,
  `title` text NOT NULL,
  `content` longtext,
  `post_status` varchar(20) DEFAULT NULL,
  `createdAt` timestamp(3) NOT NULL,
  `updatedAt` timestamp(3) NOT NULL,
  
  `_datastore_uuid` varchar(36) NOT NULL DEFAULT '0',
  `_version` int(11) unsigned DEFAULT '1',
  `_deleted` tinyint(1) DEFAULT '0',
  `_lastChangedAt` datetime(3) NOT NULL,
  `_ttl` datetime(3) NOT NULL,
  
  PRIMARY KEY (`id`),
  KEY `_datastore_uuid` (`_datastore_uuid`),
  KEY `fromId` (`fromId`,`_lastChangedAt`,`_version`)
);

CREATE TABLE `DeltaSyncComments` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fromId` bigint(20) unsigned NOT NULL,
  `postID` bigint(20) unsigned NOT NULL,
  `content` text,
  `createdAt` timestamp(3) NOT NULL,
  `updatedAt` timestamp(3) NOT NULL,
  
  `_datastore_uuid` varchar(36) NOT NULL DEFAULT '0',
  `_version` int(11) unsigned DEFAULT '1',
  `_deleted` tinyint(1) DEFAULT '0',
  `_lastChangedAt` datetime(3) NOT NULL,
  `_ttl` datetime(3) NOT NULL,
  
  PRIMARY KEY (`id`),
  KEY `_datastore_uuid` (`_datastore_uuid`),
  KEY `fromId` (`fromId`,`_lastChangedAt`,`_version`),
  KEY `comments_posts_ibfk_2` (`postID`),
  CONSTRAINT `comments_posts_ibfk_2` FOREIGN KEY (`postID`) REFERENCES `Posts` (`id`)