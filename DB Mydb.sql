#
# TABLE STRUCTURE FOR: Hotels
#

DROP TABLE IF EXISTS `Hotels`;

CREATE TABLE `Hotels` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Star` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Hotels` (`id`, `Name`, `Star`) VALUES (1, 'perferendis', '5');
INSERT INTO `Hotels` (`id`, `Name`, `Star`) VALUES (2, 'est', '3');
INSERT INTO `Hotels` (`id`, `Name`, `Star`) VALUES (3, 'pariatur', '1');
INSERT INTO `Hotels` (`id`, `Name`, `Star`) VALUES (4, 'ipsam', '3');
INSERT INTO `Hotels` (`id`, `Name`, `Star`) VALUES (5, 'corrupti', '3');
INSERT INTO `Hotels` (`id`, `Name`, `Star`) VALUES (6, 'molestias', '2');
INSERT INTO `Hotels` (`id`, `Name`, `Star`) VALUES (7, 'voluptatem', '3');
INSERT INTO `Hotels` (`id`, `Name`, `Star`) VALUES (8, 'iure', '2');
INSERT INTO `Hotels` (`id`, `Name`, `Star`) VALUES (9, 'quas', '1');
INSERT INTO `Hotels` (`id`, `Name`, `Star`) VALUES (10, 'itaque', '3');


#
# TABLE STRUCTURE FOR: Kitchen
#

DROP TABLE IF EXISTS `Kitchen`;

CREATE TABLE `Kitchen` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Star` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Products_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`Products_id`),
  KEY `fk_Kitchen_Products1_idx` (`Products_id`),
  CONSTRAINT `fk_Kitchen_Products1` FOREIGN KEY (`Products_id`) REFERENCES `Products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Kitchen` (`id`, `name`, `Star`, `Products_id`) VALUES (1, 'qui', '3.62739', 8);
INSERT INTO `Kitchen` (`id`, `name`, `Star`, `Products_id`) VALUES (2, 'velit', '1.9464', 9);
INSERT INTO `Kitchen` (`id`, `name`, `Star`, `Products_id`) VALUES (3, 'quidem', '1.03239', 4);
INSERT INTO `Kitchen` (`id`, `name`, `Star`, `Products_id`) VALUES (4, 'provident', '3.99145', 1);
INSERT INTO `Kitchen` (`id`, `name`, `Star`, `Products_id`) VALUES (5, 'nam', '3.92568', 3);
INSERT INTO `Kitchen` (`id`, `name`, `Star`, `Products_id`) VALUES (6, 'voluptatem', '2.61335', 5);
INSERT INTO `Kitchen` (`id`, `name`, `Star`, `Products_id`) VALUES (7, 'id', '3.00405', 7);
INSERT INTO `Kitchen` (`id`, `name`, `Star`, `Products_id`) VALUES (8, 'harum', '2.05916', 2);
INSERT INTO `Kitchen` (`id`, `name`, `Star`, `Products_id`) VALUES (9, 'provident', '3.17457', 6);
INSERT INTO `Kitchen` (`id`, `name`, `Star`, `Products_id`) VALUES (10, 'deleniti', '2.85385', 10);


#
# TABLE STRUCTURE FOR: Personal
#

DROP TABLE IF EXISTS `Personal`;

CREATE TABLE `Personal` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Personalcol` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `Hotels_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_Personal_Hotels1_idx` (`Hotels_id`),
  CONSTRAINT `fk_Personal_Hotels1` FOREIGN KEY (`Hotels_id`) REFERENCES `Hotels` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (1, 'harum', 'recusandae', 5);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (2, 'officia', 'quis', 1);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (3, 'excepturi', 'nemo', 10);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (4, 'vero', 'repellendus', 10);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (5, 'commodi', 'et', 1);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (6, 'tempore', 'aliquid', 1);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (7, 'et', 'vel', 9);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (8, 'nulla', 'eligendi', 1);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (9, 'dolorum', 'odit', 8);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (10, 'illo', 'est', 1);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (11, 'impedit', 'debitis', 6);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (12, 'ea', 'ut', 10);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (13, 'qui', 'molestiae', 4);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (14, 'libero', 'eos', 9);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (15, 'et', 'quia', 6);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (16, 'vitae', 'eveniet', 5);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (17, 'doloremque', 'explicabo', 9);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (18, 'consequatur', 'unde', 5);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (19, 'similique', 'quibusdam', 5);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (20, 'illum', 'totam', 10);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (21, 'ea', 'nulla', 8);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (22, 'velit', 'et', 3);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (23, 'fugit', 'sunt', 5);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (24, 'sint', 'aut', 8);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (25, 'alias', 'autem', 8);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (26, 'commodi', 'saepe', 4);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (27, 'dicta', 'nobis', 2);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (28, 'enim', 'blanditiis', 7);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (29, 'atque', 'recusandae', 7);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (30, 'veritatis', 'ut', 7);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (31, 'non', 'delectus', 8);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (32, 'eos', 'et', 3);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (33, 'quo', 'voluptas', 3);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (34, 'et', 'tempore', 9);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (35, 'natus', 'fugiat', 3);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (36, 'atque', 'eligendi', 10);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (37, 'accusamus', 'minima', 6);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (38, 'architecto', 'voluptas', 6);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (39, 'animi', 'et', 4);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (40, 'et', 'odio', 2);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (41, 'possimus', 'accusamus', 6);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (42, 'cum', 'quo', 2);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (43, 'officiis', 'excepturi', 7);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (44, 'quia', 'quae', 2);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (45, 'blanditiis', 'est', 2);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (46, 'voluptas', 'omnis', 4);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (47, 'quia', 'id', 7);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (48, 'et', 'aliquam', 3);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (49, 'ipsa', 'sed', 4);
