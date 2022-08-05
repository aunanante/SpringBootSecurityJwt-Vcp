USE vcpdb;
CREATE TABLE `commerce` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `adresse` varchar(255) DEFAULT NULL,
  `commerce_name` varchar(255) DEFAULT NULL,
  `date_peremption` varchar(255) DEFAULT NULL,
  `date_transfert` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `payed` bit(1) DEFAULT NULL,
  `presentation` varchar(255) DEFAULT NULL,
  `proprietaire_name` varchar(255) DEFAULT NULL,
  `telephone` varchar(255) DEFAULT NULL,
  `transfert` float DEFAULT NULL,
  `type_transfert` varchar(255) DEFAULT NULL,
  `ville_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKkklhhc4pxqk7qy1uu9x87y90a` (`ville_id`),
  CONSTRAINT `FKkklhhc4pxqk7qy1uu9x87y90a` FOREIGN KEY (`ville_id`) REFERENCES `ville` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `product` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `active` bit(1) DEFAULT NULL,
  `date_created` datetime DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `last_update` datetime DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `sku` varchar(255) DEFAULT NULL,
  `unit_price` decimal(19,2) DEFAULT NULL,
  `units_in_stock` int DEFAULT NULL,
  `category_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK5cypb0k23bovo3rn1a5jqs6j4` (`category_id`),
  CONSTRAINT `FK5cypb0k23bovo3rn1a5jqs6j4` FOREIGN KEY (`category_id`) REFERENCES `product_category` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `product_category` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `category_name` varchar(255) DEFAULT NULL,
  `commerce_id` bigint NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKtixt5u1ydky758am22h3py5u0` (`commerce_id`),
  CONSTRAINT `FKtixt5u1ydky758am22h3py5u0` FOREIGN KEY (`commerce_id`) REFERENCES `commerce` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
CREATE TABLE `ville` (
  `id` bigint NOT NULL AUTO_INCREMENT,
  `ville_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `UK_mu5v10tual6wqydkxxg7ad68b` (`ville_name`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
