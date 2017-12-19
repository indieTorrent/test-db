-- ----------------------------
-- Sequence structure for albums_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "albums_id_seq";
CREATE SEQUENCE "albums_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for artists_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "artists_id_seq";
CREATE SEQUENCE "artists_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for countries_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "countries_id_seq";
CREATE SEQUENCE "countries_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for featured_songs_cooldown_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "featured_songs_cooldown_id_seq";
CREATE SEQUENCE "featured_songs_cooldown_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for featured_songs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "featured_songs_id_seq";
CREATE SEQUENCE "featured_songs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for genres_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "genres_id_seq";
CREATE SEQUENCE "genres_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for migrations_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "migrations_id_seq";
CREATE SEQUENCE "migrations_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for skus_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "skus_id_seq";
CREATE SEQUENCE "skus_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for songs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "songs_id_seq";
CREATE SEQUENCE "songs_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Sequence structure for users_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "users_id_seq";
CREATE SEQUENCE "users_id_seq" 
INCREMENT 1
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for albums
-- ----------------------------
DROP TABLE IF EXISTS "albums";
CREATE TABLE "albums" (
  "id" int4 NOT NULL DEFAULT nextval('albums_id_seq'::regclass),
  "artist_id" int4 NOT NULL,
  "title" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "alt_title" varchar(255) COLLATE "pg_catalog"."default",
  "type" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "year" int2 NOT NULL,
  "genre_id" int2,
  "description" varchar(255) COLLATE "pg_catalog"."default",
  "has_explicit_lyrics" bool NOT NULL,
  "full_album_price" numeric(8,2),
  "rank" int4,
  "is_active" bool NOT NULL DEFAULT false,
  "deleter_id" int4,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of albums
-- ----------------------------
BEGIN;
INSERT INTO "albums" VALUES (1, 1, 'Cruickshank Ltd', 'Reilly-Roberts', 'f', 1986, 3, 'Aliquam consequatur eum ullam eligendi pariatur aut aut in fuga odio.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (2, 2, 'Cummerata-Ritchie', 'Jerde, Ledner and Crist', 'f', 1994, 1, 'Occaecati veniam et facere necessitatibus nihil veritatis distinctio sit ipsa ex ut et est.', 'f', NULL, NULL, 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (3, 2, 'Stoltenberg, Schmidt and Dach', 'Schaden Ltd', 'f', 1997, 1, 'Laboriosam ipsum magnam officiis ullam molestiae eaque ut vero quos sit velit ullam.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (4, 2, 'Ziemann, Armstrong and Runte', 'Ferry-Hammes', 'f', 1979, 3, 'Ullam rerum dolore blanditiis fugit et qui hic et aut.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (5, 2, 'Dibbert-Will', 'Lubowitz Ltd', 'f', 2006, 2, 'Enim et ut libero voluptas quam excepturi esse earum non rerum perspiciatis et laudantium.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (6, 2, 'Walter and Sons', 'Roberts, Hintz and Muller', 'f', 2005, 1, 'Aut est voluptatem voluptatem ipsa dolorem eum quis.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (7, 3, 'Crona-Monahan', 'Wuckert and Sons', 'f', 1977, 3, 'Et et nostrum molestiae nisi dolor nemo dignissimos temporibus.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (8, 4, 'Runolfsdottir, Kiehn and Eichmann', 'Morar, Jaskolski and Bechtelar', 'f', 2014, 1, 'Est delectus quo nam cupiditate voluptas quos quidem.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (9, 5, 'Lockman Group', 'Emard and Sons', 'f', 1984, 2, 'Nihil reprehenderit optio quas voluptas et neque cumque at excepturi aut aut eaque laudantium.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (10, 6, 'Pacocha, Hodkiewicz and Feest', 'Friesen PLC', 'f', 1979, 2, 'Laudantium quos eveniet occaecati possimus ut incidunt veritatis.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (11, 6, 'Ondricka Inc', 'White, Hodkiewicz and Kemmer', 'f', 1984, 2, 'Iusto architecto non eum et nihil veritatis mollitia quas libero tenetur.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (12, 7, 'Brown-Medhurst', 'Oberbrunner-Turner', 'f', 1998, 1, 'Quam delectus totam animi nisi rem et odio debitis aliquam vel rerum.', 'f', NULL, NULL, 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (13, 8, 'Collins, Green and Rosenbaum', 'Deckow-Hills', 'f', 1975, 2, 'Perspiciatis eum debitis sed dolorum ipsum pariatur exercitationem laboriosam.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (14, 8, 'Nolan LLC', 'Reichert Inc', 'f', 2003, 2, 'Sint consectetur enim voluptatum et voluptatem sed repellat aut quas consequatur eveniet vel.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (15, 9, 'Crist, Schulist and Cormier', 'Barton-Kozey', 'f', 2008, 1, 'Cupiditate fugit dolores assumenda quidem minima omnis.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (16, 9, 'O''Conner, Prosacco and Hagenes', 'Wunsch PLC', 'f', 1981, 2, 'Laudantium blanditiis sed labore aperiam eum cum placeat libero dolor.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (17, 9, 'Corkery, O''Conner and Torphy', 'Schneider-Berge', 'f', 2015, 1, 'Earum vero qui consectetur accusantium deserunt maxime quidem ut quasi.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (18, 9, 'Mann-Strosin', 'Ernser-Nicolas', 'f', 2005, 3, 'Quis rerum quibusdam ad dolor et dolorem minima quia voluptas expedita animi.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (19, 9, 'Wiza and Sons', 'Kemmer-Kautzer', 'f', 2004, 2, 'Officia dicta voluptatum fugiat sapiente impedit quidem quisquam.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (20, 10, 'Klocko Ltd', 'Herman, Friesen and Nitzsche', 'f', 2011, 2, 'Sed eius est laudantium quia voluptas voluptatem.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (21, 11, 'Welch, Miller and Hills', 'Willms-Conn', 'f', 1997, 2, 'In corporis veritatis sint aut soluta et voluptatum.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (22, 11, 'Morar, Hahn and Ebert', 'Jenkins-Cartwright', 'f', 1975, 1, 'Aut non accusamus qui natus veritatis aliquam iste veniam molestias eligendi aut architecto.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (23, 11, 'Schultz, Dooley and Blick', 'Wolf-Murray', 'f', 2004, 1, 'Quam quas consectetur veritatis blanditiis omnis error nulla dicta voluptatem omnis qui voluptatem.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "albums" VALUES (24, 12, 'Bechtelar-Leannon', 'Corwin, Dare and Abshire', 'f', 1995, 3, 'Veritatis ab in accusantium similique optio rerum veniam expedita.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (25, 12, 'Mayer, Dibbert and Brekke', 'Torp Inc', 'f', 2003, 3, 'Rem et est eum magni accusamus est.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (26, 12, 'Ferry-Smith', 'Kohler PLC', 'f', 1970, 3, 'Qui laboriosam aut doloremque adipisci corrupti beatae optio et animi ut quia.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (27, 12, 'Feeney PLC', 'Lebsack PLC', 'f', 1979, 3, 'Dolores consequuntur natus eaque non quas quia.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (28, 12, 'Vandervort Inc', 'Streich, Corkery and Koelpin', 'f', 1974, 1, 'Maxime aliquam nisi facere cupiditate illum in quisquam vero autem.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (29, 13, 'Fadel, Stracke and Dooley', 'Auer-Carroll', 'f', 1990, 1, 'Inventore quo laborum dolores id sint eveniet aut error magni accusamus eius repellendus.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (30, 13, 'Kris-Keeling', 'McCullough, Barton and Schumm', 'f', 2012, 3, 'Quia voluptatum omnis iure sapiente impedit blanditiis ratione perferendis odio aut voluptas exercitationem.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (31, 14, 'Mayer, Dickens and Osinski', 'Jones-Satterfield', 'f', 1990, 1, 'Et velit aut alias delectus quidem ex omnis optio accusamus animi corrupti enim qui.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (32, 14, 'Hagenes-Hegmann', 'Brown-Lakin', 'f', 2000, 1, 'Voluptatem fugiat voluptas laborum at fugit dolores exercitationem.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (33, 14, 'Runolfsdottir-Gerhold', 'Hayes, Gulgowski and Donnelly', 'f', 1997, 1, 'Est ut ut minima odio dolore ipsa fugit tempore tenetur.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (34, 14, 'Yundt-Schinner', 'Reinger, Mitchell and Klein', 'f', 1978, 2, 'Maiores ut sunt saepe nostrum voluptates molestiae ullam sit.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (35, 14, 'Ratke, Prohaska and Bayer', 'Pfeffer-Goyette', 'f', 2017, 3, 'Delectus veritatis sed qui facilis aut qui.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (36, 15, 'Gutmann, Streich and Marvin', 'Sauer-Corkery', 'f', 1982, 2, 'Mollitia enim facere iste autem et voluptate placeat ab quae perspiciatis dolorem et deserunt.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (37, 16, 'Pagac, Wiegand and Breitenberg', 'Green, Cormier and Bashirian', 'f', 2017, 2, 'Voluptates ipsa tenetur quae ipsum et qui.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (38, 17, 'Fritsch, Ryan and Hauck', 'Bahringer, Will and Rosenbaum', 'f', 1980, 2, 'Voluptas vel cupiditate non iusto quisquam possimus nisi eius modi natus.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (39, 18, 'Treutel, Bahringer and Considine', 'Hackett Ltd', 'f', 1976, 1, 'Maxime asperiores repellendus atque voluptas non a ad.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (40, 18, 'Bosco LLC', 'Goyette, Mertz and Wiegand', 'f', 1983, 3, 'Sed et et blanditiis quod vel ut rerum expedita doloremque dignissimos dolore deleniti.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (41, 18, 'Hoppe-Towne', 'Mohr LLC', 'f', 1992, 3, 'Dolorem nemo distinctio saepe sint saepe eveniet odit omnis aut reprehenderit.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (42, 18, 'Denesik-Kovacek', 'Rolfson, Balistreri and Waters', 'f', 2006, 1, 'Facilis maxime fugit neque velit reprehenderit debitis unde consequuntur veritatis.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (43, 19, 'Abbott, Okuneva and McCullough', 'Schamberger, Prosacco and Thiel', 'f', 1996, 1, 'Ut alias itaque vel et aut fuga qui saepe.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (44, 19, 'Langworth LLC', 'Ankunding, Miller and Schmitt', 'f', 2014, 2, 'Rerum recusandae omnis quia libero recusandae deleniti non.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (45, 20, 'Kilback LLC', 'Oberbrunner-Jakubowski', 'f', 2007, 3, 'Sit nihil omnis qui quis ut ipsa at autem.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (46, 21, 'Konopelski, Reinger and Goodwin', 'Kuvalis Group', 'f', 1992, 1, 'Illum numquam sint ut voluptates quae tempore ipsum vel temporibus eum.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (47, 21, 'Predovic Inc', 'Herzog, Ferry and Lynch', 'f', 2000, 2, 'Consequuntur qui alias autem sequi ut quae id et et ut.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (48, 21, 'Medhurst-Zemlak', 'Rodriguez, Dietrich and Roob', 'f', 2004, 2, 'Quibusdam est sapiente ipsum maiores natus ut labore ex qui id reprehenderit molestiae.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (49, 21, 'Conroy-Feil', 'Jast and Sons', 'f', 2012, 2, 'Amet dignissimos totam et blanditiis laudantium excepturi ut est adipisci distinctio.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (50, 22, 'Hudson, Huel and Morar', 'Kreiger-Bartoletti', 'f', 1986, 1, 'Beatae vero vel expedita sequi quasi esse maiores atque.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (51, 22, 'Marquardt, Grady and Funk', 'Pagac LLC', 'f', 1997, 2, 'Nemo qui consequatur est itaque accusantium harum laudantium.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (52, 22, 'Tillman Inc', 'Lehner-Rath', 'f', 1996, 3, 'Odio sit doloremque ad fuga qui libero dolorem sapiente dolorem quod.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (53, 22, 'Kessler-Trantow', 'Wiza-Kutch', 'f', 1989, 1, 'Distinctio expedita ut sint nesciunt incidunt consequatur non voluptatem.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (54, 22, 'Kozey Ltd', 'Nienow, Shields and Kulas', 'f', 1996, 2, 'Quod quia voluptatibus non alias quis minus assumenda dolorum.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (55, 23, 'Wisoky, Toy and Murray', 'Stokes Group', 'f', 1974, 2, 'Nobis impedit in nemo voluptatem corrupti magni doloremque nihil provident.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (56, 23, 'Nikolaus-Rempel', 'Bins-Baumbach', 'f', 1980, 2, 'Sit ut voluptatibus molestiae quia et quas minima perferendis deserunt consequatur rerum est.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (57, 23, 'Beer-Sipes', 'Medhurst, Wintheiser and Smitham', 'f', 1985, 1, 'Quaerat enim modi ut est labore cupiditate voluptatem et nostrum.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (58, 23, 'Schumm Ltd', 'Bechtelar-Morissette', 'f', 1985, 1, 'Ut earum numquam magnam nostrum quod cupiditate quo esse reprehenderit rerum vel.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (59, 23, 'McDermott Group', 'Hodkiewicz, Morar and Smitham', 'f', 1987, 2, 'Mollitia qui aut et ea nulla sit praesentium iusto asperiores commodi.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (60, 24, 'Sipes PLC', 'Schmidt-Bashirian', 'f', 2003, 2, 'Deleniti ad similique nobis quisquam quo est non impedit ratione quia in.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (61, 24, 'Kub-Kulas', 'Mraz Inc', 'f', 1979, 1, 'Aut et sapiente et non alias nobis laborum non adipisci at et.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (62, 24, 'Ruecker, Flatley and Skiles', 'Waelchi LLC', 'f', 2011, 3, 'Animi quo aperiam earum cupiditate consequatur reprehenderit nihil est.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "albums" VALUES (63, 25, 'Connelly-Yundt', 'Lowe LLC', 'f', 1995, 1, 'Asperiores omnis voluptatibus dolorum omnis occaecati quis voluptas.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (64, 25, 'Waters-White', 'Upton-Bahringer', 'f', 1999, 3, 'Commodi beatae ullam cum vitae consequatur repellendus et.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (65, 25, 'Runte Group', 'Hartmann, Emard and Krajcik', 'f', 1997, 2, 'Sit saepe eligendi autem qui et inventore est nihil.', 'f', NULL, NULL, 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (66, 25, 'Bartell Group', 'Schuppe Inc', 'f', 2006, 2, 'Dignissimos in qui iste animi non occaecati tempora accusantium ut quaerat ut assumenda nesciunt.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (67, 25, 'Baumbach Ltd', 'Conn, Moen and Pagac', 'f', 1971, 2, 'Nobis esse asperiores quaerat dolor ipsa vero magnam recusandae.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (68, 26, 'Zboncak Inc', 'Kuhic Inc', 'f', 1977, 2, 'Debitis et quis modi laborum sed velit adipisci accusantium dolorem.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (69, 27, 'Cartwright Group', 'Grady-Cruickshank', 'f', 2007, 1, 'Aut consequuntur totam vel sunt quo fugit sit quod.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (70, 28, 'Waelchi-Beatty', 'Monahan-Considine', 'f', 1974, 1, 'Quae commodi consequatur necessitatibus quibusdam porro consequatur.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (71, 28, 'Romaguera LLC', 'Ortiz-Brakus', 'f', 1977, 2, 'Quis aperiam natus eius qui et quasi est rem doloribus molestias sit.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (72, 28, 'Kuhn, Hyatt and Upton', 'Stokes-Mayer', 'f', 1977, 2, 'Cumque id quia tempore a quisquam sint ut.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (73, 28, 'Morar, Jerde and Klocko', 'Rowe, Ankunding and Olson', 'f', 1976, 2, 'Aut amet cumque aliquid quia voluptatibus eligendi ex.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (74, 29, 'Quigley, Cassin and Wuckert', 'Pagac Group', 'f', 2005, 2, 'Voluptas eos cumque eaque aut ab maiores pariatur qui et.', 'f', NULL, NULL, 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (75, 29, 'Harris, Gleichner and Stamm', 'Predovic, Rodriguez and Marquardt', 'f', 2000, 1, 'Ipsum atque vel perspiciatis ducimus asperiores et nam molestias quod.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (76, 30, 'Eichmann Group', 'Walter-Torp', 'f', 1988, 2, 'Et officiis molestiae quo necessitatibus alias eos ut hic ipsum eos dolor.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (77, 31, 'Jerde-Haley', 'Breitenberg-Muller', 'f', 1985, 3, 'Sed mollitia et magnam optio consectetur esse rerum facilis.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (78, 31, 'Hudson, Grant and Brown', 'Thiel, Olson and Hoppe', 'f', 1973, 1, 'Quis debitis totam sed itaque quos facere nisi ad quasi est.', 'f', NULL, NULL, 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (79, 32, 'Lakin-Bailey', 'Bechtelar-Waters', 'f', 1971, 2, 'Repudiandae repellat inventore dolorem officia est consequatur praesentium praesentium odio voluptates dolorem deserunt perferendis.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (80, 32, 'Corwin, Larson and Feil', 'Swaniawski-Kuphal', 'f', 1973, 3, 'Unde perferendis eos deleniti sunt quas nostrum reiciendis voluptatem id culpa.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (81, 32, 'Dickens, Parisian and Schowalter', 'Raynor Ltd', 'f', 2016, 1, 'Harum necessitatibus voluptatem consectetur voluptas et voluptate velit aliquid sed quis.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (82, 32, 'Thompson Group', 'Renner-Borer', 'f', 2015, 2, 'Eligendi unde provident dolor rerum dolores ut voluptas.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (83, 32, 'Leannon, Murphy and Homenick', 'Volkman, Nikolaus and Hegmann', 'f', 1976, 2, 'Et rerum quia facere eius porro qui in laudantium.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (84, 33, 'Pagac, Kunde and Little', 'Mayer-Mante', 'f', 1984, 3, 'Ut officiis error asperiores veritatis sed nihil sint reiciendis tenetur perspiciatis mollitia.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (85, 33, 'Ortiz LLC', 'Ledner-Rau', 'f', 1987, 2, 'Mollitia eligendi autem amet perspiciatis est voluptatem distinctio eos quis earum placeat expedita eligendi.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (86, 33, 'O''Hara PLC', 'Okuneva-Conroy', 'f', 2013, 1, 'Eveniet eaque cumque sed iure enim qui tenetur possimus aut et voluptates minima quae.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (87, 33, 'Schowalter and Sons', 'O''Conner-Cummings', 'f', 1975, 1, 'Quis labore rerum magni minima quaerat sint id modi placeat sit eos.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (88, 34, 'Nolan-Wiza', 'Dickinson, Grant and Wilderman', 'f', 1970, 1, 'Tempora iste nisi minus et vero quia et est veniam accusamus at ratione itaque.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (89, 34, 'Lemke-Lesch', 'Ondricka-Lemke', 'f', 1971, 1, 'Ab fugit quas sint qui temporibus dolore nemo veritatis repudiandae.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (90, 34, 'Kling, Koch and Moen', 'Runolfsdottir-Jones', 'f', 1991, 1, 'Rem doloribus sed porro incidunt et sit nihil.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (91, 34, 'Buckridge-Hilll', 'Pouros Inc', 'f', 1993, 3, 'Sed atque sequi aut et repellat unde nihil exercitationem eum explicabo officiis adipisci.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (92, 35, 'Walker, Greenholt and Reinger', 'Baumbach, Rolfson and Schmidt', 'f', 1985, 2, 'Nam eos nostrum ipsa ducimus odio quas quo totam numquam est nam.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (93, 35, 'Breitenberg LLC', 'Weimann LLC', 'f', 1979, 2, 'Aut neque aliquid consequatur enim consequatur delectus ut qui porro sequi.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (94, 36, 'Barton-Sipes', 'Sauer LLC', 'f', 1974, 1, 'Rem vel et reprehenderit hic fugiat dolores.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (95, 36, 'Haley, Wisozk and Bode', 'Ratke, Vandervort and Windler', 'f', 1982, 2, 'Voluptas molestiae similique enim similique voluptatem quibusdam hic aspernatur reiciendis omnis doloribus.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (96, 36, 'Pacocha Inc', 'Jenkins LLC', 'f', 2008, 1, 'Eos officiis blanditiis et voluptas animi ut iste mollitia.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (97, 36, 'Rohan, Padberg and Kling', 'Miller, Kiehn and Klocko', 'f', 1979, 2, 'Natus autem quasi quo aut ab et et omnis.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (98, 36, 'Schulist-Jones', 'Hane, Schaefer and Mills', 'f', 2005, 1, 'Aliquid nam non animi eius unde suscipit quae aut blanditiis.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "albums" VALUES (99, 37, 'Breitenberg, Frami and Collier', 'Rutherford, Conn and Jast', 'f', 2013, 2, 'Quae et quas illo minima et sunt qui velit nemo voluptates id quos.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (100, 38, 'McGlynn Inc', 'Barton and Sons', 'f', 1997, 3, 'Repudiandae ea cum et consequatur non et adipisci.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (101, 38, 'Welch Inc', 'Kshlerin, Bernhard and Champlin', 'f', 2013, 2, 'Animi dignissimos voluptate architecto est et non dolorem in vero consequatur.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (102, 38, 'O''Keefe LLC', 'Fahey, Hilpert and Maggio', 'f', 2015, 2, 'Totam itaque perferendis eum commodi et occaecati iusto et.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (103, 39, 'Ullrich Inc', 'Wolff Group', 'f', 1999, 1, 'Quasi minus quia quaerat laboriosam consequatur velit.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (104, 40, 'Dickens and Sons', 'Kutch-Hills', 'f', 2012, 1, 'Voluptatem velit dolores fugit qui nihil aliquam iste quod nesciunt repellendus amet ipsum.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (105, 40, 'Ferry-Graham', 'Emard, Goodwin and Kozey', 'f', 1997, 2, 'Eum maxime rem aut voluptatem voluptas totam ea quibusdam iusto repellat architecto similique consectetur.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (106, 40, 'Becker LLC', 'Murray-Kautzer', 'f', 1977, 3, 'Sint tempore vitae id nostrum esse optio optio.', 'f', NULL, NULL, 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (107, 41, 'Wunsch, Kunde and Lakin', 'Yost Group', 'f', 1976, 2, 'Omnis ducimus ut recusandae laborum quasi commodi id dolorem ex unde ut aut porro.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (108, 41, 'Welch-Stanton', 'Muller Inc', 'f', 1993, 1, 'Beatae autem vitae dolor et quod rerum non vel doloremque consequatur.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (109, 41, 'Miller-Brakus', 'Hilpert, Murazik and Towne', 'f', 1982, 1, 'Sed laboriosam magnam ab veritatis qui omnis voluptatibus.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (110, 41, 'Kassulke-Hoeger', 'Will Inc', 'f', 1981, 3, 'Nesciunt possimus rerum modi eius ut laboriosam et dolore hic libero.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (111, 42, 'Goldner PLC', 'Lockman Group', 'f', 2010, 2, 'Aut sit autem laboriosam id molestiae placeat maiores debitis saepe dolorum excepturi reprehenderit.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (112, 42, 'Ortiz PLC', 'Wisoky Group', 'f', 2017, 2, 'Aut neque architecto et velit fugiat temporibus.', 'f', NULL, NULL, 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (113, 42, 'Murphy-Grimes', 'Haag Inc', 'f', 1997, 3, 'Mollitia eos quo labore unde non libero modi voluptas.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (114, 42, 'Dare, Swift and Upton', 'Schimmel, Kulas and Keeling', 'f', 1985, 1, 'Sit id et minus aspernatur deserunt consequatur quos.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (115, 43, 'Okuneva and Sons', 'Davis-Rowe', 'f', 1979, 1, 'Reiciendis nihil in repellendus aut sint enim saepe tenetur nesciunt expedita assumenda quam.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (116, 43, 'Hilpert-Flatley', 'Considine-Skiles', 'f', 1989, 3, 'Dolore ea repellendus labore tempora sit et non eos sint ducimus rerum.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (117, 44, 'Casper-Hartmann', 'Connelly, O''Reilly and Mills', 'f', 1996, 1, 'Deleniti velit omnis modi et sit voluptas maiores vero in.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (118, 44, 'Deckow-Jacobi', 'Leuschke Inc', 'f', 2005, 1, 'Consequuntur id eaque possimus quis sunt dicta aliquam sit velit.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (119, 44, 'Hansen PLC', 'Kessler PLC', 'f', 2009, 1, 'Atque quo assumenda blanditiis atque dolorem et.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (120, 44, 'Hackett and Sons', 'Olson-Gerhold', 'f', 1970, 3, 'Dolor illo aspernatur officia soluta adipisci explicabo sequi molestiae voluptatem.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (121, 44, 'Eichmann, Kuhlman and Batz', 'Wolf Ltd', 'f', 1974, 3, 'Eius iusto iusto et odio dolorem ipsa.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (122, 45, 'Kreiger and Sons', 'Baumbach PLC', 'f', 1974, 3, 'Itaque provident dolorem soluta velit fuga pariatur deserunt.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (123, 45, 'Schaden Ltd', 'Gutkowski Group', 'f', 2011, 3, 'Voluptas est consequatur aspernatur qui tenetur voluptate nam recusandae quas in.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (124, 46, 'Rempel, Hartmann and Stiedemann', 'Homenick-Thiel', 'f', 1999, 1, 'Quibusdam consectetur voluptas reprehenderit consequuntur sed consequuntur accusamus voluptatem.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (125, 46, 'Kutch Ltd', 'Walker PLC', 'f', 2001, 3, 'Velit hic quo dolor ut ea ad.', 'f', NULL, NULL, 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (126, 46, 'Grady, Gleichner and Brakus', 'Fritsch, Towne and Hirthe', 'f', 1989, 3, 'Sed ullam explicabo eveniet est veritatis et.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "albums" VALUES (127, 47, 'Yundt, O''Hara and Watsica', 'Quitzon, Flatley and Ruecker', 'f', 1971, 1, 'Tenetur soluta voluptatum quae vel ipsum nobis quam unde et.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "albums" VALUES (128, 47, 'Hackett, Miller and Armstrong', 'Fritsch, Christiansen and Kuhn', 'f', 2005, 3, 'Ratione ducimus fugiat quis placeat rerum quia repudiandae reiciendis culpa ut aliquam qui ut.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "albums" VALUES (129, 47, 'Hirthe, Kertzmann and Littel', 'Hyatt, Kuhic and Hand', 'f', 1985, 3, 'Excepturi odit exercitationem nihil et deserunt alias molestias debitis aliquam molestiae quis itaque.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "albums" VALUES (130, 48, 'Langosh, Stanton and Eichmann', 'Corkery and Sons', 'f', 1993, 1, 'Iure reiciendis suscipit quia at qui aut neque ad placeat possimus sit sunt quo.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "albums" VALUES (131, 49, 'Will-Blick', 'Barton LLC', 'f', 1980, 1, 'Odio dolorem quia repudiandae officiis eaque quam occaecati voluptas sit est qui qui.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "albums" VALUES (132, 49, 'Huel, Denesik and Watsica', 'Koss-Gaylord', 'f', 2010, 2, 'Debitis placeat itaque consequatur non nostrum itaque et repellendus.', 'f', NULL, NULL, 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "albums" VALUES (133, 49, 'Waelchi, Gorczany and Becker', 'Stanton-Wisoky', 'f', 1991, 3, 'Nihil quidem vel blanditiis minus quibusdam labore explicabo nobis est minima.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "albums" VALUES (134, 50, 'Denesik, Haley and Hudson', 'Leannon-Cartwright', 'f', 1982, 2, 'Quos harum doloribus maxime quam est qui sint quo quis ut corrupti tenetur fugiat.', 't', NULL, NULL, 't', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "albums" VALUES (135, 50, 'Dickens, Heaney and Kertzmann', 'Weber and Sons', 'f', 2005, 1, 'Deleniti ab ut dolore rerum aut voluptas est dolores in qui.', 't', NULL, NULL, 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
COMMIT;

-- ----------------------------
-- Table structure for artists
-- ----------------------------
DROP TABLE IF EXISTS "artists";
CREATE TABLE "artists" (
  "id" int4 NOT NULL DEFAULT nextval('artists_id_seq'::regclass),
  "moniker" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "alt_moniker" varchar(255) COLLATE "pg_catalog"."default",
  "city" varchar(255) COLLATE "pg_catalog"."default",
  "territory" varchar(255) COLLATE "pg_catalog"."default",
  "country_code" varchar(3) COLLATE "pg_catalog"."default",
  "official_url" varchar(255) COLLATE "pg_catalog"."default",
  "profile_url" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "donation_sku_id" int4,
  "rank" int4,
  "is_active" bool NOT NULL DEFAULT false,
  "approval_key" varchar(255) COLLATE "pg_catalog"."default",
  "approved_at" timestamp(0),
  "approver_id" int4,
  "owner_id" int4 NOT NULL,
  "deleter_id" int4,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of artists
-- ----------------------------
BEGIN;
INSERT INTO "artists" VALUES (1, 'Jenkins, Leuschke and Harber', 'Kemmer-Mueller', 'New Muhammadside', 'Illinois', 'US', 'http://www.shields.biz/omnis-dolores-sed-ad-molestiae-tenetur', 'http://paucek.com/', NULL, NULL, 't', NULL, '2017-01-02 22:26:57', 2, 6, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (2, 'Rath, Muller and Schuster', 'Stehr Group', 'New Aletha', 'West Virginia', 'US', 'http://feeney.info/magni-velit-quia-et-accusamus-autem-nobis-voluptatem-natus', 'https://www.bednar.biz/nesciunt-nulla-ut-odit-illum-ea-ea-voluptatem', NULL, NULL, 't', NULL, '2017-02-15 02:46:27', 2, 7, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (3, 'Willms-Denesik', 'Wolf, Muller and Barton', 'Mertzfurt', 'New York', 'US', 'https://www.goyette.com/voluptatem-sed-est-recusandae-quisquam-amet-exercitationem-molestiae-fuga', 'http://collins.com/', NULL, NULL, 't', NULL, '2017-04-14 01:00:49', 7, 8, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (4, 'Prosacco LLC', 'Gulgowski, Rempel and Mraz', 'Heidenreichstad', 'Wisconsin', 'US', 'https://www.russel.info/veritatis-nisi-rerum-delectus-rerum-laborum', 'http://www.crist.org/repudiandae-quo-tenetur-sed-est-tempore', NULL, NULL, 't', NULL, '2017-03-08 12:14:30', 3, 9, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (5, 'Olson, Aufderhar and Flatley', 'Schmitt-McGlynn', 'Mayershire', 'Nevada', 'US', 'http://www.walsh.net/', 'https://www.stanton.com/cumque-veritatis-dolore-magni-enim-ipsum-cupiditate-dolor', NULL, NULL, 't', NULL, '2017-06-04 03:26:36', 3, 10, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (6, 'Lubowitz-Howell', 'Schuster, Kemmer and Wyman', 'New Genevievebury', 'Pennsylvania', 'US', 'http://beatty.biz/quam-quia-laboriosam-quam-ut-aut-qui', 'http://larkin.com/adipisci-eos-sed-excepturi-ipsam-officiis-quod-modi.html', NULL, NULL, 't', NULL, '2017-10-18 21:23:40', 5, 11, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (7, 'Orn, Brekke and Torp', 'Bins, Kuhic and Kuphal', 'Hertahaven', 'Texas', 'US', 'http://schmeler.com/sequi-quia-ut-rem-omnis', 'http://www.walker.com/ipsam-sequi-tempore-quas-quia-sed-sapiente', NULL, NULL, 't', NULL, '2017-09-26 15:27:57', 9, 12, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (8, 'Beier, Barrows and Lesch', 'Lindgren, Franecki and Ortiz', 'East Owen', 'Colorado', 'US', 'http://hane.com/quidem-sunt-enim-asperiores-quo', 'https://www.schuster.net/tempore-porro-iste-molestiae-quia-odit', NULL, NULL, 't', NULL, '2017-09-09 09:45:20', 4, 13, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (9, 'Fadel Group', 'Gibson, Denesik and Franecki', 'West Dino', 'Indiana', 'US', 'http://www.gaylord.com/illum-laborum-sit-officia-voluptate-commodi', 'http://stroman.com/quia-quidem-illum-facilis-doloribus-aliquam-nihil', NULL, NULL, 't', NULL, '2017-04-24 10:26:23', 9, 14, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (10, 'Gleichner, Gleichner and Schroeder', 'Bergnaum-Turner', 'Giovannimouth', 'New York', 'US', 'http://www.mraz.net/molestias-vitae-velit-sed-repellat-aliquam-quod', 'http://nicolas.com/occaecati-et-adipisci-voluptas-distinctio-laborum.html', NULL, NULL, 't', NULL, '2017-01-22 14:53:17', 9, 15, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (11, 'Hoeger-Willms', 'Johnston-Legros', 'New Kristofferland', 'Alaska', 'US', 'http://www.kovacek.com/vel-sequi-officiis-nisi-corrupti-quasi-officia', 'http://hartmann.org/', NULL, NULL, 'f', NULL, '2017-02-18 12:28:23', 8, 16, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (12, 'Stroman LLC', 'Ullrich, Wunsch and Koss', 'Vernieburgh', 'Minnesota', 'US', 'http://boyle.org/nesciunt-aliquam-blanditiis-a-earum-a-velit.html', 'http://spinka.biz/similique-veritatis-tempora-maxime.html', NULL, NULL, 'f', NULL, '2017-03-01 17:06:21', 4, 17, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (13, 'Bartoletti-Sauer', 'Strosin-Reichel', 'Kossfurt', 'Arkansas', 'US', 'http://spinka.info/placeat-aut-odit-officia-et-facilis', 'http://www.muller.org/ad-qui-occaecati-vitae-sit-deleniti-exercitationem-praesentium-eligendi', NULL, NULL, 'f', NULL, '2017-09-09 08:37:48', 2, 18, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (14, 'McGlynn PLC', 'Heidenreich-Hamill', 'Hesselport', 'Virginia', 'US', 'http://www.schowalter.com/', 'https://ohara.biz/esse-labore-pariatur-odio-eaque.html', NULL, NULL, 't', NULL, '2017-04-13 16:37:48', 3, 19, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (15, 'Padberg LLC', 'O''Keefe-Senger', 'West Mike', 'Nevada', 'US', 'http://www.dibbert.info/voluptatibus-ullam-rerum-quia-possimus-commodi-esse-ex.html', 'http://fay.com/assumenda-culpa-aut-maiores-error-laborum-nihil-enim', NULL, NULL, 'f', NULL, '2017-09-25 08:20:44', 13, 20, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (16, 'Metz, Gerlach and Keeling', 'Bartoletti, Boyle and Fisher', 'Nobleburgh', 'Colorado', 'US', 'http://jakubowski.com/voluptatibus-blanditiis-consequuntur-natus-vero', 'http://kreiger.info/nostrum-deleniti-quas-officiis-dicta-repellendus-qui-minima-eum.html', NULL, NULL, 't', NULL, '2017-06-17 01:23:03', 14, 21, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (17, 'Abbott Ltd', 'Leffler-Schultz', 'Port Astridfurt', 'Arizona', 'US', 'https://www.hessel.com/exercitationem-itaque-dolorem-ut-qui-et-quas-nesciunt', 'http://carroll.com/dolore-voluptatem-culpa-eveniet-facilis', NULL, NULL, 't', NULL, '2017-11-14 14:07:06', 16, 22, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (18, 'Sporer, Nader and Jerde', 'Wyman, Rowe and Gaylord', 'East Clemensfurt', 'South Dakota', 'US', 'https://www.dicki.com/aut-pariatur-provident-rerum-omnis-sit-enim-porro-porro', 'http://www.bashirian.com/nihil-sequi-libero-omnis-praesentium-ut-mollitia.html', NULL, NULL, 't', NULL, '2017-06-30 19:11:20', 3, 23, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (19, 'Mills-Doyle', 'Ullrich, Gibson and Boehm', 'West Skyefort', 'Maryland', 'US', 'http://www.harris.com/tenetur-sequi-earum-voluptate-odio-laborum-voluptatum-sint', 'http://rolfson.com/cupiditate-molestiae-consequatur-laudantium-est-tenetur-temporibus', NULL, NULL, 't', NULL, '2017-04-26 22:30:41', 12, 24, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (20, 'Cartwright, Morar and Reichel', 'Gusikowski Ltd', 'Cronamouth', 'Nevada', 'US', 'https://www.towne.com/sequi-ipsam-eaque-nobis-accusantium-vel-nulla-necessitatibus-nulla', 'http://stroman.com/eos-aut-quidem-modi-voluptates-a-est-eligendi.html', NULL, NULL, 't', NULL, '2017-08-28 16:51:05', 1, 25, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (21, 'Reilly-Toy', 'O''Hara, Lockman and Ratke', 'South Jasmin', 'South Carolina', 'US', 'http://www.jacobs.org/', 'http://www.harris.com/recusandae-recusandae-necessitatibus-repellat-placeat-perferendis-voluptas-labore', NULL, NULL, 'f', NULL, '2017-02-27 01:51:48', 10, 26, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (22, 'Davis-Boyle', 'Stiedemann-Heaney', 'West Jamel', 'Iowa', 'US', 'https://www.hagenes.com/amet-officiis-quisquam-aut', 'http://www.raynor.biz/dolorum-sint-qui-soluta-repellendus', NULL, NULL, 't', NULL, '2017-02-25 16:35:10', 13, 27, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (23, 'Pacocha LLC', 'Satterfield Inc', 'Ornton', 'North Carolina', 'US', 'http://kuhic.com/nisi-voluptatem-qui-optio-est-aut-quod.html', 'http://emard.org/', NULL, NULL, 'f', NULL, '2017-07-07 00:48:03', 20, 28, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (24, 'Leffler-Bosco', 'Wintheiser LLC', 'East Maximillia', 'Arkansas', 'US', 'https://www.altenwerth.com/a-optio-sint-aut-facilis-delectus-fugit', 'http://www.reichert.com/rerum-quia-commodi-error-illum', NULL, NULL, 'f', NULL, '2017-11-01 08:50:18', 12, 29, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (25, 'Koch, Bruen and Yost', 'Predovic Ltd', 'Lebsackchester', 'Kansas', 'US', 'https://weber.com/magni-est-aliquid-fugiat-eligendi.html', 'http://champlin.info/', NULL, NULL, 't', NULL, '2017-11-27 11:25:20', 2, 30, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (26, 'Doyle PLC', 'Durgan-Lemke', 'North Leopold', 'Kansas', 'US', 'http://nader.com/odio-sed-quisquam-nesciunt-doloremque.html', 'https://baumbach.com/voluptas-recusandae-neque-quisquam-quis-consequatur-ipsam.html', NULL, NULL, 't', NULL, '2017-05-09 16:06:47', 16, 31, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (27, 'Casper Ltd', 'Walker, Sawayn and DuBuque', 'Millerburgh', 'Connecticut', 'US', 'http://www.herman.com/quibusdam-aut-aut-doloremque-iste', 'http://barton.com/voluptatum-sequi-omnis-dolorum-explicabo-nesciunt-eligendi.html', NULL, NULL, 'f', NULL, '2016-12-26 11:37:44', 9, 32, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (28, 'Schroeder, Fay and Romaguera', 'Koepp-Lakin', 'Shadport', 'South Dakota', 'US', 'http://reichel.com/dolorem-nobis-ducimus-laboriosam-eaque-perferendis', 'http://bailey.com/iusto-voluptatibus-praesentium-facilis-molestiae.html', NULL, NULL, 't', NULL, '2017-05-12 00:42:17', 18, 33, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (29, 'Bailey-Schoen', 'Von-Runolfsdottir', 'Lake Keatonbury', 'Rhode Island', 'US', 'https://hintz.org/deserunt-vitae-velit-et-sint.html', 'http://boehm.com/ullam-ut-et-qui-explicabo.html', NULL, NULL, 't', NULL, '2017-07-30 12:53:10', 23, 34, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (30, 'Wintheiser-Hand', 'Toy and Sons', 'Ottiliefort', 'Alabama', 'US', 'http://langosh.com/quaerat-hic-sint-explicabo-aliquid-tempore-dolor-beatae', 'http://www.flatley.com/', NULL, NULL, 't', NULL, '2017-01-20 10:12:02', 26, 35, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (31, 'Feil PLC', 'Carter-Tillman', 'Port Craig', 'Virginia', 'US', 'http://fadel.com/', 'http://greenfelder.info/iste-dolore-fugit-qui-et-a.html', NULL, NULL, 'f', NULL, '2017-01-10 20:19:36', 18, 36, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (32, 'Satterfield-Aufderhar', 'Walter-McClure', 'Tamialand', 'Wyoming', 'US', 'http://www.williamson.biz/dicta-laboriosam-eius-et-vel-iusto-architecto', 'http://www.white.com/', NULL, NULL, 't', NULL, '2016-12-28 04:41:25', 2, 37, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (33, 'Crist, Reynolds and Ondricka', 'Harris, Kling and Abshire', 'Rempelmouth', 'Texas', 'US', 'http://www.hane.com/magni-et-ut-harum.html', 'http://gerlach.org/reprehenderit-et-animi-aut-inventore-modi.html', NULL, NULL, 't', NULL, '2017-05-08 13:16:10', 27, 38, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (34, 'West PLC', 'Spinka Inc', 'Port Jonatan', 'Georgia', 'US', 'http://www.welch.net/assumenda-rerum-qui-sunt-consequatur-quaerat-quia-ab', 'http://www.quitzon.com/', NULL, NULL, 'f', NULL, '2017-09-20 21:47:59', 24, 39, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (35, 'Fisher, Runolfsson and Feest', 'Heidenreich, Schimmel and Howell', 'Arturomouth', 'Delaware', 'US', 'http://www.wiegand.net/saepe-totam-consequatur-ex-ut-amet-sit', 'https://gerlach.com/eos-sequi-iste-minus-consectetur-neque-eveniet-quis.html', NULL, NULL, 't', NULL, '2017-07-13 02:07:18', 35, 40, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (36, 'Dooley, Nitzsche and Abernathy', 'Ebert-Beatty', 'Swaniawskimouth', 'South Dakota', 'US', 'http://www.marquardt.com/', 'http://www.doyle.com/animi-voluptate-fugiat-possimus-asperiores', NULL, NULL, 't', NULL, '2017-06-13 02:28:57', 26, 41, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (37, 'O''Connell Ltd', 'Leannon PLC', 'East Tiaramouth', 'Hawaii', 'US', 'http://hermiston.biz/', 'http://www.crooks.com/', NULL, NULL, 't', NULL, '2017-07-28 02:44:18', 20, 42, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (38, 'Farrell, Beier and Champlin', 'White-Heidenreich', 'Torphybury', 'Alaska', 'US', 'http://strosin.org/consequuntur-repellat-iste-corporis-alias-veritatis-ipsa-labore-optio', 'http://www.lakin.com/qui-repudiandae-incidunt-dolorem-mollitia-sunt-esse', NULL, NULL, 't', NULL, '2017-10-31 16:55:04', 42, 43, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (39, 'Ledner, Larson and Tillman', 'Mosciski, Pfeffer and West', 'West Cheyanneburgh', 'Illinois', 'US', 'http://collins.org/debitis-officiis-unde-eum-adipisci-quam-et', 'https://www.dach.net/et-tenetur-in-cum-sed-id-exercitationem', NULL, NULL, 't', NULL, '2017-11-16 12:54:29', 32, 44, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (40, 'Von LLC', 'Thompson PLC', 'Jedberg', 'Vermont', 'US', 'http://www.cartwright.com/nihil-quis-quis-sint-non', 'https://www.muller.com/praesentium-quae-aut-quam-sit-aliquid', NULL, NULL, 'f', NULL, '2017-11-04 02:09:51', 17, 45, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (41, 'Ebert, Monahan and Schmidt', 'Bruen-Block', 'Dickensmouth', 'Nebraska', 'US', 'http://www.christiansen.com/', 'http://goyette.biz/', NULL, NULL, 't', NULL, '2017-07-27 11:10:19', 40, 46, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (42, 'Sporer-Cassin', 'Toy, D''Amore and Hegmann', 'Lake Scottyfort', 'New Mexico', 'US', 'http://bogan.com/eos-consequatur-incidunt-rerum-atque-quo-sed', 'http://murphy.com/', NULL, NULL, 't', NULL, '2017-04-13 11:55:40', 33, 47, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (43, 'Osinski LLC', 'Corwin, Shields and Conn', 'Prosaccoburgh', 'Pennsylvania', 'US', 'http://doyle.com/consequatur-illum-minus-omnis-est-non', 'https://www.bailey.com/reprehenderit-id-corporis-id-numquam-necessitatibus-deleniti-beatae', NULL, NULL, 't', NULL, '2017-05-10 16:56:00', 15, 48, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (44, 'Halvorson-Brakus', 'Crona, Graham and Aufderhar', 'Muellerton', 'Rhode Island', 'US', 'http://www.wuckert.com/quod-magnam-ducimus-minus-et-odit-quibusdam.html', 'http://konopelski.com/inventore-libero-expedita-officia-similique-sed-consectetur-esse.html', NULL, NULL, 'f', NULL, '2017-09-06 21:51:39', 48, 49, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (45, 'Tromp-Herzog', 'Marks Ltd', 'New Kenyattaville', 'Arkansas', 'US', 'http://www.leannon.info/cumque-qui-assumenda-quis-rerum-et-nemo.html', 'http://schumm.net/eos-iusto-placeat-voluptatem-quae-autem-at-non.html', NULL, NULL, 't', NULL, '2017-05-08 06:49:01', 23, 50, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (46, 'Zboncak, Brakus and Connelly', 'Schmidt-Predovic', 'Americoshire', 'Minnesota', 'US', 'http://www.dietrich.com/accusantium-tenetur-quibusdam-minus-sit.html', 'http://www.little.com/est-dolores-sed-excepturi-similique-aspernatur', NULL, NULL, 'f', NULL, '2017-06-08 22:01:26', 43, 51, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (47, 'Hammes Ltd', 'Haley PLC', 'South Mistyland', 'Rhode Island', 'US', 'https://www.treutel.net/pariatur-quo-accusamus-ipsa-et-sed', 'http://www.kirlin.com/modi-voluptatem-consequatur-ipsa-cum-dolorum-ipsam.html', NULL, NULL, 't', NULL, '2017-07-18 13:21:59', 49, 52, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (48, 'Kreiger-Parker', 'McClure-Dickinson', 'West Richmond', 'Maryland', 'US', 'http://www.gottlieb.com/provident-magni-occaecati-nemo-fuga-excepturi-consequuntur', 'http://www.hane.org/culpa-tempora-rerum-illo', NULL, NULL, 't', NULL, '2017-09-19 06:32:27', 37, 53, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (49, 'Conroy-Volkman', 'Ullrich Inc', 'West Lizzieton', 'New Hampshire', 'US', 'http://www.gorczany.com/quisquam-consequatur-vel-sit-consequatur-velit-aut-tempora', 'http://www.kozey.com/facilis-quis-porro-iste-est-tenetur-iste', NULL, NULL, 't', NULL, '2017-08-02 10:20:01', 33, 54, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "artists" VALUES (50, 'Blick Group', 'Jast-Morissette', 'Bennieview', 'Alabama', 'US', 'http://www.oberbrunner.com/enim-soluta-deserunt-porro-cupiditate-sed-quia-aliquam', 'https://abshire.com/non-amet-dicta-suscipit.html', NULL, NULL, 't', NULL, '2017-08-31 14:12:15', 20, 55, NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
COMMIT;

-- ----------------------------
-- Table structure for countries
-- ----------------------------
DROP TABLE IF EXISTS "countries";
CREATE TABLE "countries" (
  "id" int4 NOT NULL DEFAULT nextval('countries_id_seq'::regclass),
  "code" varchar(3) COLLATE "pg_catalog"."default" NOT NULL,
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "us_state_dept_recognized" bool NOT NULL DEFAULT false,
  "pay_pal_supported" bool NOT NULL DEFAULT false
)
;

-- ----------------------------
-- Records of countries
-- ----------------------------
BEGIN;
INSERT INTO "countries" VALUES (1, 'US', 'United States', 'f', 'f');
COMMIT;

-- ----------------------------
-- Table structure for featured_songs
-- ----------------------------
DROP TABLE IF EXISTS "featured_songs";
CREATE TABLE "featured_songs" (
  "id" int4 NOT NULL DEFAULT nextval('featured_songs_id_seq'::regclass),
  "song_id" int4 NOT NULL,
  "expires" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT '2017-12-26 01:44:01'::character varying
)
;

-- ----------------------------
-- Table structure for featured_songs_cooldown
-- ----------------------------
DROP TABLE IF EXISTS "featured_songs_cooldown";
CREATE TABLE "featured_songs_cooldown" (
  "id" int4 NOT NULL DEFAULT nextval('featured_songs_cooldown_id_seq'::regclass),
  "artist_id" int4 NOT NULL,
  "expires" varchar(255) COLLATE "pg_catalog"."default" NOT NULL DEFAULT '2018-06-19 01:44:01'::character varying
)
;

-- ----------------------------
-- Table structure for genres
-- ----------------------------
DROP TABLE IF EXISTS "genres";
CREATE TABLE "genres" (
  "id" int2 NOT NULL DEFAULT nextval('genres_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of genres
-- ----------------------------
BEGIN;
INSERT INTO "genres" VALUES (1, 'Rock', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "genres" VALUES (2, 'Country', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "genres" VALUES (3, 'Rap', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
COMMIT;

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS "migrations";
CREATE TABLE "migrations" (
  "id" int4 NOT NULL DEFAULT nextval('migrations_id_seq'::regclass),
  "migration" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "batch" int4 NOT NULL
)
;

-- ----------------------------
-- Records of migrations
-- ----------------------------
BEGIN;
INSERT INTO "migrations" VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO "migrations" VALUES (2, '2014_10_12_100000_create_password_resets_table', 1);
INSERT INTO "migrations" VALUES (3, '2017_11_11_000000_create_countries_table', 1);
INSERT INTO "migrations" VALUES (4, '2017_11_11_000001_create_genres_table', 1);
INSERT INTO "migrations" VALUES (5, '2017_11_11_000002_create_skus_table', 1);
INSERT INTO "migrations" VALUES (6, '2017_11_11_000003_create_artists_table', 1);
INSERT INTO "migrations" VALUES (7, '2017_11_11_000004_create_albums_table', 1);
INSERT INTO "migrations" VALUES (8, '2017_11_11_000005_create_songs_table', 1);
INSERT INTO "migrations" VALUES (9, '2017_11_14_011430_create_featured_songs_table', 1);
INSERT INTO "migrations" VALUES (10, '2017_11_14_011451_create_featured_songs_cooldown_table', 1);
COMMIT;

-- ----------------------------
-- Table structure for password_resets
-- ----------------------------
DROP TABLE IF EXISTS "password_resets";
CREATE TABLE "password_resets" (
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "token" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "created_at" timestamp(0)
)
;

-- ----------------------------
-- Table structure for skus
-- ----------------------------
DROP TABLE IF EXISTS "skus";
CREATE TABLE "skus" (
  "id" int4 NOT NULL DEFAULT nextval('skus_id_seq'::regclass),
  "price" numeric(8,2) NOT NULL,
  "description" text COLLATE "pg_catalog"."default",
  "is_digital" bool NOT NULL DEFAULT true,
  "is_taxable" bool NOT NULL DEFAULT false,
  "requires_shipping" bool NOT NULL DEFAULT false,
  "is_active" bool NOT NULL DEFAULT true,
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of skus
-- ----------------------------
BEGIN;
INSERT INTO "skus" VALUES (1, 0.98, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (2, 8.32, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (3, 1.22, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (4, 4.07, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (5, 0.46, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (6, 1.94, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (7, 7.85, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (8, 9.20, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (9, 8.42, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (10, 10.99, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (11, 0.24, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (12, 7.15, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (13, 3.84, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (14, 2.37, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (15, 6.64, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (16, 8.66, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (17, 2.66, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (18, 3.75, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (19, 5.57, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (20, 1.38, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (21, 1.00, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (22, 4.46, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (23, 6.52, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (24, 7.88, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (25, 6.20, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (26, 1.58, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (27, 9.64, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (28, 1.30, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (29, 9.76, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (30, 0.05, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (31, 10.26, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (32, 5.72, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (33, 4.30, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (34, 8.27, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (35, 6.77, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (36, 0.77, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (37, 0.33, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (38, 10.88, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (39, 3.51, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (40, 3.20, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (41, 9.80, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (42, 7.00, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (43, 7.12, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (44, 4.92, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (45, 6.07, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (46, 10.03, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (47, 7.43, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (48, 2.63, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (49, 0.96, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (50, 1.78, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (51, 2.86, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (52, 4.34, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (53, 10.53, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (54, 4.73, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (55, 1.45, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (56, 0.45, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (57, 5.70, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (58, 3.03, NULL, 't', 't', 't', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (59, 9.60, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (60, 7.82, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (61, 8.48, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (62, 2.83, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (63, 10.13, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (64, 7.49, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (65, 6.09, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (66, 2.26, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (67, 8.47, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (68, 6.29, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (69, 9.14, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (70, 1.53, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (71, 0.72, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (72, 4.74, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (73, 9.56, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (74, 3.29, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (75, 0.08, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (76, 0.57, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (77, 10.71, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (78, 9.05, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (79, 8.35, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (80, 3.05, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (81, 5.57, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (82, 10.37, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (83, 6.73, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (84, 10.72, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (85, 6.69, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (86, 4.47, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (87, 1.69, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (88, 2.82, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (89, 2.59, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (90, 9.68, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (91, 1.62, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (92, 6.33, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (93, 7.00, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (94, 9.74, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (95, 10.53, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (96, 7.90, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (97, 4.46, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (98, 4.16, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (99, 7.62, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (100, 6.16, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (101, 2.93, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (102, 7.95, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (103, 9.93, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (104, 6.97, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (105, 3.89, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (106, 8.04, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (107, 8.15, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (108, 9.44, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (109, 5.54, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (110, 7.45, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (111, 10.69, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (112, 2.70, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (113, 7.22, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (114, 10.79, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (115, 6.26, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (116, 0.87, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (117, 6.71, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (118, 5.91, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (119, 6.88, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (120, 0.35, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (121, 4.02, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (122, 9.65, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (123, 9.79, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (124, 10.30, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (125, 0.99, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (126, 7.16, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (127, 0.52, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (128, 3.69, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (129, 10.74, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (130, 1.14, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (131, 5.46, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (132, 10.85, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (133, 7.88, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (134, 5.75, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "skus" VALUES (135, 2.78, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (136, 3.39, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (137, 5.26, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (138, 2.99, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (139, 9.32, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (140, 6.70, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (141, 4.47, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (142, 0.26, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (143, 8.74, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (144, 8.02, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (145, 9.43, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (146, 5.53, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (147, 6.79, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (148, 5.33, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (149, 2.68, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (150, 0.86, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (151, 0.32, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (152, 10.07, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (153, 8.44, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (154, 3.34, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (155, 7.82, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (156, 5.99, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (157, 9.64, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (158, 4.53, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (159, 10.18, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (160, 5.33, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (161, 3.23, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (162, 10.93, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (163, 3.30, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (164, 3.03, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (165, 5.01, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (166, 3.31, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (167, 5.86, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (168, 7.93, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (169, 2.80, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (170, 3.06, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (171, 7.03, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (172, 10.82, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (173, 7.05, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (174, 3.75, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (175, 9.58, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (176, 2.81, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (177, 2.61, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (178, 5.70, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (179, 6.27, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (180, 6.66, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (181, 7.11, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (182, 0.41, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (183, 8.88, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (184, 8.37, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (185, 10.18, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (186, 1.07, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (187, 9.89, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (188, 8.17, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (189, 7.41, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (190, 4.43, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (191, 2.32, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (192, 1.15, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (193, 1.42, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (194, 3.69, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (195, 2.05, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (196, 1.49, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (197, 6.63, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (198, 5.05, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (199, 9.56, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (200, 9.86, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (201, 1.03, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (202, 4.28, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (203, 3.35, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (204, 0.65, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (205, 6.06, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (206, 4.86, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (207, 0.78, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (208, 0.48, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (209, 6.85, NULL, 't', 't', 'f', 'f', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (210, 3.93, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (211, 0.24, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (212, 8.49, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (213, 10.24, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (214, 10.95, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (215, 1.63, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (216, 0.60, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (217, 3.05, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (218, 2.24, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (219, 3.09, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (220, 1.31, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (221, 9.36, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (222, 1.80, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (223, 5.64, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (224, 1.84, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (225, 1.94, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (226, 5.32, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (227, 10.64, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (228, 5.19, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (229, 2.29, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (230, 2.30, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (231, 0.76, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (232, 6.32, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (233, 5.25, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (234, 2.96, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (235, 8.37, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (236, 9.43, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (237, 5.54, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (238, 8.93, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (239, 10.14, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (240, 6.35, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (241, 3.95, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (242, 8.30, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (243, 10.99, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (244, 10.19, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (245, 7.16, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (246, 3.72, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (247, 1.09, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (248, 5.93, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (249, 5.41, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (250, 2.97, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (251, 7.99, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (252, 8.12, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (253, 8.08, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (254, 8.30, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (255, 2.02, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (256, 6.76, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (257, 10.12, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (258, 10.49, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (259, 9.12, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (260, 8.53, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (261, 8.18, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (262, 10.31, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (263, 4.41, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (264, 10.51, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (265, 8.45, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (266, 7.03, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (267, 7.95, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (268, 7.73, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (269, 5.73, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (270, 8.26, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (271, 0.42, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (272, 1.68, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (273, 4.15, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (274, 9.97, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (275, 6.78, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (276, 3.19, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (277, 0.82, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (278, 5.98, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (279, 4.26, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (280, 4.68, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (281, 6.79, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (282, 3.87, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (283, 9.06, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (284, 9.53, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (285, 6.07, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (286, 7.69, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (287, 0.45, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (288, 4.31, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (289, 1.31, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (290, 8.64, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (291, 8.95, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (292, 1.31, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (293, 1.60, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (294, 6.54, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (295, 7.53, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (296, 9.83, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (297, 10.42, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (298, 7.96, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (299, 6.32, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (300, 6.46, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (301, 10.49, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (302, 9.65, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (303, 0.67, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (304, 3.61, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (305, 10.64, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (306, 6.76, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (307, 9.18, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (308, 10.31, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (309, 3.28, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (310, 2.21, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (311, 1.99, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (312, 6.15, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (313, 10.24, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (314, 5.10, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (315, 8.39, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (316, 2.40, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (317, 4.19, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (318, 0.50, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (319, 5.89, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (320, 0.29, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (321, 10.31, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (322, 2.13, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (323, 2.68, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (324, 7.71, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (325, 9.64, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (326, 8.66, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (327, 6.92, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (328, 4.29, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (329, 3.67, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (330, 5.56, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (331, 7.46, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (332, 8.60, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (333, 7.89, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (334, 6.64, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (335, 2.98, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (336, 10.80, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (337, 10.29, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (338, 2.32, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (339, 8.33, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (340, 9.12, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (341, 8.67, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:03', '2017-12-19 01:44:03');
INSERT INTO "skus" VALUES (342, 8.27, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (343, 9.31, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (344, 9.07, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (345, 8.40, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (346, 1.12, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (347, 6.39, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (348, 8.78, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (349, 1.24, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (350, 9.85, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (351, 7.88, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (352, 7.11, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (353, 10.42, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (354, 2.82, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (355, 4.07, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (356, 0.42, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (357, 2.26, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (358, 9.11, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (359, 7.49, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (360, 5.18, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (361, 1.53, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (362, 5.19, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (363, 7.45, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (364, 3.49, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (365, 10.73, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (366, 6.32, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (367, 10.04, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (368, 7.06, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (369, 5.11, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (370, 10.04, NULL, 't', 't', 'f', 'f', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (371, 8.28, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (372, 10.91, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (373, 0.90, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (374, 5.45, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (375, 6.74, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (376, 0.96, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (377, 3.21, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (378, 9.87, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (379, 5.96, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (380, 3.72, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (381, 9.57, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (382, 4.81, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (383, 4.79, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (384, 10.39, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (385, 7.49, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (386, 4.18, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (387, 10.83, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (388, 0.59, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (389, 5.01, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (390, 1.96, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (391, 9.54, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (392, 5.92, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (393, 1.05, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (394, 2.48, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (395, 2.55, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (396, 5.12, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (397, 4.35, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (398, 0.29, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (399, 4.66, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (400, 2.92, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (401, 5.50, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (402, 1.63, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (403, 10.86, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (404, 8.30, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (405, 8.23, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (406, 6.96, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (407, 10.34, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (408, 1.27, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (409, 10.84, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (410, 9.97, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (411, 2.13, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (412, 2.57, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (413, 0.79, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (414, 8.49, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (415, 9.88, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (416, 8.64, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (417, 7.59, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (418, 8.93, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (419, 7.09, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (420, 3.34, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (421, 10.28, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (422, 5.41, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (423, 7.23, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (424, 1.73, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (425, 10.44, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (426, 1.36, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (427, 5.23, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (428, 8.17, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (429, 7.73, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (430, 6.84, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (431, 5.55, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (432, 1.93, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (433, 9.63, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (434, 6.88, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (435, 2.30, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (436, 2.65, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (437, 10.08, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (438, 5.69, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (439, 9.69, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (440, 9.61, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (441, 4.35, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (442, 2.14, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (443, 6.19, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (444, 5.99, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (445, 10.38, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (446, 0.02, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (447, 10.01, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (448, 5.95, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (449, 2.95, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (450, 4.03, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (451, 5.17, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (452, 5.42, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (453, 3.78, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (454, 1.72, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (455, 7.92, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (456, 7.05, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (457, 4.41, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (458, 3.55, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (459, 5.43, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (460, 7.84, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (461, 3.12, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (462, 0.55, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (463, 7.35, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (464, 5.22, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (465, 3.68, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (466, 4.32, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (467, 7.82, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (468, 5.14, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (469, 2.68, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (470, 10.34, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (471, 5.36, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (472, 7.28, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (473, 5.65, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (474, 10.12, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (475, 5.44, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (476, 8.97, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (477, 10.11, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (478, 4.30, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (479, 8.79, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (480, 0.15, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (481, 4.51, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (482, 9.53, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (483, 7.30, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (484, 7.42, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (485, 6.07, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (486, 0.70, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (487, 7.57, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (488, 7.29, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (489, 1.98, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (490, 6.22, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (491, 2.76, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (492, 9.99, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (493, 0.92, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (494, 3.82, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (495, 10.90, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (496, 10.71, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (497, 3.12, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (498, 9.23, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (499, 0.16, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (500, 8.54, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (501, 8.97, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (502, 4.75, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (503, 10.58, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (504, 2.99, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (505, 2.99, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (506, 7.05, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (507, 2.57, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (508, 1.62, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (509, 0.79, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (510, 2.78, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (511, 5.11, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (512, 3.07, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (513, 9.75, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (514, 2.98, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (515, 7.50, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (516, 10.87, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (517, 8.43, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (518, 6.65, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (519, 9.06, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (520, 10.34, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (521, 6.04, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (522, 4.98, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (523, 3.24, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (524, 8.28, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (525, 6.47, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (526, 7.75, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (527, 6.64, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (528, 3.20, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (529, 4.44, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (530, 5.04, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (531, 2.03, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (532, 8.19, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (533, 6.98, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (534, 2.68, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (535, 7.77, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (536, 4.54, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (537, 5.47, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (538, 1.26, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (539, 9.21, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (540, 8.57, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (541, 5.61, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (542, 2.72, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (543, 0.90, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (544, 7.06, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:04', '2017-12-19 01:44:04');
INSERT INTO "skus" VALUES (545, 9.91, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (546, 0.64, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (547, 4.29, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (548, 5.71, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (549, 2.89, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (550, 2.21, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (551, 2.99, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (552, 9.00, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (553, 5.91, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (554, 8.13, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (555, 3.78, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (556, 7.36, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (557, 4.81, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (558, 2.56, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (559, 9.47, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (560, 8.28, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (561, 0.46, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (562, 0.01, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (563, 5.09, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (564, 2.27, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (565, 5.67, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (566, 2.71, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (567, 4.71, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (568, 0.53, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (569, 2.23, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (570, 5.65, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (571, 1.43, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (572, 6.89, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (573, 5.88, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (574, 8.43, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (575, 6.25, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (576, 7.33, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (577, 6.80, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (578, 5.81, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (579, 5.60, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (580, 2.10, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (581, 5.70, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (582, 10.54, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (583, 9.52, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (584, 9.86, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (585, 1.34, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (586, 6.65, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (587, 4.34, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (588, 5.85, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (589, 1.98, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (590, 10.08, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (591, 7.93, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (592, 9.73, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (593, 10.45, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (594, 6.63, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (595, 7.23, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (596, 4.83, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (597, 0.91, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (598, 1.63, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (599, 5.00, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (600, 2.92, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (601, 3.86, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (602, 4.34, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (603, 9.51, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (604, 6.09, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (605, 8.14, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (606, 0.33, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (607, 10.90, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (608, 0.92, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (609, 4.62, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (610, 9.97, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (611, 7.02, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (612, 8.62, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (613, 7.55, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (614, 4.90, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (615, 0.50, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (616, 1.30, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (617, 0.62, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (618, 1.55, NULL, 't', 't', 'f', 'f', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (619, 4.55, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (620, 1.24, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (621, 5.69, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (622, 4.51, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (623, 10.29, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (624, 7.35, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (625, 0.11, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (626, 0.76, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (627, 10.69, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (628, 1.52, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (629, 0.36, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (630, 6.97, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (631, 5.53, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (632, 9.44, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (633, 2.49, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (634, 1.50, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (635, 1.76, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (636, 6.17, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (637, 4.85, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (638, 3.59, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (639, 2.40, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (640, 8.44, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (641, 10.92, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (642, 5.83, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (643, 3.52, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (644, 10.37, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (645, 6.60, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (646, 9.85, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (647, 7.25, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (648, 2.03, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (649, 10.46, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (650, 5.13, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (651, 2.56, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (652, 5.84, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (653, 3.18, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (654, 0.06, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (655, 8.69, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (656, 2.66, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (657, 3.66, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (658, 0.69, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (659, 9.44, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (660, 3.76, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (661, 8.86, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (662, 7.56, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (663, 0.03, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (664, 8.45, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (665, 4.96, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (666, 2.06, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (667, 6.02, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (668, 10.63, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (669, 9.53, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (670, 1.82, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (671, 0.87, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (672, 3.07, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (673, 7.45, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (674, 10.72, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (675, 9.98, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (676, 4.80, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (677, 4.18, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (678, 10.51, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (679, 9.02, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (680, 0.94, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (681, 1.07, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (682, 0.97, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (683, 4.24, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (684, 2.43, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (685, 1.72, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (686, 0.11, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (687, 10.54, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (688, 2.25, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (689, 8.67, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (690, 5.94, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (691, 10.20, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (692, 6.72, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (693, 8.95, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (694, 3.22, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (695, 2.48, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (696, 10.97, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (697, 10.33, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (698, 7.30, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (699, 9.02, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (700, 2.22, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (701, 5.23, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (702, 9.43, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (703, 8.68, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (704, 2.32, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (705, 0.24, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (706, 6.45, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (707, 3.29, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (708, 5.82, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (709, 5.15, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (710, 0.19, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (711, 4.68, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (712, 7.67, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (713, 3.58, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (714, 0.37, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (715, 8.20, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (716, 1.27, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (717, 2.57, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (718, 4.23, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (719, 7.45, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (720, 5.71, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (721, 3.38, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (722, 7.17, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (723, 1.60, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (724, 2.91, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (725, 4.55, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (726, 7.37, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (727, 7.88, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (728, 1.25, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (729, 3.78, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (730, 6.96, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (731, 5.93, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (732, 10.63, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (733, 10.54, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (734, 10.84, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (735, 0.32, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (736, 5.27, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (737, 7.51, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (738, 1.59, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (739, 9.79, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (740, 1.82, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (741, 1.71, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (742, 7.56, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (743, 3.61, NULL, 't', 't', 't', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (744, 10.55, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (745, 10.00, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (746, 5.77, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (747, 9.13, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (748, 9.85, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (749, 4.73, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (750, 2.20, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (751, 1.32, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (752, 5.54, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:05', '2017-12-19 01:44:05');
INSERT INTO "skus" VALUES (753, 7.32, NULL, 'f', 't', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (754, 2.93, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (755, 9.73, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (756, 6.96, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (757, 8.12, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (758, 7.37, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (759, 4.56, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (760, 5.73, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (761, 8.50, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (762, 9.66, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (763, 9.24, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (764, 9.69, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (765, 2.58, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (766, 10.33, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (767, 1.05, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (768, 9.87, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (769, 3.53, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (770, 7.13, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (771, 2.14, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (772, 6.23, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (773, 6.34, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (774, 5.34, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (775, 2.11, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (776, 1.76, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (777, 2.60, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (778, 9.12, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (779, 3.78, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (780, 4.22, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (781, 8.28, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (782, 5.77, NULL, 'f', 'f', 't', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (783, 2.55, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (784, 7.81, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (785, 6.88, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (786, 2.27, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (787, 4.70, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (788, 1.84, NULL, 't', 't', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (789, 2.76, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (790, 9.00, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (791, 0.74, NULL, 't', 'f', 'f', 'f', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (792, 0.25, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (793, 6.55, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (794, 2.28, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (795, 8.19, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (796, 10.83, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (797, 3.70, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (798, 7.60, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (799, 9.31, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (800, 8.83, NULL, 't', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (801, 0.12, NULL, 't', 'f', 't', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
INSERT INTO "skus" VALUES (802, 6.44, NULL, 'f', 'f', 'f', 't', '2017-12-19 01:44:06', '2017-12-19 01:44:06');
COMMIT;

-- ----------------------------
-- Table structure for songs
-- ----------------------------
DROP TABLE IF EXISTS "songs";
CREATE TABLE "songs" (
  "id" int4 NOT NULL DEFAULT nextval('songs_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "alt_name" varchar(255) COLLATE "pg_catalog"."default",
  "album_id" int4 NOT NULL,
  "song_order" int2 NOT NULL,
  "sku_id" int4,
  "preview_start" numeric(7,3),
  "is_active" bool NOT NULL DEFAULT true,
  "is_in_back_catalog" bool NOT NULL DEFAULT false,
  "catalog_id" int4,
  "created_at" timestamp(0),
  "updated_at" timestamp(0),
  "deleted_at" timestamp(0)
)
;

-- ----------------------------
-- Records of songs
-- ----------------------------
BEGIN;
INSERT INTO "songs" VALUES (1, 'Feeney, Rau and Parisian', 'Ondricka PLC', 1, 1, 1, 43.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (2, 'Homenick, Hermiston and Sipes', 'Tillman and Sons', 1, 1, 2, 5.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (3, 'Schuster and Sons', 'Herman, Pfannerstill and Tillman', 1, 1, 3, 21.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (4, 'Johns-Hayes', 'Boehm-Mosciski', 1, 1, 4, 50.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (5, 'Vandervort Inc', 'Quigley, Gutkowski and Pouros', 1, 1, 5, 23.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (6, 'Ortiz, Bogisich and Gaylord', 'Nader-Funk', 1, 1, 6, 53.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (7, 'Wuckert, Larkin and Runolfsdottir', 'Kuhlman-Batz', 1, 1, 7, 43.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (8, 'Berge, Hermiston and Jacobi', 'Yost and Sons', 1, 1, 8, 35.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (9, 'Schmeler-Volkman', 'Hermann, Dickinson and Robel', 1, 1, 9, 56.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (10, 'Marquardt Inc', 'Thiel, Dickens and Olson', 1, 1, 10, 21.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (11, 'Kuhlman, Wintheiser and Haley', 'Paucek and Sons', 2, 1, 11, 15.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (12, 'Muller, Keebler and Huel', 'Flatley-D''Amore', 2, 1, 12, 38.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (13, 'Emmerich-Effertz', 'Bahringer, Stiedemann and Tremblay', 2, 1, 13, 48.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (14, 'Rath LLC', 'Stoltenberg, Baumbach and Corwin', 3, 11, 14, 33.000, 'f', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (15, 'Zemlak-Koss', 'Koch, Schulist and Grady', 3, 4, 15, 60.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (16, 'Feest, Bednar and Nolan', 'Dooley-Feeney', 3, 1, 16, 57.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (17, 'Rogahn, Schimmel and Rosenbaum', 'Bradtke and Sons', 4, 1, 17, 10.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (18, 'Hudson PLC', 'Mills, Hartmann and Buckridge', 4, 1, 18, 29.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (19, 'Runte and Sons', 'O''Kon, Kessler and Goldner', 4, 4, 19, 38.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (20, 'Okuneva, Littel and Feil', 'Rippin Group', 4, 1, 20, 45.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (21, 'Ortiz, Kutch and Walter', 'Hoppe, Hilll and Schowalter', 4, 4, 21, 5.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (22, 'Bergnaum, Reinger and Weber', 'Spinka-Bailey', 4, 1, 22, 55.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (23, 'Moen Group', 'Borer, Auer and Bergstrom', 4, 1, 23, 60.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (24, 'Trantow LLC', 'Schamberger Inc', 5, 1, 24, 54.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (25, 'Kerluke, Schumm and Cremin', 'Sauer and Sons', 5, 4, 25, 37.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (26, 'Rodriguez-Barrows', 'Klein-Bergstrom', 5, 1, 26, 29.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (27, 'Greenfelder, Kiehn and Konopelski', 'Rodriguez Group', 5, 11, 27, 11.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (28, 'Reichert PLC', 'Herzog-Volkman', 5, 8, 28, 6.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (29, 'Gulgowski-Nader', 'Jast, Maggio and Ziemann', 5, 4, 29, 27.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (30, 'Bashirian LLC', 'Considine, Nicolas and Huels', 6, 8, 30, 9.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (31, 'Hermann, Sporer and Tromp', 'Bashirian, Wilkinson and Thompson', 6, 4, 31, 33.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (32, 'Zieme PLC', 'Rath Group', 6, 8, 32, 23.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (33, 'Kunde-Rohan', 'Abshire, Collins and Corkery', 6, 7, 33, 27.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (34, 'Fritsch, Bins and McClure', 'Reichert-Hills', 6, 4, 34, 38.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (35, 'Sipes-Runte', 'Effertz-Kirlin', 6, 1, 35, 36.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (36, 'Green PLC', 'Kilback Group', 6, 4, 36, 42.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (37, 'Mertz, Bauch and Bernier', 'Rosenbaum and Sons', 6, 4, 37, 56.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (38, 'Shanahan-Lockman', 'McLaughlin Ltd', 7, 9, 38, 45.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (39, 'Paucek, Cremin and Dickinson', 'Turner, Roberts and Bernhard', 7, 11, 39, 14.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (40, 'Stoltenberg LLC', 'Christiansen-Jenkins', 7, 11, 40, 46.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (41, 'Klocko Ltd', 'McDermott Ltd', 7, 4, 41, 40.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (42, 'Schultz, Doyle and Kilback', 'Price Ltd', 7, 7, 42, 8.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (43, 'Buckridge Group', 'Hermann, Halvorson and Hauck', 7, 8, 43, 11.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (44, 'Lubowitz-Schmidt', 'Thompson, Hahn and Bartoletti', 7, 1, 44, 19.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (45, 'Lesch Ltd', 'Auer Ltd', 7, 11, 45, 38.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (46, 'Windler-Morar', 'Barrows, Kemmer and Wehner', 7, 7, 46, 55.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (47, 'O''Keefe-Hirthe', 'Kihn-Kuvalis', 7, 4, 47, 24.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (48, 'Lubowitz, Kub and Murphy', 'Howell, Schamberger and Streich', 8, 7, 48, 48.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (49, 'Haag-Weissnat', 'Sawayn-Auer', 8, 8, 49, 14.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (50, 'Leuschke, Ullrich and Robel', 'Ferry, Gleichner and Grant', 8, 4, 50, 22.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (51, 'Murray, Brown and Sanford', 'Beier Ltd', 8, 9, 51, 26.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (52, 'McKenzie Group', 'Schimmel LLC', 8, 11, 52, 33.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (53, 'Douglas Group', 'Bauch Ltd', 8, 7, 53, 50.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (54, 'Pfeffer-Moore', 'Jacobi-Kautzer', 8, 11, 54, 17.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (55, 'Abernathy-Rempel', 'Armstrong-Keeling', 9, 8, 55, 18.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (56, 'Lind-Russel', 'Jerde-Fahey', 9, 1, 56, 54.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (57, 'Durgan, Mueller and Sawayn', 'Blanda-Gorczany', 9, 8, 57, 39.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (58, 'Larson, Beatty and Hilpert', 'Morissette-Dicki', 9, 9, 58, 33.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (59, 'Reynolds, Thiel and Rath', 'Kassulke-Hessel', 9, 8, 59, 9.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (60, 'Johns-Ernser', 'Kulas-Ankunding', 9, 7, 60, 11.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (61, 'Harvey, Bechtelar and Witting', 'Upton-Kassulke', 9, 7, 61, 14.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (62, 'Bechtelar, Abbott and Farrell', 'Dickens PLC', 10, 11, 62, 20.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (63, 'Koch Group', 'Lakin, Muller and Rempel', 10, 1, 63, 53.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (64, 'Towne Inc', 'Lockman Inc', 10, 1, 64, 60.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (65, 'Lubowitz-Blanda', 'Gusikowski PLC', 10, 8, 65, 59.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (66, 'Mertz, Murray and Wiza', 'Harris Group', 11, 4, 66, 29.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (67, 'Dietrich Ltd', 'Goyette and Sons', 11, 4, 67, 33.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (68, 'Ullrich PLC', 'Metz Group', 11, 7, 68, 51.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (138, 'Roob, Bernier and Hoeger', 'Heaney PLC', 21, 1, 138, 42.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (69, 'Williamson, Cummings and Runolfsson', 'Purdy, Senger and Emmerich', 11, 4, 69, 36.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (70, 'Murray-Weimann', 'Graham, Collier and Jakubowski', 11, 8, 70, 5.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (71, 'Hoeger LLC', 'Erdman LLC', 11, 9, 71, 9.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (72, 'O''Conner Ltd', 'Wiegand and Sons', 12, 4, 72, 59.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (73, 'Torphy LLC', 'Sauer Group', 12, 9, 73, 38.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (74, 'Heidenreich Ltd', 'Emmerich, Johnston and Nolan', 13, 8, 74, 57.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (75, 'Gleason, Rohan and Macejkovic', 'Marquardt-Sawayn', 13, 11, 75, 0.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (76, 'Oberbrunner and Sons', 'Legros-Senger', 13, 3, 76, 50.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (77, 'Haley, Hudson and Satterfield', 'Heaney, Weimann and McClure', 13, 4, 77, 6.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (78, 'Davis-Walter', 'Maggio-Bode', 13, 7, 78, 51.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (79, 'Doyle and Sons', 'Dach-Tromp', 13, 1, 79, 14.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (80, 'Shanahan, Little and Cremin', 'Wyman LLC', 14, 9, 80, 0.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (81, 'Streich, Rosenbaum and Mann', 'Moen-Kuhic', 14, 8, 81, 34.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (82, 'Kihn, Kiehn and Ortiz', 'Zemlak-Toy', 14, 5, 82, 17.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (83, 'Mayer-Zemlak', 'Morar-Lindgren', 14, 8, 83, 45.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (84, 'Bailey, Wintheiser and Maggio', 'Douglas Inc', 14, 7, 84, 59.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (85, 'Padberg, Spinka and Fritsch', 'Bailey, Stehr and Greenfelder', 14, 9, 85, 21.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (86, 'Okuneva-Weissnat', 'Runte, Schultz and Reichel', 14, 9, 86, 42.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (87, 'Lindgren, Aufderhar and Gutkowski', 'Simonis LLC', 14, 7, 87, 29.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (88, 'Sporer, Bergnaum and Davis', 'Franecki, Wehner and Will', 14, 8, 88, 30.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (89, 'Emard PLC', 'Hagenes-Hintz', 15, 8, 89, 21.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (90, 'Quigley PLC', 'Smith, Hansen and Larson', 15, 1, 90, 38.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (91, 'Cronin, Moore and Macejkovic', 'Reilly-Thompson', 15, 1, 91, 0.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (92, 'Will-Turner', 'Nolan, Reichel and Pagac', 16, 4, 92, 12.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (93, 'Howell-White', 'Mayert PLC', 16, 4, 93, 33.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (94, 'Toy-Rau', 'Bailey, Mohr and Lebsack', 16, 1, 94, 45.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (95, 'Bergnaum and Sons', 'Lynch-Fahey', 16, 8, 95, 37.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (96, 'Pollich, Okuneva and Bahringer', 'Robel-Wiegand', 16, 8, 96, 24.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (97, 'Nikolaus, Heathcote and Gleichner', 'Wisoky, Orn and Glover', 16, 1, 97, 8.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (98, 'Hayes-Metz', 'Crona-Grimes', 16, 11, 98, 10.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (99, 'Parisian, Turcotte and Reynolds', 'Grimes Inc', 16, 11, 99, 46.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (100, 'Russel, Bahringer and Braun', 'O''Reilly PLC', 17, 11, 100, 35.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (101, 'Kautzer and Sons', 'Senger Inc', 17, 1, 101, 30.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (102, 'Upton, Hoeger and Schaefer', 'Haley, Brekke and Schmeler', 17, 1, 102, 12.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (103, 'Hills, Olson and Weimann', 'Stark, Hintz and Nitzsche', 17, 11, 103, 26.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (104, 'Lesch-Watsica', 'Ankunding, Jones and Mohr', 17, 4, 104, 17.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (105, 'Ferry, Halvorson and Hintz', 'Lindgren, Barton and Stiedemann', 17, 1, 105, 59.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (106, 'Bernhard, Stamm and Orn', 'Rutherford Ltd', 18, 7, 106, 41.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (107, 'Nikolaus PLC', 'Zemlak, Harris and Wisozk', 18, 7, 107, 0.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (108, 'Reichert, Rolfson and Kovacek', 'Prosacco-Armstrong', 18, 11, 108, 48.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (109, 'Kerluke, Jones and Grimes', 'Abshire, Schoen and Homenick', 18, 7, 109, 15.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (110, 'Kertzmann, Feest and Senger', 'Kutch-Ziemann', 18, 8, 110, 37.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (111, 'Koepp LLC', 'Robel LLC', 18, 7, 111, 41.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (112, 'Adams PLC', 'Champlin-Harvey', 18, 8, 112, 39.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (113, 'Spinka, Swift and Monahan', 'D''Amore Group', 18, 3, 113, 55.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (114, 'Reilly, Champlin and Block', 'Bogan Group', 18, 5, 114, 12.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (115, 'Jaskolski-Schinner', 'Cruickshank-Nikolaus', 19, 9, 115, 38.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (116, 'Daniel-Towne', 'Towne-Feil', 19, 1, 116, 51.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (117, 'Paucek LLC', 'Hand-Lowe', 19, 8, 117, 33.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (118, 'Prosacco Group', 'Jast, Kling and Emard', 19, 4, 118, 21.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (119, 'D''Amore-Mante', 'Herzog, Jenkins and Schuster', 19, 9, 119, 48.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (120, 'Williamson, Wiegand and Ziemann', 'Farrell Group', 19, 7, 120, 22.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (121, 'DuBuque-Wisozk', 'Yundt-Ryan', 19, 7, 121, 14.000, 'f', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (122, 'Bartell, Erdman and Fritsch', 'Collins, Mante and Hammes', 19, 8, 122, 44.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (123, 'Hane-Heathcote', 'Heathcote-Mayert', 20, 10, 123, 53.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (124, 'White and Sons', 'Konopelski LLC', 20, 8, 124, 38.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (125, 'Kreiger, Bauch and Cruickshank', 'Jerde Group', 20, 9, 125, 5.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (126, 'Dietrich, Ankunding and Hackett', 'Wehner, Hintz and Mertz', 20, 7, 126, 0.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (127, 'Prohaska Group', 'Ullrich-Ledner', 20, 7, 127, 4.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (128, 'Baumbach, Bednar and Howe', 'Kunze-Ortiz', 20, 7, 128, 23.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (129, 'Gislason, Cummings and Jakubowski', 'Pfannerstill Ltd', 20, 9, 129, 55.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (130, 'Marquardt-Kessler', 'Kihn PLC', 20, 9, 130, 26.000, 't', 'f', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (131, 'O''Kon LLC', 'Murray Inc', 20, 7, 131, 49.000, 't', 't', NULL, '2017-12-19 01:44:02', '2017-12-19 01:44:02', NULL);
INSERT INTO "songs" VALUES (132, 'Fahey, Morissette and Ratke', 'Morar, Jacobi and Simonis', 21, 9, 132, 1.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (133, 'Shanahan, Bailey and Hickle', 'Fisher, Volkman and Moen', 21, 8, 133, 34.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (134, 'Frami Inc', 'Boyle Ltd', 21, 8, 134, 9.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (135, 'Stamm Inc', 'Green-McDermott', 21, 4, 135, 32.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (136, 'Corkery, Feest and Rath', 'Braun-Simonis', 21, 7, 136, 57.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (137, 'Runolfsson-Zemlak', 'Bruen-Bogisich', 21, 8, 137, 17.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (139, 'Moen, Jacobi and Beahan', 'Wilderman, Steuber and Durgan', 21, 1, 139, 30.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (140, 'Stiedemann and Sons', 'McKenzie Group', 22, 7, 140, 58.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (141, 'Raynor-Lockman', 'Braun-Bauch', 22, 7, 141, 17.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (142, 'Reynolds and Sons', 'Murphy and Sons', 22, 7, 142, 53.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (143, 'O''Keefe, Fay and Stokes', 'Kemmer-Schmidt', 22, 9, 143, 41.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (144, 'Hermann-Hermann', 'Wolff Ltd', 22, 11, 144, 26.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (145, 'Blanda PLC', 'Predovic and Sons', 22, 9, 145, 41.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (146, 'Nitzsche, Jerde and Jacobs', 'Moore Group', 22, 10, 146, 54.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (147, 'Armstrong Inc', 'Kemmer, Schmeler and Frami', 23, 10, 147, 34.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (148, 'Weber, Leuschke and Ratke', 'Davis-Muller', 23, 8, 148, 37.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (149, 'Brekke-Hauck', 'Goldner-Stoltenberg', 23, 7, 149, 46.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (150, 'O''Kon-Leffler', 'Kunde Group', 23, 11, 150, 31.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (151, 'Gottlieb, Grady and Jacobson', 'Brekke-Weber', 24, 9, 151, 51.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (152, 'Brekke-Kohler', 'Schinner Inc', 24, 3, 152, 5.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (153, 'Bechtelar, Schiller and Hagenes', 'Hermann, Upton and Stiedemann', 24, 9, 153, 6.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (154, 'Veum PLC', 'Carroll, Crooks and Bergnaum', 24, 8, 154, 26.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (155, 'Wuckert Ltd', 'Hagenes PLC', 24, 8, 155, 18.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (156, 'Denesik, Considine and Wyman', 'Collins Group', 24, 10, 156, 58.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (157, 'Jacobi, Dickens and Dickens', 'Gibson, Sawayn and Ruecker', 25, 9, 157, 18.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (158, 'Kuphal PLC', 'Batz, Ritchie and Beatty', 25, 7, 158, 33.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (159, 'Renner Ltd', 'Blick-Marvin', 25, 9, 159, 48.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (160, 'Satterfield-Batz', 'Jacobson, Schultz and Satterfield', 25, 9, 160, 57.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (161, 'Labadie-Dare', 'Reichel, Schmidt and Moen', 25, 5, 161, 11.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (162, 'Nitzsche Group', 'Boyle PLC', 25, 1, 162, 10.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (163, 'Okuneva-Abernathy', 'Marvin and Sons', 26, 7, 163, 52.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (164, 'Kling, O''Conner and Carter', 'Nitzsche, Tromp and Maggio', 26, 10, 164, 49.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (165, 'Heathcote LLC', 'Frami Ltd', 26, 8, 165, 46.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (166, 'Olson, Lindgren and Adams', 'Johns PLC', 27, 9, 166, 35.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (167, 'Botsford Ltd', 'Stark, Quitzon and Thiel', 27, 4, 167, 13.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (168, 'Bahringer-Ruecker', 'Harber, McClure and Aufderhar', 27, 7, 168, 8.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (169, 'White, Fisher and Gerlach', 'Raynor Ltd', 27, 10, 169, 15.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (170, 'Yost Group', 'Purdy, Von and Ondricka', 27, 9, 170, 29.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (171, 'Bode and Sons', 'Kuhn-Muller', 27, 9, 171, 36.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (172, 'Mills-Eichmann', 'Von, Hahn and Lemke', 27, 8, 172, 34.000, 'f', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (173, 'Roberts, Schumm and Mante', 'Welch Inc', 27, 7, 173, 3.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (174, 'Hauck-Morar', 'Jast-Emmerich', 27, 9, 174, 58.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (175, 'Miller PLC', 'Hartmann-Kub', 27, 1, 175, 57.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (176, 'Boehm-Cremin', 'Lynch Ltd', 28, 9, 176, 46.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (177, 'Osinski Ltd', 'Bruen Inc', 28, 7, 177, 6.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (178, 'Ferry, Turner and Muller', 'Walsh Inc', 28, 10, 178, 7.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (179, 'Koss-Braun', 'Muller-Bogan', 28, 11, 179, 12.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (180, 'Langworth and Sons', 'Williamson-Osinski', 29, 7, 180, 10.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (181, 'Becker Ltd', 'Price Group', 29, 7, 181, 38.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (182, 'Quigley-Satterfield', 'Lubowitz and Sons', 29, 8, 182, 6.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (183, 'Green-Boyer', 'McCullough-Moen', 29, 8, 183, 33.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (184, 'Emmerich PLC', 'Boehm, Weissnat and Cartwright', 30, 8, 184, 26.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (185, 'Johnston-Goodwin', 'Kulas-Gerhold', 30, 11, 185, 30.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (186, 'Stehr Ltd', 'Orn Group', 30, 1, 186, 7.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (187, 'Crona PLC', 'Bernhard, Welch and Rosenbaum', 30, 7, 187, 15.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (188, 'Dicki LLC', 'Emard Inc', 31, 5, 188, 24.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (189, 'Heidenreich-Senger', 'Waters LLC', 31, 9, 189, 35.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (190, 'Nolan-Moore', 'Funk, Heaney and Lindgren', 31, 3, 190, 29.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (191, 'Wisoky Inc', 'Hudson Inc', 32, 7, 191, 20.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (192, 'Ryan, Dicki and DuBuque', 'Koch, Ernser and Breitenberg', 32, 11, 192, 5.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (193, 'Haag-Goodwin', 'Marquardt and Sons', 32, 5, 193, 37.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (194, 'Dooley-Douglas', 'Rohan, Beer and Medhurst', 32, 9, 194, 51.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (195, 'Kemmer, Ernser and Kohler', 'Kub-Schamberger', 32, 7, 195, 41.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (196, 'Upton-Kuhn', 'O''Connell, Abshire and Cummerata', 33, 9, 196, 44.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (197, 'Ebert, Langworth and Prohaska', 'Rosenbaum-Graham', 33, 3, 197, 16.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (198, 'Lind LLC', 'Kassulke Inc', 33, 7, 198, 32.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (199, 'Jones-Homenick', 'Runte, Reilly and Barrows', 33, 4, 199, 35.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (200, 'Jacobs-Cole', 'Wilkinson, Gutkowski and Schumm', 33, 4, 200, 2.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (201, 'Nienow Ltd', 'Yundt Inc', 33, 4, 201, 22.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (202, 'Kunze-Goldner', 'Crist, McKenzie and Weber', 33, 3, 202, 12.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (203, 'Erdman PLC', 'West, Stiedemann and Skiles', 33, 11, 203, 60.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (204, 'Koelpin, Gislason and Ondricka', 'Hessel, Von and Stamm', 33, 7, 204, 36.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (205, 'Oberbrunner-Schoen', 'Stracke, Hackett and Muller', 34, 4, 205, 14.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (206, 'Simonis and Sons', 'Reichert, O''Conner and Crona', 34, 8, 206, 59.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (207, 'O''Connell Inc', 'Bartoletti, Little and Goodwin', 34, 1, 207, 22.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (208, 'White-Wilderman', 'Padberg-Lehner', 34, 8, 208, 22.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (209, 'Beier-Cruickshank', 'Towne, Watsica and Hintz', 34, 8, 209, 24.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (210, 'Harvey-Ankunding', 'Lindgren, Collins and Marvin', 34, 5, 210, 1.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (211, 'Harris PLC', 'Kemmer-Upton', 34, 9, 211, 33.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (212, 'Collier LLC', 'Williamson-Heller', 34, 10, 212, 53.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (213, 'Hermiston-Satterfield', 'Miller-Dooley', 34, 7, 213, 29.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (214, 'Labadie-Lesch', 'Lakin Group', 35, 11, 214, 20.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (215, 'Grimes Inc', 'Hickle, Rolfson and Kiehn', 35, 8, 215, 13.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (216, 'Baumbach-Johns', 'O''Reilly, Brown and Crist', 35, 5, 216, 36.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (217, 'Hegmann-Rippin', 'Osinski Inc', 35, 11, 217, 60.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (218, 'Rempel-Herzog', 'Crist, Labadie and O''Conner', 35, 10, 218, 38.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (219, 'Gaylord, Kautzer and Heller', 'Hilll Inc', 35, 9, 219, 3.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (220, 'Breitenberg, Wilkinson and Klein', 'Reilly, Schowalter and Koepp', 36, 7, 220, 19.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (221, 'Kiehn LLC', 'Harris and Sons', 36, 7, 221, 50.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (222, 'Hills, Adams and Armstrong', 'Baumbach Group', 36, 10, 222, 44.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (223, 'Nitzsche PLC', 'Reichert Group', 36, 9, 223, 29.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (224, 'Volkman-Roob', 'Dibbert-Johns', 37, 4, 224, 26.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (225, 'Feeney-Haag', 'Schultz, Ortiz and Deckow', 37, 7, 225, 37.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (226, 'Lubowitz Inc', 'Blanda-Padberg', 37, 8, 226, 5.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (227, 'Kilback, Hilpert and Leuschke', 'Von, Jakubowski and Halvorson', 37, 11, 227, 36.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (228, 'Rempel Ltd', 'Robel Inc', 37, 4, 228, 54.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (229, 'Aufderhar-O''Hara', 'Schaden, Kertzmann and Emard', 37, 7, 229, 18.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (230, 'Rice, Macejkovic and Greenholt', 'McDermott-Greenholt', 37, 5, 230, 52.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (231, 'Hansen-Zboncak', 'Hahn Ltd', 37, 4, 231, 50.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (232, 'Heathcote, Block and Reynolds', 'Spinka and Sons', 37, 5, 232, 31.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (233, 'Zieme Inc', 'Upton, Wyman and Hermann', 38, 4, 233, 46.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (234, 'Muller LLC', 'Barrows, Rosenbaum and Weber', 38, 10, 234, 19.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (235, 'Fahey, Kunde and Grimes', 'Batz, Schowalter and Smitham', 38, 8, 235, 15.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (236, 'Gutmann, Kilback and Schumm', 'Langworth LLC', 38, 4, 236, 22.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (237, 'Torphy Group', 'Hauck-Runte', 38, 8, 237, 36.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (238, 'Wuckert LLC', 'Hyatt and Sons', 38, 11, 238, 53.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (239, 'Rath-Deckow', 'Carter, Jenkins and McCullough', 38, 7, 239, 9.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (240, 'Dietrich-Thompson', 'Grimes, Treutel and Mohr', 38, 10, 240, 17.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (241, 'Wiegand, Marvin and Kuhn', 'Cole PLC', 38, 9, 241, 27.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (242, 'Bernier LLC', 'Heaney-Schmidt', 38, 10, 242, 17.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (243, 'Crona, McCullough and Wintheiser', 'Flatley LLC', 39, 10, 243, 26.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (244, 'Huels-Leuschke', 'Reichert, Halvorson and Flatley', 39, 3, 244, 44.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (245, 'Konopelski-Welch', 'Torp-Schmitt', 39, 9, 245, 0.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (246, 'O''Hara-Wiegand', 'Cormier, Walker and Herman', 39, 8, 246, 39.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (247, 'Huels-Gusikowski', 'Ziemann, O''Kon and Blick', 39, 10, 247, 40.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (248, 'Greenholt Group', 'Gutkowski-Aufderhar', 39, 1, 248, 58.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (249, 'Veum-Smith', 'Heller PLC', 40, 9, 249, 33.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (250, 'Murazik, Osinski and Shanahan', 'Wolff-Predovic', 40, 5, 250, 0.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (251, 'Orn PLC', 'Stehr, Lemke and Pollich', 40, 11, 251, 19.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (252, 'Abbott, Howe and Senger', 'Weber, Daniel and Marks', 40, 11, 252, 37.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (253, 'Hermann, Schroeder and Blanda', 'Kerluke-Reilly', 41, 11, 253, 53.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (254, 'Gleason-Swaniawski', 'Spinka-McLaughlin', 41, 7, 254, 3.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (255, 'O''Connell, Wolf and Gottlieb', 'Tromp PLC', 41, 1, 255, 34.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (256, 'Koelpin, Flatley and Mraz', 'Kshlerin Group', 41, 8, 256, 36.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (257, 'Labadie, Skiles and Bogan', 'Littel-Bergstrom', 41, 6, 257, 25.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (258, 'Kessler-Cormier', 'Medhurst and Sons', 42, 7, 258, 33.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (259, 'Hahn-Walsh', 'Kuhlman Inc', 42, 7, 259, 47.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (260, 'Bashirian-Kuhlman', 'Daniel and Sons', 42, 4, 260, 36.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (261, 'Hickle Inc', 'Howell-Larkin', 43, 7, 261, 55.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (262, 'Beahan LLC', 'Parker, Stoltenberg and Rice', 43, 6, 262, 23.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (263, 'Douglas-Koepp', 'Bergstrom, Thompson and Kub', 43, 11, 263, 44.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (264, 'Auer Inc', 'Conn, Blanda and O''Hara', 43, 9, 264, 39.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (265, 'Koelpin, Oberbrunner and Sanford', 'Wisoky, Satterfield and Dickens', 44, 8, 265, 27.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (266, 'Borer LLC', 'Bailey, Balistreri and Zemlak', 44, 6, 266, 17.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (267, 'Mayer-Quitzon', 'Walter LLC', 44, 10, 267, 59.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (268, 'Kihn-Hackett', 'Walter, Padberg and Jenkins', 44, 4, 268, 54.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (269, 'Haag PLC', 'Nader, Beer and Watsica', 44, 8, 269, 45.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (270, 'Beer, Maggio and Greenholt', 'Medhurst-Cronin', 44, 5, 270, 5.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (271, 'Kris Inc', 'Metz-Auer', 44, 4, 271, 51.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (272, 'Bode-Towne', 'Fisher-Schmidt', 45, 10, 272, 17.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (273, 'Mosciski, Will and Bergstrom', 'McDermott LLC', 45, 5, 273, 52.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (274, 'Ratke, Heaney and Cremin', 'Kertzmann, O''Reilly and Block', 45, 5, 274, 59.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (275, 'Dooley-Schinner', 'Brakus, Macejkovic and Friesen', 46, 9, 275, 5.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (276, 'Kerluke-Stokes', 'Hilpert-Swift', 46, 7, 276, 41.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (277, 'Pfannerstill-Kub', 'Crona, Mitchell and Satterfield', 46, 8, 277, 49.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (278, 'Orn Group', 'Mraz-Morissette', 46, 4, 278, 57.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (279, 'McGlynn LLC', 'Crist, Tillman and Kovacek', 46, 10, 279, 20.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (280, 'Bartoletti Inc', 'Gerlach-Toy', 46, 10, 280, 22.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (281, 'Hirthe, Veum and Purdy', 'Buckridge-Ullrich', 46, 11, 281, 43.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (282, 'Dooley-Stroman', 'Runte, Waters and Hintz', 46, 10, 282, 6.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (283, 'Schneider Group', 'Strosin PLC', 47, 10, 283, 51.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (284, 'Ratke PLC', 'Daugherty, Macejkovic and Quigley', 47, 5, 284, 1.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (285, 'Zemlak PLC', 'Murphy PLC', 47, 5, 285, 37.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (286, 'Ledner, Balistreri and Muller', 'Greenfelder, Kilback and Kemmer', 47, 1, 286, 44.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (287, 'Leannon, Cole and Fisher', 'Schneider and Sons', 47, 4, 287, 10.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (288, 'Hirthe Group', 'Schimmel Ltd', 48, 5, 288, 24.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (289, 'Dickinson, Luettgen and Hauck', 'Gibson, Terry and Ratke', 48, 3, 289, 23.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (290, 'Abshire-Collins', 'Goyette Ltd', 49, 7, 290, 48.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (291, 'Kassulke Group', 'Waelchi Inc', 49, 10, 291, 37.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (292, 'Kris, Altenwerth and Shanahan', 'Goyette-Daniel', 49, 5, 292, 46.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (293, 'Heidenreich Group', 'Mohr-Lubowitz', 49, 5, 293, 37.000, 'f', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (294, 'Towne-Fay', 'Mante-Kutch', 50, 4, 294, 20.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (295, 'Mohr Ltd', 'Homenick Inc', 50, 11, 295, 30.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (296, 'Gleichner-Davis', 'Fadel, McKenzie and Raynor', 50, 7, 296, 30.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (297, 'Zemlak Ltd', 'Paucek, Koelpin and Emard', 51, 8, 297, 59.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (298, 'Larson, Mayer and Olson', 'Barrows, Willms and Bode', 51, 4, 298, 35.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (299, 'Brakus-Erdman', 'Zboncak, Toy and Lubowitz', 51, 9, 299, 32.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (300, 'Monahan-Beier', 'McGlynn, Kling and Mayer', 51, 10, 300, 29.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (301, 'Kreiger-O''Hara', 'Borer LLC', 51, 8, 301, 10.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (302, 'Swift, Raynor and Reynolds', 'Rosenbaum PLC', 52, 11, 302, 58.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (303, 'Weimann, Greenfelder and Hermann', 'Romaguera-Moen', 52, 5, 303, 37.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (304, 'Mohr PLC', 'Sipes, Waelchi and Jacobson', 53, 3, 304, 56.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (305, 'Braun PLC', 'Tromp-Stark', 53, 7, 305, 42.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (306, 'Aufderhar-Blick', 'Bergnaum LLC', 53, 10, 306, 9.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (307, 'Turcotte Inc', 'Olson Inc', 53, 3, 307, 27.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (308, 'Okuneva-Jerde', 'Pacocha-Dickens', 53, 4, 308, 17.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (309, 'Kozey, Harber and Bode', 'Kassulke LLC', 53, 4, 309, 26.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (310, 'Braun-Gislason', 'Ferry Group', 53, 7, 310, 9.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (311, 'Rath Inc', 'Satterfield-Klein', 54, 6, 311, 59.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (312, 'Schowalter Ltd', 'Kuvalis, Ledner and Sporer', 54, 7, 312, 11.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (313, 'Rohan-Windler', 'Witting, Carroll and Wuckert', 55, 5, 313, 2.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (314, 'Pagac PLC', 'Boyle Inc', 55, 9, 314, 39.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (315, 'Bogan, Spinka and Bradtke', 'Koelpin-Goyette', 55, 4, 315, 44.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (316, 'Kshlerin PLC', 'Pfeffer Inc', 55, 4, 316, 23.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (317, 'Kulas, Pollich and Rosenbaum', 'Kohler, Jacobson and Keeling', 56, 10, 317, 42.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (318, 'Feeney, Gutkowski and Stanton', 'Davis, Becker and Langworth', 56, 11, 318, 50.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (319, 'Hansen LLC', 'Quitzon Group', 56, 4, 319, 25.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (320, 'Padberg-Gorczany', 'Hammes Inc', 56, 6, 320, 9.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (321, 'Bartell Group', 'Weimann and Sons', 56, 6, 321, 41.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (322, 'Keebler, Pollich and Kertzmann', 'Feeney, Purdy and Beer', 56, 6, 322, 15.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (323, 'Stark, Harber and Leffler', 'Bechtelar Group', 56, 10, 323, 16.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (324, 'Schuster-Pfannerstill', 'Haley, Dickens and Zieme', 56, 9, 324, 16.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (325, 'Grimes-Frami', 'Ritchie-Hackett', 56, 5, 325, 38.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (326, 'Davis-McKenzie', 'Koss, Mohr and Cole', 57, 3, 326, 29.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (327, 'Stroman, Rempel and Trantow', 'Hilpert-Stark', 57, 3, 327, 38.000, 'f', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (328, 'Ledner-Toy', 'Shanahan-Nitzsche', 58, 7, 328, 19.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (329, 'Schaden PLC', 'Kuhlman, Gorczany and Kozey', 58, 7, 329, 38.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (330, 'Pfeffer, Jakubowski and Reilly', 'Crist and Sons', 59, 11, 330, 7.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (331, 'Fay-Vandervort', 'Morar and Sons', 59, 9, 331, 42.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (332, 'Jacobi and Sons', 'Mueller, Emmerich and Gerhold', 59, 5, 332, 50.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (333, 'Flatley-Medhurst', 'Fadel LLC', 59, 3, 333, 26.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (334, 'Stark-Abshire', 'Pollich, Larkin and Bahringer', 60, 6, 334, 28.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (335, 'Ratke, Jacobson and Gorczany', 'Hahn-Wyman', 60, 11, 335, 41.000, 't', 't', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (336, 'Sauer-Thiel', 'Franecki-Jacobs', 61, 9, 336, 30.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (337, 'Rolfson, Bogan and Jacobs', 'Franecki, Hammes and Buckridge', 61, 11, 337, 36.000, 't', 'f', NULL, '2017-12-19 01:44:03', '2017-12-19 01:44:03', NULL);
INSERT INTO "songs" VALUES (338, 'Nader and Sons', 'Mohr, Flatley and Wiegand', 61, 9, 338, 53.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (339, 'Borer-Sipes', 'Fritsch LLC', 61, 5, 339, 31.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (340, 'Reilly-Hahn', 'Lemke-Padberg', 61, 5, 340, 39.000, 'f', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (341, 'Crona-Nader', 'Keeling Group', 61, 8, 341, 0.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (342, 'Renner-Powlowski', 'Haley and Sons', 62, 5, 342, 20.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (343, 'Tremblay, Kertzmann and Murphy', 'Lowe, VonRueden and Stiedemann', 62, 9, 343, 55.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (344, 'Kunze, Russel and Oberbrunner', 'Roob, Mayer and Swaniawski', 62, 5, 344, 6.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (345, 'Walker LLC', 'Fadel-Baumbach', 62, 9, 345, 40.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (346, 'Gibson-Medhurst', 'Wunsch Group', 62, 6, 346, 22.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (347, 'Hudson-Hilll', 'Torphy, Stehr and Yost', 62, 4, 347, 35.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (348, 'Mertz-Stanton', 'Howe Ltd', 63, 10, 348, 31.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (349, 'Jacobs LLC', 'Von, Pouros and Kautzer', 63, 7, 349, 10.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (350, 'Kunde, McKenzie and Stiedemann', 'Fritsch LLC', 63, 5, 350, 37.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (351, 'Wilderman-Orn', 'Romaguera-Nitzsche', 63, 10, 351, 16.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (352, 'Turner-Wyman', 'Stark-Okuneva', 63, 1, 352, 26.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (353, 'Wisoky-Okuneva', 'Kulas-Jaskolski', 63, 7, 353, 16.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (354, 'Gutkowski, Krajcik and Sawayn', 'Pfeffer-Armstrong', 64, 11, 354, 10.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (355, 'Price PLC', 'Cummings-Gaylord', 64, 11, 355, 14.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (356, 'Hettinger-Kuhlman', 'Moore LLC', 64, 3, 356, 42.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (357, 'Kulas-Monahan', 'Rosenbaum, Cormier and Reilly', 64, 3, 357, 34.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (358, 'Bernier, Purdy and Reinger', 'Doyle PLC', 64, 3, 358, 10.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (359, 'Reynolds Group', 'Jacobs Inc', 65, 4, 359, 33.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (360, 'Hirthe, D''Amore and Will', 'Conroy-Bradtke', 65, 7, 360, 0.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (361, 'Schimmel Inc', 'Deckow LLC', 65, 9, 361, 27.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (362, 'McGlynn and Sons', 'Cassin and Sons', 65, 3, 362, 20.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (363, 'Klein-Wisozk', 'Rowe-Lind', 65, 6, 363, 47.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (364, 'Hessel-Ullrich', 'McClure-Dooley', 65, 10, 364, 25.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (365, 'Wehner LLC', 'Mills PLC', 65, 7, 365, 46.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (366, 'Satterfield, Wiegand and Schultz', 'Cruickshank, Krajcik and Rolfson', 66, 6, 366, 23.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (367, 'Dietrich Ltd', 'Fahey-Stehr', 66, 6, 367, 55.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (368, 'Dietrich-Gusikowski', 'Block, Schaefer and Bins', 66, 4, 368, 40.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (369, 'Hirthe-Stokes', 'Rau, Zieme and Moore', 66, 7, 369, 3.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (370, 'Schumm and Sons', 'Hodkiewicz, Rath and Baumbach', 66, 11, 370, 51.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (371, 'Wilderman LLC', 'Ruecker-Kerluke', 66, 7, 371, 11.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (372, 'Padberg-Kuhn', 'Kemmer and Sons', 66, 6, 372, 59.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (373, 'Jakubowski-Schuppe', 'Waelchi-McLaughlin', 67, 9, 373, 58.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (374, 'Tromp and Sons', 'Waters, Pouros and Hodkiewicz', 67, 3, 374, 42.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (375, 'Hoeger Inc', 'Goldner Inc', 67, 10, 375, 60.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (376, 'Quigley, Lang and Hand', 'Blanda, Ernser and Daugherty', 67, 7, 376, 33.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (377, 'Baumbach, Kub and Pagac', 'Swift-Medhurst', 67, 3, 377, 8.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (378, 'Bailey-Gutmann', 'Carroll, Harber and Konopelski', 68, 11, 378, 60.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (379, 'Osinski-Doyle', 'Windler, Kub and Tremblay', 68, 7, 379, 47.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (380, 'Fadel, Kris and Stanton', 'Legros-Hettinger', 69, 10, 380, 45.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (381, 'Waelchi and Sons', 'Kessler Group', 69, 5, 381, 30.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (382, 'Mayer-McClure', 'Bailey, Gutkowski and Langworth', 69, 5, 382, 25.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (383, 'Bauch-Dickens', 'DuBuque-Bailey', 69, 3, 383, 27.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (384, 'Donnelly Inc', 'Cremin Inc', 69, 7, 384, 20.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (385, 'Kemmer-Barton', 'White, Simonis and Hickle', 69, 7, 385, 19.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (386, 'Hickle PLC', 'Friesen Inc', 69, 5, 386, 19.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (387, 'Mayert Ltd', 'Pacocha Ltd', 69, 4, 387, 34.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (388, 'Boehm, Miller and Cassin', 'Stoltenberg-Huel', 70, 10, 388, 57.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (389, 'Farrell LLC', 'Aufderhar-Cronin', 70, 11, 389, 19.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (390, 'Kilback, Koepp and Lynch', 'Spinka-Windler', 70, 4, 390, 10.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (391, 'Upton, Schmeler and Gibson', 'O''Connell Group', 70, 11, 391, 27.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (392, 'Dare Group', 'Frami Ltd', 70, 9, 392, 55.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (393, 'Bosco Group', 'Adams LLC', 70, 5, 393, 15.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (394, 'Rosenbaum, Gulgowski and Harber', 'Collier, Towne and Kilback', 70, 4, 394, 54.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (395, 'Mohr-Okuneva', 'Carter-Zulauf', 70, 10, 395, 58.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (396, 'Johns, Dietrich and Zemlak', 'Luettgen Ltd', 71, 6, 396, 7.000, 'f', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (397, 'Wisoky PLC', 'Schroeder Ltd', 71, 3, 397, 38.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (398, 'Welch-Gutmann', 'Cummings Group', 71, 7, 398, 41.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (399, 'Leuschke-Metz', 'Wolff-Mueller', 71, 5, 399, 3.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (400, 'Hamill-Konopelski', 'Klein Inc', 71, 4, 400, 14.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (401, 'Fay, West and Huel', 'Hudson, Kiehn and Bartoletti', 71, 1, 401, 19.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (402, 'Gorczany-Beier', 'Lebsack, Goodwin and O''Reilly', 71, 5, 402, 29.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (403, 'Kutch, Mraz and Pagac', 'Green Group', 71, 6, 403, 0.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (404, 'Lakin, VonRueden and Hermann', 'Williamson-Homenick', 71, 5, 404, 31.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (405, 'Feil Group', 'Windler LLC', 72, 10, 405, 41.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (406, 'Leffler-Beahan', 'Beier, Zieme and Powlowski', 72, 5, 406, 53.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (407, 'Funk, Davis and McCullough', 'Schuster-Feil', 72, 3, 407, 7.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (408, 'Davis Group', 'McDermott, Feeney and Monahan', 73, 3, 408, 52.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (409, 'Lynch-Jacobson', 'Osinski-Wilderman', 73, 4, 409, 19.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (410, 'Ortiz, Kuvalis and Strosin', 'Goodwin, Reichert and Reichert', 73, 8, 410, 25.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (411, 'McGlynn Group', 'Hand Group', 73, 7, 411, 32.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (412, 'Ortiz-Metz', 'Bergnaum-Rodriguez', 73, 6, 412, 48.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (413, 'West, Runte and Funk', 'Doyle, Dickens and Schinner', 73, 6, 413, 46.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (414, 'Huel Ltd', 'Wilkinson, Cronin and Reinger', 73, 8, 414, 10.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (415, 'Dibbert, Rosenbaum and Walsh', 'Conn-Lesch', 73, 8, 415, 28.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (416, 'Douglas Inc', 'Mante-Donnelly', 73, 9, 416, 37.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (417, 'Hudson-Kiehn', 'Armstrong, Lindgren and Schowalter', 73, 5, 417, 25.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (418, 'Ankunding-Fahey', 'Klocko, Romaguera and Dibbert', 74, 4, 418, 31.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (419, 'Trantow Inc', 'Pfeffer PLC', 74, 8, 419, 40.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (420, 'Hane Ltd', 'Ebert, Beer and Legros', 74, 4, 420, 17.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (421, 'Jacobi, Nader and Veum', 'Nitzsche, Wehner and Jerde', 74, 10, 421, 37.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (422, 'Schoen-Donnelly', 'Pagac, Ruecker and Hammes', 74, 5, 422, 8.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (423, 'Harber and Sons', 'O''Reilly-Roob', 74, 6, 423, 32.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (424, 'Larkin PLC', 'Kunde, Nader and Rippin', 74, 11, 424, 40.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (425, 'Goodwin-Stoltenberg', 'Hettinger-Toy', 74, 11, 425, 8.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (426, 'Rippin-Bechtelar', 'Weimann-Kozey', 75, 3, 426, 51.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (427, 'Kutch and Sons', 'Bergnaum-Batz', 75, 10, 427, 16.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (428, 'Stanton-Wilkinson', 'Kilback-Hilpert', 75, 9, 428, 37.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (429, 'Bailey PLC', 'Rau, Lubowitz and Russel', 75, 11, 429, 60.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (430, 'Walker Inc', 'Orn-Kirlin', 75, 7, 430, 30.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (431, 'Hartmann, Wilderman and Fahey', 'Nitzsche-Ondricka', 75, 7, 431, 53.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (432, 'Metz, Kutch and Daugherty', 'Batz Ltd', 75, 4, 432, 51.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (433, 'Wehner Inc', 'Hand, Johnson and Altenwerth', 75, 7, 433, 5.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (434, 'Johns PLC', 'Hauck and Sons', 75, 4, 434, 22.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (435, 'Langworth-Hamill', 'Farrell Group', 75, 9, 435, 32.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (436, 'Ferry Inc', 'Schamberger-Schroeder', 76, 11, 436, 28.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (437, 'Crona Inc', 'Labadie, Hettinger and Schaden', 76, 7, 437, 4.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (438, 'Carter, Okuneva and Nikolaus', 'Lynch-Pagac', 76, 10, 438, 27.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (439, 'Bode-Ward', 'Kertzmann, Rodriguez and Steuber', 76, 5, 439, 6.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (440, 'O''Kon-Bernhard', 'Jast LLC', 76, 9, 440, 50.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (441, 'Harris, Kris and Schneider', 'Morissette, Dickens and Durgan', 76, 6, 441, 53.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (442, 'Carroll, Schulist and Klein', 'Bode, Bode and Rau', 76, 4, 442, 3.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (443, 'Glover-Haag', 'Gibson, Stark and Dach', 77, 8, 443, 3.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (444, 'Jacobi, Grimes and Dibbert', 'Glover-Haag', 77, 5, 444, 56.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (445, 'Boyer-Treutel', 'Dickens Inc', 77, 5, 445, 20.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (446, 'Hane-Langosh', 'Hamill, Rath and Cole', 77, 8, 446, 36.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (447, 'Lemke, Harvey and Graham', 'Wilderman, Wilderman and Runolfsdottir', 77, 8, 447, 3.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (448, 'Windler-Gutkowski', 'Hartmann Inc', 77, 1, 448, 11.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (449, 'Nitzsche PLC', 'Harris, Zulauf and Sipes', 78, 7, 449, 36.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (450, 'Lesch, Lockman and Nicolas', 'Leffler, Carter and Farrell', 78, 10, 450, 42.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (451, 'Schaden-Roberts', 'Emmerich, Dickinson and Carroll', 78, 6, 451, 6.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (452, 'Stamm, Yundt and Langosh', 'Windler, Hermann and Treutel', 78, 7, 452, 6.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (453, 'Waelchi-Ferry', 'Cole-Kohler', 78, 5, 453, 25.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (454, 'Will, White and Mertz', 'Walsh, Feil and Morar', 78, 4, 454, 38.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (455, 'Douglas PLC', 'Greenfelder-Gibson', 78, 5, 455, 6.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (456, 'Kerluke, Ullrich and Crist', 'Macejkovic PLC', 78, 10, 456, 55.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (457, 'Considine Inc', 'Gleason-Hagenes', 78, 3, 457, 39.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (458, 'O''Kon, Runolfsdottir and Erdman', 'Sipes-Schiller', 79, 7, 458, 2.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (459, 'McCullough-Heaney', 'Heller-Fritsch', 79, 7, 459, 21.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (460, 'Mayer and Sons', 'Carter Group', 79, 7, 460, 7.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (461, 'Thiel-Schaden', 'Connelly, Thompson and Thiel', 79, 7, 461, 50.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (462, 'Weber Ltd', 'Carroll, Pagac and Lebsack', 79, 3, 462, 20.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (463, 'Dibbert-Flatley', 'Lemke, Schneider and Stoltenberg', 79, 1, 463, 25.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (464, 'Gusikowski Group', 'Lindgren-Kshlerin', 79, 6, 464, 37.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (465, 'Bins-Hills', 'Torphy, Von and Dickinson', 79, 5, 465, 24.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (466, 'Larkin, Goodwin and Rolfson', 'Thompson-O''Kon', 80, 6, 466, 8.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (467, 'Watsica, Sauer and Gulgowski', 'Smitham-Renner', 80, 4, 467, 11.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (468, 'Auer Inc', 'Kilback PLC', 80, 7, 468, 51.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (469, 'Wolf LLC', 'Breitenberg-Borer', 80, 5, 469, 18.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (470, 'Donnelly PLC', 'Schowalter Inc', 81, 5, 470, 40.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (471, 'Mraz, Robel and Bogan', 'O''Connell PLC', 81, 5, 471, 54.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (472, 'Flatley, Orn and Hansen', 'Kuhlman and Sons', 81, 5, 472, 41.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (473, 'McCullough Ltd', 'Howell-Champlin', 81, 9, 473, 0.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (474, 'Reichert-Turner', 'Haley and Sons', 81, 9, 474, 22.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (475, 'Sanford-Reichel', 'Wilkinson, Macejkovic and Baumbach', 82, 8, 475, 28.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (476, 'Zemlak Ltd', 'Crooks, Funk and Ullrich', 82, 6, 476, 4.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (477, 'Wisoky Inc', 'Mohr, Koch and Little', 82, 5, 477, 34.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (478, 'Kling Ltd', 'Mayert LLC', 82, 10, 478, 34.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (479, 'Herman Group', 'Kuhn, Aufderhar and Pfannerstill', 82, 10, 479, 27.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (480, 'Funk, Oberbrunner and McDermott', 'Wolf PLC', 82, 4, 480, 34.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (481, 'Goldner Group', 'Barton, Feil and Vandervort', 83, 4, 481, 60.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (482, 'Gottlieb, Feil and Carter', 'Williamson-O''Hara', 83, 5, 482, 39.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (483, 'Wilkinson, Zboncak and Jaskolski', 'Cronin LLC', 83, 5, 483, 27.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (484, 'Schroeder-Maggio', 'Bergstrom Group', 83, 5, 484, 39.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (485, 'Fisher-Kilback', 'Hintz, Gaylord and Larkin', 84, 1, 485, 60.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (486, 'Gulgowski and Sons', 'Torphy PLC', 84, 3, 486, 53.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (487, 'Boyle and Sons', 'Prohaska Inc', 84, 7, 487, 45.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (488, 'Walker LLC', 'Batz-Turcotte', 85, 3, 488, 49.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (489, 'West Inc', 'Renner-Braun', 85, 3, 489, 16.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (490, 'Shanahan-Shields', 'Boyer, Schroeder and Emmerich', 85, 5, 490, 54.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (491, 'Sipes, Hilpert and Jakubowski', 'Ritchie Ltd', 85, 9, 491, 1.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (492, 'Beahan LLC', 'Fahey-Halvorson', 85, 5, 492, 2.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (493, 'Gottlieb, Nolan and Howe', 'Gibson, Hamill and Block', 85, 7, 493, 11.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (494, 'Lind Group', 'Kub-Leannon', 85, 7, 494, 3.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (495, 'Schaden, Hettinger and Graham', 'Stiedemann, Russel and Fahey', 86, 10, 495, 45.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (496, 'Veum, Upton and Kuvalis', 'Hessel Inc', 86, 7, 496, 28.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (497, 'Stark, Lehner and Schiller', 'Feest-Jaskolski', 86, 10, 497, 44.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (498, 'Gorczany-Cronin', 'Altenwerth-Wilderman', 86, 3, 498, 51.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (499, 'Lowe-Cummings', 'Walsh, Dicki and Green', 87, 3, 499, 17.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (500, 'Emard-Schamberger', 'Koch, Quigley and Hauck', 87, 10, 500, 31.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (501, 'Spencer and Sons', 'Bartell-Kihn', 87, 4, 501, 23.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (502, 'Aufderhar, O''Conner and Runolfsdottir', 'Bechtelar PLC', 87, 10, 502, 38.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (503, 'Kovacek LLC', 'O''Hara, Dach and Schiller', 87, 8, 503, 18.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (504, 'Armstrong-Ziemann', 'DuBuque LLC', 87, 10, 504, 31.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (505, 'Koch-Lueilwitz', 'Gutkowski Group', 87, 7, 505, 24.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (506, 'Block Ltd', 'Turcotte, Walker and Hettinger', 88, 5, 506, 16.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (507, 'Gulgowski Group', 'Medhurst-Murphy', 88, 6, 507, 25.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (508, 'Auer-Romaguera', 'Nolan Inc', 88, 11, 508, 29.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (509, 'Gusikowski Group', 'White Inc', 88, 6, 509, 30.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (510, 'Morar Inc', 'Lynch-Runte', 88, 9, 510, 21.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (511, 'Wuckert, Kirlin and Brekke', 'O''Conner, Rau and Yundt', 88, 8, 511, 47.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (512, 'Hills, Wintheiser and Veum', 'Kassulke and Sons', 88, 10, 512, 16.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (513, 'Becker Inc', 'O''Kon-Abernathy', 89, 8, 513, 7.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (514, 'Lakin-Bashirian', 'Hills, West and Macejkovic', 89, 7, 514, 58.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (515, 'Schumm, Cartwright and O''Reilly', 'Swaniawski LLC', 89, 8, 515, 50.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (516, 'Langosh LLC', 'Kuhic, Heaney and Yundt', 89, 7, 516, 19.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (517, 'Grimes, Konopelski and Erdman', 'Huels LLC', 89, 5, 517, 16.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (518, 'Parisian-Volkman', 'Huel-Olson', 89, 10, 518, 15.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (519, 'Medhurst and Sons', 'Romaguera, Stroman and Haag', 89, 6, 519, 54.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (520, 'Fadel, Zieme and Von', 'Emmerich-Bailey', 89, 9, 520, 35.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (521, 'Pollich Ltd', 'Runte, Corkery and Bruen', 89, 6, 521, 26.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (522, 'Sipes and Sons', 'Wolff-Auer', 89, 6, 522, 38.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (523, 'Labadie Inc', 'Padberg Inc', 90, 7, 523, 56.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (524, 'Reynolds-Hudson', 'Dooley Group', 90, 8, 524, 28.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (525, 'Wiza Group', 'Swift, Lockman and McKenzie', 90, 3, 525, 39.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (526, 'Kunze-Beier', 'Breitenberg and Sons', 90, 4, 526, 17.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (527, 'Schroeder LLC', 'Mueller and Sons', 91, 5, 527, 3.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (528, 'Anderson-Frami', 'Gleichner-Heller', 91, 3, 528, 22.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (529, 'Feeney PLC', 'Howell, Powlowski and Dickinson', 91, 10, 529, 3.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (530, 'Rohan-Kreiger', 'Kreiger, Skiles and Boehm', 91, 6, 530, 0.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (531, 'Watsica Ltd', 'Mueller, Rodriguez and Fritsch', 91, 5, 531, 15.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (532, 'Mann-Ernser', 'Yost-Terry', 91, 11, 532, 16.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (533, 'Hudson, Beahan and Wuckert', 'Fahey-Crist', 91, 3, 533, 26.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (534, 'Torp, O''Conner and Emard', 'Flatley, Hartmann and Kutch', 91, 7, 534, 30.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (535, 'Rolfson, Dibbert and Casper', 'Treutel, Adams and Wolf', 92, 10, 535, 39.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (536, 'Schaden Ltd', 'Hayes, Runte and Stokes', 92, 8, 536, 45.000, 't', 't', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (537, 'Dietrich Ltd', 'Murray and Sons', 92, 9, 537, 28.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (538, 'Gorczany Group', 'Renner LLC', 92, 5, 538, 60.000, 'f', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (539, 'Langosh, O''Kon and Wuckert', 'McClure, White and Nienow', 93, 8, 539, 49.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (540, 'Greenfelder Ltd', 'Labadie Ltd', 93, 4, 540, 33.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (541, 'Mayer PLC', 'Block Inc', 93, 4, 541, 6.000, 't', 'f', NULL, '2017-12-19 01:44:04', '2017-12-19 01:44:04', NULL);
INSERT INTO "songs" VALUES (542, 'Zboncak, Feest and Koss', 'Schowalter Inc', 94, 8, 542, 7.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (543, 'Dickens-Dietrich', 'McKenzie, Metz and Jakubowski', 94, 10, 543, 17.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (544, 'Rath-Pfannerstill', 'Dibbert, Watsica and Kshlerin', 94, 9, 544, 36.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (545, 'Nienow-Stamm', 'McDermott and Sons', 94, 8, 545, 7.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (546, 'Ryan, Waelchi and Ullrich', 'Ondricka-Fahey', 94, 10, 546, 56.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (547, 'Quigley, Walker and Grant', 'Pfeffer, Dooley and Strosin', 94, 10, 547, 30.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (548, 'Stoltenberg, Batz and Beer', 'Lockman-Hermann', 95, 10, 548, 27.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (549, 'Koepp Ltd', 'Bashirian PLC', 95, 4, 549, 31.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (550, 'McCullough, O''Conner and Jast', 'Padberg, Harvey and Cruickshank', 95, 3, 550, 21.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (551, 'Muller, Conn and McDermott', 'Torphy, Thompson and Turcotte', 95, 4, 551, 40.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (552, 'Morar Inc', 'Grady LLC', 96, 5, 552, 24.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (553, 'Jenkins Inc', 'Waelchi Inc', 96, 9, 553, 34.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (554, 'Botsford, Fadel and Harvey', 'Murphy-Boyle', 96, 7, 554, 14.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (555, 'Powlowski, Kemmer and Gottlieb', 'Quitzon and Sons', 96, 7, 555, 7.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (556, 'Klein, Hilpert and Jaskolski', 'Treutel-Kuphal', 96, 7, 556, 42.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (557, 'Swaniawski-Parker', 'Kuhlman PLC', 96, 8, 557, 56.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (558, 'Wintheiser and Sons', 'Towne, Adams and Hayes', 96, 4, 558, 7.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (559, 'Ferry-Lueilwitz', 'Altenwerth-Dickinson', 96, 3, 559, 59.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (560, 'Hills-Vandervort', 'Lebsack, O''Reilly and Kovacek', 96, 4, 560, 17.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (561, 'Effertz, Willms and Kerluke', 'Pacocha LLC', 97, 5, 561, 17.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (562, 'Moore Ltd', 'Ferry-Conn', 97, 5, 562, 56.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (563, 'Waelchi, Abshire and Lubowitz', 'Reichel and Sons', 97, 11, 563, 28.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (564, 'Gulgowski-Stark', 'Lebsack-Nolan', 97, 11, 564, 20.000, 'f', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (565, 'Bartell-Weimann', 'Berge Group', 97, 5, 565, 58.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (566, 'Conn-Bartell', 'Feeney PLC', 97, 9, 566, 31.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (567, 'Mueller, Corkery and Welch', 'Lang, Wyman and Walker', 97, 4, 567, 1.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (568, 'Ward Inc', 'Trantow and Sons', 98, 9, 568, 54.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (569, 'Rau, Hagenes and Beahan', 'Morar Group', 98, 10, 569, 0.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (570, 'Gaylord PLC', 'Harvey-Pollich', 98, 9, 570, 19.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (571, 'Huels, Waelchi and Mohr', 'Pouros-Maggio', 98, 8, 571, 4.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (572, 'Dickinson-Quitzon', 'Schiller Inc', 98, 8, 572, 53.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (573, 'Steuber-Leffler', 'Willms, Walter and Kuphal', 98, 7, 573, 18.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (574, 'Wisozk LLC', 'Bins LLC', 98, 7, 574, 39.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (575, 'Littel, Torp and Hickle', 'Gorczany Group', 98, 3, 575, 54.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (576, 'Kunde, Kuphal and Ferry', 'Keebler Inc', 98, 8, 576, 51.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (577, 'Stracke-Hessel', 'Schmitt, Toy and Tremblay', 98, 6, 577, 55.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (578, 'Koss Ltd', 'Prosacco-Cremin', 99, 11, 578, 16.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (579, 'Jerde Inc', 'Rohan Ltd', 99, 4, 579, 20.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (580, 'Schulist LLC', 'Nikolaus PLC', 99, 10, 580, 53.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (581, 'Runte, Daniel and Krajcik', 'Stiedemann, Olson and Durgan', 99, 4, 581, 9.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (582, 'Steuber-Lynch', 'Bauch-Feil', 99, 8, 582, 55.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (583, 'Macejkovic-Abernathy', 'Sipes Ltd', 99, 4, 583, 12.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (584, 'Kuhlman Inc', 'Hoeger, Kulas and O''Reilly', 99, 8, 584, 18.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (585, 'Zieme-Larkin', 'Crona-Armstrong', 100, 11, 585, 20.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (586, 'Bartell LLC', 'Fahey-Bartoletti', 100, 11, 586, 59.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (587, 'O''Kon LLC', 'Rowe, McGlynn and Lubowitz', 100, 5, 587, 38.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (588, 'Medhurst Inc', 'Schaden-Jacobson', 100, 8, 588, 24.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (589, 'Farrell and Sons', 'Crooks, Ryan and Howell', 100, 7, 589, 50.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (590, 'Fadel Ltd', 'Cormier Group', 100, 9, 590, 35.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (591, 'Jast, Roob and Hansen', 'Kassulke, Haag and Waters', 100, 11, 591, 23.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (592, 'Wuckert-Ondricka', 'Hyatt Ltd', 101, 7, 592, 53.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (593, 'Little-Carroll', 'Mills-Anderson', 101, 5, 593, 41.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (594, 'Hammes-Schuppe', 'Schmeler-Bednar', 102, 11, 594, 39.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (595, 'Harber and Sons', 'Jacobi-Davis', 102, 10, 595, 8.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (596, 'Leffler LLC', 'Nicolas and Sons', 102, 7, 596, 19.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (597, 'Glover-Toy', 'Huel-Hane', 102, 8, 597, 27.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (598, 'Pagac-Torp', 'Larson-Powlowski', 102, 5, 598, 27.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (599, 'Jones, Pollich and Koepp', 'Mohr-Turner', 103, 7, 599, 17.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (600, 'Schuppe Inc', 'Windler, Sauer and Gulgowski', 103, 3, 600, 21.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (601, 'Fadel and Sons', 'Schroeder, Blanda and Hammes', 103, 3, 601, 6.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (602, 'Senger PLC', 'Lemke-Cremin', 103, 5, 602, 44.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (603, 'Macejkovic-Runolfsdottir', 'Kohler, Feeney and Reichel', 103, 9, 603, 39.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (604, 'Skiles LLC', 'Stiedemann, Kerluke and Tillman', 103, 5, 604, 36.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (605, 'Hayes PLC', 'Schultz, Heathcote and Mertz', 103, 9, 605, 38.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (606, 'Macejkovic, Hane and Eichmann', 'Wisozk-Russel', 103, 8, 606, 20.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (607, 'Howe-Ferry', 'Dach-Nicolas', 103, 8, 607, 55.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (608, 'Frami, Dietrich and Mayert', 'Bayer, Herzog and Haag', 104, 8, 608, 11.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (609, 'Wisozk-Kozey', 'Bechtelar, Kutch and Mann', 104, 5, 609, 36.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (610, 'Brown, Tromp and Pouros', 'Spencer, Collins and Bogan', 105, 5, 610, 47.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (611, 'Daniel, Kub and Yost', 'Hilll-Cruickshank', 105, 7, 611, 34.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (612, 'Turner-Hickle', 'Dibbert-Zieme', 105, 10, 612, 13.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (613, 'Jenkins, Lebsack and Corkery', 'Jast, Cummerata and Fisher', 106, 8, 613, 39.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (614, 'Monahan, Stanton and Jerde', 'Jacobi-Wolff', 106, 8, 614, 3.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (615, 'Padberg-Murray', 'Ernser PLC', 106, 4, 615, 60.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (616, 'Jones, Mraz and Barton', 'Effertz, Lind and Weissnat', 106, 7, 616, 23.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (617, 'Quitzon, Jerde and Reilly', 'Rath-Marvin', 106, 5, 617, 1.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (618, 'Wintheiser-Hodkiewicz', 'Lindgren, Fay and Davis', 106, 8, 618, 56.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (619, 'McGlynn Inc', 'Abbott-Hilpert', 106, 11, 619, 15.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (620, 'Smith-Cole', 'Nolan LLC', 106, 5, 620, 43.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (621, 'Brakus-Spinka', 'Dooley-O''Kon', 106, 6, 621, 14.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (622, 'Kub, Koelpin and Ortiz', 'Koss, Kohler and Hayes', 107, 10, 622, 50.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (623, 'Morissette Group', 'McCullough-Bogisich', 107, 4, 623, 11.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (624, 'Anderson Ltd', 'Lehner Ltd', 107, 4, 624, 38.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (625, 'Kessler-Crona', 'Casper, White and Jones', 107, 8, 625, 26.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (626, 'Cronin, Goldner and Walter', 'Lindgren PLC', 107, 1, 626, 54.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (627, 'Barrows-Borer', 'Wisozk, Aufderhar and Lebsack', 107, 8, 627, 42.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (628, 'Abbott, Bergnaum and Lemke', 'Bauch-Heathcote', 107, 9, 628, 13.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (629, 'Bosco, Krajcik and Yundt', 'Will, Mitchell and Cremin', 107, 4, 629, 11.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (630, 'Prohaska-Tromp', 'Rutherford-Jenkins', 107, 10, 630, 22.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (631, 'Hintz-Bahringer', 'Waters PLC', 107, 3, 631, 47.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (632, 'O''Conner PLC', 'Jaskolski, Hayes and Feeney', 108, 10, 632, 8.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (633, 'McLaughlin Group', 'Lakin, Crist and Trantow', 108, 8, 633, 58.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (634, 'King-Collins', 'Brown Ltd', 108, 4, 634, 47.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (635, 'Beatty, Huel and Nikolaus', 'Strosin-Cole', 108, 4, 635, 43.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (636, 'Ratke Group', 'Aufderhar, Gerlach and Jakubowski', 108, 7, 636, 22.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (637, 'Willms and Sons', 'Stark-Gottlieb', 108, 6, 637, 13.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (638, 'Becker PLC', 'DuBuque-Morissette', 108, 10, 638, 15.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (639, 'Kemmer Inc', 'Reynolds Group', 108, 5, 639, 33.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (640, 'Little Group', 'Muller, Little and Weber', 108, 3, 640, 14.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (641, 'Mohr, Blanda and Schiller', 'Halvorson, Macejkovic and Emmerich', 109, 10, 641, 3.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (642, 'Borer Ltd', 'Bauch, Farrell and Bayer', 109, 11, 642, 36.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (643, 'Hegmann PLC', 'Balistreri-Breitenberg', 109, 4, 643, 28.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (644, 'Kemmer-McClure', 'Welch, Stiedemann and Emmerich', 109, 8, 644, 32.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (645, 'Dach-Hoeger', 'Towne Group', 110, 10, 645, 18.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (646, 'Kerluke, Treutel and Langosh', 'Brakus and Sons', 110, 5, 646, 18.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (647, 'Dach-Douglas', 'Bernhard-Stehr', 110, 10, 647, 29.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (648, 'Daniel Ltd', 'Zieme, Krajcik and Hilll', 110, 5, 648, 32.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (649, 'Hoeger, Trantow and Klein', 'Rowe-Aufderhar', 110, 7, 649, 12.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (650, 'Powlowski-Schaefer', 'Haley, Steuber and Collier', 110, 10, 650, 25.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (651, 'Kulas-Langworth', 'Berge, Crist and Lakin', 111, 3, 651, 0.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (652, 'Rippin-Hirthe', 'Lockman-McClure', 111, 8, 652, 12.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (653, 'Kris Group', 'Corwin, Tillman and Robel', 111, 7, 653, 9.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (654, 'Terry Group', 'Donnelly, Grant and Lindgren', 111, 3, 654, 30.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (655, 'Collier Inc', 'Schimmel LLC', 112, 10, 655, 53.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (656, 'Kulas, Herzog and Champlin', 'Gaylord, Erdman and Farrell', 112, 5, 656, 30.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (657, 'Crona, Moore and Lynch', 'Fay Inc', 112, 11, 657, 9.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (658, 'Stroman PLC', 'Spencer-Satterfield', 112, 11, 658, 9.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (659, 'Fisher-Waelchi', 'Metz-Hagenes', 113, 10, 659, 34.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (660, 'Vandervort-Leuschke', 'Heathcote Inc', 113, 10, 660, 59.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (661, 'Hegmann Inc', 'Leffler-Schimmel', 113, 3, 661, 31.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (662, 'Howell, Heidenreich and Reinger', 'Leffler-Tillman', 113, 6, 662, 52.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (663, 'Champlin-Block', 'Goyette, Murazik and Carroll', 113, 4, 663, 14.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (664, 'Pagac and Sons', 'Lowe-Marquardt', 114, 3, 664, 46.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (665, 'Kilback and Sons', 'Roberts, Kutch and Miller', 114, 9, 665, 6.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (666, 'Schumm LLC', 'Ortiz Inc', 114, 7, 666, 22.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (667, 'Blick-Kulas', 'Ledner-Franecki', 114, 8, 667, 7.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (668, 'Nikolaus Group', 'Macejkovic PLC', 114, 9, 668, 58.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (669, 'Doyle-Tremblay', 'Wintheiser-Bayer', 114, 6, 669, 35.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (670, 'Roberts PLC', 'Hintz-Larson', 114, 7, 670, 37.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (671, 'Hartmann Inc', 'Crist-Goodwin', 114, 5, 671, 43.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (672, 'Bogan, Swaniawski and Mann', 'Hessel and Sons', 114, 6, 672, 7.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (673, 'Runolfsson-Toy', 'Cassin PLC', 114, 9, 673, 22.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (674, 'Sauer-Spinka', 'Lebsack Inc', 115, 7, 674, 30.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (675, 'Kshlerin-Kuhn', 'Stokes and Sons', 115, 5, 675, 16.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (676, 'Schaden Group', 'Lubowitz-Ferry', 115, 3, 676, 47.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (677, 'Beier-Mohr', 'Runte, Feil and Gleason', 115, 9, 677, 37.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (678, 'Marquardt Group', 'Kiehn, Padberg and Price', 115, 8, 678, 18.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (679, 'Borer-Crist', 'Prohaska, Abshire and Hickle', 115, 7, 679, 36.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (680, 'Rice-Wunsch', 'Kub, Watsica and Wiegand', 115, 3, 680, 47.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (681, 'Kuvalis, Cummings and Welch', 'Robel, Williamson and Reynolds', 115, 5, 681, 10.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (682, 'Roob, Koelpin and Toy', 'Toy Ltd', 116, 7, 682, 46.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (683, 'Leannon, Rolfson and Kris', 'Sporer and Sons', 116, 6, 683, 58.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (684, 'Strosin-Mann', 'Mertz, Schoen and McLaughlin', 116, 4, 684, 54.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (685, 'Wilderman-Bechtelar', 'Gutkowski LLC', 116, 1, 685, 44.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (686, 'Raynor, Daugherty and Durgan', 'Heidenreich-Hintz', 116, 7, 686, 49.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (687, 'Effertz and Sons', 'Tromp-Kovacek', 116, 8, 687, 35.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (688, 'Orn, Jaskolski and Wisozk', 'Effertz, Wilkinson and McCullough', 116, 10, 688, 21.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (689, 'Fahey, Kutch and Harber', 'Hills-Conn', 116, 5, 689, 37.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (690, 'Tremblay-Reynolds', 'Olson-Rempel', 117, 4, 690, 51.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (691, 'Schimmel Inc', 'Davis-Kulas', 117, 5, 691, 2.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (692, 'Bergnaum LLC', 'Schulist, Kautzer and Greenfelder', 117, 5, 692, 60.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (693, 'Schoen-Rice', 'Russel, Friesen and Hintz', 117, 7, 693, 26.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (694, 'Hoppe, Kris and Homenick', 'Kling-Denesik', 117, 4, 694, 44.000, 'f', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (695, 'Daugherty-Goyette', 'Hackett-Herzog', 117, 6, 695, 30.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (696, 'Price-Williamson', 'Sipes-Watsica', 117, 5, 696, 25.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (697, 'Boyer Ltd', 'Cruickshank PLC', 117, 8, 697, 27.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (698, 'Anderson Ltd', 'Klein-Dietrich', 118, 9, 698, 2.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (699, 'Champlin, Walsh and Langworth', 'Cronin-Reichert', 118, 4, 699, 59.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (700, 'Emmerich, Jakubowski and Hermann', 'Anderson-Wolf', 118, 11, 700, 21.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (701, 'Wintheiser-Lynch', 'Bernhard LLC', 118, 5, 701, 56.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (702, 'Cronin Group', 'Erdman-Johnson', 118, 8, 702, 8.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (703, 'Jacobs Group', 'Carter-Walter', 118, 4, 703, 39.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (704, 'McKenzie LLC', 'Beatty Ltd', 118, 10, 704, 27.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (705, 'Mueller, Donnelly and Carter', 'Botsford, Tillman and Purdy', 118, 1, 705, 32.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (706, 'Hane, Anderson and McKenzie', 'Ondricka, Hammes and Purdy', 119, 8, 706, 50.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (707, 'Dicki-Baumbach', 'Cassin-Mayer', 119, 10, 707, 51.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (708, 'Beatty and Sons', 'Towne, Carroll and Langworth', 119, 4, 708, 15.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (709, 'Nikolaus, Rogahn and Herman', 'Smith, Rice and D''Amore', 120, 8, 709, 3.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (710, 'Wolf-Lueilwitz', 'Vandervort, Beer and Tillman', 120, 3, 710, 33.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (711, 'Schultz-Kiehn', 'Beier-Gaylord', 120, 4, 711, 24.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (712, 'O''Reilly-Emard', 'O''Hara-Runolfsdottir', 120, 8, 712, 58.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (713, 'Okuneva-Pfannerstill', 'Weber-Jacobson', 120, 5, 713, 34.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (714, 'Trantow Ltd', 'Osinski PLC', 120, 8, 714, 36.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (715, 'Willms Group', 'Effertz, Huels and McLaughlin', 121, 10, 715, 55.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (716, 'Schiller, Sawayn and Moen', 'Terry Group', 121, 5, 716, 5.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (717, 'Lang, Turcotte and Brakus', 'Bogisich, Jacobi and Simonis', 121, 11, 717, 38.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (718, 'Mohr-Krajcik', 'Hayes, Beatty and Dietrich', 121, 9, 718, 23.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (719, 'Mitchell, Ryan and Daniel', 'Adams, Kerluke and Ryan', 122, 10, 719, 16.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (720, 'Keeling-Crist', 'Crooks-Breitenberg', 122, 8, 720, 57.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (721, 'Erdman, Schmidt and Wilderman', 'Keebler-Weimann', 122, 4, 721, 60.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (722, 'Hermiston and Sons', 'Koch, Paucek and Fisher', 122, 9, 722, 51.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (723, 'Ernser, Purdy and Quigley', 'Ryan, Dietrich and Boehm', 122, 3, 723, 23.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (724, 'Luettgen-Douglas', 'Torphy and Sons', 122, 6, 724, 0.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (725, 'Schneider, Barton and Sanford', 'Nolan Inc', 122, 9, 725, 27.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (726, 'Batz, Kirlin and Labadie', 'Ledner, Treutel and Maggio', 122, 11, 726, 16.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (727, 'Kohler Group', 'Crooks-Kozey', 122, 5, 727, 19.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (728, 'Fritsch Ltd', 'Boyle-Hand', 122, 10, 728, 60.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (729, 'Schmitt, Stracke and Kub', 'O''Connell, Purdy and Ledner', 123, 10, 729, 16.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (730, 'Leannon, Boehm and McKenzie', 'Heaney, Rowe and Jacobi', 123, 3, 730, 20.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (731, 'Zemlak-Reilly', 'Mueller and Sons', 123, 10, 731, 53.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (732, 'D''Amore-Mosciski', 'Collier, Thiel and Pfannerstill', 123, 11, 732, 18.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (733, 'Dietrich-Nicolas', 'Macejkovic, Cummerata and Veum', 123, 8, 733, 11.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (734, 'Quigley-Kovacek', 'Botsford Inc', 123, 10, 734, 52.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (735, 'Becker LLC', 'Botsford Ltd', 123, 9, 735, 44.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (736, 'Keeling, Gusikowski and Mante', 'Ward Ltd', 123, 9, 736, 23.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (737, 'Kirlin Inc', 'Schimmel, Kihn and O''Hara', 123, 8, 737, 55.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (738, 'Jenkins LLC', 'Koch-Rolfson', 123, 6, 738, 29.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (739, 'Pfeffer-McCullough', 'Jones LLC', 124, 9, 739, 32.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (740, 'Walker Ltd', 'Berge, Kris and McDermott', 124, 5, 740, 7.000, 'f', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (741, 'Swaniawski, Hansen and Conroy', 'McDermott-Dickinson', 124, 3, 741, 24.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (742, 'Kunze Ltd', 'Walsh-Torphy', 124, 1, 742, 38.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (743, 'Kling, Hoeger and Reilly', 'Kirlin, Abbott and Lebsack', 124, 8, 743, 49.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (744, 'Jacobs, Kutch and Barton', 'Nitzsche-Bogisich', 124, 7, 744, 21.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (745, 'Upton-Kirlin', 'Jacobson and Sons', 124, 10, 745, 27.000, 't', 't', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (746, 'Ruecker, Dicki and Senger', 'Cassin LLC', 125, 9, 746, 3.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (747, 'Pfeffer PLC', 'Jakubowski-Halvorson', 125, 5, 747, 47.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (748, 'Trantow-Raynor', 'Hane PLC', 126, 6, 748, 15.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (749, 'Ferry, Wintheiser and Schamberger', 'Goyette, Aufderhar and Gusikowski', 126, 11, 749, 19.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (750, 'Sporer-Monahan', 'VonRueden PLC', 126, 10, 750, 41.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (751, 'Eichmann, Koch and Spinka', 'Bednar LLC', 126, 3, 751, 46.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (752, 'Hegmann-McDermott', 'Wuckert, Pacocha and Homenick', 126, 5, 752, 59.000, 't', 'f', NULL, '2017-12-19 01:44:05', '2017-12-19 01:44:05', NULL);
INSERT INTO "songs" VALUES (753, 'Schmeler, Dibbert and Ferry', 'Nienow Ltd', 127, 10, 753, 39.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (754, 'Wunsch-Morissette', 'Pagac-Weber', 127, 9, 754, 39.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (755, 'Keeling Ltd', 'Gleason Group', 128, 3, 755, 32.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (756, 'Daugherty and Sons', 'Weber PLC', 128, 4, 756, 41.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (757, 'Kerluke, Hyatt and Lehner', 'Senger LLC', 128, 1, 757, 43.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (758, 'Ullrich Inc', 'Spinka, Kertzmann and Reynolds', 128, 6, 758, 27.000, 't', 't', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (759, 'Roob-Walker', 'Dickinson-Fadel', 128, 7, 759, 35.000, 'f', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (760, 'Wuckert, Turcotte and Lindgren', 'Howe and Sons', 128, 5, 760, 40.000, 'f', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (761, 'Cartwright, Koepp and Von', 'Torp-Halvorson', 128, 10, 761, 59.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (762, 'Quigley-Herzog', 'Renner Group', 129, 6, 762, 11.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (763, 'Mayer, Legros and Graham', 'Tremblay PLC', 129, 10, 763, 51.000, 'f', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (764, 'Grady and Sons', 'Kuhic, McLaughlin and Bashirian', 129, 10, 764, 17.000, 't', 't', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (765, 'Abbott and Sons', 'Homenick-Corwin', 129, 10, 765, 2.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (766, 'Marks, Gleason and Windler', 'Luettgen-Hahn', 129, 8, 766, 28.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (767, 'Schaden LLC', 'Nolan, Ward and Medhurst', 129, 7, 767, 59.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (768, 'Dare, Wolff and Kris', 'Glover, Larkin and Schumm', 129, 8, 768, 12.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (769, 'Marvin, Ferry and Padberg', 'Hyatt, Hoppe and Kuphal', 129, 3, 769, 2.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (770, 'Sipes-Hyatt', 'Witting PLC', 130, 10, 770, 8.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (771, 'Corwin Group', 'Murphy, Cronin and Casper', 130, 10, 771, 11.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (772, 'Christiansen-Kassulke', 'Stiedemann, Roberts and Durgan', 130, 5, 772, 55.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (773, 'Willms, Kemmer and Mosciski', 'Wilkinson Group', 130, 8, 773, 31.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (774, 'Lueilwitz LLC', 'Lind Inc', 131, 9, 774, 3.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (775, 'Considine PLC', 'Gleichner, Ernser and Jacobs', 131, 6, 775, 19.000, 't', 't', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (776, 'Zboncak, Koelpin and Kuphal', 'Runolfsson, Shields and Emard', 131, 10, 776, 6.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (777, 'Zboncak-Hilll', 'Cole LLC', 131, 5, 777, 9.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (778, 'Carter-Zboncak', 'Greenfelder, Sporer and Gibson', 131, 6, 778, 13.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (779, 'Stoltenberg LLC', 'Waelchi, Schamberger and Huel', 131, 4, 779, 19.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (780, 'Moore-Sauer', 'Friesen LLC', 132, 5, 780, 17.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (781, 'Williamson-Lang', 'Roberts-D''Amore', 132, 8, 781, 47.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (782, 'Senger-Borer', 'Schoen-Lowe', 132, 3, 782, 0.000, 'f', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (783, 'Considine-Haley', 'Becker-Considine', 132, 5, 783, 17.000, 'f', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (784, 'Torp-Senger', 'Rodriguez Ltd', 132, 11, 784, 56.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (785, 'Berge-Runolfsdottir', 'Pfannerstill-Skiles', 132, 5, 785, 59.000, 'f', 't', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (786, 'Bayer-Walter', 'Quigley-Kerluke', 132, 6, 786, 52.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (787, 'Stamm Group', 'Schaefer and Sons', 133, 8, 787, 55.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (788, 'Thiel, Pagac and Fritsch', 'Ratke and Sons', 133, 4, 788, 32.000, 'f', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (789, 'Schiller-Rowe', 'Walsh-Mann', 133, 5, 789, 31.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (790, 'Williamson-Kovacek', 'Gusikowski-Farrell', 134, 8, 790, 30.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (791, 'Stracke Ltd', 'Hirthe, Rodriguez and Gerhold', 134, 5, 791, 45.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (792, 'Swift, Crona and Dicki', 'O''Kon Ltd', 134, 5, 792, 4.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (793, 'Corwin, Graham and Rice', 'Hermiston, Douglas and Gottlieb', 134, 6, 793, 31.000, 'f', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (794, 'Mann-Bradtke', 'Reinger, Grant and Mitchell', 134, 7, 794, 11.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (795, 'Ward-Oberbrunner', 'Hilpert Ltd', 134, 6, 795, 2.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (796, 'Hahn, Nitzsche and Anderson', 'Wolff and Sons', 134, 7, 796, 41.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (797, 'Hahn PLC', 'Bayer-Leannon', 134, 9, 797, 54.000, 't', 't', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (798, 'Zboncak, Beier and Cormier', 'Zulauf Inc', 135, 8, 798, 19.000, 't', 't', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (799, 'Crooks-Ward', 'Gottlieb-D''Amore', 135, 11, 799, 23.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (800, 'Walter, Yundt and Cole', 'Boehm Ltd', 135, 6, 800, 44.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (801, 'Schmitt-Kling', 'Lowe Inc', 135, 3, 801, 53.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
INSERT INTO "songs" VALUES (802, 'Toy, Schmidt and Monahan', 'O''Reilly, Oberbrunner and Bahringer', 135, 5, 802, 4.000, 't', 'f', NULL, '2017-12-19 01:44:06', '2017-12-19 01:44:06', NULL);
COMMIT;

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS "users";
CREATE TABLE "users" (
  "id" int4 NOT NULL DEFAULT nextval('users_id_seq'::regclass),
  "name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "password" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "remember_token" varchar(100) COLLATE "pg_catalog"."default",
  "created_at" timestamp(0),
  "updated_at" timestamp(0)
)
;

-- ----------------------------
-- Records of users
-- ----------------------------
BEGIN;
INSERT INTO "users" VALUES (1, 'Giovanny Shanahan MD', 'kuhlman.dasia@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', '8kv7O9L5r1', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (2, 'Cooper Aufderhar', 'jessika47@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'VghLTSrGW0', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (3, 'Mrs. Trisha Tromp I', 'lheller@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', '9JmFVF8Rik', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (4, 'Aurelia Weber III', 'imelda12@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'ppIyO2Pv1q', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (5, 'Dr. Brady Gislason', 'nora11@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'CxDnln9reH', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (6, 'Salvatore Kuhn IV', 'buckridge.garrick@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'm6hxfnBSxP', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (7, 'Morris Nitzsche', 'leuschke.hilma@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'iwXFKbFG9k', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (8, 'Sally Rath', 'isabella.yundt@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'VUeZpcEHzx', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (9, 'Rollin Friesen', 'olubowitz@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'AORAxCfAGd', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (10, 'Isom Howell Sr.', 'lucius86@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'WCilIyo0Px', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (11, 'Ms. Kaycee Williamson', 'zprice@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'Jc9zQ10w5x', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (12, 'Vicky Wehner', 'maia05@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'wGMZNfnzAX', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (13, 'Noemi Quitzon', 'pdickinson@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'Tv9PGYIP5U', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (14, 'Prof. Destini Herman', 'santos.purdy@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'VHtJvkkVsz', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (15, 'Edwardo Bechtelar', 'olson.shirley@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'RB5EEHliAx', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (16, 'Palma Sauer', 'josefa.friesen@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'kZKVjZGhNL', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (17, 'Ms. Sheila Thompson', 'dcarroll@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'CIgyFhYjVj', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (18, 'Tod Moore', 'beahan.emmie@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'mcoqT0v8Dv', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (19, 'Lauriane Lakin', 'llarkin@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'DavYuqoSGH', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (20, 'Mr. Sim Koss MD', 'west.keven@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'lwsvP6ok4z', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (21, 'Miss Deja Oberbrunner Jr.', 'herman.cremin@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'L2Mzc1sfQM', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (22, 'Kiara Hackett III', 'celestino.terry@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'VaVld1ZgZp', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (23, 'Bernadette Graham', 'treva83@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'CTD0tzHSrU', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (24, 'Mr. Ricky Schultz IV', 'quitzon.laura@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'fetjBtu6gc', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (25, 'Jamarcus Botsford', 'abbott.ronaldo@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', '1iTAXpCtaS', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (26, 'Miss Pamela Lockman IV', 'marietta.barrows@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'HVg36VDTJr', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (27, 'Jayda Labadie', 'rigoberto.hartmann@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'C41Nfzcrx8', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (28, 'Carmen Koss', 'pacocha.tyrell@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'HDp6TiYd02', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (29, 'Michel Powlowski I', 'yoshiko74@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'Wpc7rhC2c3', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (30, 'Alexandro Stehr', 'yvette46@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'oE0vpj2Duc', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (31, 'Miss Faye Considine III', 'kirk06@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'JLvEpk6cm2', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (32, 'Anastacio Grimes V', 'jada11@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'fkvyOEzaL8', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (33, 'Dr. Elenor Quigley', 'nyasia.bode@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'FPeFp5C3IO', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (34, 'Ms. Mina Kiehn', 'schmidt.magdalena@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'Kw5LF2EqhS', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (35, 'Mr. Kiel Koelpin I', 'graciela.mosciski@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'DLZyUpQF4d', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (36, 'Trenton Little I', 'annamarie.olson@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', '21EUdckBus', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (37, 'America Lesch', 'cordelia81@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'mgopfsS1hZ', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (38, 'Wilmer Nienow', 'srice@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'i40kUXM4oE', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (39, 'Orie O''Conner DDS', 'zbeier@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', '8JiltW9ivO', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (40, 'Winifred Beahan', 'ygutmann@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', '6e8L9ms1A1', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (41, 'Aurelio Reinger', 'heller.llewellyn@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'Y1YIeHyvGW', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (42, 'Jennie Becker', 'rgerlach@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', '3Z44I9Ocyd', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (43, 'Mr. Alessandro Feil DDS', 'trent36@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'oj2ZFguYty', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (44, 'Jannie Bergnaum', 'ksanford@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'FWkWL0ViMA', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (45, 'Prof. Cody Brekke I', 'ccorwin@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'DTFUnTiCij', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (46, 'Prof. Katelin Predovic', 'jackie.huels@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'E2ihhrZiBL', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (47, 'Lionel Simonis III', 'reagan.runolfsdottir@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'Zqx4eG0yMX', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (48, 'Brice Reinger', 'steuber.grant@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'GQOqD50D80', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (49, 'Stephen Lebsack', 'runolfsson.newton@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'xzsJXC8oEW', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (50, 'Ursula Fisher II', 'orion.mohr@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'hngIo20fY4', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (51, 'Dylan Brakus', 'jbradtke@example.org', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'GG5lNYhTvD', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (52, 'Mollie Gaylord', 'tremblay.marc@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'XocElyPRaL', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (53, 'Mireya Vandervort DVM', 'tchristiansen@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'JdU4vIlmFT', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (54, 'Ms. Sallie Mills', 'wehner.river@example.com', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', '8kE9vL4wJ3', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
INSERT INTO "users" VALUES (55, 'Mr. Durward Mante DVM', 'tyra40@example.net', '$2y$10$mufG/YZLFydn8XFHkvWvlu7Ts4rgJRb63XrzKq/Z.6h1uQZS7zYn6', 'miDFGtze3b', '2017-12-19 01:44:02', '2017-12-19 01:44:02');
COMMIT;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "albums_id_seq"
OWNED BY "albums"."id";
SELECT setval('"albums_id_seq"', 136, true);
ALTER SEQUENCE "artists_id_seq"
OWNED BY "artists"."id";
SELECT setval('"artists_id_seq"', 51, true);
ALTER SEQUENCE "countries_id_seq"
OWNED BY "countries"."id";
SELECT setval('"countries_id_seq"', 2, true);
ALTER SEQUENCE "featured_songs_cooldown_id_seq"
OWNED BY "featured_songs_cooldown"."id";
SELECT setval('"featured_songs_cooldown_id_seq"', 2, false);
ALTER SEQUENCE "featured_songs_id_seq"
OWNED BY "featured_songs"."id";
SELECT setval('"featured_songs_id_seq"', 2, false);
ALTER SEQUENCE "genres_id_seq"
OWNED BY "genres"."id";
SELECT setval('"genres_id_seq"', 4, true);
ALTER SEQUENCE "migrations_id_seq"
OWNED BY "migrations"."id";
SELECT setval('"migrations_id_seq"', 11, true);
ALTER SEQUENCE "skus_id_seq"
OWNED BY "skus"."id";
SELECT setval('"skus_id_seq"', 803, true);
ALTER SEQUENCE "songs_id_seq"
OWNED BY "songs"."id";
SELECT setval('"songs_id_seq"', 803, true);
ALTER SEQUENCE "users_id_seq"
OWNED BY "users"."id";
SELECT setval('"users_id_seq"', 56, true);

-- ----------------------------
-- Checks structure for table albums
-- ----------------------------
ALTER TABLE "albums" ADD CONSTRAINT "albums_type_check" CHECK (((type)::text = ANY ((ARRAY['f'::character varying, 't'::character varying])::text[])));

-- ----------------------------
-- Primary Key structure for table albums
-- ----------------------------
ALTER TABLE "albums" ADD CONSTRAINT "albums_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table artists
-- ----------------------------
ALTER TABLE "artists" ADD CONSTRAINT "artists_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table countries
-- ----------------------------
ALTER TABLE "countries" ADD CONSTRAINT "countries_code_unique" UNIQUE ("code");

-- ----------------------------
-- Primary Key structure for table countries
-- ----------------------------
ALTER TABLE "countries" ADD CONSTRAINT "countries_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table featured_songs
-- ----------------------------
ALTER TABLE "featured_songs" ADD CONSTRAINT "featured_songs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table featured_songs_cooldown
-- ----------------------------
ALTER TABLE "featured_songs_cooldown" ADD CONSTRAINT "featured_songs_cooldown_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table genres
-- ----------------------------
ALTER TABLE "genres" ADD CONSTRAINT "genres_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table migrations
-- ----------------------------
ALTER TABLE "migrations" ADD CONSTRAINT "migrations_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table password_resets
-- ----------------------------
CREATE INDEX "password_resets_email_index" ON "password_resets" USING btree (
  "email" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table skus
-- ----------------------------
ALTER TABLE "skus" ADD CONSTRAINT "skus_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table songs
-- ----------------------------
ALTER TABLE "songs" ADD CONSTRAINT "songs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Uniques structure for table users
-- ----------------------------
ALTER TABLE "users" ADD CONSTRAINT "users_email_unique" UNIQUE ("email");

-- ----------------------------
-- Primary Key structure for table users
-- ----------------------------
ALTER TABLE "users" ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table albums
-- ----------------------------
ALTER TABLE "albums" ADD CONSTRAINT "albums_artist_id_foreign" FOREIGN KEY ("artist_id") REFERENCES "artists" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "albums" ADD CONSTRAINT "albums_deleter_id_foreign" FOREIGN KEY ("deleter_id") REFERENCES "users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "albums" ADD CONSTRAINT "albums_genre_id_foreign" FOREIGN KEY ("genre_id") REFERENCES "genres" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table artists
-- ----------------------------
ALTER TABLE "artists" ADD CONSTRAINT "artists_country_code_foreign" FOREIGN KEY ("country_code") REFERENCES "countries" ("code") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "artists" ADD CONSTRAINT "artists_deleter_id_foreign" FOREIGN KEY ("deleter_id") REFERENCES "users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "artists" ADD CONSTRAINT "artists_donation_sku_id_foreign" FOREIGN KEY ("donation_sku_id") REFERENCES "skus" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "artists" ADD CONSTRAINT "artists_owner_id_foreign" FOREIGN KEY ("owner_id") REFERENCES "users" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table featured_songs
-- ----------------------------
ALTER TABLE "featured_songs" ADD CONSTRAINT "featured_songs_song_id_foreign" FOREIGN KEY ("song_id") REFERENCES "songs" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table featured_songs_cooldown
-- ----------------------------
ALTER TABLE "featured_songs_cooldown" ADD CONSTRAINT "featured_songs_cooldown_artist_id_foreign" FOREIGN KEY ("artist_id") REFERENCES "artists" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table songs
-- ----------------------------
ALTER TABLE "songs" ADD CONSTRAINT "songs_album_id_foreign" FOREIGN KEY ("album_id") REFERENCES "albums" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "songs" ADD CONSTRAINT "songs_sku_id_foreign" FOREIGN KEY ("sku_id") REFERENCES "skus" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