INSERT INTO `Personal` (`id`, `name`, `Personalcol`, `Hotels_id`) VALUES (50, 'nam', 'voluptatum', 9);


#
# TABLE STRUCTURE FOR: Products
#

DROP TABLE IF EXISTS `Products`;

CREATE TABLE `Products` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Products` (`id`, `name`) VALUES (1, 'minus');
INSERT INTO `Products` (`id`, `name`) VALUES (2, 'cumque');
INSERT INTO `Products` (`id`, `name`) VALUES (3, 'sint');
INSERT INTO `Products` (`id`, `name`) VALUES (4, 'voluptatem');
INSERT INTO `Products` (`id`, `name`) VALUES (5, 'ipsam');
INSERT INTO `Products` (`id`, `name`) VALUES (6, 'ut');
INSERT INTO `Products` (`id`, `name`) VALUES (7, 'ut');
INSERT INTO `Products` (`id`, `name`) VALUES (8, 'qui');
INSERT INTO `Products` (`id`, `name`) VALUES (9, 'beatae');
INSERT INTO `Products` (`id`, `name`) VALUES (10, 'et');
INSERT INTO `Products` (`id`, `name`) VALUES (11, 'et');
INSERT INTO `Products` (`id`, `name`) VALUES (12, 'voluptate');
INSERT INTO `Products` (`id`, `name`) VALUES (13, 'fuga');
INSERT INTO `Products` (`id`, `name`) VALUES (14, 'quod');
INSERT INTO `Products` (`id`, `name`) VALUES (15, 'recusandae');
INSERT INTO `Products` (`id`, `name`) VALUES (16, 'dolore');
INSERT INTO `Products` (`id`, `name`) VALUES (17, 'adipisci');
INSERT INTO `Products` (`id`, `name`) VALUES (18, 'suscipit');
INSERT INTO `Products` (`id`, `name`) VALUES (19, 'voluptatibus');
INSERT INTO `Products` (`id`, `name`) VALUES (20, 'vel');
INSERT INTO `Products` (`id`, `name`) VALUES (21, 'ut');
INSERT INTO `Products` (`id`, `name`) VALUES (22, 'voluptatem');
INSERT INTO `Products` (`id`, `name`) VALUES (23, 'quo');
INSERT INTO `Products` (`id`, `name`) VALUES (24, 'vel');
INSERT INTO `Products` (`id`, `name`) VALUES (25, 'consequatur');
INSERT INTO `Products` (`id`, `name`) VALUES (26, 'dolor');
INSERT INTO `Products` (`id`, `name`) VALUES (27, 'nesciunt');
INSERT INTO `Products` (`id`, `name`) VALUES (28, 'et');
INSERT INTO `Products` (`id`, `name`) VALUES (29, 'necessitatibus');
INSERT INTO `Products` (`id`, `name`) VALUES (30, 'iste');
INSERT INTO `Products` (`id`, `name`) VALUES (31, 'quis');
INSERT INTO `Products` (`id`, `name`) VALUES (32, 'laborum');
INSERT INTO `Products` (`id`, `name`) VALUES (33, 'sed');
INSERT INTO `Products` (`id`, `name`) VALUES (34, 'saepe');
INSERT INTO `Products` (`id`, `name`) VALUES (35, 'eveniet');
INSERT INTO `Products` (`id`, `name`) VALUES (36, 'enim');
INSERT INTO `Products` (`id`, `name`) VALUES (37, 'tempore');
INSERT INTO `Products` (`id`, `name`) VALUES (38, 'doloribus');
INSERT INTO `Products` (`id`, `name`) VALUES (39, 'voluptas');
INSERT INTO `Products` (`id`, `name`) VALUES (40, 'pariatur');
INSERT INTO `Products` (`id`, `name`) VALUES (41, 'sunt');
INSERT INTO `Products` (`id`, `name`) VALUES (42, 'facere');
INSERT INTO `Products` (`id`, `name`) VALUES (43, 'sed');
INSERT INTO `Products` (`id`, `name`) VALUES (44, 'facere');
INSERT INTO `Products` (`id`, `name`) VALUES (45, 'assumenda');
INSERT INTO `Products` (`id`, `name`) VALUES (46, 'ipsum');
INSERT INTO `Products` (`id`, `name`) VALUES (47, 'necessitatibus');
INSERT INTO `Products` (`id`, `name`) VALUES (48, 'natus');
INSERT INTO `Products` (`id`, `name`) VALUES (49, 'qui');
INSERT INTO `Products` (`id`, `name`) VALUES (50, 'illo');
INSERT INTO `Products` (`id`, `name`) VALUES (51, 'est');
INSERT INTO `Products` (`id`, `name`) VALUES (52, 'ex');
INSERT INTO `Products` (`id`, `name`) VALUES (53, 'odio');
INSERT INTO `Products` (`id`, `name`) VALUES (54, 'ad');
INSERT INTO `Products` (`id`, `name`) VALUES (55, 'magni');
INSERT INTO `Products` (`id`, `name`) VALUES (56, 'aut');
INSERT INTO `Products` (`id`, `name`) VALUES (57, 'qui');
INSERT INTO `Products` (`id`, `name`) VALUES (58, 'iste');
INSERT INTO `Products` (`id`, `name`) VALUES (59, 'pariatur');
INSERT INTO `Products` (`id`, `name`) VALUES (60, 'temporibus');
INSERT INTO `Products` (`id`, `name`) VALUES (61, 'rerum');
INSERT INTO `Products` (`id`, `name`) VALUES (62, 'hic');
INSERT INTO `Products` (`id`, `name`) VALUES (63, 'consequatur');
INSERT INTO `Products` (`id`, `name`) VALUES (64, 'et');
INSERT INTO `Products` (`id`, `name`) VALUES (65, 'quibusdam');
INSERT INTO `Products` (`id`, `name`) VALUES (66, 'dolore');
INSERT INTO `Products` (`id`, `name`) VALUES (67, 'voluptatem');
INSERT INTO `Products` (`id`, `name`) VALUES (68, 'voluptas');
INSERT INTO `Products` (`id`, `name`) VALUES (69, 'accusamus');
INSERT INTO `Products` (`id`, `name`) VALUES (70, 'exercitationem');
INSERT INTO `Products` (`id`, `name`) VALUES (71, 'consequuntur');
INSERT INTO `Products` (`id`, `name`) VALUES (72, 'consequatur');
INSERT INTO `Products` (`id`, `name`) VALUES (73, 'nemo');
INSERT INTO `Products` (`id`, `name`) VALUES (74, 'saepe');
INSERT INTO `Products` (`id`, `name`) VALUES (75, 'amet');
INSERT INTO `Products` (`id`, `name`) VALUES (76, 'nihil');
INSERT INTO `Products` (`id`, `name`) VALUES (77, 'ipsam');
INSERT INTO `Products` (`id`, `name`) VALUES (78, 'et');
INSERT INTO `Products` (`id`, `name`) VALUES (79, 'quas');
INSERT INTO `Products` (`id`, `name`) VALUES (80, 'est');
INSERT INTO `Products` (`id`, `name`) VALUES (81, 'qui');
INSERT INTO `Products` (`id`, `name`) VALUES (82, 'non');
INSERT INTO `Products` (`id`, `name`) VALUES (83, 'sed');
INSERT INTO `Products` (`id`, `name`) VALUES (84, 'dolore');
INSERT INTO `Products` (`id`, `name`) VALUES (85, 'magnam');
INSERT INTO `Products` (`id`, `name`) VALUES (86, 'laborum');
INSERT INTO `Products` (`id`, `name`) VALUES (87, 'ex');
INSERT INTO `Products` (`id`, `name`) VALUES (88, 'sit');
INSERT INTO `Products` (`id`, `name`) VALUES (89, 'distinctio');
INSERT INTO `Products` (`id`, `name`) VALUES (90, 'odit');
INSERT INTO `Products` (`id`, `name`) VALUES (91, 'voluptatem');
INSERT INTO `Products` (`id`, `name`) VALUES (92, 'aut');
INSERT INTO `Products` (`id`, `name`) VALUES (93, 'et');
INSERT INTO `Products` (`id`, `name`) VALUES (94, 'et');
INSERT INTO `Products` (`id`, `name`) VALUES (95, 'ea');
INSERT INTO `Products` (`id`, `name`) VALUES (96, 'ut');
INSERT INTO `Products` (`id`, `name`) VALUES (97, 'pariatur');
INSERT INTO `Products` (`id`, `name`) VALUES (98, 'reiciendis');
INSERT INTO `Products` (`id`, `name`) VALUES (99, 'rem');
INSERT INTO `Products` (`id`, `name`) VALUES (100, 'nobis');
INSERT INTO `Products` (`id`, `name`) VALUES (101, 'totam');
INSERT INTO `Products` (`id`, `name`) VALUES (102, 'vel');
INSERT INTO `Products` (`id`, `name`) VALUES (103, 'numquam');
INSERT INTO `Products` (`id`, `name`) VALUES (104, 'quaerat');
INSERT INTO `Products` (`id`, `name`) VALUES (105, 'facere');
INSERT INTO `Products` (`id`, `name`) VALUES (106, 'sequi');
INSERT INTO `Products` (`id`, `name`) VALUES (107, 'qui');
INSERT INTO `Products` (`id`, `name`) VALUES (108, 'est');
INSERT INTO `Products` (`id`, `name`) VALUES (109, 'ut');
INSERT INTO `Products` (`id`, `name`) VALUES (110, 'quia');
INSERT INTO `Products` (`id`, `name`) VALUES (111, 'aut');
INSERT INTO `Products` (`id`, `name`) VALUES (112, 'maxime');
INSERT INTO `Products` (`id`, `name`) VALUES (113, 'eaque');
INSERT INTO `Products` (`id`, `name`) VALUES (114, 'consequatur');
INSERT INTO `Products` (`id`, `name`) VALUES (115, 'voluptatem');
INSERT INTO `Products` (`id`, `name`) VALUES (116, 'temporibus');
INSERT INTO `Products` (`id`, `name`) VALUES (117, 'soluta');
INSERT INTO `Products` (`id`, `name`) VALUES (118, 'et');
INSERT INTO `Products` (`id`, `name`) VALUES (119, 'voluptatem');
INSERT INTO `Products` (`id`, `name`) VALUES (120, 'tempora');
INSERT INTO `Products` (`id`, `name`) VALUES (121, 'quisquam');
INSERT INTO `Products` (`id`, `name`) VALUES (122, 'ducimus');
INSERT INTO `Products` (`id`, `name`) VALUES (123, 'sit');
INSERT INTO `Products` (`id`, `name`) VALUES (124, 'nam');
INSERT INTO `Products` (`id`, `name`) VALUES (125, 'non');
INSERT INTO `Products` (`id`, `name`) VALUES (126, 'placeat');
INSERT INTO `Products` (`id`, `name`) VALUES (127, 'minus');
INSERT INTO `Products` (`id`, `name`) VALUES (128, 'excepturi');
INSERT INTO `Products` (`id`, `name`) VALUES (129, 'ut');
INSERT INTO `Products` (`id`, `name`) VALUES (130, 'possimus');
INSERT INTO `Products` (`id`, `name`) VALUES (131, 'quaerat');
INSERT INTO `Products` (`id`, `name`) VALUES (132, 'est');
INSERT INTO `Products` (`id`, `name`) VALUES (133, 'voluptas');
INSERT INTO `Products` (`id`, `name`) VALUES (134, 'qui');
INSERT INTO `Products` (`id`, `name`) VALUES (135, 'error');
INSERT INTO `Products` (`id`, `name`) VALUES (136, 'laboriosam');
INSERT INTO `Products` (`id`, `name`) VALUES (137, 'non');
INSERT INTO `Products` (`id`, `name`) VALUES (138, 'rerum');
INSERT INTO `Products` (`id`, `name`) VALUES (139, 'quia');
INSERT INTO `Products` (`id`, `name`) VALUES (140, 'molestias');
INSERT INTO `Products` (`id`, `name`) VALUES (141, 'tempora');
INSERT INTO `Products` (`id`, `name`) VALUES (142, 'ea');
INSERT INTO `Products` (`id`, `name`) VALUES (143, 'assumenda');
INSERT INTO `Products` (`id`, `name`) VALUES (144, 'nobis');
INSERT INTO `Products` (`id`, `name`) VALUES (145, 'est');
INSERT INTO `Products` (`id`, `name`) VALUES (146, 'optio');
INSERT INTO `Products` (`id`, `name`) VALUES (147, 'iste');
INSERT INTO `Products` (`id`, `name`) VALUES (148, 'error');
INSERT INTO `Products` (`id`, `name`) VALUES (149, 'voluptatem');
INSERT INTO `Products` (`id`, `name`) VALUES (150, 'cum');
INSERT INTO `Products` (`id`, `name`) VALUES (151, 'similique');
INSERT INTO `Products` (`id`, `name`) VALUES (152, 'ut');
INSERT INTO `Products` (`id`, `name`) VALUES (153, 'est');
INSERT INTO `Products` (`id`, `name`) VALUES (154, 'officiis');
INSERT INTO `Products` (`id`, `name`) VALUES (155, 'atque');
INSERT INTO `Products` (`id`, `name`) VALUES (156, 'sed');
INSERT INTO `Products` (`id`, `name`) VALUES (157, 'magni');
INSERT INTO `Products` (`id`, `name`) VALUES (158, 'neque');
INSERT INTO `Products` (`id`, `name`) VALUES (159, 'hic');
INSERT INTO `Products` (`id`, `name`) VALUES (160, 'quis');
INSERT INTO `Products` (`id`, `name`) VALUES (161, 'amet');
INSERT INTO `Products` (`id`, `name`) VALUES (162, 'temporibus');
INSERT INTO `Products` (`id`, `name`) VALUES (163, 'nisi');
INSERT INTO `Products` (`id`, `name`) VALUES (164, 'et');
INSERT INTO `Products` (`id`, `name`) VALUES (165, 'magnam');
INSERT INTO `Products` (`id`, `name`) VALUES (166, 'unde');
INSERT INTO `Products` (`id`, `name`) VALUES (167, 'maxime');
INSERT INTO `Products` (`id`, `name`) VALUES (168, 'molestiae');
INSERT INTO `Products` (`id`, `name`) VALUES (169, 'est');
INSERT INTO `Products` (`id`, `name`) VALUES (170, 'explicabo');
INSERT INTO `Products` (`id`, `name`) VALUES (171, 'consequatur');
INSERT INTO `Products` (`id`, `name`) VALUES (172, 'quibusdam');
INSERT INTO `Products` (`id`, `name`) VALUES (173, 'autem');
INSERT INTO `Products` (`id`, `name`) VALUES (174, 'blanditiis');
INSERT INTO `Products` (`id`, `name`) VALUES (175, 'dolores');
INSERT INTO `Products` (`id`, `name`) VALUES (176, 'dolores');
INSERT INTO `Products` (`id`, `name`) VALUES (177, 'dolores');
INSERT INTO `Products` (`id`, `name`) VALUES (178, 'aut');
INSERT INTO `Products` (`id`, `name`) VALUES (179, 'sint');
INSERT INTO `Products` (`id`, `name`) VALUES (180, 'suscipit');
INSERT INTO `Products` (`id`, `name`) VALUES (181, 'tempora');
INSERT INTO `Products` (`id`, `name`) VALUES (182, 'expedita');
INSERT INTO `Products` (`id`, `name`) VALUES (183, 'ea');
INSERT INTO `Products` (`id`, `name`) VALUES (184, 'illo');
INSERT INTO `Products` (`id`, `name`) VALUES (185, 'consequatur');
INSERT INTO `Products` (`id`, `name`) VALUES (186, 'quo');
INSERT INTO `Products` (`id`, `name`) VALUES (187, 'excepturi');
INSERT INTO `Products` (`id`, `name`) VALUES (188, 'consequatur');
INSERT INTO `Products` (`id`, `name`) VALUES (189, 'quam');
INSERT INTO `Products` (`id`, `name`) VALUES (190, 'sit');
INSERT INTO `Products` (`id`, `name`) VALUES (191, 'ut');
INSERT INTO `Products` (`id`, `name`) VALUES (192, 'totam');
INSERT INTO `Products` (`id`, `name`) VALUES (193, 'esse');
INSERT INTO `Products` (`id`, `name`) VALUES (194, 'fugiat');
INSERT INTO `Products` (`id`, `name`) VALUES (195, 'corporis');
INSERT INTO `Products` (`id`, `name`) VALUES (196, 'magnam');
INSERT INTO `Products` (`id`, `name`) VALUES (197, 'dolores');
INSERT INTO `Products` (`id`, `name`) VALUES (198, 'est');
INSERT INTO `Products` (`id`, `name`) VALUES (199, 'nesciunt');
INSERT INTO `Products` (`id`, `name`) VALUES (200, 'voluptas');


#
# TABLE STRUCTURE FOR: Products_has_Store
#

DROP TABLE IF EXISTS `Products_has_Store`;

CREATE TABLE `Products_has_Store` (
  `Products_id` int(11) NOT NULL,
  `Store_id` int(11) NOT NULL,
  PRIMARY KEY (`Products_id`,`Store_id`),
  KEY `fk_Products_has_Store_Store1_idx` (`Store_id`),
  KEY `fk_Products_has_Store_Products1_idx` (`Products_id`),
  CONSTRAINT `fk_Products_has_Store_Products1` FOREIGN KEY (`Products_id`) REFERENCES `Products` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Products_has_Store_Store1` FOREIGN KEY (`Store_id`) REFERENCES `Store` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (1, 1);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (2, 2);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (3, 3);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (4, 4);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (5, 5);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (6, 6);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (7, 7);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (8, 8);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (9, 9);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (10, 10);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (11, 11);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (12, 12);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (13, 13);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (14, 14);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (15, 15);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (16, 16);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (17, 17);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (18, 18);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (19, 19);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (20, 20);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (21, 1);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (22, 2);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (23, 3);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (24, 4);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (25, 5);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (26, 6);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (27, 7);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (28, 8);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (29, 9);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (30, 10);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (31, 11);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (32, 12);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (33, 13);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (34, 14);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (35, 15);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (36, 16);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (37, 17);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (38, 18);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (39, 19);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (40, 20);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (41, 1);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (42, 2);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (43, 3);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (44, 4);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (45, 5);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (46, 6);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (47, 7);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (48, 8);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (49, 9);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (50, 10);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (51, 11);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (52, 12);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (53, 13);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (54, 14);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (55, 15);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (56, 16);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (57, 17);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (58, 18);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (59, 19);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (60, 20);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (61, 1);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (62, 2);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (63, 3);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (64, 4);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (65, 5);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (66, 6);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (67, 7);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (68, 8);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (69, 9);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (70, 10);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (71, 11);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (72, 12);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (73, 13);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (74, 14);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (75, 15);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (76, 16);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (77, 17);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (78, 18);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (79, 19);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (80, 20);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (81, 1);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (82, 2);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (83, 3);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (84, 4);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (85, 5);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (86, 6);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (87, 7);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (88, 8);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (89, 9);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (90, 10);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (91, 11);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (92, 12);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (93, 13);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (94, 14);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (95, 15);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (96, 16);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (97, 17);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (98, 18);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (99, 19);
