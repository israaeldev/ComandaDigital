CREATE TABLE `client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `endereco` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `telefone` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `dish` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `price` double DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `status` varchar(255) DEFAULT NULL,
  `idclient` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKluoka7nb4e9wkmrio13obphnu` (`idclient`),
  CONSTRAINT `FKluoka7nb4e9wkmrio13obphnu` FOREIGN KEY (`idclient`) REFERENCES `client` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

CREATE TABLE `orders_dish` (
  `orders_id` int(11) NOT NULL,
  `dish_id` bigint(20) NOT NULL,
  KEY `FKqcdgw1ujxs91t9u8qy7klitoq` (`dish_id`),
  KEY `FKa0mnilcb3c8fwfl01u1hmsugv` (`orders_id`),
  CONSTRAINT `FKa0mnilcb3c8fwfl01u1hmsugv` FOREIGN KEY (`orders_id`) REFERENCES `orders` (`id`),
  CONSTRAINT `FKqcdgw1ujxs91t9u8qy7klitoq` FOREIGN KEY (`dish_id`) REFERENCES `dish` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
