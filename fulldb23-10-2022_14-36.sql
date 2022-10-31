#
# TABLE STRUCTURE FOR: media
#

DROP TABLE IF EXISTS `media`;

CREATE TABLE `media` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `media_type_id` bigint(20) unsigned DEFAULT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filename` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `size` int(11) DEFAULT NULL,
  `metadata` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`metadata`)),
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `user_id` (`user_id`),
  KEY `media_type_id` (`media_type_id`),
  CONSTRAINT `media_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `media_ibfk_2` FOREIGN KEY (`media_type_id`) REFERENCES `media_types` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('1', '6', '36', 'Iste reprehenderit magnam ut. Cum in ad doloremque sequi. Perspiciatis porro a a est architecto. Rem dignissimos rerum ut molestiae maxime molestiae qui. Minus ipsa dolorem quos nam hic perferendis facilis.', 'explicabo', 81206, NULL, '2022-09-19 21:39:53', '2007-08-28 14:59:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('2', '9', '11', 'Et enim quos et. Quo corporis qui et ut eveniet. Laborum in unde minima laudantium rem totam quo rerum. Laboriosam dolores rerum reprehenderit id voluptatem amet sit quis.', 'laborum', 752291766, NULL, '1972-06-07 14:33:21', '1979-12-27 15:15:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('3', '10', '38', 'Exercitationem adipisci dolore illum non. Quam repellat ea molestiae optio sit unde atque. Velit dignissimos rerum quis vel tempore dolore debitis aut. Recusandae voluptatem dolorum consequatur aut.', 'illum', 9144646, NULL, '2004-04-21 08:42:08', '1975-01-28 23:40:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('4', '2', '52', 'Vel hic illo odit dolor ratione ea. Doloremque laborum ipsam nisi suscipit sit. Et tempora odio placeat nostrum.', 'ratione', 432126, NULL, '1983-11-04 07:20:34', '1980-10-09 08:30:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('5', '4', '98', 'Recusandae quis autem sit iusto quod. Non asperiores quaerat earum ipsum iure consequatur neque. Debitis voluptatem commodi et laborum commodi. Quaerat consectetur vitae voluptates voluptas labore consequatur animi.', 'animi', 7716, NULL, '1985-03-09 11:04:51', '1993-10-17 01:34:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('6', '5', '51', 'Soluta non quae possimus aspernatur eum quod quia. Rerum consequatur deserunt animi asperiores ratione. Odit voluptatem placeat non voluptatem culpa id.', 'vitae', 6857, NULL, '2019-08-18 10:30:58', '1993-10-16 07:55:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('7', '10', '67', 'Dolor facere enim beatae qui. Quia rerum voluptatem porro.', 'eum', 575365846, NULL, '2020-05-23 13:25:56', '2006-01-05 21:20:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('8', '10', '44', 'Vel sed temporibus ullam nulla dolor aut. Eos voluptatem reprehenderit expedita corporis. Rem sit est tenetur eius.', 'aperiam', 31571, NULL, '2013-03-06 13:15:01', '2002-07-24 02:27:13');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('9', '4', '85', 'Perferendis libero voluptatum nesciunt quisquam. Harum fugit dignissimos amet. Hic repellendus a non voluptates.', 'sit', 819839945, NULL, '1976-08-27 02:44:00', '1980-06-06 15:25:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('10', '8', '96', 'Error autem repudiandae repellendus. Perferendis tenetur numquam sit velit rem quo. Sit iusto officia aperiam natus.', 'praesentium', 6, NULL, '2014-01-28 11:44:35', '1995-10-13 05:10:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('11', '9', '21', 'Sunt aut et vel aut sint. A tenetur id vero voluptatem. Quia reiciendis ut quaerat delectus.', 'eum', 1117684, NULL, '1994-10-27 23:12:22', '1976-07-09 13:43:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('12', '6', '51', 'Dolorem qui quo occaecati at est. Dicta voluptatem distinctio ad est. Qui itaque quo exercitationem enim fuga occaecati. Libero voluptate sunt sit commodi nemo.', 'exercitationem', 4069, NULL, '1982-12-23 16:12:11', '1970-02-18 11:25:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('13', '5', '91', 'Occaecati odit ea quis officiis nihil ut. Similique perspiciatis mollitia cupiditate labore molestiae recusandae. Esse sunt mollitia quia consequatur ullam.', 'quas', 7725380, NULL, '1982-11-10 14:32:33', '2011-09-12 04:42:55');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('14', '2', '73', 'Cum quo autem quis ullam voluptate atque aut. Velit non dolores eaque in quos. Hic deleniti asperiores molestias facere odio expedita qui.', 'aut', 12, NULL, '1992-05-22 14:52:19', '2003-01-09 19:55:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('15', '6', '49', 'Rerum assumenda vel omnis nihil explicabo esse temporibus qui. Pariatur minima labore minima vero labore vel et qui. Dolorem repellat ut qui.', 'aut', 55463310, NULL, '1979-09-02 22:03:25', '1976-11-27 01:32:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('16', '5', '20', 'Pariatur qui laudantium voluptatibus sed voluptas saepe dicta eum. Esse esse consequuntur perferendis quia numquam culpa. Ad unde maxime quo.', 'sunt', 2063162, NULL, '2013-07-03 06:45:21', '1995-09-18 04:34:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('17', '9', '24', 'Velit id et est ut. Id veritatis atque nemo voluptatem. Dolores minima aut fuga neque earum. Ut unde distinctio aliquid ratione ipsam maxime ratione. Ad molestiae cupiditate eaque optio voluptatem.', 'est', 5182, NULL, '2002-08-20 13:22:24', '2015-09-13 06:58:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('18', '4', '83', 'Facilis non est aut qui numquam in provident. Reprehenderit fuga non nam et sed magni dignissimos est. Dolore dolore et maxime dolorem qui enim. Et corporis voluptatem nesciunt tempora omnis autem consequatur.', 'voluptatem', 748967, NULL, '1977-05-16 07:55:52', '1984-12-28 07:04:11');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('19', '7', '47', 'Error rerum illum voluptates impedit vitae eligendi quasi. Voluptatum ex accusantium unde magnam enim dicta. Fugiat itaque in quasi velit animi. Recusandae harum provident et.', 'iusto', 4912, NULL, '2010-06-29 22:49:47', '1989-05-10 07:57:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('20', '4', '94', 'Numquam adipisci perferendis eius sequi exercitationem sint dolores dolorem. Minus hic aut deleniti eos sapiente et. Dicta atque adipisci iusto repellat accusantium adipisci similique cupiditate.', 'quia', 9, NULL, '1983-05-11 12:01:06', '2021-09-06 12:54:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('21', '5', '77', 'Sed amet debitis provident non quia est beatae. Maxime eum hic dolores quas. Molestias voluptates qui dolor esse libero quas vel.', 'distinctio', 608448, NULL, '1993-02-08 12:27:25', '2007-02-07 14:07:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('22', '5', '44', 'Commodi veniam voluptatem excepturi nobis ullam. Autem explicabo dolor aut dignissimos quia alias. Dolorem consequatur harum id veniam perspiciatis fuga numquam eligendi. Facilis exercitationem illum harum sed. Deserunt natus aliquam totam qui nostrum.', 'tenetur', 274871, NULL, '1988-10-08 02:00:05', '1980-02-13 20:44:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('23', '5', '39', 'Ut nulla consequatur vel est veritatis voluptatem. Nam itaque ad voluptas. Rerum molestiae velit nam cum omnis.', 'perspiciatis', 284, NULL, '2005-12-23 22:14:56', '1970-12-24 21:14:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('24', '9', '77', 'Sequi cum ipsum molestias hic doloremque. Asperiores et dignissimos voluptate enim voluptas nam. Commodi dolor tempore suscipit adipisci expedita suscipit possimus. Corporis distinctio molestias voluptas nihil est. Doloremque fuga minus eum quia.', 'nihil', 8623, NULL, '2017-06-03 14:03:32', '2010-09-07 08:43:00');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('25', '3', '66', 'Ab quae consequatur tenetur ut qui ab. Nobis corporis libero libero assumenda. Quos dignissimos ipsam dignissimos dolores voluptatem quia molestiae.', 'eveniet', 3778659, NULL, '1976-08-21 14:48:49', '1986-11-28 09:43:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('26', '8', '5', 'Earum magnam reprehenderit et. Iste cupiditate fugit error animi molestiae omnis. Magni est beatae maiores aperiam aut minus. Dolorum nesciunt id aut dicta ut voluptatem.', 'et', 46, NULL, '2002-02-01 16:10:47', '1988-08-17 17:34:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('27', '9', '28', 'Et ipsum in ad minima ex molestiae aliquam minima. Minima quibusdam saepe in sequi. Maiores consequatur quod numquam consequatur.', 'facilis', 8, NULL, '1977-04-19 09:07:27', '2018-09-29 07:43:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('28', '6', '36', 'Voluptates assumenda qui ea neque excepturi. Qui voluptate possimus dolorem nihil id nulla et. Est eos perspiciatis voluptatibus.', 'earum', 0, NULL, '1984-11-14 09:36:23', '1977-07-25 00:57:34');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('29', '2', '68', 'Unde illum ea et quos cum. Porro non accusamus quisquam eligendi eum vel aut. Eveniet aut ea itaque. Dolor qui maxime ut assumenda.', 'tempora', 52549, NULL, '2012-09-11 16:00:10', '1983-05-21 21:00:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('30', '1', '78', 'Quibusdam porro maxime consequatur. Voluptate debitis iusto fugit impedit quod dignissimos. Minima provident sed quos libero et ipsum corporis.', 'qui', 605, NULL, '2008-08-08 15:21:31', '1972-04-13 00:30:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('31', '2', '49', 'Eligendi et laboriosam reprehenderit rem. Quia et quidem qui sequi ullam nam sed quisquam.', 'esse', 0, NULL, '2008-03-05 13:30:36', '2001-09-05 08:55:17');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('32', '10', '2', 'Nobis atque ipsa sapiente quisquam natus. Fugit eos soluta repudiandae vero eveniet. Dolor est non delectus deserunt sunt. Minus voluptatem consequatur et facere.', 'unde', 2734725, NULL, '1976-02-02 13:22:38', '1981-12-21 13:50:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('33', '8', '28', 'Modi libero doloribus sint minus error. Voluptatem sed laborum suscipit eum.', 'aliquam', 0, NULL, '1987-04-08 11:49:04', '1981-02-22 13:26:46');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('34', '9', '33', 'Pariatur et voluptas ut officiis ab. Totam quaerat ab dolor. Quod dicta voluptatum aliquid id est.', 'distinctio', 2706801, NULL, '1982-02-02 15:59:15', '1985-11-02 16:40:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('35', '8', '19', 'Voluptas aut dolorem quod ab incidunt. Consequatur rerum quo fugit nostrum impedit. Perspiciatis aut iure soluta iste modi dolorem.', 'molestias', 42015, NULL, '2014-09-09 08:08:40', '2004-09-27 04:42:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('36', '3', '18', 'Asperiores minus tenetur sequi ullam non. Non dolores sunt est ut aut. Omnis est dignissimos et in.', 'ea', 577, NULL, '1995-02-24 19:30:07', '2011-07-24 16:51:48');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('37', '10', '71', 'Aut sed libero facilis. Dicta minus dolor optio voluptatem. Iste sunt nihil aut suscipit ducimus molestiae temporibus qui. Et earum cum non non quam excepturi modi.', 'necessitatibus', 6190, NULL, '1973-11-10 14:42:39', '2019-04-14 18:34:15');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('38', '7', '39', 'Ut iusto rerum quo. Ut laudantium suscipit expedita mollitia sed magni. Velit sint sed doloremque enim.', 'reiciendis', 448, NULL, '2001-04-29 18:01:49', '2005-05-21 20:16:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('39', '1', '49', 'Ea consequatur occaecati id maxime sint vero beatae incidunt. Eligendi sed saepe saepe aut velit.', 'consectetur', 498, NULL, '1985-11-04 10:06:20', '1976-09-04 18:32:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('40', '2', '33', 'Impedit illum delectus cumque fugit quia distinctio. Alias at cum id quas nihil rerum accusamus quisquam. Quidem officia qui at quia in.', 'ut', 93, NULL, '1972-04-27 10:06:15', '2012-07-28 13:10:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('41', '2', '87', 'Rerum maxime eaque qui soluta consequatur sunt. Ut est iste quo voluptas eum qui dignissimos consequuntur.', 'delectus', 0, NULL, '2011-03-25 01:00:47', '1978-09-20 13:39:44');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('42', '4', '100', 'In placeat qui soluta qui placeat. Deleniti sed error itaque. Aliquam repellendus at et sequi nobis dolorem cum.', 'hic', 64, NULL, '1989-08-23 10:00:21', '2002-11-09 07:41:36');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('43', '2', '92', 'Ducimus qui aut eos veniam. Ipsam perferendis nobis iure deleniti eos rem non. Ipsum consequuntur fugit qui ea eligendi qui. Magni asperiores libero exercitationem aut molestiae nobis quia dignissimos.', 'temporibus', 4, NULL, '2017-09-11 13:51:40', '1973-09-20 13:57:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('44', '4', '32', 'Quasi dolor eveniet velit. Quam veniam ullam in deleniti pariatur fugit sed. Amet veritatis soluta voluptatibus dicta nam.', 'facere', 0, NULL, '2020-10-16 18:48:30', '1972-06-06 07:35:29');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('45', '6', '44', 'Adipisci corrupti est repellat sed perferendis deserunt aliquid adipisci. Rerum quae fuga alias deleniti iusto et et. Inventore ut nihil facere ut. Quia quam amet architecto a placeat ut facere.', 'tenetur', 3773263, NULL, '2001-10-26 10:22:43', '1994-06-21 17:00:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('46', '1', '76', 'Est ut voluptatem sunt nulla beatae ex ducimus. Temporibus accusamus ut quo ut molestiae. Unde qui veritatis aspernatur ea ex voluptas aliquid.', 'nemo', 19823510, NULL, '1997-11-27 03:31:17', '1981-10-25 01:01:23');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('47', '10', '6', 'Eveniet eius et sapiente ipsam est. Omnis recusandae reprehenderit nam placeat assumenda eum eveniet similique. Quia sint esse totam.', 'id', 221, NULL, '1982-07-02 22:15:25', '2018-12-04 16:09:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('48', '8', '64', 'Vel nulla eaque rem occaecati perspiciatis deleniti consequuntur. Explicabo id voluptatem sint est ex sint. Non quia tenetur excepturi consequuntur. Iste quaerat illum et eius.', 'in', 18050172, NULL, '1995-06-21 14:08:09', '1994-01-30 10:35:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('49', '4', '61', 'Harum ratione odit ex non tenetur ad repellendus quis. Velit quasi odit iure. Facilis omnis qui nisi illum excepturi autem.', 'in', 8120, NULL, '1979-11-22 08:16:29', '1973-05-14 08:02:05');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('50', '10', '7', 'Iure laboriosam qui saepe quia sunt est. Accusantium autem est et non perspiciatis aut ut. Id ut laborum expedita non neque quos.', 'exercitationem', 135, NULL, '1998-01-18 15:23:12', '1982-08-17 11:38:35');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('51', '8', '24', 'Omnis nisi ipsam qui exercitationem qui voluptatem neque. Quo delectus excepturi officiis ullam ex quis. Nemo illo possimus ea temporibus dolor error quo.', 'asperiores', 43, NULL, '1993-03-14 06:00:16', '1994-11-10 01:09:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('52', '3', '75', 'Temporibus omnis ullam explicabo placeat iste. Vel voluptatem aspernatur id repudiandae maxime. Cupiditate veritatis ut ipsa eos. Fugiat ut inventore magnam ipsam exercitationem eos.', 'odio', 4, NULL, '1977-10-27 12:37:30', '1976-01-24 11:16:45');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('53', '10', '87', 'Ut sunt saepe quis magni. Voluptatem voluptatem quo aut corporis quasi et qui. Unde et quaerat animi maiores voluptatum praesentium et.', 'numquam', 5, NULL, '1995-01-17 19:37:57', '2005-10-17 10:11:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('54', '2', '3', 'Vitae amet laboriosam perferendis sequi. Voluptatem amet voluptates veritatis asperiores esse ab. Quae dolorum dolorem quis nihil in. Fugit ex esse omnis et dolores.', 'alias', 0, NULL, '2001-08-09 00:49:58', '2014-05-07 23:59:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('55', '4', '29', 'Nostrum cum voluptatem et molestiae voluptatem facilis qui. Ratione quia quia optio repellendus in velit minus. Et dolorem possimus animi saepe minima excepturi odio. Excepturi vero ut quam architecto debitis.', 'dolor', 9993392, NULL, '1983-10-17 22:40:53', '2021-10-09 17:13:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('56', '4', '49', 'Eligendi dignissimos et qui provident ut. Quisquam nihil vel ullam eaque. Ut pariatur consequatur et illum est illum.', 'tempore', 0, NULL, '2018-04-03 07:15:06', '1976-02-18 00:50:08');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('57', '2', '74', 'Dolorem sit illo qui iste ab nulla rem. Qui fuga consequuntur alias ea omnis nemo. In exercitationem aperiam aut. Facilis vel quo id.', 'quis', 9, NULL, '2006-02-24 10:58:16', '1995-01-15 22:33:30');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('58', '5', '29', 'Nostrum sit nihil id dolore et. Quod commodi cupiditate quia. Animi vitae laudantium consequatur harum sint laudantium. Officia illum totam et.', 'veritatis', 7, NULL, '1987-09-20 19:32:15', '2010-08-04 12:29:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('59', '7', '85', 'Nam eveniet ad sed aut voluptatem. Id aperiam cupiditate ut nihil. Voluptatum quibusdam exercitationem voluptatem quibusdam natus voluptate necessitatibus. Est quod quia reiciendis eaque eveniet.', 'veniam', 193500, NULL, '2021-05-08 08:57:41', '1978-06-29 03:08:50');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('60', '6', '25', 'Unde fugit cupiditate perferendis et tempora aut possimus. Saepe cupiditate laudantium eos consequuntur est. Doloribus eos exercitationem cum laboriosam sed quia magni. Dolor non qui atque blanditiis repellendus.', 'modi', 53337073, NULL, '1999-05-31 05:11:18', '1971-07-06 08:43:41');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('61', '3', '69', 'Ex rerum quo dolor consectetur enim quae quo. Rem quisquam animi alias sunt mollitia autem. Est ab consequatur voluptas et.', 'perspiciatis', 510, NULL, '1971-02-17 17:19:05', '1986-01-18 20:56:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('62', '10', '21', 'Enim adipisci optio non commodi corporis at cum. Sint laborum deleniti ratione animi enim explicabo. Quisquam odio sint est rerum.', 'quasi', 56, NULL, '1997-03-03 16:50:01', '1990-05-11 22:47:28');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('63', '8', '77', 'Iusto ea et autem repudiandae ratione provident. Quia similique velit aspernatur nulla est ipsam assumenda. Eos ratione ut quia ab culpa omnis cumque.', 'laborum', 4935, NULL, '1982-10-29 10:03:08', '2011-06-26 10:58:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('64', '9', '7', 'Ut quia eaque repudiandae laborum. Minus molestias fugiat omnis quia magni placeat. Officia voluptatem aut esse et. Sunt ipsa corporis rerum eveniet nihil nostrum expedita.', 'non', 92141, NULL, '1994-07-12 12:49:09', '1986-03-03 13:25:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('65', '4', '82', 'Consequatur qui dolorum sed consectetur. Consequatur repudiandae cupiditate quis est voluptas. Magni odit magni odio occaecati itaque beatae. Provident aspernatur a nam delectus aspernatur explicabo vitae. Dolorem est neque ipsam adipisci.', 'dolorem', 69310, NULL, '1990-08-01 11:14:13', '1972-08-29 14:03:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('66', '2', '16', 'Officiis iusto eius fuga porro. Consectetur qui sed velit aliquid nobis qui. Delectus accusamus laborum sunt delectus voluptatem qui consequatur. Quia et est ad provident aliquam eum. Laborum voluptatibus dolores ipsum voluptatem suscipit dolore.', 'numquam', 839552, NULL, '1981-02-17 04:20:32', '2016-04-02 12:50:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('67', '1', '38', 'Sed enim similique sunt. Doloremque voluptatem autem qui doloribus sint. Reiciendis libero eligendi odio provident et quia. Praesentium sed quasi corporis ducimus.', 'repudiandae', 253294403, NULL, '1991-05-10 17:28:06', '1997-07-23 21:14:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('68', '10', '98', 'Beatae dolores quae voluptatem. Blanditiis ad eligendi et aspernatur eos enim et. Consequatur reiciendis totam eum eligendi similique ad illum. Ut qui est corporis sunt nam est.', 'voluptatem', 0, NULL, '1983-10-06 10:48:08', '2022-08-29 23:21:16');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('69', '3', '5', 'Quas sit saepe quae omnis. Officiis eaque aut repellendus ex. Nulla occaecati deserunt aut dolores sit maxime reprehenderit.', 'enim', 9028, NULL, '1987-03-31 12:22:56', '1971-07-13 23:39:52');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('70', '1', '60', 'Ipsum accusantium sint quaerat ut nam enim. Tempore molestias dolor occaecati aliquam non sequi ut. Impedit inventore qui rem aut sit. Ut voluptate enim quia a vitae ducimus voluptate.', 'itaque', 6, NULL, '2004-09-06 18:26:11', '2017-11-24 17:11:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('71', '4', '37', 'Eos temporibus necessitatibus qui sed porro dicta expedita. Sint dignissimos veniam aliquam consequatur vitae quam error sit. Quo molestiae qui qui illo repudiandae consequuntur sit.', 'recusandae', 9121726, NULL, '1980-04-08 03:12:05', '2003-09-18 08:09:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('72', '1', '48', 'Quaerat porro repudiandae tempora et. Eligendi non eius fugit quo. Molestias et vitae debitis quasi a ut. Fugiat aut dolorum animi harum corporis consequatur reprehenderit.', 'beatae', 3769978, NULL, '2001-01-07 09:44:47', '2018-04-13 01:58:06');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('73', '1', '57', 'Modi facilis enim qui. Autem nisi harum molestiae. Facere assumenda illo explicabo quod in. Est accusamus et enim maxime sint eaque ipsam cumque.', 'nulla', 0, NULL, '2022-01-28 17:26:21', '1999-06-02 16:23:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('74', '8', '75', 'Ullam non quis dolorem corporis quis. Non libero suscipit quos labore natus et. Eum asperiores quia adipisci quidem dicta.', 'deleniti', 18817, NULL, '1985-05-07 08:52:49', '2007-02-06 05:02:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('75', '5', '36', 'Esse illum sed amet dolore incidunt voluptas delectus. Perferendis et provident amet voluptates corrupti hic nobis. Quas molestiae qui debitis ut quia.', 'doloremque', 49686517, NULL, '1973-05-16 01:28:45', '2020-08-24 13:23:19');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('76', '10', '69', 'Officiis amet fuga nihil vero iusto minus. Quo excepturi aut sed. Voluptatem quisquam numquam aut molestiae.', 'est', 3, NULL, '1980-08-10 12:48:53', '1991-07-31 01:00:32');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('77', '1', '99', 'Hic vel repudiandae consequatur voluptas. Aliquid velit et commodi rerum.', 'est', 629516222, NULL, '2019-06-14 01:27:56', '1976-12-26 09:48:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('78', '9', '78', 'Commodi quam velit enim. Provident delectus non placeat voluptatibus amet corporis omnis. Voluptate doloremque omnis consequatur iure exercitationem ea vero et.', 'sunt', 13, NULL, '2000-08-07 10:44:40', '1994-10-03 21:39:01');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('79', '8', '74', 'Porro aut a quae nam laudantium. Commodi perferendis aut eum laborum repellendus enim perferendis dolorum. Quis amet id sed voluptatem provident facere. Vel aut labore cupiditate eum totam.', 'expedita', 768084286, NULL, '1987-03-22 16:50:04', '1976-09-29 14:51:12');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('80', '9', '12', 'Velit unde aliquam aut repellendus. Vitae sed vero aliquam repellat necessitatibus. Fuga odit aut impedit nostrum ea. Dolor aliquid ullam et minima inventore repudiandae.', 'magnam', 91, NULL, '1979-08-29 04:00:36', '1985-12-04 17:57:10');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('81', '6', '98', 'Cum odit consequatur exercitationem est aut eveniet. Rerum adipisci similique possimus dolorum tempore. Laborum impedit atque commodi perferendis suscipit quia.', 'qui', 4073, NULL, '1997-08-24 04:30:53', '1973-12-23 15:28:33');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('82', '3', '59', 'Vel quaerat et iusto qui quaerat magnam maiores et. Dolorem et voluptate alias est. Asperiores sequi maxime nostrum consequuntur reprehenderit qui.', 'nesciunt', 17, NULL, '1998-02-17 08:30:27', '2002-10-05 20:22:42');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('83', '4', '19', 'Cumque soluta ut rem accusantium eligendi. Pariatur quod est ea cupiditate quia saepe. Aut et et in quia cupiditate id non.', 'excepturi', 2, NULL, '2003-03-14 15:04:22', '2013-08-05 01:30:25');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('84', '6', '60', 'Eum voluptatem saepe sapiente est. Modi molestias sint distinctio sint voluptas at. Impedit rerum perspiciatis fugiat dolore commodi. Distinctio ut in aut nihil qui.', 'ut', 281729724, NULL, '1997-08-19 07:38:32', '1996-06-02 11:55:54');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('85', '3', '57', 'Minima explicabo cupiditate ut architecto molestiae vero. Ut quia et velit ut quia veritatis. Et libero et earum provident et perferendis. Aspernatur sed dolorem tempore enim quaerat praesentium.', 'necessitatibus', 63359, NULL, '1996-01-17 23:25:24', '1974-10-07 10:25:20');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('86', '2', '55', 'Esse sit sunt corporis. Et optio id dolorem facilis magnam perspiciatis hic consequatur. Dolorem placeat non totam iusto deserunt dolorem. Voluptatem neque error ut accusamus omnis est et.', 'dolor', 54, NULL, '1983-02-04 04:04:42', '1973-11-20 17:00:57');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('87', '10', '27', 'Quod accusantium nam ad culpa. Quo quasi qui dignissimos occaecati ipsam voluptatem delectus. Consectetur ut ipsam et laudantium quo. Consequatur ut illo harum sed doloremque. Aut aut deleniti aperiam non nostrum iure.', 'consequuntur', 580762, NULL, '1993-01-06 05:31:09', '2022-10-07 18:31:22');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('88', '1', '3', 'Veniam in deleniti nesciunt repellat nemo quos. Vel eos tempora tenetur exercitationem. Quasi quia animi rerum.', 'facilis', 891, NULL, '1970-06-02 17:37:03', '1991-03-23 08:55:18');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('89', '9', '78', 'Aliquid est pariatur hic magnam totam voluptatem ea. Assumenda vero repellendus esse est. Id ullam repellendus iusto voluptatem aut.', 'maiores', 900131, NULL, '1988-11-21 20:16:21', '1990-12-20 18:47:21');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('90', '8', '23', 'Iste veniam dolores nam laborum. Doloremque voluptatem veritatis dicta architecto recusandae ipsam facere voluptatem. Quia perferendis voluptatem laudantium est non.', 'sit', 62908466, NULL, '1998-01-15 11:41:44', '1984-07-10 01:13:07');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('91', '2', '77', 'Dolor dolorum praesentium enim corporis velit deleniti aliquam neque. Omnis corrupti dolor rerum aut. Exercitationem eum molestiae dolores impedit.', 'fuga', 852660, NULL, '1984-04-19 14:27:14', '1999-09-05 04:39:27');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('92', '10', '17', 'Tempora culpa dolor quia pariatur illo dignissimos voluptate. Tenetur voluptas placeat in eaque. Architecto ad in porro dolores eius occaecati voluptatem. Suscipit modi ducimus totam et repudiandae omnis.', 'minus', 32, NULL, '2012-04-18 20:40:05', '1971-02-14 14:34:47');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('93', '8', '81', 'Eos sint magni deleniti vitae laboriosam consectetur in. Omnis quibusdam sint sit natus ab delectus. Eos labore et totam consectetur dolores. Et beatae inventore molestiae rerum est sit.', 'consequatur', 9136, NULL, '2011-01-07 18:08:42', '2000-05-26 22:39:56');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('94', '10', '50', 'Unde laboriosam sit non est qui. Repudiandae molestiae optio voluptates vero.', 'possimus', 0, NULL, '1993-01-18 18:11:48', '1971-10-13 04:13:53');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('95', '6', '79', 'Vel pariatur quis minus accusamus et eaque. Nam consequatur id sunt nulla. Quisquam voluptates est velit maiores numquam. Ut qui minima aut eum autem.', 'sed', 6025253, NULL, '1994-07-08 21:33:15', '2016-07-21 02:52:59');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('96', '7', '8', 'Inventore repellat doloribus id rem molestiae iure. Aut odit tenetur tenetur hic. Autem eum est fugit mollitia placeat commodi ratione. Quia nemo eveniet totam non consequatur.', 'sapiente', 0, NULL, '1992-12-30 07:37:36', '2018-03-24 01:59:40');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('97', '8', '90', 'Et temporibus repellendus nam voluptas. Voluptas perspiciatis saepe architecto sed deserunt. Amet est et ullam inventore quos consequatur. Excepturi non quo eius amet ipsam.', 'voluptatem', 909152, NULL, '2013-04-28 23:36:02', '1992-05-16 05:19:24');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('98', '7', '11', 'Libero illo dolor neque sed. Reiciendis quo et dolores enim aut tenetur. Est quas cumque voluptas in eum voluptatibus. Temporibus in quae totam accusantium. Fuga fuga tempore repellendus eveniet exercitationem.', 'ut', 96648, NULL, '2021-02-27 05:07:04', '1999-10-12 17:41:26');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('99', '1', '22', 'Consequatur esse officia molestiae nesciunt iure distinctio repellat magni. Veniam voluptatem ipsum laborum. Pariatur molestias aut quia et qui autem distinctio.', 'consequatur', 10778303, NULL, '2016-02-17 14:10:02', '2004-03-05 16:44:43');
INSERT INTO `media` (`id`, `media_type_id`, `user_id`, `body`, `filename`, `size`, `metadata`, `created_at`, `updated_at`) VALUES ('100', '8', '30', 'Quidem architecto quam accusantium quod dolorem eos ea voluptatem. Harum maiores repellendus perferendis non voluptatem. Qui eos earum perspiciatis quod non. Fugit sed quidem sunt accusantium voluptas eveniet.', 'omnis', 56504897, NULL, '1976-04-18 21:58:24', '2018-11-17 06:53:29');


#
# TABLE STRUCTURE FOR: media_types
#

DROP TABLE IF EXISTS `media_types`;

CREATE TABLE `media_types` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('1', 'adipisci', '1994-01-06 11:44:32', '1997-10-31 21:36:23');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('2', 'occaecati', '1982-11-15 21:38:01', '1970-09-27 03:31:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('3', 'nemo', '2009-02-01 11:22:19', '2013-12-07 10:36:40');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('4', 'omnis', '1999-07-10 16:57:42', '2012-10-14 04:26:11');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('5', 'suscipit', '1979-11-07 15:03:30', '2010-11-09 21:05:14');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('6', 'accusamus', '1972-04-16 17:39:02', '2015-10-18 01:05:41');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('7', 'ea', '1977-06-24 20:07:54', '1974-02-20 18:04:05');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('8', 'accusamus', '1987-11-10 23:45:40', '1977-06-12 23:36:16');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('9', 'rerum', '2007-04-05 22:44:20', '2003-04-25 13:25:59');
INSERT INTO `media_types` (`id`, `name`, `created_at`, `updated_at`) VALUES ('10', 'ipsum', '1986-01-25 17:18:53', '1988-02-03 13:08:27');


#
# TABLE STRUCTURE FOR: messages
#

DROP TABLE IF EXISTS `messages`;

CREATE TABLE `messages` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `from_user_id` bigint(20) unsigned NOT NULL,
  `to_user_id` bigint(20) unsigned NOT NULL,
  `body` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  KEY `from_user_id` (`from_user_id`),
  KEY `to_user_id` (`to_user_id`),
  CONSTRAINT `messages_ibfk_1` FOREIGN KEY (`from_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `messages_ibfk_2` FOREIGN KEY (`to_user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

#
# TABLE STRUCTURE FOR: photo_albums
#

DROP TABLE IF EXISTS `photo_albums`;

CREATE TABLE `photo_albums` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `photo_albums_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('1', 'ipsum', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('2', 'modi', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('3', 'pariatur', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('4', 'architecto', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('5', 'cupiditate', '4');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('6', 'quasi', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('7', 'sunt', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('8', 'repellat', '14');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('9', 'veritatis', '51');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('10', 'ipsum', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('11', 'qui', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('12', 'provident', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('13', 'consectetur', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('14', 'corporis', '59');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('15', 'excepturi', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('16', 'reiciendis', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('17', 'autem', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('18', 'autem', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('19', 'excepturi', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('20', 'eum', '38');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('21', 'non', '45');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('22', 'minima', '81');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('23', 'ratione', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('24', 'ea', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('25', 'aut', '99');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('26', 'consequatur', '78');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('27', 'ut', '62');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('28', 'vitae', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('29', 'animi', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('30', 'et', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('31', 'sint', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('32', 'et', '2');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('33', 'eos', '91');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('34', 'esse', '85');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('35', 'aliquam', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('36', 'aut', '94');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('37', 'quia', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('38', 'maiores', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('39', 'ad', '7');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('40', 'non', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('41', 'aliquam', '6');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('42', 'rerum', '52');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('43', 'quia', '44');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('44', 'placeat', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('45', 'ut', '11');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('46', 'vel', '8');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('47', 'sapiente', '22');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('48', 'voluptatem', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('49', 'minus', '95');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('50', 'vel', '87');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('51', 'est', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('52', 'eum', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('53', 'occaecati', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('54', 'quis', '72');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('55', 'enim', '42');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('56', 'molestiae', '66');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('57', 'ea', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('58', 'totam', '3');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('59', 'quibusdam', '18');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('60', 'eum', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('61', 'dicta', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('62', 'voluptatum', '9');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('63', 'quia', '23');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('64', 'et', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('65', 'hic', '93');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('66', 'quis', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('67', 'ab', '77');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('68', 'molestias', '35');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('69', 'est', '58');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('70', 'ipsum', '84');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('71', 'aut', '27');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('72', 'sunt', '63');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('73', 'esse', '36');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('74', 'quis', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('75', 'atque', '75');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('76', 'minus', '46');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('77', 'odio', '79');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('78', 'eum', '96');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('79', 'dolor', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('80', 'tempore', '74');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('81', 'modi', '83');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('82', 'et', '100');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('83', 'aliquid', '13');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('84', 'eligendi', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('85', 'tenetur', '71');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('86', 'maiores', '54');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('87', 'iste', '15');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('88', 'doloribus', '21');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('89', 'at', '57');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('90', 'laudantium', '32');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('91', 'explicabo', '41');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('92', 'ex', '50');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('93', 'fugiat', '40');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('94', 'dolores', '64');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('95', 'asperiores', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('96', 'tempore', '33');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('97', 'alias', '98');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('98', 'maxime', '10');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('99', 'ea', '67');
INSERT INTO `photo_albums` (`id`, `name`, `user_id`) VALUES ('100', 'numquam', '56');


#
# TABLE STRUCTURE FOR: photos
#

DROP TABLE IF EXISTS `photos`;

CREATE TABLE `photos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `album_id` bigint(20) unsigned NOT NULL,
  `media_id` bigint(20) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `album_id` (`album_id`),
  KEY `media_id` (`media_id`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`album_id`) REFERENCES `photo_albums` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `photos_ibfk_2` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('1', '66', '1');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('2', '37', '2');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('3', '47', '3');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('4', '71', '4');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('5', '1', '5');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('6', '87', '6');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('7', '48', '7');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('8', '65', '8');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('9', '83', '9');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('10', '2', '10');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('11', '2', '11');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('12', '91', '12');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('13', '30', '13');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('14', '41', '14');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('15', '70', '15');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('16', '44', '16');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('17', '98', '17');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('18', '36', '18');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('19', '92', '19');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('20', '35', '20');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('21', '36', '21');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('22', '76', '22');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('23', '77', '23');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('24', '56', '24');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('25', '58', '25');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('26', '74', '26');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('27', '100', '27');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('28', '62', '28');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('29', '96', '29');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('30', '86', '30');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('31', '8', '31');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('32', '62', '32');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('33', '22', '33');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('34', '55', '34');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('35', '33', '35');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('36', '23', '36');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('37', '42', '37');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('38', '80', '38');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('39', '87', '39');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('40', '25', '40');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('41', '81', '41');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('42', '88', '42');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('43', '15', '43');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('44', '11', '44');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('45', '29', '45');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('46', '85', '46');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('47', '55', '47');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('48', '26', '48');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('49', '20', '49');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('50', '46', '50');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('51', '60', '51');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('52', '55', '52');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('53', '22', '53');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('54', '37', '54');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('55', '10', '55');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('56', '79', '56');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('57', '10', '57');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('58', '10', '58');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('59', '41', '59');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('60', '6', '60');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('61', '95', '61');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('62', '48', '62');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('63', '67', '63');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('64', '17', '64');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('65', '3', '65');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('66', '100', '66');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('67', '39', '67');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('68', '44', '68');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('69', '79', '69');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('70', '25', '70');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('71', '68', '71');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('72', '59', '72');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('73', '13', '73');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('74', '83', '74');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('75', '69', '75');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('76', '41', '76');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('77', '67', '77');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('78', '24', '78');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('79', '66', '79');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('80', '86', '80');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('81', '69', '81');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('82', '26', '82');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('83', '41', '83');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('84', '90', '84');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('85', '62', '85');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('86', '51', '86');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('87', '69', '87');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('88', '72', '88');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('89', '60', '89');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('90', '9', '90');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('91', '78', '91');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('92', '55', '92');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('93', '57', '93');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('94', '45', '94');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('95', '71', '95');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('96', '59', '96');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('97', '44', '97');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('98', '10', '98');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('99', '2', '99');
INSERT INTO `photos` (`id`, `album_id`, `media_id`) VALUES ('100', '22', '100');


#
# TABLE STRUCTURE FOR: profiles
#

DROP TABLE IF EXISTS `profiles`;

CREATE TABLE `profiles` (
  `user_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `gender` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `photo_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `hometown` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  KEY `fk_photo_id` (`photo_id`),
  CONSTRAINT `fk_photo_id` FOREIGN KEY (`photo_id`) REFERENCES `photos` (`id`) ON DELETE SET NULL ON UPDATE CASCADE,
  CONSTRAINT `fk_user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('1', 'm', '1972-02-21', '53', '2018-04-24 08:13:40', 'New Maymie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('2', 'f', '2000-06-20', '18', '1980-03-09 14:28:31', 'Linwoodchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('3', 'f', '2015-04-02', '13', '1985-10-05 16:09:46', 'New Rasheedshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('4', 'm', '1973-04-30', '19', '2016-06-16 02:18:13', 'Lebsackhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('5', 'f', '2020-02-05', '71', '1989-02-11 02:38:37', 'West Lea');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('6', 'm', '2000-02-20', '23', '1987-01-10 04:37:57', 'West Tobychester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('7', 'f', '2006-06-04', '16', '2007-12-12 15:07:00', 'East Jacestad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('8', 'f', '2013-12-31', '43', '2008-11-18 21:18:19', 'West Marlonhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('9', 'f', '1985-10-23', '26', '2014-01-24 13:24:33', 'Walterborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('10', 'm', '2001-05-22', '22', '2011-06-12 21:21:43', 'Lake Delmerfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('11', 'm', '2017-06-09', '58', '2007-04-17 03:42:30', 'Nicolasberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('12', 'f', '1971-05-08', '68', '2017-04-16 08:32:36', 'New Asaland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('13', 'f', '2009-12-26', '78', '1975-12-03 06:10:40', 'New Devon');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('14', 'm', '1971-06-18', '87', '1995-07-18 15:44:15', 'Rowlandview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('15', 'm', '2006-11-22', '20', '2011-02-27 01:33:07', 'Volkmanhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('16', 'f', '1980-10-11', '18', '2005-12-10 01:05:29', 'Durganton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('17', 'f', '1996-07-03', '47', '2015-05-04 19:44:19', 'Lake Ron');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('18', 'f', '1974-03-12', '33', '1994-06-07 09:04:05', 'South Dorcas');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('19', 'm', '1975-04-27', '21', '1976-09-18 16:43:39', 'East Brauliofurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('20', 'f', '1972-09-21', '3', '2004-04-09 07:28:52', 'Shawnstad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('21', 'm', '1997-02-05', '95', '1982-04-14 16:15:23', 'Lillietown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('22', 'f', '2001-01-28', '51', '2015-03-11 16:36:30', 'Lake Jessy');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('23', 'f', '2020-01-15', '70', '1985-01-02 23:30:55', 'Stiedemannborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('24', 'f', '2006-07-05', '19', '1989-02-20 09:24:56', 'South Manley');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('25', 'm', '1973-07-17', '85', '2013-03-18 21:07:38', 'West Sophie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('26', 'f', '2011-04-29', '69', '1995-10-06 23:47:59', 'Cormierborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('27', 'f', '1990-01-10', '41', '1972-06-24 20:47:03', 'Gladyceland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('28', 'm', '2014-09-01', '57', '1982-06-15 07:00:14', 'Lake Elda');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('29', 'f', '2008-04-09', '40', '2008-10-25 20:44:43', 'Busterfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('30', 'm', '2011-08-19', '65', '2002-09-11 17:49:12', 'Heathcoteshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('31', 'm', '1976-11-05', '87', '1973-12-25 16:07:19', 'Tavaresbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('32', 'f', '1980-07-01', '93', '1996-08-26 10:15:44', 'Waelchitown');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('33', 'f', '1989-11-23', '83', '2019-01-18 16:21:24', 'O\'Keefeborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('34', 'm', '2008-10-21', '99', '1973-01-23 05:16:59', 'Effertzport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('35', 'f', '2010-04-10', '12', '1975-11-24 16:02:26', 'Bednarshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('36', 'm', '1979-12-20', '53', '1970-08-01 17:25:12', 'South Vivianne');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('37', 'f', '2008-06-29', '22', '2007-09-14 18:10:53', 'Melisaville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('38', 'f', '1988-09-18', '27', '1995-06-24 20:51:30', 'Elbertfort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('39', 'm', '1973-03-27', '96', '1992-01-15 02:42:16', 'South Garretport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('40', 'f', '2003-09-05', '47', '1994-03-14 06:23:30', 'West Zachery');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('41', 'f', '2002-04-15', '48', '2010-09-04 10:12:58', 'Tarynview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('42', 'm', '1982-08-11', '53', '1976-12-03 14:59:01', 'East Winstonton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('43', 'f', '2012-06-13', '14', '1985-06-24 17:57:56', 'Wizabury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('44', 'f', '2009-03-06', '25', '1975-01-03 10:51:06', 'Donnieside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('45', 'f', '2002-10-12', '39', '1970-02-10 06:37:43', 'Elijahberg');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('46', 'f', '2013-09-18', '33', '1983-09-17 09:41:36', 'Stephenbury');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('47', 'm', '1994-05-01', '43', '2003-01-24 05:47:09', 'Port Xavierside');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('48', 'f', '1995-11-05', '86', '2005-11-16 15:01:11', 'South Ryannfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('49', 'f', '1980-09-09', '66', '1975-01-30 07:19:28', 'South Adelbertville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('50', 'f', '1987-09-26', '64', '1986-02-12 14:27:03', 'Christiansenshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('51', 'm', '1979-05-14', '88', '1977-05-28 13:29:01', 'Lubowitzton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('52', 'm', '2016-02-21', '60', '2003-01-26 17:06:52', 'West Chynaport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('53', 'm', '2021-06-10', '14', '1983-11-03 02:33:07', 'West Jennieburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('54', 'm', '2001-07-30', '57', '1984-05-13 21:06:34', 'Kreigermouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('55', 'f', '1970-07-27', '79', '2006-04-21 11:05:11', 'Abbyland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('56', 'f', '2014-05-10', '99', '1991-06-05 18:50:38', 'Earlview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('57', 'f', '1988-09-25', '26', '1976-03-08 21:35:27', 'Lake Aurelie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('58', 'm', '1993-03-26', '19', '2009-03-21 17:25:22', 'Emardburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('59', 'm', '1992-04-12', '55', '1971-04-29 19:02:38', 'West Elmer');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('60', 'f', '2004-07-19', '66', '2011-03-28 14:28:18', 'Cormierview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('61', 'm', '1983-01-05', '84', '1983-08-06 15:54:38', 'New Celia');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('62', 'm', '1991-06-19', '42', '1971-08-12 16:50:33', 'Boganton');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('63', 'm', '2000-08-15', '58', '2011-03-12 08:47:04', 'Audreyborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('64', 'm', '1984-06-18', '67', '2004-06-02 03:05:47', 'New Annetta');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('65', 'f', '2015-01-17', '41', '2022-10-04 07:22:24', 'Romainehaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('66', 'f', '1988-02-18', '69', '1996-06-10 04:22:01', 'Barneyfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('67', 'f', '1983-06-17', '20', '1973-05-15 06:59:51', 'South Kenneth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('68', 'm', '2002-02-24', '62', '1973-07-14 11:36:20', 'Lake Tatyanaland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('69', 'm', '2010-05-30', '95', '2003-02-06 11:25:27', 'New Zoe');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('70', 'f', '2004-01-01', '15', '2002-10-11 22:47:31', 'Satterfieldland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('71', 'f', '2005-09-17', '9', '1974-10-07 12:53:35', 'South Josiah');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('72', 'm', '2014-01-26', '43', '1994-11-09 14:14:33', 'Raleighmouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('73', 'm', '1982-09-14', '67', '1971-06-19 04:50:41', 'East Chaddland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('74', 'm', '2011-11-15', '22', '1994-10-20 20:32:12', 'Yundtchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('75', 'f', '1998-10-24', '68', '1998-12-21 20:53:48', 'Lake Shanie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('76', 'm', '1989-04-13', '6', '1981-03-25 17:02:13', 'Torphyhaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('77', 'f', '1992-03-21', '55', '2010-12-27 08:51:18', 'Ebertfurt');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('78', 'f', '2010-06-16', '11', '1979-10-20 21:02:06', 'Hegmannburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('79', 'm', '2011-07-24', '91', '1991-06-01 02:07:17', 'Zoramouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('80', 'm', '1984-04-16', '21', '2014-06-23 20:51:30', 'Strosinburgh');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('81', 'f', '2015-03-26', '74', '2020-03-20 00:52:32', 'Axelville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('82', 'm', '2003-12-28', '79', '1992-09-03 18:26:34', 'West Elisefort');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('83', 'm', '2014-12-01', '81', '2006-11-10 07:20:30', 'Port Alfreda');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('84', 'f', '1981-07-05', '88', '1992-06-02 22:12:33', 'New Rowanshire');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('85', 'f', '1994-08-15', '36', '1994-05-07 16:14:18', 'East Laylastad');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('86', 'm', '2019-11-06', '60', '1976-03-11 15:25:03', 'Morissettemouth');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('87', 'm', '1981-07-06', '87', '2014-10-08 11:05:34', 'Lake Crawford');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('88', 'f', '1986-02-17', '62', '1992-10-12 02:03:20', 'D\'Amorehaven');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('89', 'f', '1995-12-20', '79', '2003-08-23 11:24:28', 'Port Myrna');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('90', 'f', '2005-07-21', '41', '1987-08-03 10:32:19', 'Jenkinsview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('91', 'f', '2008-09-03', '27', '1994-01-11 05:29:46', 'New Verla');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('92', 'm', '2005-03-11', '62', '2002-09-27 02:32:33', 'Ravenland');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('93', 'm', '2013-11-01', '83', '1999-10-08 20:48:07', 'New Kip');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('94', 'f', '2021-05-04', '84', '2002-04-18 17:51:33', 'Hayesville');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('95', 'f', '1973-12-08', '28', '1983-08-23 08:50:09', 'Randyport');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('96', 'm', '1974-01-29', '23', '2013-03-30 05:27:48', 'Baileyview');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('97', 'f', '2011-09-03', '52', '2015-10-03 13:06:20', 'Lake Rosemarie');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('98', 'm', '1974-09-13', '47', '2005-05-12 22:50:33', 'South Maddisonchester');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('99', 'm', '1983-07-22', '85', '1980-04-21 05:46:58', 'Luellaborough');
INSERT INTO `profiles` (`user_id`, `gender`, `birthday`, `photo_id`, `created_at`, `hometown`) VALUES ('100', 'f', '2004-12-05', '47', '1984-07-25 10:26:37', 'Mannville');


#
# TABLE STRUCTURE FOR: users
#

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `firstname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lastname` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL COMMENT 'Фамилия',
  `email` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password_hash` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `is_deleted` bit(1) DEFAULT b'0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  KEY `users_firstname_lastname_idx` (`firstname`,`lastname`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('1', 'Keely', 'Hyatt', 'thiel.earline@example.com', '7341c2c80371717969740a9edf634e1d32007244', '4436586403', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('2', 'Terence', 'Wisoky', 'sstoltenberg@example.org', 'b28fecbc09deba640d54f03a9c7379e7bdca27d6', '30369396241', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('3', 'Katarina', 'Stanton', 'natasha46@example.com', '95ebb4513c922e4f0d9306b58bf80d7f820fe755', '65208084477', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('4', 'Brandy', 'Blanda', 'maximillian08@example.org', '8aa2e52b99e357affebe6ea9e3dca0d3da9ad36c', '16241609818', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('5', 'Rick', 'Connelly', 'thea26@example.com', '26a2e9320a7b80c69c85b96b7c7891b6cc4d5ba2', '73896073005', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('6', 'Keely', 'Witting', 'kaylin.olson@example.org', '37bec83f89d0562c7f4717b6c1a4516c25be3444', '15051073765', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('7', 'Adolfo', 'Waelchi', 'kylie09@example.net', '84d535f66f87023abcc84b875fa8d6f468d9f47e', '75067363113', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('8', 'Virgil', 'Orn', 'mckenzie.rudy@example.com', 'e2b99f1801cef13b205e0ac1014ac71e6bcce6da', '37421390596', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('9', 'Lupe', 'Mohr', 'anita59@example.com', '7173553981b9993f39ec91de821ce39a5fa796b8', '32600636079', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('10', 'Anjali', 'Turner', 'dare.aniya@example.net', 'b0e2a358103ff99fa296971036c561ec01294a1f', '55610258250', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('11', 'Carole', 'Davis', 'zschumm@example.net', 'd2789730ccef8df4f974cb93203b51bb2dec20a7', '55867142516', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('12', 'Reba', 'Cormier', 'francisco.luettgen@example.net', '246e491231dace4c4331f9945cb441a11f76ed0d', '59269394474', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('13', 'Dashawn', 'Treutel', 'pfeffer.emile@example.org', 'e35cea7a62d3b1835a8513e836cfc3396c9cbae9', '6027862138', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('14', 'Lysanne', 'King', 'tyrel55@example.org', '7c8ef271d07663d22dba3f02dde452fbe4a9c7fa', '23286123370', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('15', 'Dagmar', 'Prosacco', 'aleen42@example.net', 'b380b712ad2d12b45e851fea2a0af9cc0e628656', '8455005535', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('16', 'Art', 'Upton', 'devante76@example.org', 'dd36c2a00099b8df7717ba915df8a7025c9f12b4', '68267576378', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('17', 'Brandyn', 'Olson', 'aledner@example.org', 'bc2aedfc42d644801c739219f2483139c3544f90', '33258413926', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('18', 'Torey', 'Johnston', 'satterfield.britney@example.net', 'a437cc96a7636ceb16e791ce1d2e0afb4e7616e1', '45382812664', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('19', 'Eugenia', 'Lowe', 'kessler.cyrus@example.com', '3c22d3fe7d58556df912b4585273746456df49a0', '125197393', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('20', 'Eunice', 'Kerluke', 'lewis.brown@example.com', '091a84cfeb3e056ed391a31735baffa6075a3261', '39653523813', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('21', 'Hallie', 'Bergnaum', 'lhintz@example.org', '15d27be0b782c979d7afb8947dc8563d22b9ba23', '42324117077', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('22', 'Floy', 'Murazik', 'major20@example.org', '0452f2f38038d8c92748a072bb417ef47f0088c2', '158953035', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('23', 'Talia', 'Bartell', 'abednar@example.com', '264cb57166220ab8f5678b9a6f7f674c6333b4f8', '34093429405', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('24', 'Jeffery', 'Roob', 'cindy61@example.com', 'b7fcab33ccfc07862e0c96c74932e3837e2cecbc', '6393093897', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('25', 'Libby', 'Doyle', 'tillman.quinten@example.org', 'f7cf1599dd8dd1ee41846c248e371bba6174c9f7', '21795111264', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('26', 'Hunter', 'Gibson', 'qrussel@example.com', 'f6b91ad8f2045c00bef4c04ddd85435ef351e135', '3117072723', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('27', 'Adelle', 'Brakus', 'rhoda75@example.com', '6e2eedd75e5f360c74f70aa3b561284ee20b1313', '61420568442', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('28', 'Raymond', 'Goodwin', 'jlang@example.org', 'd424dc96ecb91e6513dc2fe2dcdad62230a09736', '54896387469', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('29', 'Reyes', 'King', 'wilkinson.joshuah@example.com', '8b25beb1c99ae6972e73a27c4a75becab29b34c5', '86028043108', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('30', 'Theodora', 'Balistreri', 'alba74@example.net', 'fda39b69cbfbddcd731c2d3a9074913b53945640', '25189863575', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('31', 'Gretchen', 'Rowe', 'edwina62@example.org', 'e20bc17eea2b83ad50a6a6f77b37740ac1dcc7f2', '81539643674', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('32', 'Caitlyn', 'Walsh', 'mjaskolski@example.net', '427052a98f0c47115830388082da7e926c79407d', '16723147723', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('33', 'Chanelle', 'Tillman', 'tillman.eloise@example.net', 'b4089c8a84fb35a54b81259904ab61cc0be5ff20', '44184451240', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('34', 'Kyla', 'Green', 'darby51@example.org', '34664293f9141bb12a1d1b35ab4dcc890a478219', '33355296348', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('35', 'Domenic', 'Parker', 'freddy89@example.com', 'e17cfa516b7e2a26e12821f57c775962c5eee7eb', '900814495', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('36', 'Jacinto', 'Bosco', 'dedric37@example.com', '04f2033417ca968bfe2efe4559cffb6e24fbd1cd', '20103795920', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('37', 'Toby', 'Berge', 'croberts@example.com', '8f263b8942cea3fdabf10546a493df67ca30005b', '14257171834', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('38', 'Wilton', 'Windler', 'mosciski.horace@example.net', 'a50962b0d991d45e635ab6c5f4fe0af302f0fa74', '26330613080', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('39', 'Jacynthe', 'Kub', 'connelly.kelli@example.net', '6588ef974243cd4e7ae11fedf9fb5386f4d91cba', '16103411654', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('40', 'Yvonne', 'Bode', 'laila76@example.org', '2733ebd6a4a573c6c56128d255fec25fb06ac481', '42684521368', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('41', 'Glennie', 'Cruickshank', 'kirlin.leland@example.org', 'a6400f20aefec95243d5cae5219e9d360d8db3e6', '3853009227', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('42', 'Yasmine', 'Fay', 'jhilpert@example.org', 'aa9955c9f52725fd2280f4c40f78aeb18852b87a', '58969977683', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('43', 'Adelbert', 'Oberbrunner', 'dooley.delphine@example.org', 'a99206a5782872a6c3856c43a716e8fb13d63d4a', '27894344072', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('44', 'Aric', 'Wilkinson', 'bailey.lolita@example.net', 'a76f77f02409b85a4d414874375b15fb149eb8a2', '89125695414', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('45', 'Eunice', 'Hills', 'christop.strosin@example.com', 'a0a8d6a0048007da11195d90b2372fd21ce7aa8a', '13173426503', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('46', 'Marielle', 'Hane', 'evelyn.jacobi@example.com', 'c28fbfe8cb912a3a61e5f2ea114abd0ab3b0e92a', '8500671151', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('47', 'Hellen', 'Steuber', 'royce.gerlach@example.net', 'd7bd1a4ad562e2ace1a8571ba9ebc02ffb17fd4d', '22939030963', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('48', 'Frances', 'Sporer', 'hegmann.brayan@example.org', '09f90f3cb0ff6090fc6e7de8d7d9397bf78f56bf', '10643870965', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('49', 'Lacy', 'Marquardt', 'dubuque.erich@example.org', '1f96719d8df27defbe8dd05214e5cd54d692e899', '60167344105', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('50', 'Jett', 'Hirthe', 'trever45@example.com', '4bce14d3ae7974456b04fd60b7151f3c89fa5b57', '88888011672', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('51', 'Margie', 'Lindgren', 'mcclure.reyna@example.org', 'af53048ef4e18cb4ed5a7ab2ab0cd576bc8bcf47', '58188419857', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('52', 'Lavonne', 'Ryan', 'fwisozk@example.net', '3f4d2f7b28bd31ab2fc36b651323817ab1504f18', '86109903289', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('53', 'Alphonso', 'Adams', 'fadel.pearlie@example.net', 'e430f12e53b262312a6994470f960a3a70ba0686', '67666329705', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('54', 'Dayton', 'Hane', 'tmorar@example.com', '61c98b2657b4384cdf03ad752c0af1e8bbdeeb34', '47865700835', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('55', 'Andre', 'Miller', 'reichert.lora@example.net', 'ce42728f3de3d11865ce349c1820d6f9c95c0cdf', '12181983861', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('56', 'Kelsi', 'Jaskolski', 'dledner@example.net', 'bba696c016b35eec3d6b4f1ca78f8f99353a9cb9', '41793617414', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('57', 'Kyle', 'Carroll', 'simone69@example.net', '8eb45ce7a94ea3fd8ecf0e7a48947673f060098a', '62176239123', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('58', 'Stacey', 'Haag', 'alexandro.o\'kon@example.com', '1aad2718cd1ef00dc1a38b5a01bbccf9d2b88633', '18445209255', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('59', 'Angela', 'Jaskolski', 'carroll.grady@example.com', '7b15fd70f23318a9e274f65587cfd84b732e7aab', '89615495111', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('60', 'Harmon', 'Wuckert', 'bfritsch@example.com', '207c2d86612aad541fc49eae22b59d075cb9bc80', '77755653854', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('61', 'Matilda', 'Rath', 'alfonso.champlin@example.net', '10a11b2ddbe3c78210326545dbf725b740cee75f', '12406988474', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('62', 'Buck', 'Bednar', 'vwisoky@example.net', 'b01c3cf31ce99355a4cead7d71d33cf80e41b6da', '84192548983', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('63', 'Roger', 'Fay', 'wilkinson.leonor@example.net', '3d1709533621692bb0036f5fbfdfc368c2855f86', '37103469245', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('64', 'Korbin', 'Shanahan', 'eo\'conner@example.net', '85ad74cb645b8051a3ec19a627db082e5e53524e', '82284360762', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('65', 'Ofelia', 'Pouros', 'camylle.kreiger@example.org', 'c00b04bbb7346d972c9f6c590deb352221113ae6', '70093769746', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('66', 'Scottie', 'Kshlerin', 'ayost@example.com', 'ddca0dc0706dbc68cd4c1ae66688de22f240dd57', '82323460388', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('67', 'Eula', 'Kub', 'wallace34@example.org', '23b13ead65b01a83f00c147de70ec9bebed91804', '86668053719', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('68', 'Keshaun', 'Daniel', 'juston.hills@example.net', '4fd70e71cafe2998e724d95e4bba71e842b16d31', '63741601656', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('69', 'Jaleel', 'Koch', 'hermiston.keegan@example.com', 'bd2ee42f482d638768ad37401444eacdc0292947', '9989284876', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('70', 'Amira', 'Murray', 'josue90@example.org', 'c5f9983b6ed2a0cabec6f1b10f14cb838a4dbaad', '40238239913', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('71', 'Domingo', 'Johnston', 'tobin19@example.com', '59e177a8da9813dee1710740a19948f6541d0685', '63275950824', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('72', 'Geoffrey', 'Welch', 'katheryn59@example.net', 'c7792588fc9460b21e82313dac2c1883e7c3bfe4', '51946889094', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('73', 'Alf', 'Okuneva', 'rylan45@example.com', 'd8757e1fc51834abc0c35e758d7c2621ce2f97e3', '11619213409', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('74', 'Katrina', 'Wilkinson', 'progahn@example.net', '97dd5d5d7062e6a2cefdd46195464f4595add804', '66382143196', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('75', 'Rahul', 'Crona', 'tkilback@example.org', 'f4e5c97d1cbaf5cd28a478a9914eda87a736edc4', '84631696947', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('76', 'Jazmyn', 'Becker', 'shanahan.rickie@example.org', 'a1318f89054ba07cd7901c35f4ea4f60997f0d72', '12471080563', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('77', 'Tina', 'Botsford', 'wdietrich@example.com', '48e3a77b6778b4d3618eb3dadbb927153e757dfe', '89780505922', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('78', 'Jewel', 'Leuschke', 'madaline.davis@example.net', 'e29ad20806537d95ba3633a3d0ce1066d19988a5', '50858421205', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('79', 'Amy', 'Runte', 'kristina.sporer@example.net', 'fa92d66dbd622e6b6624d9f71053d09a3c750a41', '33578482639', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('80', 'Dayana', 'Hintz', 'tromp.afton@example.net', 'c7ead1f35873de27c0ce3ed8482ed2dc2f4f17b5', '16750465240', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('81', 'Dudley', 'Wyman', 'waters.quinton@example.net', '3a808eef1a021f83b328d11330b1782a75b42ff0', '21778772424', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('82', 'Zora', 'Hane', 'adrianna43@example.org', '679dd26357cea0aef124c4a5235a377886ba85f8', '4142143042', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('83', 'Raphael', 'Morar', 'william56@example.org', 'cc4d1810aa7b2b5f22d04f6737ddcc58763088a1', '69591324479', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('84', 'Dessie', 'Brown', 'theresia.green@example.com', '4cf9d0a353e13f46ac79600acecd506bff2528f1', '56284841463', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('85', 'Addison', 'Quitzon', 'willy.luettgen@example.com', 'f9d94837716f8a327f01ffcd3824161f556786d5', '67900262270', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('86', 'Donato', 'Wolf', 'hertha.murazik@example.com', '8ea357a25a351f4c4c710c36623892870caa9fe4', '18229630324', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('87', 'Bill', 'Monahan', 'kade.hoeger@example.org', 'f52de46ad5f594422d970c7ddb42874a34415e27', '26260721667', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('88', 'Maddison', 'Mraz', 'kwest@example.org', '1501551957c6974fed53dd90d7fe5586c364fffa', '48516587563', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('89', 'Haven', 'Towne', 'eva49@example.org', '9416efb2bcaae82fbcc2b65836a51653085b9a14', '81491784967', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('90', 'Chauncey', 'Koss', 'glebsack@example.net', '19e80b4b33d38b7b4c7b5378f26eacd85f322322', '64016489160', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('91', 'Nadia', 'Gleason', 'akautzer@example.net', 'fbfac6dd71da605eb25e10771a10dc98e039bb51', '75326146973', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('92', 'Napoleon', 'Skiles', 'hamill.kathryn@example.net', '7102380864387d3fbcc24ebf6717f4d511c32955', '20429309313', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('93', 'Dock', 'Bradtke', 'marcelo.hahn@example.org', '3f606cab78f4d6e2defa8ed4834a90a90eb04a48', '22608547710', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('94', 'Addison', 'McGlynn', 'iliana75@example.net', 'a44cbcde1ecef33c32e69f2a4a7ed8984bc08ab6', '60759849053', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('95', 'Myles', 'Murphy', 'wnicolas@example.org', 'abb5fc5d6f0808c2c490b77450c6aedeb27a8b21', '63608866940', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('96', 'Carmelo', 'Christiansen', 'parisian.taylor@example.net', '1dde729a398e408bcbddbed4f00b4ab0a231eb7a', '63046525760', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('97', 'Maria', 'Bayer', 'jnienow@example.net', '829ba10aeb1169b07c5f24b0ae6f6307cf2c6cbc', '79935399031', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('98', 'Gabe', 'Davis', 'rubie.hartmann@example.net', '78ce9e2d0883049fb005568f8b721ad1376da4ec', '2251838205', '1');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('99', 'Gussie', 'Jacobs', 'skerluke@example.org', '075c1ed4c974110b7f9a09e85841aa95362467b1', '25296935063', '0');
INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password_hash`, `phone`, `is_deleted`) VALUES ('100', 'Ardella', 'Jones', 'antoinette01@example.org', '7359564918152c86a7640730d8de421cb2e32c7b', '2184828097', '0');


