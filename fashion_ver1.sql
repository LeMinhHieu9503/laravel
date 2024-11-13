/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100428
 Source Host           : localhost:3306
 Source Schema         : fashion

 Target Server Type    : MySQL
 Target Server Version : 100428
 File Encoding         : 65001

 Date: 13/10/2024 12:51:46
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for brands
-- ----------------------------
DROP TABLE IF EXISTS `brands`;
CREATE TABLE `brands`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of brands
-- ----------------------------
INSERT INTO `brands` VALUES (1, 'Gucci', 2, NULL, NULL, NULL);
INSERT INTO `brands` VALUES (2, 'Nike', 2, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for categories
-- ----------------------------
DROP TABLE IF EXISTS `categories`;
CREATE TABLE `categories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_categories` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 4 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of categories
-- ----------------------------
INSERT INTO `categories` VALUES (1, 'Quần áo', 'https://risingtheme.com/html/demo-suruchi-v1/suruchi/assets/img/product/small-product1.png', 2, NULL, NULL, NULL);
INSERT INTO `categories` VALUES (2, 'Phụ kiện', 'https://risingtheme.com/html/demo-suruchi-v1/suruchi/assets/img/product/small-product5.png', 2, NULL, NULL, NULL);
INSERT INTO `categories` VALUES (3, 'APPLE', 'uploads/categories/1812774332695275.jpg', 2, '2024-10-13 05:12:02', '2024-10-13 05:12:02', NULL);

-- ----------------------------
-- Table structure for comments
-- ----------------------------
DROP TABLE IF EXISTS `comments`;
CREATE TABLE `comments`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `content` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `product_id` int NOT NULL,
  `user_id` int NOT NULL,
  `status` bigint NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of comments
-- ----------------------------
INSERT INTO `comments` VALUES (1, 'Sản phẩm đẹp quá', 1, 1, 2, '2024-10-12 11:43:14', NULL);
INSERT INTO `comments` VALUES (2, 'Sản phẩm quá chất lượng', 1, 1, 2, '2024-10-12 11:43:14', NULL);
INSERT INTO `comments` VALUES (3, 'hehehee', 1, 1, 2, '2024-10-13 05:01:28', NULL);

-- ----------------------------
-- Table structure for favourites
-- ----------------------------
DROP TABLE IF EXISTS `favourites`;
CREATE TABLE `favourites`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `status` bigint NOT NULL DEFAULT 1,
  `user_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of favourites
-- ----------------------------

-- ----------------------------
-- Table structure for histories
-- ----------------------------
DROP TABLE IF EXISTS `histories`;
CREATE TABLE `histories`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `id-order` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of histories
-- ----------------------------

-- ----------------------------
-- Table structure for history_carts
-- ----------------------------
DROP TABLE IF EXISTS `history_carts`;
CREATE TABLE `history_carts`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name_product` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `numberof` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of history_carts
-- ----------------------------

-- ----------------------------
-- Table structure for infonewletsters
-- ----------------------------
DROP TABLE IF EXISTS `infonewletsters`;
CREATE TABLE `infonewletsters`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of infonewletsters
-- ----------------------------
INSERT INTO `infonewletsters` VALUES (1, 'vanhaa@gmail.com', '2024-10-13 05:15:12', '2024-10-13 05:15:12');

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 18 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2014_10_12_000000_create_users_table', 1);
INSERT INTO `migrations` VALUES (2, '2019_12_14_000001_create_personal_access_tokens_table', 1);
INSERT INTO `migrations` VALUES (3, '2023_06_28_070149_create_slider_models_table', 1);
INSERT INTO `migrations` VALUES (4, '2023_06_28_071553_create_newletters_table', 1);
INSERT INTO `migrations` VALUES (5, '2023_06_28_071659_create_roles_table', 1);
INSERT INTO `migrations` VALUES (6, '2023_06_29_055403_create_products_table', 1);
INSERT INTO `migrations` VALUES (7, '2023_06_29_060552_create_categories_table', 1);
INSERT INTO `migrations` VALUES (8, '2023_06_29_060617_create_brands_table', 1);
INSERT INTO `migrations` VALUES (9, '2023_06_29_060648_create_favourites_table', 1);
INSERT INTO `migrations` VALUES (10, '2023_06_29_060725_create_comments_table', 1);
INSERT INTO `migrations` VALUES (11, '2023_06_29_060742_create_orders_table', 1);
INSERT INTO `migrations` VALUES (12, '2023_06_29_060758_create_orders_details_table', 1);
INSERT INTO `migrations` VALUES (13, '2023_06_29_060817_create_vouchers_table', 1);
INSERT INTO `migrations` VALUES (14, '2023_06_29_060846_create_histories_table', 1);
INSERT INTO `migrations` VALUES (15, '2023_07_19_154629_product_avatar', 1);
INSERT INTO `migrations` VALUES (16, '2023_07_27_130022_create_infonewletsters_table', 1);
INSERT INTO `migrations` VALUES (17, '2023_07_30_161254_create_history_carts_table', 1);

-- ----------------------------
-- Table structure for newletters
-- ----------------------------
DROP TABLE IF EXISTS `newletters`;
CREATE TABLE `newletters`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `image_url_newletter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `des_newleter` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of newletters
-- ----------------------------
INSERT INTO `newletters` VALUES (1, 'https://template.canva.com/EADaoySm4lk/1/0/1131w-fX1ULDWXQbU.jpg', 'Mua ngay hôm nay sẽ được giảm giá đến 50%', 2, NULL, '2024-10-13 05:14:36');

-- ----------------------------
-- Table structure for orders
-- ----------------------------
DROP TABLE IF EXISTS `orders`;
CREATE TABLE `orders`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `total` int NOT NULL,
  `user_id` int NOT NULL,
  `voucher_id` int NOT NULL,
  `status` bigint NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders
-- ----------------------------

-- ----------------------------
-- Table structure for orders_details
-- ----------------------------
DROP TABLE IF EXISTS `orders_details`;
CREATE TABLE `orders_details`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `quantity` int NOT NULL,
  `price` int NOT NULL,
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of orders_details
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int NOT NULL,
  `discount_price` int NOT NULL,
  `view` int NOT NULL,
  `like` int NOT NULL,
  `status` bigint NOT NULL DEFAULT 1,
  `category_id` int NOT NULL,
  `brand_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `image_avatar` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'iPhone 14 Pro Max 128GB', 'uploads/products/product_Avatar/1812773509594703.jpg', 26990000, 0, 0, 0, 2, 2, 1, '2024-10-13 04:58:58', NULL, NULL, '[\"uploads\\/products\\/product_desc\\/1812773509971659.jpg\",\"uploads\\/products\\/product_desc\\/1812773510099232.jpg\",\"uploads\\/products\\/product_desc\\/1812773510186168.jpg\"]');