INSERT INTO `Products_has_Store` (`Products_id`, `Store_id`) VALUES (100, 20);


#
# TABLE STRUCTURE FOR: Store
#

DROP TABLE IF EXISTS `Store`;

CREATE TABLE `Store` (
  `id` int(11) NOT NULL,
  `name` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Store` (`id`, `name`) VALUES (1, 'debitis');
INSERT INTO `Store` (`id`, `name`) VALUES (2, 'ut');
INSERT INTO `Store` (`id`, `name`) VALUES (3, 'est');
INSERT INTO `Store` (`id`, `name`) VALUES (4, 'magni');
INSERT INTO `Store` (`id`, `name`) VALUES (5, 'nemo');
INSERT INTO `Store` (`id`, `name`) VALUES (6, 'qui');
INSERT INTO `Store` (`id`, `name`) VALUES (7, 'inventore');
INSERT INTO `Store` (`id`, `name`) VALUES (8, 'omnis');
INSERT INTO `Store` (`id`, `name`) VALUES (9, 'rerum');
INSERT INTO `Store` (`id`, `name`) VALUES (10, 'eaque');
INSERT INTO `Store` (`id`, `name`) VALUES (11, 'laboriosam');
INSERT INTO `Store` (`id`, `name`) VALUES (12, 'cumque');
INSERT INTO `Store` (`id`, `name`) VALUES (13, 'iure');
INSERT INTO `Store` (`id`, `name`) VALUES (14, 'omnis');
INSERT INTO `Store` (`id`, `name`) VALUES (15, 'laboriosam');
INSERT INTO `Store` (`id`, `name`) VALUES (16, 'in');
INSERT INTO `Store` (`id`, `name`) VALUES (17, 'dolorem');
INSERT INTO `Store` (`id`, `name`) VALUES (18, 'magni');
INSERT INTO `Store` (`id`, `name`) VALUES (19, 'debitis');
INSERT INTO `Store` (`id`, `name`) VALUES (20, 'molestiae');


#
# TABLE STRUCTURE FOR: Store_has_Hotels
#

DROP TABLE IF EXISTS `Store_has_Hotels`;

CREATE TABLE `Store_has_Hotels` (
  `id` varchar(45) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Store_id` int(11) NOT NULL,
  `Hotels_id` int(11) NOT NULL,
  PRIMARY KEY (`id`,`Store_id`,`Hotels_id`),
  KEY `fk_Store_has_Hotels_Hotels1_idx` (`Hotels_id`),
  KEY `fk_Store_has_Hotels_Store1_idx` (`Store_id`),
  CONSTRAINT `fk_Store_has_Hotels_Hotels1` FOREIGN KEY (`Hotels_id`) REFERENCES `Hotels` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Store_has_Hotels_Store1` FOREIGN KEY (`Store_id`) REFERENCES `Store` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('1', 17, 7);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('10', 4, 4);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('11', 9, 9);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('12', 13, 3);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('13', 18, 8);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('14', 15, 5);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('15', 3, 3);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('16', 8, 8);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('17', 11, 1);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('18', 1, 1);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('19', 20, 10);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('2', 7, 7);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('20', 14, 4);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('3', 10, 10);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('4', 19, 9);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('5', 5, 5);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('6', 12, 2);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('7', 6, 6);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('8', 16, 6);
INSERT INTO `Store_has_Hotels` (`id`, `Store_id`, `Hotels_id`) VALUES ('9', 2, 2);