INSERT INTO `products` VALUES (2, 'iPhone 15 Pro Max 128GB', 'uploads/products/product_Avatar/1812774382073376.jpg', 26990000, 0, 0, 0, 2, 3, 1, '2024-10-13 05:12:50', NULL, NULL, '[\"uploads\\/products\\/product_desc\\/1812774382135326.jpg\",\"uploads\\/products\\/product_desc\\/1812774382227497.jpg\",\"uploads\\/products\\/product_desc\\/1812774382329687.jpg\"]');

-- ----------------------------
-- Table structure for roles
-- ----------------------------
DROP TABLE IF EXISTS `roles`;
CREATE TABLE `roles`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of roles
-- ----------------------------
INSERT INTO `roles` VALUES (1, 'Staff', NULL, NULL);
INSERT INTO `roles` VALUES (2, 'Admin', NULL, NULL);

-- ----------------------------
-- Table structure for slider_models
-- ----------------------------
DROP TABLE IF EXISTS `slider_models`;
CREATE TABLE `slider_models`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title_slider` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `title_sale` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` bigint NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of slider_models
-- ----------------------------
INSERT INTO `slider_models` VALUES (1, 'NEW COLECTION', 'SALE 50%', 'uploads/slides/1812774079356661.jpg', 2, '2024-10-13 05:08:01', '2024-10-13 05:08:01');
INSERT INTO `slider_models` VALUES (2, 'NEW COLECTION', 'SALE 20%', 'uploads/slides/1812774266373779.jpg', 2, '2024-10-13 05:10:59', NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `birthday` date NULL DEFAULT NULL,
  `phoneNumber` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `sex` int NULL DEFAULT NULL,
  `status` bigint NOT NULL DEFAULT 1,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `role_id` int NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 2 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'admin', 'haudang@gmail.com', '$2y$10$.DEGBEltVqMefpkibk3q8e6R6q4Hmeq0Pn3Z0FuttgzP61azHaRcW', NULL, NULL, NULL, NULL, 1, NULL, 2, NULL, NULL, NULL);

-- ----------------------------
-- Table structure for vouchers
-- ----------------------------
DROP TABLE IF EXISTS `vouchers`;
CREATE TABLE `vouchers`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int NOT NULL,
  `limmitd_use` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration_date` date NOT NULL,
  `status` bigint NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 3 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of vouchers
-- ----------------------------
INSERT INTO `vouchers` VALUES (1, 'Giảm Giá 50%', 10, '0', '2024-10-14', 2, NULL, NULL);
INSERT INTO `vouchers` VALUES (2, 'Giảm giá 20%', 10, '0', '2024-10-14', 2, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
