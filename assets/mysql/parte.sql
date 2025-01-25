/*
 Navicat Premium Data Transfer

 Source Server         : local
 Source Server Type    : MySQL
 Source Server Version : 100432 (10.4.32-MariaDB)
 Source Host           : localhost:3306
 Source Schema         : parte

 Target Server Type    : MySQL
 Target Server Version : 100432 (10.4.32-MariaDB)
 File Encoding         : 65001

 Date: 16/03/2024 01:18:18
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for tbl_acum_acad
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_acad`;
CREATE TABLE `tbl_acum_acad`  (
  `codigo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `factura` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pais` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipopago` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `importe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipoestu` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cantestu` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `observacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `validated_invoice` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `plan_ing_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_acad
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_acci
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_acci`;
CREATE TABLE `tbl_acum_acci`  (
  `codigo` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `reuniones` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `acciones` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `perspectivas` varchar(800) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_acci
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_aero
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_aero`;
CREATE TABLE `tbl_acum_aero`  (
  `codigo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `factura` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `conciliacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha_factura` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `matricula` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipopago` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `aerolinea` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pais` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cant_pasajeros` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cant_tripulantes` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cantclientes` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `imp_pasajeros` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `imp_tripulantes` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `importe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipoestudio` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `especialista` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `observacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `validated_invoice` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `plan_ing_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_aero
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_asis
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_asis`;
CREATE TABLE `tbl_acum_asis`  (
  `codigo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `factura` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expediente` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pais` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipopago` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `patologia` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `especialista` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `importe` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cantclientes` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `observacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `validated_invoice` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `plan_ing_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_asis
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_cali
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_cali`;
CREATE TABLE `tbl_acum_cali`  (
  `codigo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `factura` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expediente` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pais` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipopago` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `patologia` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `especialista` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `importe` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cantclientes` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `observacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `validated_invoice` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `plan_ing_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_cali
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_cama
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_cama`;
CREATE TABLE `tbl_acum_cama`  (
  `codigo` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `disponib` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ocupadas` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  INDEX `codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_cama
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_covid
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_covid`;
CREATE TABLE `tbl_acum_covid`  (
  `codigo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `factura` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expediente` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pais` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipopago` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `estudio` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `especialista` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `importe` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cantclientes` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `observacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `validated_invoice` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `plan_ing_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_covid
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_empr
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_empr`;
CREATE TABLE `tbl_acum_empr`  (
  `codigo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `factura` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `importe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipopago` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `empresa` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cantclientes` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipoestudio` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `observacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `validated_invoice` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `plan_ing_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_empr
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_esto
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_esto`;
CREATE TABLE `tbl_acum_esto`  (
  `codigo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `factura` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `expediente` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pais` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipopago` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `patologia` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `especialista` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `importe` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cantclientes` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `observacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `validated_invoice` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `plan_ing_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_esto
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_even
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_even`;
CREATE TABLE `tbl_acum_even`  (
  `codigo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `factura` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `importe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipopago` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pais` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cantclientes` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `observacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `validated_invoice` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `plan_ing_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_even
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_farm
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_farm`;
CREATE TABLE `tbl_acum_farm`  (
  `codigo` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ingresos` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cantclientes` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  `plan_ing_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_farm
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_inci
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_inci`;
CREATE TABLE `tbl_acum_inci`  (
  `codigo` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `farmacia` varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `optica` varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `taller` varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `serv_med` varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `aten_pac` varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `serv_acad` varchar(2500) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_inci
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_ing
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_ing`;
CREATE TABLE `tbl_acum_ing`  (
  `id` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `codigo_sala_ami` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cantclientes` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `patologia` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `descripcion` varchar(8000) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pais` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '',
  INDEX `idx_id`(`id` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_ing
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_mant
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_mant`;
CREATE TABLE `tbl_acum_mant`  (
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `cell_inicio` varchar(600) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `inter_cant` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `inter_ing` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cheq_cant` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cheq_ing` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `casas_total` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `casas_visit` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alq_cant` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `alq_ing` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mnt_cm` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mnt_casos` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `mnt_ing` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `masa_cant` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `masa_casos` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `masa_ing` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `masa_aft_prog` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `masa_aft_ing` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ent_cant` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ent_contrat` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cons_incr` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cons_ing` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_mant
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_otra
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_otra`;
CREATE TABLE `tbl_acum_otra`  (
  `codigo` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `clientes` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `facturacion` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_otra
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_puer
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_puer`;
CREATE TABLE `tbl_acum_puer`  (
  `codigo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `factura` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `conciliacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha_factura` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `embarcacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `imo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bandera` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `registro` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cantclientes` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `importe` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipopago` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pais` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `tipoestudio` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `especialista` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `observacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `validated_invoice` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0',
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_ing_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_ing_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_cli_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_puer
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_real
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_real`;
CREATE TABLE `tbl_acum_real`  (
  `codigo` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ingresos_up` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cantestud_up` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pregrad_ing` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pregrad_con` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `posgrad_ing` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `posgrad_con` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `ingresos_down` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `cantestud_down` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '',
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_real
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_acum_tarj
-- ----------------------------
DROP TABLE IF EXISTS `tbl_acum_tarj`;
CREATE TABLE `tbl_acum_tarj`  (
  `codigo` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `ingresos` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `cantclientes` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `dia_acum` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_acum_tarj
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_config_ing
-- ----------------------------
DROP TABLE IF EXISTS `tbl_config_ing`;
CREATE TABLE `tbl_config_ing`  (
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `requerido` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_config_ing
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_facturas_canceladas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_facturas_canceladas`;
CREATE TABLE `tbl_facturas_canceladas`  (
  `factura` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `factura_ini` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `factura_fin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `motivo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `origen` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `especialista` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `idx_factura`(`factura` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_facturas_canceladas
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_facturas_entregadas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_facturas_entregadas`;
CREATE TABLE `tbl_facturas_entregadas`  (
  `factura_ini` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `factura_fin` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `destino` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `especialista` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha_entrega` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `estado` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha_archivado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `idx_factura_ini`(`factura_ini` ASC) USING BTREE,
  INDEX `idx_factura_fin`(`factura_fin` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_facturas_entregadas
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_facturas_importadas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_facturas_importadas`;
CREATE TABLE `tbl_facturas_importadas`  (
  `factura` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `importe_mn` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `importe_usd` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `validated_invoice` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  INDEX `idx_factura`(`factura` ASC) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_facturas_importadas
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_global_aerolineas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_aerolineas`;
CREATE TABLE `tbl_global_aerolineas`  (
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `pagador` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `pais` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_aerolineas
-- ----------------------------
INSERT INTO `tbl_global_aerolineas` VALUES ('AEROGAVIOTA', 'ECASA', 'CUBA');
INSERT INTO `tbl_global_aerolineas` VALUES ('AIR CANADA', 'ECASA', 'CANADA');
INSERT INTO `tbl_global_aerolineas` VALUES ('AIR CENTURY', 'ECASA', 'REPUBLICA DOMINICANA');
INSERT INTO `tbl_global_aerolineas` VALUES ('AMERICAN AIRLINES', 'ECASA', 'ESTADOS UNIDOS DE AMERICA');
INSERT INTO `tbl_global_aerolineas` VALUES ('ARUBA AIRLINES', 'ECASA', 'GUYANA');
INSERT INTO `tbl_global_aerolineas` VALUES ('AVIATSA', 'ECASA', 'HONDURAS');
INSERT INTO `tbl_global_aerolineas` VALUES ('FLY ALLWAYS', 'ECASA', 'SURINAME');
INSERT INTO `tbl_global_aerolineas` VALUES ('GLOBAL HAVANATUR', 'HAVANATUR-CELIMAR', 'ESTADOS UNIDOS DE AMERICA');
INSERT INTO `tbl_global_aerolineas` VALUES ('SUNRISE AIRLINES', 'ECASA', 'HAITI');
INSERT INTO `tbl_global_aerolineas` VALUES ('SWIFT AIR', 'HAVANATUR-CELIMAR', 'ESTADOS UNIDOS DE AMERICA');
INSERT INTO `tbl_global_aerolineas` VALUES ('VIVA AEROBUS', 'ECASA', 'MEXICO');
INSERT INTO `tbl_global_aerolineas` VALUES ('WORLD ATLANTIC', 'HAVANATUR-CELIMAR', 'ESTADOS UNIDOS DE AMERICA');
INSERT INTO `tbl_global_aerolineas` VALUES ('SKYHIGH DOMINICANA', 'ECASA', 'REPUBLICA DOMINICANA');
INSERT INTO `tbl_global_aerolineas` VALUES ('EASTERNAIR ', 'HAVANATUR-CELIMAR', 'ESTADOS UNIDOS DE AMERICA');

-- ----------------------------
-- Table structure for tbl_global_cierre
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_cierre`;
CREATE TABLE `tbl_global_cierre`  (
  `fecha_cierre` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `autor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_completa` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_cierre
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_global_cierre_acumulado
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_cierre_acumulado`;
CREATE TABLE `tbl_global_cierre_acumulado`  (
  `fecha_cierre` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `autor` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `fecha_completa` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_cierre_acumulado
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_global_embarcaciones
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_embarcaciones`;
CREATE TABLE `tbl_global_embarcaciones`  (
  `embarcacion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `imo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `bandera` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `registro` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_embarcaciones
-- ----------------------------
INSERT INTO `tbl_global_embarcaciones` VALUES ('SCOT STUTTGART', '9274549', 'MALTA', 'VALLETTA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MV MANDULEY', '9571600', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MN SANTA MARIA', '9571612', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('BT OCEAN LEGACY', '9339650', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MN GUAMA', '9571040', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('LPG PABLO', '9008500', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('BT PRIMULA', '9038593', 'NORUEGA', 'OSLO');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MT MARIA CRISTINA', '9502453', 'CUBA', 'INTERNACIONAL MARITIMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MN CARMITA', '9375862', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('BT AGUILA', '9291765', 'LIBERIA', 'MONROVIA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MV SU', '9116084', 'BARBADOS', 'BRIDGETOWN');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MT THEODOROS IV', '9103831', 'GRECIA', 'PIRALE');
INSERT INTO `tbl_global_embarcaciones` VALUES ('TAURO GAS', '9031985', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MN ASELA', '9194854', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MN MELVA', '9199153', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MN ACOSTA', '9571648 ', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MT NICOS IV', '9103483', 'GRECIA', 'GRECIA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MT CARP', '9263136', 'VIET NAM', 'VIET NAM');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MT YARA', '9276248', 'VIET NAM', 'VIET NAM');
INSERT INTO `tbl_global_embarcaciones` VALUES ('YONGHENG OCEAN', '9234472', 'LIBERIA', 'MONROVIA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MN GRACIELA', '9571583', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MT NS STREAM', '9318541', 'LIBERIA', 'FEDERACION DE RUSIA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MT OCEAN INTEGRITY', '9463358', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MV REA', '9497165', 'ISLAS MARSHALL', 'MARSHALL IS MH');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MN PAXI', '9449792', 'PORTUGAL', 'PORTUGAL');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MV AMITY', '9497517', 'LIBERIA', 'MONRROVIA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MV SEASTAR ENDEAVOUR', '9544748', 'MALTA', 'MALTA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('SCOT BAYERN', '9255828', 'MALTA', 'MALTA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MT SCOT HAMBURG', '9255799', 'MALTA', 'MALTA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MV BULKER BEE 30', '9489986', 'PAISES BAJOS', 'HOLANDA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MV LADY MOON', '9128154', 'LIBERIA', 'LIBERIA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MV GRAJALES', '9571595', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MT LPG FORTUNATO', '9347736', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MN ATAYAL BRAVE', '9607590', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MT LPG HELLIUM GAS', '9173070', 'PANAMA', 'PANAMA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MT CHEMICAL CONTEDENER', '9847140', 'LIBERIA', 'LIBERIA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MN  GUAMA', '9571040', 'PANAMA', 'VENEZUELA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MT OCEAN MARINER ', '9328340', 'LIBERIA', 'LIBERIA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MV MARGUERITE', '9717515', 'LIBERIA', 'LIBERIA');
INSERT INTO `tbl_global_embarcaciones` VALUES ('MV WESERBORG', '9505558', 'PAISES BAJOS', 'PAISES BAJOS');

-- ----------------------------
-- Table structure for tbl_global_empresas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_empresas`;
CREATE TABLE `tbl_global_empresas`  (
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_empresas
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_global_errores_facturas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_errores_facturas`;
CREATE TABLE `tbl_global_errores_facturas`  (
  `error` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_errores_facturas
-- ----------------------------
INSERT INTO `tbl_global_errores_facturas` VALUES ('NO APROBACION ASISTUR');
INSERT INTO `tbl_global_errores_facturas` VALUES ('DESCRIPCION INEXACTA');
INSERT INTO `tbl_global_errores_facturas` VALUES ('DATOS INCOMPLETOS');
INSERT INTO `tbl_global_errores_facturas` VALUES ('ERROR DE CALCULO');
INSERT INTO `tbl_global_errores_facturas` VALUES ('ERROR DE FOLIO');
INSERT INTO `tbl_global_errores_facturas` VALUES ('TACHADURAS O BORRONES');

-- ----------------------------
-- Table structure for tbl_global_especialistas
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_especialistas`;
CREATE TABLE `tbl_global_especialistas`  (
  `ci` varchar(11) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `titulo` varchar(4) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `unidad1` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `unidad2` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `unidad3` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `unidad4` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `estado` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `plan_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `anno` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_especialistas
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_global_estudios_aeropuerto
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_estudios_aeropuerto`;
CREATE TABLE `tbl_global_estudios_aeropuerto`  (
  `nombre` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_estudios_aeropuerto
-- ----------------------------
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.00 - SERVICIOS MEDICOS MARITIMOS Y AEROPORTUARIOS');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01 - CONTROL SANITARIO INTERNACIONAL');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.01 - LIBRE PLATICA BUQUES EXTRANJEROS');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.02 - LIBRE PLATICA BUQUES NACIONALES');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.03 - INSPECCION SANITARIA (INCLUYE CERTIFICADOS DE EXENCION DE SANIDAD A BORDO)');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.04 - DESPACHO DE SALIDA');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.05 - CERTIFICADO INTERNACIONAL DE MEDICAMENTOS');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.06 - CLERTIFICADO INTERNACIONAL DE VACUNACION');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.07 - VISITAS F\'LIEDICAS A BORDO');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.08 - CERTIFICACION DE CALIDAD DEL AGUA');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.09 - FUMIGACION Y DESRATIZACION');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.10 - CERTIFICACION DE ESTADO SANITARIO DE AERONAVES (ISE) DE CARGA');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.11 - DESINFESTACION DE AERONAVES (AEROPUERTO)');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.12 - CERTIFICACION DE ESTADO SANITARIO DE AERONAVES (ISE) DE CORTO ALCANCE');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.13 - CERTIFICACION DE ESTADO SANITARIO DE AERONAVES (ISE) DE MEDIANO ALCANCE');
INSERT INTO `tbl_global_estudios_aeropuerto` VALUES ('33.01.14 - CERTIFICACION DE ESTADO SANITARIO DE AERONAVES (ISE) DE LARGO ALCANCE');

-- ----------------------------
-- Table structure for tbl_global_estudios_empresa
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_estudios_empresa`;
CREATE TABLE `tbl_global_estudios_empresa`  (
  `nombre` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_estudios_empresa
-- ----------------------------
INSERT INTO `tbl_global_estudios_empresa` VALUES ('32.04.01 - TRATAMIENTO INTEGRAL. ACCIONES PREVENTIVAS Y DE TRATAMIENTO');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('32.05.01 - VISITA PARA LA CAPTURA DE PERROS FERALES CON RECOGIDA DE UN PERRO');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('32.05.02 - RECOGIDA DE GATOS');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('32.05.03 - ALQUILER DE JAULAS');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('32.06.01 - EVALUACION DE LA EXPOSICION A RUIDOS Y A LAS VIBRACIONES');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('32.06.02 - EVALUACION DEL MICROCLIMA Y LA VENTILACION');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('32.06.03 - EVALUACION DEL AMBIENTE LUMINOSO');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('32.06.04 - EVALUACION DE LA EXPOSICION A POLVO');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('32.06.05 - EVALUACION DE LOS RIESGOS PSICOSOCIALES');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('32.06.06 - EVALUACION A SUSTANCIAS NEUROTOXICAS');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('32.06.07 - ESTUDIO DE ERGONOMIA');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('33.02.01 - INSPECCION SANITARIA A SOLICITUD DE LAS ENTIDADES');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('33.02.02 - CERTIFICACION SANITARIA PARA LA LIBERACION Y EXTRACCION DE CARGAS A EMPRESAS CONTRATADAS');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('33.02.03 - LIBERACION EVENTUAL');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('33.02.04 - INSPECCION SANITARIA PARA EL AGRUPE Y DESAGRUPE DE CONTENEDORES - DIAS LABORALES');
INSERT INTO `tbl_global_estudios_empresa` VALUES ('33.02.05 - INSPECCION SANITARIA PARA EL AGRUPE Y DESAGRUPE DE CONTENEDORES - FINES DE SEMANA');

-- ----------------------------
-- Table structure for tbl_global_fecha_proceso
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_fecha_proceso`;
CREATE TABLE `tbl_global_fecha_proceso`  (
  `fecha_proceso` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_fecha_proceso
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_global_grupos
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_grupos`;
CREATE TABLE `tbl_global_grupos`  (
  `codigo_grupo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `grupo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tipo` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `linea` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `agrupamiento` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `orden_global` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `orden_en_grupo` varchar(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `file_add` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `file_edit` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tabla_diario` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `realiza_facturacion` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT '0'
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_grupos
-- ----------------------------
INSERT INTO `tbl_global_grupos` VALUES ('TU001', 'FARMACIA Y OPTICA', 'FARMACIA', 'SERVICIOS FARMACEUTICOS', 'GRUPO-FARMACIA', '01', '01', 'add_farm.php', 'edit_farm.php', 'tbl_acum_farm', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU002', 'FARMACIA Y OPTICA', 'OPTICA', 'SERVICIOS OPTICAS', 'GRUPO-FARMACIA', '01', '02', 'add_farm.php', 'edit_farm.php', 'tbl_acum_farm', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU003', 'UNIDAD ASISTENCIAL', 'HOSPITAL', 'ATENCION MEDICA INTERNACIONAL (HOSPITALES)', 'GRUPO-ASISTENCIAL', '02', '01', 'add_asis.php', 'edit_asis.php', 'tbl_acum_asis', '1');
INSERT INTO `tbl_global_grupos` VALUES ('TU004', 'UNIDAD ASISTENCIAL', 'CLINICA', 'ATENCION MEDICA AL TURISTA (CLI, CONS Y EST)', 'GRUPO-ASISTENCIAL', '02', '02', 'add_asis.php', 'edit_asis.php', 'tbl_acum_asis', '1');
INSERT INTO `tbl_global_grupos` VALUES ('TU005', 'UNIDAD ASISTENCIAL', 'CONSULTORIO', 'ATENCION MEDICA AL TURISTA (CLI, CONS Y EST)', 'GRUPO-ASISTENCIAL', '02', '03', 'add_asis.php', 'edit_asis.php', 'tbl_acum_asis', '1');
INSERT INTO `tbl_global_grupos` VALUES ('TU006', 'UNIDAD ASISTENCIAL', 'ESTOMATOLOGIA', 'ATENCION MEDICA AL TURISTA (CLI, CONS Y EST)', 'GRUPO-ASISTENCIAL', '02', '04', 'add_esto.php', 'edit_esto.php', 'tbl_acum_esto', '1');
INSERT INTO `tbl_global_grupos` VALUES ('TU007', 'UNIDAD ASISTENCIAL', 'VILLA ANTIDROGA', 'TRATAMIENTO ANTIADICCION (VILLAS)', 'GRUPO-ASISTENCIAL', '02', '05', 'add_asis.php', 'edit_asis.php', 'tbl_acum_asis', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU009', 'SERVICIOS EN FRONTERA', 'EMPRESA', 'SERVICIOS EN FRONTERAS', 'GRUPO-OTROS', '03', '01', 'add_empr.php', 'edit_empr.php', 'tbl_acum_empr', '1');
INSERT INTO `tbl_global_grupos` VALUES ('TU008', 'UNIDAD ASISTENCIAL', 'CALIDAD DE VIDA', 'CALIDAD DE VIDA', 'GRUPO-ASISTENCIAL', '02', '06', 'add_cali.php', 'edit_cali.php', 'tbl_acum_cali', '1');
INSERT INTO `tbl_global_grupos` VALUES ('TU013', 'EVENTOS', 'VISITAS DE INCENTIVO', 'EVENTOS CIENTIFICOS', 'GRUPO-OTROS', '03', '05', 'add_even.php', 'edit_even.php', 'tbl_acum_even', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU024', 'TARJETAS', 'TARJETAS Y BONO NAUTA', 'SERVICIOS EN FRONTERAS', 'GRUPO-OTROS', '03', '04', 'add_tarj.php', 'edit_tarj.php', 'tbl_acum_tarj', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU014', 'SERVICIOS ACADEMICOS', 'SERVICIOS ACADEMICOS', 'SERVICIOS ACADEMICOS', 'GRUPO-OTROS', '03', '06', 'add_acad.php', 'edit_acad.php', 'tbl_acum_acad', '1');
INSERT INTO `tbl_global_grupos` VALUES ('TU015', 'SERVICIOS ACADEMICOS REALES', 'SERVICIOS ACADEMICOS REALES', 'SERVICIOS ACADEMICOS', 'GRUPO-OTROS', '03', '07', 'add_real.php', 'edit_real.php', 'tbl_acum_real', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU016', 'FACTURACION OTRAS VENTAS', 'OTRAS VENTAS OTROS', 'OTROS', 'GRUPO-OTROS', '03', '08', 'add_otra.php', 'edit_otra.php', 'tbl_acum_otra', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU017', 'FACTORES INCIDEN EN VENTAS', 'FACTORES INCIDEN EN VENTAS', 'OTROS', 'GRUPO-OTROS', '03', '09', 'add_inci.php', 'edit_inci.php', 'tbl_acum_inci', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU018', 'DISPONIBILIDAD DE CAMAS', 'DISPONIBILIDAD DE CAMAS', 'OTROS', 'GRUPO-OTROS', '03', '10', 'add_cama.php', 'edit_cama.php', 'tbl_acum_cama', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU019', 'ACCIONES COMERCIALES', 'ACCIONES COMERCIALES', 'OTROS', 'GRUPO-OTROS', '03', '11', 'add_acci.php', 'edit_acci.php', 'tbl_acum_acci', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU020', 'INVERCIONES Y MANTENIMIENTO', 'INVERSIONES Y MANTENIMIENTO', 'OTROS', 'GRUPO-OTROS', '03', '12', 'add_mant.php', 'edit_mant.php', 'tbl_acum_mant', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU010', 'SERVICIOS EN FRONTERA', 'PUERTOS Y MARINAS', 'SERVICIOS EN FRONTERAS', 'GRUPO-OTROS', '03', '02', 'add_puer.php', 'edit_puer.php', 'tbl_acum_puer', '1');
INSERT INTO `tbl_global_grupos` VALUES ('TU011', 'SERVICIOS EN FRONTERA', 'AEROPUERTOS', 'SERVICIOS EN FRONTERAS', 'GRUPO-OTROS', '03', '03', 'add_aero.php', 'edit_aero.php', 'tbl_acum_aero', '1');
INSERT INTO `tbl_global_grupos` VALUES ('TU021', 'UNIDAD ASISTENCIAL', 'ESTUDIO COVID-19 PCR', 'SERVICIOS EN FRONTERAS', 'GRUPO-ASISTENCIAL', '02', '07', 'add_covid.php', 'edit_covid.php', 'tbl_acum_covid', '1');
INSERT INTO `tbl_global_grupos` VALUES ('TU022', 'UNIDAD ASISTENCIAL', 'ESTUDIO COVID-19 TEST', 'SERVICIOS EN FRONTERAS', 'GRUPO-ASISTENCIAL', '02', '08', 'add_covid.php', 'edit_covid.php', 'tbl_acum_covid', '1');
INSERT INTO `tbl_global_grupos` VALUES ('TU023', 'INGRESOS SALAS AMI', 'INGRESOS SALAS AMI', 'ATENCION MEDICA AL TURISTA (CLI, CONS Y EST)	', 'GRUPO-ASISTENCIAL', '00', '00', 'add_ing.php', 'edit_ing.php', 'tbl_acum_ing', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU028', 'FACTURACION OTRAS VENTAS', 'OTRAS 2DA OPINION', 'OTROS', 'GRUPO-OTROS', '03', '08', 'add_otra.php', 'edit_otra.php', 'tbl_acum_otra', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU012', 'TARJETAS', 'TARJETAS', 'SERVICIOS EN FRONTERAS', 'GRUPO-OTROS', '03', '04', 'add_tarj.php', 'edit_tarj.php', 'tbl_acum_tarj', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU025', 'EVENTOS', 'VISITAS ESPECIALIZADAS', 'EVENTOS CIENTIFICOS', 'GRUPO-OTROS', '03', '05', 'add_even.php', 'edit_even.php', 'tbl_acum_even', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU026', 'EVENTOS', 'EVENTOS CIENTIFICOS', 'EVENTOS CIENTIFICOS', 'GRUPO-OTROS', '03', '05', 'add_even.php', 'edit_even.php', 'tbl_acum_even', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU027', 'FACTURACION OTRAS VENTAS', 'OTRAS CHEQUEO MEDICO', 'OTROS', 'GRUPO-OTROS', '03', '08', 'add_otra.php', 'edit_otra.php', 'tbl_acum_otra', '0');
INSERT INTO `tbl_global_grupos` VALUES ('TU029', 'FACTURACION OTRAS VENTAS', 'OTRAS FARMACIA ONLINE', 'OTROS', 'GRUPO-OTROS', '03', '08', 'add_otra.php', 'edit_otra.php', 'tbl_acum_otra', '0');

-- ----------------------------
-- Table structure for tbl_global_id_factura_validada
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_id_factura_validada`;
CREATE TABLE `tbl_global_id_factura_validada`  (
  `id_validated_invoice` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `descripcion` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_id_factura_validada
-- ----------------------------
INSERT INTO `tbl_global_id_factura_validada` VALUES ('0', 'INICIO DEL PROCESO - SIN VALIDACION');
INSERT INTO `tbl_global_id_factura_validada` VALUES ('1', 'ERROR DE VALIDACION EN COMERCIAL');
INSERT INTO `tbl_global_id_factura_validada` VALUES ('2', 'FACTURA VALIDADA CORRECTAMENTE EN COMECIAL');
INSERT INTO `tbl_global_id_factura_validada` VALUES ('3', 'ERROR DE VALIDACION CON ECONOMIA');
INSERT INTO `tbl_global_id_factura_validada` VALUES ('4', 'FACTURA VALIDADA CORRECTAMENTE CON ECONOMIA');
INSERT INTO `tbl_global_id_factura_validada` VALUES ('5', 'ERROR EN IMPORTE');
INSERT INTO `tbl_global_id_factura_validada` VALUES ('6', 'ERROR EN UBICACION');
INSERT INTO `tbl_global_id_factura_validada` VALUES ('7', 'ERROR EN IMPORTE Y UBICACION');
INSERT INTO `tbl_global_id_factura_validada` VALUES ('8', 'SIN DEFINIR');
INSERT INTO `tbl_global_id_factura_validada` VALUES ('9', 'NUMERO DE VALIDACION AL AGREGAR PLANES A INICIO DE MES');

-- ----------------------------
-- Table structure for tbl_global_log_ediciones
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_log_ediciones`;
CREATE TABLE `tbl_global_log_ediciones`  (
  `tipo_edicion` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `accion` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `resultado` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `autor` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `fecha` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_log_ediciones
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_global_metodos_pago
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_metodos_pago`;
CREATE TABLE `tbl_global_metodos_pago`  (
  `tipo` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tipo_agrupado` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_metodos_pago
-- ----------------------------
INSERT INTO `tbl_global_metodos_pago` VALUES ('TRANSFERENCIA', '');
INSERT INTO `tbl_global_metodos_pago` VALUES ('PASARELA', '');
INSERT INTO `tbl_global_metodos_pago` VALUES ('SEGURO', '');
INSERT INTO `tbl_global_metodos_pago` VALUES ('TARJETA', '');
INSERT INTO `tbl_global_metodos_pago` VALUES ('CHEQUE', '');
INSERT INTO `tbl_global_metodos_pago` VALUES ('EFECTIVO', '');
INSERT INTO `tbl_global_metodos_pago` VALUES ('TRANSFERENCIA_PLAZA', '');

-- ----------------------------
-- Table structure for tbl_global_pagadores
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_pagadores`;
CREATE TABLE `tbl_global_pagadores`  (
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_pagadores
-- ----------------------------
INSERT INTO `tbl_global_pagadores` VALUES ('ECASA');
INSERT INTO `tbl_global_pagadores` VALUES ('HAVANATUR-CELIMAR');

-- ----------------------------
-- Table structure for tbl_global_paises
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_paises`;
CREATE TABLE `tbl_global_paises`  (
  `codigo` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `bandera` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_paises
-- ----------------------------
INSERT INTO `tbl_global_paises` VALUES ('AFG', 'AFGANISTAN', '🇦🇫');
INSERT INTO `tbl_global_paises` VALUES ('ALB', 'ALBANIA', '🇦🇱');
INSERT INTO `tbl_global_paises` VALUES ('DEU', 'ALEMANIA', '🇩🇪');
INSERT INTO `tbl_global_paises` VALUES ('AND', 'ANDORRA', '🇦🇩');
INSERT INTO `tbl_global_paises` VALUES ('AGO', 'ANGOLA', '🇦🇴');
INSERT INTO `tbl_global_paises` VALUES ('AIA', 'ANGUILA', '🇦🇮');
INSERT INTO `tbl_global_paises` VALUES ('ATA', 'ANTARTIDA', '🇦🇶');
INSERT INTO `tbl_global_paises` VALUES ('ATG', 'ANTIGUA Y BARBUDA', '🇦🇬');
INSERT INTO `tbl_global_paises` VALUES ('SAU', 'ARABIA SAUDITA', '🇸🇦');
INSERT INTO `tbl_global_paises` VALUES ('DZA', 'ARGELIA', '🇩🇿');
INSERT INTO `tbl_global_paises` VALUES ('ARG', 'ARGENTINA', '🇦🇷');
INSERT INTO `tbl_global_paises` VALUES ('ARM', 'ARMENIA', '🇦🇲');
INSERT INTO `tbl_global_paises` VALUES ('ABW', 'ARUBA', '🇦🇼');
INSERT INTO `tbl_global_paises` VALUES ('AUS', 'AUSTRALIA', '🇦🇺');
INSERT INTO `tbl_global_paises` VALUES ('AUT', 'AUSTRIA', '🇦🇹');
INSERT INTO `tbl_global_paises` VALUES ('AZE', 'AZERBAIYAN', '🇦🇿');
INSERT INTO `tbl_global_paises` VALUES ('BHS', 'BAHAMAS', '🇧🇸');
INSERT INTO `tbl_global_paises` VALUES ('BHR', 'BAHREIN', '🇧🇭');
INSERT INTO `tbl_global_paises` VALUES ('BGD', 'BANGLADESH', '🇧🇩');
INSERT INTO `tbl_global_paises` VALUES ('BRB', 'BARBADOS', '🇧🇧');
INSERT INTO `tbl_global_paises` VALUES ('BLR', 'BELARUS', '🇧🇾');
INSERT INTO `tbl_global_paises` VALUES ('BEL', 'BELGICA', '🇧🇪');
INSERT INTO `tbl_global_paises` VALUES ('BLZ', 'BELICE', '🇧🇿');
INSERT INTO `tbl_global_paises` VALUES ('BEN', 'BENIN', '🇧🇯');
INSERT INTO `tbl_global_paises` VALUES ('BMU', 'BERMUDA', '🇧🇲');
INSERT INTO `tbl_global_paises` VALUES ('BTN', 'BHUTAN', '🇧🇹');
INSERT INTO `tbl_global_paises` VALUES ('BOL', 'BOLIVIA (ESTADO PLURINACIONAL DE)', '🇧🇴');
INSERT INTO `tbl_global_paises` VALUES ('BES', 'BONAIRE, SAN EUSTAQUIO Y SABA', '🇧🇶');
INSERT INTO `tbl_global_paises` VALUES ('BIH', 'BOSNIA Y HERZEGOVINA', '🇧🇦');
INSERT INTO `tbl_global_paises` VALUES ('BWA', 'BOTSWANA', '🇧🇼');
INSERT INTO `tbl_global_paises` VALUES ('BRA', 'BRASIL', '🇧🇷');
INSERT INTO `tbl_global_paises` VALUES ('BRN', 'BRUNEI DARUSSALAM', '🇧🇳');
INSERT INTO `tbl_global_paises` VALUES ('BGR', 'BULGARIA', '🇧🇬');
INSERT INTO `tbl_global_paises` VALUES ('BFA', 'BURKINA FASO', '🇧🇫');
INSERT INTO `tbl_global_paises` VALUES ('BDI', 'BURUNDI', '🇧🇮');
INSERT INTO `tbl_global_paises` VALUES ('CPV', 'CABO VERDE', '🇨🇻');
INSERT INTO `tbl_global_paises` VALUES ('KHM', 'CAMBOYA', '🇰🇭');
INSERT INTO `tbl_global_paises` VALUES ('CMR', 'CAMERUN', '🇨🇲');
INSERT INTO `tbl_global_paises` VALUES ('CAN', 'CANADA', '🇨🇦');
INSERT INTO `tbl_global_paises` VALUES ('TCD', 'CHAD', '🇹🇩');
INSERT INTO `tbl_global_paises` VALUES ('CZE', 'CHEQUIA', '🇨🇿');
INSERT INTO `tbl_global_paises` VALUES ('CHL', 'CHILE', '🇨🇱');
INSERT INTO `tbl_global_paises` VALUES ('CHN', 'CHINA', '🇨🇳');
INSERT INTO `tbl_global_paises` VALUES ('HKG', 'HONG KONG', '🇭🇰');
INSERT INTO `tbl_global_paises` VALUES ('MAC', 'MACAO', '🇲🇴');
INSERT INTO `tbl_global_paises` VALUES ('CYP', 'CHIPRE', '🇨🇾');
INSERT INTO `tbl_global_paises` VALUES ('COL', 'COLOMBIA', '🇨🇴');
INSERT INTO `tbl_global_paises` VALUES ('COM', 'COMORAS', '🇰🇲');
INSERT INTO `tbl_global_paises` VALUES ('COG', 'CONGO', '🇨🇬');
INSERT INTO `tbl_global_paises` VALUES ('CRI', 'COSTA RICA', '🇨🇷');
INSERT INTO `tbl_global_paises` VALUES ('CIV', 'COTE DIVOIRE', '🇨🇮');
INSERT INTO `tbl_global_paises` VALUES ('HRV', 'CROACIA', '🇭🇷');
INSERT INTO `tbl_global_paises` VALUES ('CUB', 'CUBA', '🇨🇺');
INSERT INTO `tbl_global_paises` VALUES ('CUW', 'CURAZAO', '🇨🇼');
INSERT INTO `tbl_global_paises` VALUES ('DNK', 'DINAMARCA', '🇩🇰');
INSERT INTO `tbl_global_paises` VALUES ('DJI', 'DJIBOUTI', '🇩🇯');
INSERT INTO `tbl_global_paises` VALUES ('DMA', 'DOMINICA', '🇩🇲');
INSERT INTO `tbl_global_paises` VALUES ('ECU', 'ECUADOR', '🇪🇨');
INSERT INTO `tbl_global_paises` VALUES ('EGY', 'EGIPTO', '🇪🇬');
INSERT INTO `tbl_global_paises` VALUES ('SLV', 'EL SALVADOR', '🇸🇻');
INSERT INTO `tbl_global_paises` VALUES ('ARE', 'EMIRATOS ARABES UNIDOS', '🇦🇪');
INSERT INTO `tbl_global_paises` VALUES ('ERI', 'ERITREA', '🇪🇷');
INSERT INTO `tbl_global_paises` VALUES ('SVK', 'ESLOVAQUIA', '🇸🇰');
INSERT INTO `tbl_global_paises` VALUES ('SVN', 'ESLOVENIA', '🇸🇮');
INSERT INTO `tbl_global_paises` VALUES ('ESP', 'ESPANA', '🇪🇸');
INSERT INTO `tbl_global_paises` VALUES ('PSE', 'PALESTINA', '🇵🇸');
INSERT INTO `tbl_global_paises` VALUES ('USA', 'ESTADOS UNIDOS DE AMERICA', '🇺🇸');
INSERT INTO `tbl_global_paises` VALUES ('EST', 'ESTONIA', '🇪🇪');
INSERT INTO `tbl_global_paises` VALUES ('SWZ', 'ESWATINI', '🇸🇿');
INSERT INTO `tbl_global_paises` VALUES ('ETH', 'ETIOPIA', '🇪🇹');
INSERT INTO `tbl_global_paises` VALUES ('RUS', 'FEDERACION DE RUSIA', '🇷🇺');
INSERT INTO `tbl_global_paises` VALUES ('FJI', 'FIJI', '🇫🇯');
INSERT INTO `tbl_global_paises` VALUES ('PHL', 'FILIPINAS', '🇵🇭');
INSERT INTO `tbl_global_paises` VALUES ('FIN', 'FINLANDIA', '🇫🇮');
INSERT INTO `tbl_global_paises` VALUES ('FRA', 'FRANCIA', '🇫🇷');
INSERT INTO `tbl_global_paises` VALUES ('GAB', 'GABON', '🇬🇦');
INSERT INTO `tbl_global_paises` VALUES ('GMB', 'GAMBIA', '🇬🇲');
INSERT INTO `tbl_global_paises` VALUES ('GEO', 'GEORGIA', '🇬🇪');
INSERT INTO `tbl_global_paises` VALUES ('SGS', 'GEORGIA DEL SUR Y LAS ISLAS SANDWICH DEL SUR', '🇬🇸');
INSERT INTO `tbl_global_paises` VALUES ('GHA', 'GHANA', '🇬🇭');
INSERT INTO `tbl_global_paises` VALUES ('GIB', 'GIBRALTAR', '🇬🇮');
INSERT INTO `tbl_global_paises` VALUES ('GRD', 'GRANADA', '🇬🇩');
INSERT INTO `tbl_global_paises` VALUES ('GRC', 'GRECIA', '🇬🇷');
INSERT INTO `tbl_global_paises` VALUES ('GRL', 'GROENLANDIA', '🇬🇱');
INSERT INTO `tbl_global_paises` VALUES ('GLP', 'GUADALUPE', '🇬🇵');
INSERT INTO `tbl_global_paises` VALUES ('GUM', 'GUAM', '🇬🇺');
INSERT INTO `tbl_global_paises` VALUES ('GTM', 'GUATEMALA', '🇬🇹');
INSERT INTO `tbl_global_paises` VALUES ('GUF', 'GUAYANA FRANCESA', '🇬🇫');
INSERT INTO `tbl_global_paises` VALUES ('GIN', 'GUINEA', '🇬🇳');
INSERT INTO `tbl_global_paises` VALUES ('GNQ', 'GUINEA ECUATORIAL', '🇬🇶');
INSERT INTO `tbl_global_paises` VALUES ('GNB', 'GUINEA-BISSAU', '🇬🇼');
INSERT INTO `tbl_global_paises` VALUES ('HTI', 'HAITI', '🇭🇹');
INSERT INTO `tbl_global_paises` VALUES ('HND', 'HONDURAS', '🇭🇳');
INSERT INTO `tbl_global_paises` VALUES ('HUN', 'HUNGRIA', '🇭🇺');
INSERT INTO `tbl_global_paises` VALUES ('IND', 'INDIA', '🇮🇳');
INSERT INTO `tbl_global_paises` VALUES ('IDN', 'INDONESIA', '🇮🇩');
INSERT INTO `tbl_global_paises` VALUES ('IRN', 'IRAN', '🇮🇷');
INSERT INTO `tbl_global_paises` VALUES ('IRQ', 'IRAQ', '🇮🇶');
INSERT INTO `tbl_global_paises` VALUES ('IRL', 'IRLANDA', '🇮🇪');
INSERT INTO `tbl_global_paises` VALUES ('BVT', 'ISLA BOUVET', '🇧🇻');
INSERT INTO `tbl_global_paises` VALUES ('CXR', 'ISLA NAVIDAD', '🇨🇽');
INSERT INTO `tbl_global_paises` VALUES ('IMN', 'ISLA DE MAN', '🇮🇲');
INSERT INTO `tbl_global_paises` VALUES ('NFK', 'ISLA NORFOLK', '🇳🇫');
INSERT INTO `tbl_global_paises` VALUES ('ISL', 'ISLANDIA', '🇮🇸');
INSERT INTO `tbl_global_paises` VALUES ('ALA', 'ISLAS ALAND', '🇦🇽');
INSERT INTO `tbl_global_paises` VALUES ('CYM', 'ISLAS CAIMAN', '🇰🇾');
INSERT INTO `tbl_global_paises` VALUES ('CCK', 'ISLAS COCOS (KEELING)', '🇨🇨');
INSERT INTO `tbl_global_paises` VALUES ('COK', 'ISLAS COOK', '🇨🇰');
INSERT INTO `tbl_global_paises` VALUES ('FRO', 'ISLAS FEROE', '🇫🇴');
INSERT INTO `tbl_global_paises` VALUES ('HMD', 'ISLAS HEARD Y MCDONALD', '🇭🇲');
INSERT INTO `tbl_global_paises` VALUES ('FLK', 'ISLAS MALVINAS (FALKLAND)', '🇫🇰');
INSERT INTO `tbl_global_paises` VALUES ('MNP', 'ISLAS MARIANAS SEPTENTRIONALES', '🇲🇵');
INSERT INTO `tbl_global_paises` VALUES ('MHL', 'ISLAS MARSHALL', '🇲🇭');
INSERT INTO `tbl_global_paises` VALUES ('SLB', 'ISLAS SALOMON', '🇸🇧');
INSERT INTO `tbl_global_paises` VALUES ('SJM', 'ISLAS SVALBARD Y JAN MAYEN', '🇸🇯');
INSERT INTO `tbl_global_paises` VALUES ('TCA', 'ISLAS TURCAS Y CAICOS', '🇹🇨');
INSERT INTO `tbl_global_paises` VALUES ('VGB', 'ISLAS VIRGENES BRITANICAS', '🇻🇬');
INSERT INTO `tbl_global_paises` VALUES ('VIR', 'ISLAS VIRGENES DE LOS ESTADOS UNIDOS', '🇻🇮');
INSERT INTO `tbl_global_paises` VALUES ('WLF', 'ISLAS WALLIS Y FUTUNA', '🇼🇫');
INSERT INTO `tbl_global_paises` VALUES ('ISR', 'ISRAEL', '🇮🇱');
INSERT INTO `tbl_global_paises` VALUES ('ITA', 'ITALIA', '🇮🇹');
INSERT INTO `tbl_global_paises` VALUES ('JAM', 'JAMAICA', '🇯🇲');
INSERT INTO `tbl_global_paises` VALUES ('JPN', 'JAPON', '🇯🇵');
INSERT INTO `tbl_global_paises` VALUES ('JEY', 'JERSEY', '🇯🇪');
INSERT INTO `tbl_global_paises` VALUES ('JOR', 'JORDANIA', '🇯🇴');
INSERT INTO `tbl_global_paises` VALUES ('KAZ', 'KAZAJSTAN', '🇰🇿');
INSERT INTO `tbl_global_paises` VALUES ('KEN', 'KENYA', '🇰🇪');
INSERT INTO `tbl_global_paises` VALUES ('KGZ', 'KIRGUISTAN', '🇰🇬');
INSERT INTO `tbl_global_paises` VALUES ('KIR', 'KIRIBATI', '🇰🇮');
INSERT INTO `tbl_global_paises` VALUES ('KWT', 'KUWAIT', '🇰🇼');
INSERT INTO `tbl_global_paises` VALUES ('LSO', 'LESOTHO', '🇱🇸');
INSERT INTO `tbl_global_paises` VALUES ('LVA', 'LETONIA', '🇱🇻');
INSERT INTO `tbl_global_paises` VALUES ('LBN', 'LIBANO', '🇱🇧');
INSERT INTO `tbl_global_paises` VALUES ('LBR', 'LIBERIA', '🇱🇷');
INSERT INTO `tbl_global_paises` VALUES ('LBY', 'LIBIA', '🇱🇾');
INSERT INTO `tbl_global_paises` VALUES ('LIE', 'LIECHTENSTEIN', '🇱🇮');
INSERT INTO `tbl_global_paises` VALUES ('LTU', 'LITUANIA', '🇱🇹');
INSERT INTO `tbl_global_paises` VALUES ('LUX', 'LUXEMBURGO', '🇱🇺');
INSERT INTO `tbl_global_paises` VALUES ('MKD', 'MACEDONIA DEL NORTE', '🇲🇰');
INSERT INTO `tbl_global_paises` VALUES ('MDG', 'MADAGASCAR', '🇲🇬');
INSERT INTO `tbl_global_paises` VALUES ('MYS', 'MALASIA', '🇲🇾');
INSERT INTO `tbl_global_paises` VALUES ('MWI', 'MALAWI', '🇲🇼');
INSERT INTO `tbl_global_paises` VALUES ('MDV', 'MALDIVAS', '🇲🇻');
INSERT INTO `tbl_global_paises` VALUES ('MLI', 'MALI', '🇲🇱');
INSERT INTO `tbl_global_paises` VALUES ('MLT', 'MALTA', '🇲🇹');
INSERT INTO `tbl_global_paises` VALUES ('MAR', 'MARRUECOS', '🇲🇦');
INSERT INTO `tbl_global_paises` VALUES ('MTQ', 'MARTINICA', '🇲🇶');
INSERT INTO `tbl_global_paises` VALUES ('MUS', 'ISLA MAURICIO', '🇲🇺');
INSERT INTO `tbl_global_paises` VALUES ('MRT', 'MAURITANIA', '🇲🇷');
INSERT INTO `tbl_global_paises` VALUES ('MYT', 'MAYOTTE', '🇾🇹');
INSERT INTO `tbl_global_paises` VALUES ('MEX', 'MEXICO', '🇲🇽');
INSERT INTO `tbl_global_paises` VALUES ('FSM', 'MICRONESIA', '🇫🇲');
INSERT INTO `tbl_global_paises` VALUES ('MCO', 'PRINCIPADO DE MONACO', '🇲🇨');
INSERT INTO `tbl_global_paises` VALUES ('MNG', 'MONGOLIA', '🇲🇳');
INSERT INTO `tbl_global_paises` VALUES ('MNE', 'MONTENEGRO', '🇲🇪');
INSERT INTO `tbl_global_paises` VALUES ('MSR', 'MONTSERRAT', '🇲🇸');
INSERT INTO `tbl_global_paises` VALUES ('MOZ', 'MOZAMBIQUE', '🇲🇿');
INSERT INTO `tbl_global_paises` VALUES ('MMR', 'MYANMAR', '🇲🇲');
INSERT INTO `tbl_global_paises` VALUES ('NAM', 'NAMIBIA', '🇳🇦');
INSERT INTO `tbl_global_paises` VALUES ('NRU', 'NAURU', '🇳🇷');
INSERT INTO `tbl_global_paises` VALUES ('NPL', 'NEPAL', '🇳🇵');
INSERT INTO `tbl_global_paises` VALUES ('NIC', 'NICARAGUA', '🇳🇮');
INSERT INTO `tbl_global_paises` VALUES ('NER', 'NIGER', '🇳🇪');
INSERT INTO `tbl_global_paises` VALUES ('NGA', 'NIGERIA', '🇳🇬');
INSERT INTO `tbl_global_paises` VALUES ('NIU', 'NIUE', '🇳🇺');
INSERT INTO `tbl_global_paises` VALUES ('NOR', 'NORUEGA', '🇳🇴');
INSERT INTO `tbl_global_paises` VALUES ('NCL', 'NUEVA CALEDONIA', '🇳🇨');
INSERT INTO `tbl_global_paises` VALUES ('NZL', 'NUEVA ZELANDIA', '🇳🇿');
INSERT INTO `tbl_global_paises` VALUES ('OMN', 'OMAN', '🇴🇲');
INSERT INTO `tbl_global_paises` VALUES ('NLD', 'PAISES BAJOS', '🇳🇱');
INSERT INTO `tbl_global_paises` VALUES ('PAK', 'PAKISTAN', '🇵🇰');
INSERT INTO `tbl_global_paises` VALUES ('PLW', 'PALAU', '🇵🇼');
INSERT INTO `tbl_global_paises` VALUES ('PAN', 'PANAMA', '🇵🇦');
INSERT INTO `tbl_global_paises` VALUES ('PNG', 'PAPUA NUEVA GUINEA', '🇵🇬');
INSERT INTO `tbl_global_paises` VALUES ('PRY', 'PARAGUAY', '🇵🇾');
INSERT INTO `tbl_global_paises` VALUES ('PER', 'PERU', '🇵🇪');
INSERT INTO `tbl_global_paises` VALUES ('PCN', 'ISLAS PITCAIRN', '🇵🇳');
INSERT INTO `tbl_global_paises` VALUES ('PYF', 'POLINESIA FRANCESA', '🇵🇫');
INSERT INTO `tbl_global_paises` VALUES ('POL', 'POLONIA', '🇵🇱');
INSERT INTO `tbl_global_paises` VALUES ('PRT', 'PORTUGAL', '🇵🇹');
INSERT INTO `tbl_global_paises` VALUES ('PRI', 'PUERTO RICO', '🇵🇷');
INSERT INTO `tbl_global_paises` VALUES ('QAT', 'QATAR', '🇶🇦');
INSERT INTO `tbl_global_paises` VALUES ('GBR', 'REINO UNIDO DE GRAN BRETANA E IRLANDA DEL NORTE', '🇬🇧');
INSERT INTO `tbl_global_paises` VALUES ('SYR', 'SIRIA', '🇸🇾');
INSERT INTO `tbl_global_paises` VALUES ('CAF', 'REPUBLICA CENTROAFRICANA', '🇨🇫');
INSERT INTO `tbl_global_paises` VALUES ('PRK', 'COREA DEL NORTE', '🇰🇵');
INSERT INTO `tbl_global_paises` VALUES ('MDA', 'MOLDAVIA', '🇲🇩');
INSERT INTO `tbl_global_paises` VALUES ('COD', 'REPUBLICA DEMOCRATICA DEL CONGO', '🇨🇬');
INSERT INTO `tbl_global_paises` VALUES ('LAO', 'LAOS', '🇱🇦');
INSERT INTO `tbl_global_paises` VALUES ('DOM', 'REPUBLICA DOMINICANA', '🇩🇴');
INSERT INTO `tbl_global_paises` VALUES ('TZA', 'TANZANIA', '🇹🇿');
INSERT INTO `tbl_global_paises` VALUES ('REU', 'REUNION', '🇷🇪');
INSERT INTO `tbl_global_paises` VALUES ('ROU', 'RUMANIA', '🇷🇴');
INSERT INTO `tbl_global_paises` VALUES ('RWA', 'RUANDA', '🇷🇼');
INSERT INTO `tbl_global_paises` VALUES ('ESH', 'SAHARA OCCIDENTAL', '🇪🇭');
INSERT INTO `tbl_global_paises` VALUES ('KNA', 'SAN CRISTOBAL Y NIEVES', '🇰🇳');
INSERT INTO `tbl_global_paises` VALUES ('WSM', 'SAMOA', '🇼🇸');
INSERT INTO `tbl_global_paises` VALUES ('ASM', 'SAMOA AMERICANA', '🇦🇸');
INSERT INTO `tbl_global_paises` VALUES ('BLM', 'SAN BARTHELEMY', '🇧🇱');
INSERT INTO `tbl_global_paises` VALUES ('SMR', 'SAN MARINO', '🇸🇲');
INSERT INTO `tbl_global_paises` VALUES ('SXM', 'SAN MARTIN', '🇲🇫');
INSERT INTO `tbl_global_paises` VALUES ('SPM', 'SAN PEDRO Y MIQUELON', '🇵🇲');
INSERT INTO `tbl_global_paises` VALUES ('VCT', 'SAN VICENTE Y LAS GRANADINAS', '🇻🇨');
INSERT INTO `tbl_global_paises` VALUES ('SHN', 'SANTA ELENA', '🇸🇭');
INSERT INTO `tbl_global_paises` VALUES ('LCA', 'SANTA LUCIA', '🇱🇨');
INSERT INTO `tbl_global_paises` VALUES ('VAT', 'CIUDAD DEL VATICANO', '🇻🇦');
INSERT INTO `tbl_global_paises` VALUES ('STP', 'SANTO TOME Y PRINCIPE', '🇸🇹');
INSERT INTO `tbl_global_paises` VALUES ('SEN', 'SENEGAL', '🇸🇳');
INSERT INTO `tbl_global_paises` VALUES ('SRB', 'SERBIA', '🇷🇸');
INSERT INTO `tbl_global_paises` VALUES ('SYC', 'SEYCHELLES', '🇸🇨');
INSERT INTO `tbl_global_paises` VALUES ('SLE', 'SIERRA LEONA', '🇸🇱');
INSERT INTO `tbl_global_paises` VALUES ('SGP', 'SINGAPUR', '🇸🇬');
INSERT INTO `tbl_global_paises` VALUES ('SOM', 'SOMALIA', '🇸🇴');
INSERT INTO `tbl_global_paises` VALUES ('LKA', 'SRI LANKA', '🇱🇰');
INSERT INTO `tbl_global_paises` VALUES ('ZAF', 'SUDAFRICA', '🇿🇦');
INSERT INTO `tbl_global_paises` VALUES ('SDN', 'SUDAN', '🇸🇩');
INSERT INTO `tbl_global_paises` VALUES ('SSD', 'SUDAN DEL SUR', '🇸🇸');
INSERT INTO `tbl_global_paises` VALUES ('SWE', 'SUECIA', '🇸🇪');
INSERT INTO `tbl_global_paises` VALUES ('CHE', 'SUIZA', '🇨🇭');
INSERT INTO `tbl_global_paises` VALUES ('SUR', 'SURINAME', '🇸🇷');
INSERT INTO `tbl_global_paises` VALUES ('THA', 'TAILANDIA', '🇹🇭');
INSERT INTO `tbl_global_paises` VALUES ('TJK', 'TAYIKISTAN', '🇹🇯');
INSERT INTO `tbl_global_paises` VALUES ('IOT', 'TERRITORIO BRITANICO DEL OCEANO INDICO', '🇮🇴');
INSERT INTO `tbl_global_paises` VALUES ('ATF', 'TERRITORIO DE LAS TIERRAS AUSTRALES FRANCESAS', '🇹🇫');
INSERT INTO `tbl_global_paises` VALUES ('TLS', 'TIMOR-LESTE', '🇹🇱');
INSERT INTO `tbl_global_paises` VALUES ('TGO', 'TOGO', '🇹🇬');
INSERT INTO `tbl_global_paises` VALUES ('TKL', 'TOKELAU', '🇹🇰');
INSERT INTO `tbl_global_paises` VALUES ('TON', 'TONGA', '🇹🇴');
INSERT INTO `tbl_global_paises` VALUES ('TTO', 'TRINIDAD Y TABAGO', '🇹🇹');
INSERT INTO `tbl_global_paises` VALUES ('TUN', 'TUNEZ', '🇹🇳');
INSERT INTO `tbl_global_paises` VALUES ('TKM', 'TURKMENISTAN', '🇹🇲');
INSERT INTO `tbl_global_paises` VALUES ('TUR', 'TURQUIA', '🇹🇷');
INSERT INTO `tbl_global_paises` VALUES ('TUV', 'TUVALU', '🇹🇻');
INSERT INTO `tbl_global_paises` VALUES ('UKR', 'UCRANIA', '🇺🇦');
INSERT INTO `tbl_global_paises` VALUES ('UGA', 'UGANDA', '🇺🇬');
INSERT INTO `tbl_global_paises` VALUES ('URY', 'URUGUAY', '🇺🇾');
INSERT INTO `tbl_global_paises` VALUES ('UZB', 'UZBEKISTAN', '🇺🇿');
INSERT INTO `tbl_global_paises` VALUES ('VUT', 'VANUATU', '🇻🇺');
INSERT INTO `tbl_global_paises` VALUES ('VEN', 'VENEZUELA (REPUBLICA BOLIVARIANA DE)', '🇻🇪');
INSERT INTO `tbl_global_paises` VALUES ('VNM', 'VIET NAM', '🇻🇳');
INSERT INTO `tbl_global_paises` VALUES ('YEM', 'YEMEN', '🇾🇪');
INSERT INTO `tbl_global_paises` VALUES ('ZMB', 'ZAMBIA', '🇿🇲');
INSERT INTO `tbl_global_paises` VALUES ('ZWE', 'ZIMBABWE', '🇿🇼');
INSERT INTO `tbl_global_paises` VALUES ('KOR', 'COREA DEL SUR', '🇰🇷');
INSERT INTO `tbl_global_paises` VALUES ('CIV', 'COSTA DE MARFIL', '🇨🇮');
INSERT INTO `tbl_global_paises` VALUES ('TWN', 'TAIWAN', '🇹🇼');
INSERT INTO `tbl_global_paises` VALUES ('GUY', 'GUYANA', '🇬🇾');
INSERT INTO `tbl_global_paises` VALUES ('XKX', 'KOSOVO', '🇽🇰');
INSERT INTO `tbl_global_paises` VALUES ('LAO', 'LAOS', '🇱🇦');
INSERT INTO `tbl_global_paises` VALUES (NULL, 'SUAZILANDIA', NULL);
INSERT INTO `tbl_global_paises` VALUES (NULL, 'BIELORUSIA', NULL);

-- ----------------------------
-- Table structure for tbl_global_patologias
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_patologias`;
CREATE TABLE `tbl_global_patologias`  (
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `descripcion` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_patologias
-- ----------------------------
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'ANGINA DE PECHO');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'ANGINA INESTABLE');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'ARRITMIA CARDIACA');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'ARRITMIA VENTRICULAR');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'BRADICARDIA SINUSUAL');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'BRADICARDIA SINUSUAL SINTOMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'CAQRDIPATIA IZQUEMICA CRONICA COMPENSADA');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'CARDIOPATIA ISQUEMICA CRONICA');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'CARDIOPATIA IZQUEMICA');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'CHEQUEO CARDIOLOGICO');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'DOLOR PRECORDIAL');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'DOLOR PRECORDIAL + HTA');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'FIBRILACION AURICULAR');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'HEMORRAGIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'HTA + CARDIOPATIA IZQUEMICA');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'INFARTO AGUDO DEL MIOCARDIO');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'INSUFICIENCIA CARDIACA + NEUMONIA');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'PERICARDITIS');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'PERICARDITIS SUBAGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'TAQUICARDIA');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'TAQUICARDIA PAROXISTICA SUPRAVENTRICULAR');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'TAQUICARDIA SINOSAL');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'TAQUICARDIA SINUSAL + CRISIS DE HIPOGLICEMIA');
INSERT INTO `tbl_global_patologias` VALUES ('CARDIOLOGICAS', 'TAQUICARDIA SINUSUAL');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'ABCESO CUERO CABELLUDO');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'ABCESO GLUTEO');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'ABSESO AXILAR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'ABSESO PERIANAL');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'ABSESO REGION AXILAR BRAZO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'ABSESO');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'ACCESO ANAL');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'ANTRAX');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'ANTRAX DE CUELLO');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'APENDICEPTOMIA');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'APENDICITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'APENDICITIS QUIRURGICA');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'CALIDAD DE VIDA LIPOASPIRACION');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'CALIDAD DE VIDA MASTOPLASTIA REDUCTORA');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'CIRUGIA ABDOMINAL');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'CIRUGIA ESTETICA');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'DOLOR ABDOMINAL EN EVOLUCION');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'HEMORROIDE GRADO II');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'HEMORRAGIA DIGESTIVA');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'HEMORROIDE INTERNA');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'HERIDA DE CUERO CABELLUDO');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'INFECCION SITIO QUIRURGICO');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'LIPODISTROFIA DE ESPALDA');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'OPERADO DE ANTRAX');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'PELVIPERITOITIS DE ORIGEN GINECOLOGICO');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'QUISTE SEBASEO');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'RECONSULTA DE CIRUGIA');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'RINOPLASTIA');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'SEGUIMIENTO CIRUGIA ABSESO ANAL');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'SEGUIMIENTO DE CIRUGIA POR ANTRAX DE CUELLO');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'SIGMOIDECTOMIA POR TUMOR ABSEDADO');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'SOSPECHA DE APENDICITIS');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'SPO DE NECROTOMIA POR ANTRAX CERVICAL');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'T DE SIGMOIDE ADSEDADO');
INSERT INTO `tbl_global_patologias` VALUES ('CIRUGIA', 'TRAUMA ABDOMINAL');
INSERT INTO `tbl_global_patologias` VALUES ('ONCOLOGIA', 'TUMOR PARED ABDOMINAL');
INSERT INTO `tbl_global_patologias` VALUES ('ONCOLOGIA', 'TUMOR SIGMOIDE ABSCEDADO');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'CASO CONFIRMADO covid-19');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'SEGUIMIENTO covid-19');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'SOSPECHA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'SOSPECHA + AMIGDALITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'ALERGIA POR CONTACTO');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'CELULITIS FACIAL');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'CELULITIS MII');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'CELULITIS REGIONAL POSTERIOR DEL CUELLO');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DEMATITIS ALERGICA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DEMATITIS POR PICADURA DE INSECTO');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS + INGESTA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS AGUDA POR PICADURA DE INSECTO');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS ALERGICA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS ATOPICA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS EXTENSA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS INFECCIOSA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS INFESTADA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS INFLAMATORIA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS POR CONTACTO');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS POR PICADURA DE INSECTO');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS SEBORREICA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'DERMATITIS SEPTICA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'EPIDERMOFITOSIS');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'ERITEMA SOLAR');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'ERITEMA SOLAR + DERMATITIS ALERGICA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'ERITEMA + PICADURA DE INSECTO');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'ESCABIOSIS');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'ESCABIOSIS + MIALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'ESCABIOSIS SEPTICA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'ESCORIACIONES LEVES');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'ESCORIACIONES SIMPLE');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'FORUNCULO ABSESADO');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'FORUNCULO');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'FURONCULOSIS');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'HERIDA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'HIDRADENITIS');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'LESION ABCESADA DE MII');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'LESION EN PIEL');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'LESION ERMATOSA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'LESION HERPETICA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'LESIONES DERMATOLOGICAS INFECTADAS');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'LESIONES SEPTICAS');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'NEVO VERRUGOSO');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'PARONIQUIA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'PIODERMITIS + CELULITIS');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'PIODERMITIS');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'PIODERMITIS SECUNDARIA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'PITIASIS RISADA DE GILBERT');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'PITIRIASIS ROSADA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'QUEMADURA POR FRICCION');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'QUEMADURA SOLAR');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'QUEMADURAS HIPODERMICAS');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'QUEMADURAS II GRADO');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'REACCION ALERGICA');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'SIFILI EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'TRAUMA CON ESCORIACION');
INSERT INTO `tbl_global_patologias` VALUES ('DERMATOLOGICAS', 'URTICARIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'ALERGIA ALIMENTARIA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'CEFALEA SECUNDARIA A TRASTORNO GASTROINTESTINAL');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'CILICO BILIAR');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'COLESISTITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'COLICO BILIAR');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'COLITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'COLITIS POST COLECISTECTOMIA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'COLITIS ULCERATIVA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'CRISIS DE COLICO BILIAR AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'DESHIDRATACION ISOTONICA + INGESTA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DESHIDRATACION ISOTONICA POR INGESTA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DESHIDRATACION ISOTONICA SEVERA POR INGESTA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'DESHIDRATACION MODERADA POR INDIGESTION');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'DESHIDRATACION MODERADA POR INGESTA SEVERA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'DIARREA AGUDA X INDIGESTION');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'DISPEPSIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'DISPEPSIA SECUNDARIA POR INGESTA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ENFERMEDAD DIARREICA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'ENETEROCOLITIS');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'ENTERITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ENTEROCOLITIS');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ENTEROCOLITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'ENTEROCOLITIS AGUDA ALIMENTARIA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'ENTEROCOLITIS POR INDIGESTION');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'ENTEROCOLITIS SECUNDARIA A INGESTA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'EPIGASTRALGIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'EPIGASTRALGIA SEGUIMIENTO');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'GASTOENTEROCOLITIS');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'GASTRITIS');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTRITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTRITIS AGUDA+HIPOGLUCEMIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTRITIS CRONICA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTRITIS CRONICA EN CRISIS');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTROENTECOLITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTROENTERITIS');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTROENTERITIS ALIMENTARIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTROENTERITIS BACTERIANA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTROENTEROCOLITIS');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTROENTEROCOLITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTROENTEROCOLITIS CRONICA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GATRITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'HEPATITIS VIRAL');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'IGESTA AGUDA + DESHIDRATACION');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'INDIGESTION + ESGINCE DE TOBILLO');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'INGESTA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'INGESTA AGUDA + DESHIDRATACION');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'INGESTA AGUDA + DESHIDRATACION ISOTONICA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'INGESTA AGUDA + DESHIDRATACION ISOTONICA LIGERA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'INGESTA AGUDA + DESHIDRATACION ISOTONICA MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'INGESTA AGUDA + DESHIDRATACION ISOTONICA SEVERA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'INGESTA AGUDA + DESHIDRATACION LIGERA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'INGESTA AGUDA + DESHIDRATACION MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'INGESTA ALIMENTARIA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'INTOXICACION AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'INTOXICACION ALIMENTARIA + DESHIDRATACION MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'LIPOTIMIA POR INGESTA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'REACCION ALERGICA ALIMENTARIA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'SANGRAMIENTO DIGESTIVO EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'SINDROME DISFAGICO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME EMETICO + DESHIDRATACION LIGERA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME EMETICO + DESHIDRATACION MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME EMETICO + HIPOGLICEMIA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'ULCERA GASTRODOUDENAL');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (NO EDA)', 'VOMITOS DE CAUSA ALIMENTARIA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DESHIDRATACION ISOTONICA + EDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DESHIDRATACION ISOTONICA + HTA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DESHIDRATACION ISOTONICA LIGERA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DESHIDRATACION LEVE');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DESHIDRATACION MODERADA + EDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DESHIDRATACION MODERADA DE ETIOLOGIA BACTERIANA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DESHIDRATACION MODERADA POR EDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DESHIDRATACION MODERADA PORENFERMEDAD DIARREICA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DESHIDRATACION MODERADA X EDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DESHIDRATACION SEVERA X INGESTA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DESHIDRTATACION ISOTONICA POR INGESTA GAUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DESWHIDRATACION MODERADA POR EDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DIARREA AGUDA POR INDIGESTION');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DIARREAS AGUDA POR INDIGESTION');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DSHIDRATACION ISOTONICA LIGERA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'DSHIDRATACION SEVERA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA + DESHIDRATACION');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA + DESHIDRATACION + GASTRITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA + DESHIDRATACION ISOTONICA MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA + DESHIDRATACION MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA + INTOXICACION ALERGICA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA ALIMENTARIA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA BACTERIANA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA CON DESHIDRATACION MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA CON DESHIODRATACION MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA DESHIDRATACION LIGERA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA DESHIDRATACION MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA POR INDIGESTION');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA POR INTOXICACION ALIMENTARIA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'EDA VIRAL');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ENTEROCOLITIS AGUDA + ANEMIA FERRIPRIVA CRONICA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTRITIS AGUDA + DESHIDRATACION MODERADA POR EDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'GASTRITIS AGUDA + EDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTROENTERITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'INDIGESTION + DIARREAS AGUDAS');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'INGESTA AGUDA + DESHIDRATACION ISOTINICA MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'INGESTA AGUDA + DESHIDRATACION MODERADA + HIPOGLUCEMIA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'INGESTA AGUDA DESHIDRATACION ISOTONICA SEVERA');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'INGESTA AGUDA DESHIDRATACION MODERADA ');
INSERT INTO `tbl_global_patologias` VALUES ('DIGESTIVAS (EDA)', 'INGESTA AGUDADESHIDRATACION ISOTONICA MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME EMETICO POR INGESTA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO ALVEOLAR');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO ALVEOLAR + CARIE');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO ALVEOLAR AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO ALVEOLAR AGUDO + CARIE DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO ALVEOLAR AGUDO + HIPEREMIA PULPAR');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO ALVEOLAR CRONICO');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO ALVEOLAR CRONICO + CARIE DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO ALVEOLAR SUBAGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO ALVEOLAR SUBAGUDO + CARIE DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO DENTOALVIOLAR AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO GINGIVAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO MOLAR');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO PARODENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO PERIDIONTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO PERIODONTAL + CARIE DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ABSCESO PERIODONTAL AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'AFTA DENTALES');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ALVEOLITIS');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ALVEOLITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ALVEOLITIS AGUDA + CARIE DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ALVIOLITIS SECA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'AQBSESO MOLAR');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ARBEOLITIS');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ASCESO ALBEOLARA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'CARIE DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'CELULITIS FACIAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'CORONA DE PORCELANA DESPLAZADA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'CRISIS AGUDA DE ODONTALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'DOLOR AGUDO DE MUELA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'DOLOR MOLAR AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'EPULIS FIBROSO');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'EXTRACCION');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FACTURA NO COMPLICADA DE CORONA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FRACTURA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FRACTURA + OTALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FRACTURA DE CORONA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FRACTURA DE CORONA Y RAIZ');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FRACTURA DE ESMALTE');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FRACTURA DE ESMALTE Y DENTINA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FRACTURA DE INCISIVO');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FRACTURA ESMALTE Y DENTINA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FRACTURA MOLAR + EXODONCIA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FRACTURA NO COMPLICADA DE CORONA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FRACTURA VERTICAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FRACTUTA DE CORONA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'FRRACTURA PRE-MOLAR');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'GENGUIVITIS CRONICA EDEMATOSA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'GINGIVITIS AGUDA COMPLICADA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'GINGIVITIS CRONICA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'HERPES PULPAR');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'HIPEREMIA + CARIE DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'HIPEREMIA PULPAR');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'HIPERESTESIA GENERALIZADA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'OBSTURACION FRACTURADA + CARIE DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'OBTURACION DESPLAZADA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'OCTURACION FRACTURADA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'ODONTOLOGIA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PERICONONARITIS');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PERICORONALITIS + CARIE');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PERICORONALITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PERICORONALITIS AGUDA + ABSCESO PERIDONTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PERICORONALITIS AGUDA + CARIE DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PERICORONARITIS AGUDA SUPURADA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PERICORONARITIS AGUDA SUPURADA + CARIE DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PERICORONARITIS CRONICA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PERIODONTELITIS CRONICA + CARIE DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PERIODONTITIS + FRACTURA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PERIODONTITIS COMPLEJA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PERIODONTOPATIA COMPLEJA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PROFILAXIS');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PROFILAXIS CON INSTRUMENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PROFILAXIS CON ULTRASONIDO');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PROFILAXIS DENTAL ');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PROFILAXIS ODONTOLOGICA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PULPITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PULPITIS AGUDA + CARIE DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PULPITIS AGUDA IRREVERSIBLE');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PULPITIS AGUDA IRREVERSIBLE + CARIE');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PULPITIS AGUDA SEROSA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PULPITIS AGUDA SEROSA + CARIE');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PULPITIS AGUDA SUPURADA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PULPITIS AGUDA SUPURADA + CARIE');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PULPITIS SEVERA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PULPITIS SUPURADA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PULPITIS TRANSITORIA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'PULPITIS TRAUMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'RECONSULTA ODONTOLOGICA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'RESTO RADICULAR EXTRAIDO');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'RESTOS RADICULARES');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'SANGRAMIENTO PULPAR');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'SEPSIS BUCAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'SEPSIS BUCAL AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'TRAUMA DENTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ESTOMATOLOGICA', 'TRAUMA DENTARIO');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'CALCULO RENAL');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'COLICO NEFRITICO ');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'COLICO NEFRITICO + PIELONEFRITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'COLICO NEFRITICO + UROSEPSIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'COLICO NEFRITICO AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'COLICO RENAL');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'COLICO RENAL + INFECCION URINARIA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'COLICO RENAL AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'COLICO RENAL CON HEMATURIA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'COLOCO NEFRITICO');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'CRISIS COLICO NEFRITICO');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'CRISIS COLICO NEFRITICO AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'CRISIS DE COLICONEFRITICO CON INFECCION URINARIA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'DISMENORREA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'ENFERMEDAD PROSTATICA EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'EPIDIDIMITIS');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'FOLICULO PERSISTENTE');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'FORUNCULOS DOLOROSOS');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'HERNIA INCISIONAL DOLOROSA EN AREA DE CICATRIZ ANTERIOR');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'HTA+GASTRITIS');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'INFECCION AGUDA DEL TRATO RENAL BAJO + LITIASIS RENAL');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'INFECCION DEL TRACTO URINARIO + GASTRITIS MEDICAMENTOSA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'INFECCION GENITOURINARIA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'INFECCION TRACTO URINARIO');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'INFECCION TRACTO URINARIO + GASTRITIS');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'INFECCION URINARIA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'INFECCION URINARIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'INFECCION URINARIA AGUDA + COLICO NEFRITICO');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'INFECCION URINARIA AGUDA BAJA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'INFECCION URINARIA BAJA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'INFECCION URINARIA BAJA + CRISIS HIPERTENSIVA');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'INFECCION VAGINAL + MASTALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'ITU');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'LEUCOPLASIA VULVAR Y SINDROME DE FLUJO VAGINAL');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'PIELONEFRITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'PIOLENEFRITIS BACTERIANA PERSISTENTE');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'QUISTE ESCROTAL');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'RETENCION URINARIA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'RETENCION URINARIA X HIPERPLASIA DE PROSTATA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'SEPSIS MURINARIA + COLICO NEFRITICO');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'SEPSIS URINARIA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'SINDROME DE FLUJO VAGINAL');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'UROEPSIS AGUDA CON COLICO RENAL');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'UROPATIA OBSTRUCTIVA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'UROPATIA OBSTRUCTIVA X HIPERPLACIA PROSTATICA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'UROSEPSIS');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'UROSEPSIS + COLICO NEFRITICO');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'UROSEPSIS AGUDA + COLICO NEFRITICO');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'UROSEPSIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'VAGINOSIS BACTERIANA + SEPSIS URINARIA');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'ABORTO DIFERIDO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'ATENCION PRE NATAL');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'DESGARRO DE CUPULA VAGINAL');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'DESGARRO VAGINAL');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'DISMENORREA POR MIOMA');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'DOLOR PELVICO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'DOLOR PELVICO AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'DOLOR PELVICO EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'ECTOPIA PERIORIFICIAL');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'ELECTROFULGURACION DE CUELLO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'EMBARAZO + AMENAZA DE ABORTO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'EMBARAZO + UTERO FRIBROMATOSO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'EMBARAZO ARO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'ENFERMEDAD INFLAMATORIA PELVICA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'ESTUDIO DE INFERTILIDAD');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'FIBROMA SINTOMATICO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'FIBROMA UTERINO SINTOMATICO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'FORICULO ABSESADO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'INFECCION BAGINAL');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'INFECCION VAGINAL');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'INFECCION VAGINAL + INFECCION URINARIA');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'INFECCION VAGINAL MASTODINIA');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'INFECCION VAGINAL RECURRENTE');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'INFECCION VAGINAL RESUELTA');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'INFECCION VAGINAL SINTOMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'LEUCOPLACIA BULBAR');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'MIOMA UTERINO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'MIOMA UTERINO SINTOMATICO + INFECION VAGINAL');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'MIOMA UTERINO SINTOMATICO EMETICO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'MIOMA UTERINO SINTOMATICO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'PARTO FISIOLOGICO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'PUERPERA + HTA CRONICA');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'QUISTE BARTHOLINO ABSESADO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'RECTOCISTOCELE');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'RECTOCISTOCELE RECIDIVANTA');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'SALPINGITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'SANGRAMIENTO VAGINAL ACTIVO POR DESGARRO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'SEGUIMIENTO DE EMBARAZO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'SINDROME DE FLUJO VAGINAL + ENFERMEDAD PELVICA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'SINDROME PREMESTRUAL');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'SOSPECHA EMBARAZO ECTOPICO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'UTERO FIBROMATOSO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'UTERO FIBROMATOSO SINTOMATICO');
INSERT INTO `tbl_global_patologias` VALUES ('GINECOBSTETRICIA', 'VAGINOSIS BACTERIANA');
INSERT INTO `tbl_global_patologias` VALUES ('INFECCION URINARIA', 'COLICO NEFRITICO + HEMATURIA');
INSERT INTO `tbl_global_patologias` VALUES ('INFECCION URINARIA', 'COLICO NEFRITICO EN CURSO DE UNA INFECCION URINARIA');
INSERT INTO `tbl_global_patologias` VALUES ('INFECCION URINARIA', 'COLICO NEFRITICO + GASTRITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('INFECCION URINARIA', 'COLICO NEFRITICO + PIOLEFRITIS');
INSERT INTO `tbl_global_patologias` VALUES ('INFECCION URINARIA', 'COLICO RENAL + INFECCION URINARIA BAJA');
INSERT INTO `tbl_global_patologias` VALUES ('INFECCION URINARIA', 'CRISIS DE COLICO NEFRITICO + UROSEPSIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('INFECCION URINARIA', 'CRISIS RECURRENTE DE COLICO NEFRITICO');
INSERT INTO `tbl_global_patologias` VALUES ('INFECCION URINARIA', 'HEMATURIA MACROSCOPICA IDIOPATICA');
INSERT INTO `tbl_global_patologias` VALUES ('INFECCION URINARIA', 'INFECCION');
INSERT INTO `tbl_global_patologias` VALUES ('INFECCION URINARIA', 'INFECCION AGUDA DEL TRACTO URINARIO');
INSERT INTO `tbl_global_patologias` VALUES ('INFECCION URINARIA', 'INFECCION DEL TRACTO URINARIO');
INSERT INTO `tbl_global_patologias` VALUES ('INFECCION URINARIA', 'IRA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ABDOMEN AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ANEMIA CRONICA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ANEMIA LIGERA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ANEMIA SEVERA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'APENDICCITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'BRADICARDIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'CEFALEA POS VIRAL');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'CHEQUEO CLINICO PARA RESIDENCIA EN CUBA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'CHEQUEO MEDICO DE RESIDENCIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'COLICO BILIAR + CRISIS HIPERTENSIVA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'COLICO BILIAR AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'COMA HIPOGLICEMICO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'CONSTIPACION');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'CONTROL POR HIPERTENSION ARTERIAL');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'COSTIPACION');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'CRISIS AGUDA HIPERTENSIVA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'CRISIS AGUDA HIPERTENSIVA + DIABETIS DESCOMPENSADA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'CRISIS DE COLICO NEFRITICO + GASTRITIS AGUDA MEDICAMENTOSA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'CRISIS HIPERTENSIVA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DEBUT DE DIABETES MELITUS TIPO II');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DENGE SIN SIGNOS DE ALARMA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DENGUE');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DENGUE CLASICO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DESHIDRATACION ISOTONICA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DESHIDRATACION ISOTONICA MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DESHIDRATACION ISOTONICA SEVERA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DESHIDRATACION MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DIABETES DESCOMPENSADA RETENCION URINARIA ');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DIABETES MELLITUD TIPO II');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DIABETES MELLITUS');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DIABETES MELLITUS + HIPOGLICEMIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DIABETES MELLITUS DESCOMPENSADA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DIABETES MELLITUS DESCOMPENSADA POR PIELONEFRITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DIABETES MELLITUS TIPO II');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DIABETES MELLITUS TIPO II DESCOMPENSADA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DOLOR ABDOMIANL EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DOLOR ABDOMINAL');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DOLOR ABDOMINAL AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DOLOR ABDOMINAL AGUDO + SOSPECHA DE COVID');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DOLOR ABDOMINAL AGUDO EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DOLOR ABDOMINAL EN + HIPERTENSION ARTERIAL');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DOLOR ABDOMINAL EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DOLOR ABDOMINAL NO QUIRURGICO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DOLOR ABDOMINAL PARA ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DOLOR TORAXICO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'DOLOR TORAXICO AGUDO EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ECV ATEROTROMBOTICA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'EMERGENCIA HIPERTENSIVA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'EMERGENCIA HIPERTENSIVA + INGESTA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'EMERGENCIA HIPERTENSIVA + PRECORDIALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'EPIGASTRALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'EPIXTASIS + HIPERTENSION ARTERIAL');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'EPOC DESCOMPENSADA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'FISURA POS TRAUMA + HIPOGLUCEMIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GASTRITIS + INFECCION URINARIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GATROENTERITIS + HIPOGLICEMIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'GATROENTERITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HEMODIALISIS');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HEPATITIS B');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HERIDA EN ANTEBRAZO + ESCORIACIONES MUSLO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HERIDA MANO+ESCORIACIONES EN ANTABRAZO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HERIDA SEPTICA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HERIDA X PICADURA ANIMAL MARINO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HIPERTENSION ARTERIAL');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HIPERTENSION ARTERIAL + DOLOR ABDOMINAL AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HIPERTENSION ARTERIAL CRONICA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HIPERTENSION ARTERIAL DESCOMPENSADA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HIPERTENSION ARTERIAL EN DEBUT');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HIPERTENSION ARTERIAL TIPO II');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HIPOGLICEMIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HIPOGLICEMIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HIPOGLICEMIA EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HIPOGLICEMIA LEVE');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HIPOGLICEMIA SEVERA + SINDROME EMETICO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'HIPOGLUCEMIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ICTERO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'INGESTA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'INSUFICIENCIA VENOSA PERIFERICA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'INTOXICACION ALIMENTARIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'LIFANGITIS AGUDA POR PICADURAS DE INSECTOS');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'LINFANGITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'LINFANGITIS RETICULAR MAS SEPSIS URINARIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'LIPOTIMIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'LIPOTIMIA + HIPERTENSION ARTERIAL AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'MIALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'MIALGIA POSTRAUMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'NEURALGIA INTERCOSTAL AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ORQUIEPIDIMITIS');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'PARASITISMO INTESTINAL');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'REACCION ALERGICA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'REACCION ANAFILACTICA AGUDA POR ALIMENTOS');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'REACCION ANAFILACTICFA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'RINITIS ALERGICA + HIPERTENSION ARTERIAL');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINCOPE + HIPOGLICEMIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME ADENICO EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME AMETRICO DE CAUSA ALIMENTARIA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME EMETICO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME FEBRIL');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME FEBRIL AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME FEBRIL EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME FEBRIL INESPECIFICO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME FRBRIL AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME GENERAL');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME GENERAL EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME HIPOGLUCEMICO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINDROME VERTIGINOSO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SINUSITIS MAXILAR AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'SOSPECHA APENDICITIS');
INSERT INTO `tbl_global_patologias` VALUES ('SOSPECHA CLINICA DE DENGUE', 'SOSPECHA DE DENGUE');
INSERT INTO `tbl_global_patologias` VALUES ('ONCOLOGIA', 'TUMORACION ABDOMINAL');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ULCERA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ULCERA MIEMBRO INFERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ULCERA MIEMBRO INFERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ULCERA MIEMBRO SUPERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'ULCERA MIEMBRO SUPERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'URGENCIA HIPERTENSIVA');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'VARICOCELE');
INSERT INTO `tbl_global_patologias` VALUES ('MEDICINA INTERNA', 'VERTIGOS PERIFERICOS');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROCIRUGIA', 'CEFALEA TRAUMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROCIRUGIA', 'CONTUSION CLASICA + HEMORRAGIA SUB ARANOIDEA');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROCIRUGIA', 'DISCOPATIA PARAVERTEBRAL + CONTUSION CERVICAL');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROCIRUGIA', 'EPILEPSIA');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROCIRUGIA', 'NEURALGIA OCCIPITAL DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROCIRUGIA', 'TRAUMA CRANEAL');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROCIRUGIA', 'TRAUMA CRANEAL CON HERIDA CONTUSA');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROCIRUGIA', 'TRAUMA CRANEAL SIMPLE');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'ACCIDENTE VASCULAR ENCEFALICO');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'CEFALEA');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'CEFALEA MIGRANOSA');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'CEFALEA OCCIPITAL AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'CEFALEA TENSIONAL');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'CEFALEA TRANSITORIA');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'CEFALEA VASCULAR');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'CERVICALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'CRISIS DE EXCITACION POSTOMOTORA POR MEDICACION');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'HEMATOMA SUBCRANEAL FRONTAL  DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'HEMORRAGIA SUBANAROIDEA + TAC EVOLUTIVO');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'INFARTO CEREBRAL IZQUEMICO');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'NEURALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'SINDROME DE ABSTINENCIA');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'SINDROME POST TRAUMATICO ESGUINCE CERVICAL');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'TAUMA CRANEAL SIMPLE');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROLOGIA', 'TRAUM CRANEAL SIMPLE + HERIDA LINEAL');
INSERT INTO `tbl_global_patologias` VALUES ('NEUROCIRUGIA', 'TRAUMA CRANEAL CON HERIDA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'ABCESO PARPADO INFERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'ABCESO PARPADO INFERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'ABCESO PARPADO SUPERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'ABCESO PARPADO SUPERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'ALERGIA OCULAR');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'ALERGIA OJO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'ALERGIA OJO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'AMETROPIA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'AMETROPIA + ATISMATISMO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'AMITROPIA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'ANTROPIA BILATERAL');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CHALAZIO OJO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CHALAZIO OJO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CLALAZO AMBOS OJOS');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CONJUNTIVITIS');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CONJUNTIVITIS + QUERATITIS');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CONJUNTIVITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CONJUNTIVITIS ALERGICA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CONJUNTIVITIS ATOPICA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CONJUNTIVITIS BACTERIANA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CONJUNTIVITIS DE ETIOLOGIA VIRAL');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CONJUNTIVITIS HEMORRAGICA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CONJUNTIVITIS IRRITATIVA EN AMBOS OJOS');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CONJUNTIVITIS IRRITATIVA IRRITATIVA OJO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CONJUNTIVITIS IRRITATIVA IRRITATIVA OJO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CONJUNTIVITIS TRAUMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CONSULTA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CUERPO ESTRANO OJO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CUERPO ESTRANO OJO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CUERPO EXTRANO CORNEAL');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CUERPO EXTRANO CORNEAL OJO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CUERPO EXTRANO CORNEAL OJO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'CUERPO EXTRANO OCULAR');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'DACRIOCISTITIS OJO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'DACRIOCISTITIS OJO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'DOLOR OCULAR EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'EPIESDERITIS OCULAR');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'EROSION CORNEA OJO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'EROSION CORNEA OJO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'EXTRACCION CUERPO EXTRANO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'EXTRACCION DE CUERPO EXTRANO OCULAR');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'GLAUCOMA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'GLAUCOMA BILATERAL');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'GLAUCOMA CRONICO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'GLAUCOMA CRONICO SIMPLE');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'KERATITIS OJO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'KERATITIS OJO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'MIOPIA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'MIOPIA LEVE');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'MIOPIA POSTTRAUMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'OCLUSION Y EXTRACCION DE CUERPO EXTRANO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'ORZUELO OJO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'ORZUELO OJO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'PTERIGIO OJO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'PTERIGIO OJO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'QUERATITIS OJO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'QUERATITIS OJO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'QUEROTOCONJUNTIVITIS OJO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'QUEROTOCONJUNTIVITIS OJO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'SOSPECHA DE GLAUCOMA');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'SOSPECHA DE QUERATOCONO');
INSERT INTO `tbl_global_patologias` VALUES ('OFTALMOLOGICAS', 'TRAUMA OCULAR');
INSERT INTO `tbl_global_patologias` VALUES ('ONCOLOGIA', 'ADENOCARCINOMA');
INSERT INTO `tbl_global_patologias` VALUES ('ONCOLOGIA', 'ADENOCARCINOMA DE OVARIO');
INSERT INTO `tbl_global_patologias` VALUES ('ONCOLOGIA', 'ADENOCARCINOMA DE PROSTATA');
INSERT INTO `tbl_global_patologias` VALUES ('ONCOLOGIA', 'CARCINOMA DE MAMA');
INSERT INTO `tbl_global_patologias` VALUES ('ONCOLOGIA', 'CARCINOMA PERITONEAL');
INSERT INTO `tbl_global_patologias` VALUES ('ONCOLOGIA', 'ENFERMEDAD FIBROQUISTICA MAMA');
INSERT INTO `tbl_global_patologias` VALUES ('ONCOLOGIA', 'LAPAROTOMIA EXPLORADORA SIN PROCESO TERAPEUTICO POSTERIOR');
INSERT INTO `tbl_global_patologias` VALUES ('ONCOLOGIA', 'NEOPLASIA DE PANCREA');
INSERT INTO `tbl_global_patologias` VALUES ('ONCOLOGIA', 'RECIDIVA DE TUMOR DE MAMA');
INSERT INTO `tbl_global_patologias` VALUES ('ONCOLOGIA', 'TUMOR DE MAMA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ABSESO ANTEBRAZO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ABSESO ANTEBRAZO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ABSESO PIERNA DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ABSESO PIERNA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ACCESO ANTROCOIDE LATERAL CADERA DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ACCESO ANTROCOIDE LATERAL CADERA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ARTRALGIA HOMBRO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ARTRALGIA HOMBRO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ARTRALGIA RODILLA DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ARTRALGIA RODILLA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ARTRITIS');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ARTRITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ARTRITIS POS INFECCIOSA DEDO MANO DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ARTRITIS RODILLA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ARTRITIS TRAUMATICA EN HOMBRO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ARTROSIS');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ARTROSIS RODILLA DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ARTROSIS RODILLA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'BUCLE PERIOSTICO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'BULSITIS AGUDA POSTRAUMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'BURSITIS HOMBRO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'BURSITIS HOMBRO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'BURSITIS TRAUMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CAPSULITIS POSTRAUMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CEATALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CEATALGIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CELULITIS PIE DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CELULITIS PIE IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CERVICALGIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CERVICOBRAQUIALGIA ');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CERVICOBRAQUIALGIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CIATALGIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CIRUGIA DE CLAVICULA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CONTRACTURA MUSCULAR');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CONTRACTURA MUSCULAR AGUDA ');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CONTUCCION MIEMBRO INFERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CONTUCCION MIEMBRO INFERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CONTUSION CODO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CONTUSION CODO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CONTUSION RODILLA DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CONTUSION RODILLA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CRISIS DE DORSOLUMBALGIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'CRISIS DE LUMBOSACRO CIATALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'DOLO LUMBAR ');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'DOLOR AGUDO EN REGION LUMBAR');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'DOLOR AGUDO PLANTAR X ESPOLON CALCANEO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'DOLOR ARTICULAR+GASTRITIS MEDICAMENTOSA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'DOLOR COSTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'DOLOR LUMBAR');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'DOLOR LUMBAR + SEGUIMIENTO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'DOLOR LUMBAR AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'DOLOR LUMBAR AGUDO + SEGUIMIENTO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'DOLOR REGION LUMBAR');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'DOLOR REGION LUMBOSACRA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'DOLOR TORAXICO AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'EPICONDILITIS');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'EPICONDILITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESCOLIOSIS');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINCE + HERIDA TOBILLO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINCE + HERIDA TOBILLO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINCE GRADO I TOBILLO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINCE GRADO I TOBILLO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINCE GRADO II TOBILLO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINCE GRADO II TOBILLO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINCE LUMBAR');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINCE MIEMBRO INFERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINCE MIEMBRO INFERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINCE PIE DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINCE PIE IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINCE TOBILLO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINCE TOBILLO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESGUINSE LUMBAR');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ESPOLON CALCANEO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'EXCORIACIONES SIMPLE POR ACCIDENTE');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FIBROMIALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FISURA SACRA POSTRAUMA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA CADERA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA CLAVICULA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA COLEX');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA HUMERO BRAZO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA MALEOLO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA MALEOLO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA MALEOLO MANO DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA MALEOLO MANO IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA MANO DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA MANO IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA RADIO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA RADIO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA ROTULA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA TOBILLO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'FRACTURA TOBILLO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'GONOARTRITIS RODILLA DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'GONOARTRITIS RODILLA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA ANTEBRAZO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA ANTEBRAZO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA CON ESCORIACIONES EN TOBILLO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA CON ESCORIACIONES EN TOBILLO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA DE MIEMBRO INFERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA DE MIEMBRO INFERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA DEDO MANO DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA DEDO MANO IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA MANO DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA MANO IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA MIEMBRO INFERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA MIEMBRO INFERIOR DERECHO + TRAUMA CRANEAL');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA MIEMBRO INFERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA MIEMBRO INFERIOR IZQUIERDO + TRAUMA CRANEAL');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA MIEMBRO SUPERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA MIEMBRO SUPERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA PIE DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA PIE IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA PLANTA DEL PIE DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA PLANTA DEL PIE IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA RODILLA DERECHA ');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA RODILLA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA SEPTICA PIE DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERIDA SEPTICA PIE IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HERNIA DISCAL LUMBAR');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'HORTALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'INGRESO EN OBSERVACION POR TRAUMA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'INSERCIONITIS DEL TENDON DEL BICEPS BRONQUIAL DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'INSERCIONITIS DEL TENDON DEL BICEPS BRONQUIAL IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LACERACION DE ANTEBRAZO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LACERACION DE ANTEBRAZO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LACERACION MANO DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LACERACION MANO IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LACERACION PIE DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LACERACION PIE IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LESION DE MINISCO DE RODILLA DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LESION DE MINISCO DE RODILLA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LUMBARGIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LUMBOCIATALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LUMBOCIATALGIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LUMBOCIATALGIA POSTRAUMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LUMBOCIATALGIA POSTRAUMATICA + EXCORIACIONES');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LUXACION HOMBRO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LUXACION HOMBRO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LUXOFRACTURA HUMERO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LUXOFRACTURA HUMERO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LUXOFRACTURA TOBILLO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'LUXOFRACTURA TOBILLO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'MAILGIA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'MAILGIA + ESCORIACIONES');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'MIALGIA POST TRAUMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'MIALGIA POSTRAUMATICA+ EXCORIACIONES');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'NEURALGIA COSTAL + SEGUIMIENTO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'NEURALGIA DORSAL');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'NEURALGIA INTERCOSTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'OPERADO FRACTURA CLAVICULA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ORTRALGIA DEL HOMBRO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ORTRALGIA DEL HOMBRO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'OSTEOARTROSIS DE MIEMBRO INFERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'OSTEOARTROSIS DE MIEMBRO INFERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'OSTEOCONDRITIS');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'OSTEOCONDRITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'OZONOTERAPIA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'PERIARTITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'POLIARTRITIA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'POLIARTRITIS EN ESTUDIO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'POLICONTUSION HERIDA PIERNA DERECHA + ESCORIACIONES PIE DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'POLICONTUSION HERIDA PIERNA DERECHA + ESCORIACIONES PIE IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'POLICONTUSION HERIDA PIERNA IZQUIERDA + ESCORIACIONES PIE DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'POLICONTUSION HERIDA PIERNA IZQUIERDA + ESCORIACIONES PIE IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'POLICONTUSIONADO CON ESCORIACIONES SIMPLE');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'POLICONTUSIONADO CON QUEMADURAS POR FRICCION');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'POSIBLE COMPRESION MEDULAR');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'QUMADURA POR FRICCION ANTEBRAZO DERECHO + ESGUINCE DE TOBILLO DERECHO GRADO I');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'QUMADURA POR FRICCION ANTEBRAZO DERECHO + ESGUINCE DE TOBILLO IZQUIERDO GRADO I');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'QUMADURA POR FRICCION ANTEBRAZO IZQUIERDO + ESGUINCE DE TOBILLO DERECHO GRADO I');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'QUMADURA POR FRICCION ANTEBRAZO IZQUIERDO + ESGUINCE DE TOBILLO IZQUIERDO GRADO I');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'RADICULOPATIA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'SACROLUMBALGIA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'SACROLUMBALGIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'SACROLUMBALGIA POST TRAUMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'SINDROME COMPRESIVO RADICULAR CERVICAL');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'SINOVITIS RODILLA DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'SINOVITIS RODILLA DERECHA + SEGUIMIENTO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'SINOVITIS RODILLA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'SINOVITIS RODILLA IZQUIERDA + SEGUIMIENTO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TENDINITIS BICEPS DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TENDINITIS BICEPS IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TENDINITIS BRAZO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TENDINITIS BRAZO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TENDINITIS HOMBRO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TENDINITIS HOMBRO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TENDINITIS MIEMBRO INFERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TENDINITIS MIEMBRO INFERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TENDINITIS MIEMBRO SUPERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TENDINITIS MIEMBRO SUPERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TENDINITIS RODILLA DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TENDINITIS RODILLA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TORTICULIS');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA CODO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA CODO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA COSTAL');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA HOMBRO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA HOMBRO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA MANO DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA MANO IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA MIEMBRO INFERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA MIEMBRO INFERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA MIEMBRO SUPERIOR DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA MIEMBRO SUPERIOR IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA MUNECA DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA MUNECA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA REGION LUMBOSACRA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA RODILLA DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA RODILLA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA TOBILLO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA TOBILLO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA TORAXICO CERRADO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA Y HERIDA DE CUERO CABELLUDO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMA Y HERIDA DEL TERCIO DISCAL MIEMBRO INFERIOR');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMATISMO + ESCORIACIONES');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMATISMO DE ARTICULACION RADIOCARPIANA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMATISMO MANO DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMATISMO MANO IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMATISMO PIERNA DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMATISMO PIERNA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TRAUMATISMO SIMPLE DE HOMBRO, BRAZO Y TOBILLO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TUMURACION PARTES BLANDAS CODO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'TUMURACION PARTES BLANDAS CODO IZQUIERDO ');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'ULCERA TRAUMATICA');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'UNA ENCARNADA DEL PIE DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('ORTOPEDIA', 'UNA ENCARNADA DEL PIE IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'ACUFENO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'AMIGDALITIS');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'AMIGDALITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'AMIGDALITIS AGUDA + BRONQUITIS');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'AMIGDALITIS BACTERIANA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'AMIGDALITIS PULTACEA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'AMIGDALITIS VIRAL');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'CUERPO EXTRANO LARINGEO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'CUERPO EXTRANO OIDO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'CUERPO EXTRANO OIDO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'CUERPO EXTRANO OROFARINGEO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'EPITAXIS SECUNDARIO A TRAUMATISMO NASAL');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'FARINGITIS + AGMINDALITIS');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'FARINGITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'FARINGOAMIGDALITIS');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'FARINGOAMIGDALITIS CRONICA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'GUINVORRAGIA ');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'HIPOACUSIO SUBITA SECUNDARIA DE TRAUMA ACUSTICO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'LARINGITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'LARINGITIS AGUDA + OTITITS MEDIA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'ODONTALDIA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTALGIA OIDO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTALGIA OIDO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTIITS POR CUERPO EXTRANO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTITIS EXTERNA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTITIS EXTERNA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTITIS EXTERNA AGUDA BILATERAL');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTITIS EXTERNA BILATERAL');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTITIS EXTERNA OIDO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTITIS EXTERNA OIDO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTITIS MEDIA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTITIS MEDIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTITIS MEDIA AGUDA OIDO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTITIS MEDIA AGUDA OIDO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTITIS POR CUERPO EXTRANO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'OTTIS MEDIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'RINITIS AGUDA DE ETIOLOGIA ALERGICA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'SINOSITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'SINOSITIS FRONTAL');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'SINOSITIS MAXILAR');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'SINUSITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'SINUSITIS FRONTAL');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'SINUSITIS FRONTAL AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'TAPON CERUMEN OIDO DERECHO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'TAPON CERUMEN OIDO IZQUIERDO');
INSERT INTO `tbl_global_patologias` VALUES ('OTORRINOLARINGOLOGIA', 'VERTIGO PERIFERICO');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'ALCHOLISMO');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'ALQUILERDE SILLA DE RUEDAS');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'CHEQUEO DE RESIDENCIA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'CHEQUEO DE RESIDENTES');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'CHEQUEO MEDICO');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'CHEQUEO MEDICO RESIDENCIA PERMANENTE');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'CONSULTA PARA CAPTACION DE EMBARAZO');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'CONTUSION PARTES BLANDAS');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'DERMATITIS POR CONTAACTO');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'DIABETIS MELLITUS DESCOMPENSADA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'DISMENORREA SECUNDARIA A MIOMA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'ELECTROCUSION');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'ESPANGINA VIRAL');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'EXAMEN DE RESIDENCIA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'FIBROSIS POST QUIRURGICA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'FIEBRE MENOS DE 24 HORAS');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'FISTULA EN HERIDA QUIRURGICA - POST OPERATORIA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'FISURA REGION SACRA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'FORINCULITIS PUBICA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'FRACTURA CLAVICULA DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'FRACTURA TABIQUE NASAL');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'HEMATOMA POST TRAUMA LIMBAR AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'HERIDA POR PICADURA DE ANIMAL MARINO');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'HERPANGINA VIRAL');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'HIPERTENCION ARTERIAL');
INSERT INTO `tbl_global_patologias` VALUES ('GENITOURINARIAS', 'INFECCION URINARIA + HTA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'LACERACION EN MANO DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'LIGERA DESHIDRATACION ISOTONICA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'MASTOPLASTIA REDUCTORA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'PIODERMITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'PIOLONEFRITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'POLICONTUSION');
INSERT INTO `tbl_global_patologias` VALUES ('TRAUMAS', 'POLITRAUMATIZADO');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'POSITIVO COVID-19');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'QUEMADURA DE 1ER GRADO MANO DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'QUEMADURA DE 1ER GRADO MANO IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'QUEMADURA II GRADO ');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'QUEMADURAS DERMICAS');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'RASH ERITRODERMICO');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'RECONSULTA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'RESONANCIA MAGNETICA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'RESUMEN MEDICO ');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'SEGUIMIENTO POST OPERATORIO');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'SERVICIO AMBULANCIA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'SERVICIO DE AMBULANCIA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'SINDROME HEMOTEMASISTEMICO');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'SINOBITIS POST TRAUMATICA RODILLA IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'SINUSITIS FRONTAL + CRISIS AGUDA DE ASMA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'SOSPECHA DE DENGUE CON SIGNOS DE ALARMA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'SOSPECHA DENGUE CON SIGNOS DE ALARMA');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'TERAPIA DE MASAJES');
INSERT INTO `tbl_global_patologias` VALUES ('OTRAS', 'TRASLADO EN AMBULANCIA');
INSERT INTO `tbl_global_patologias` VALUES ('PROCTOLOGIA', 'CIRUGIA DE HEMORROIDES');
INSERT INTO `tbl_global_patologias` VALUES ('PROCTOLOGIA', 'COLONOSCOPIA');
INSERT INTO `tbl_global_patologias` VALUES ('PROCTOLOGIA', 'FISURA ANAL');
INSERT INTO `tbl_global_patologias` VALUES ('PROCTOLOGIA', 'FISURA ANAL AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('PROCTOLOGIA', 'HEMORROIDE');
INSERT INTO `tbl_global_patologias` VALUES ('PROCTOLOGIA', 'HEMORROIDE MIXTA');
INSERT INTO `tbl_global_patologias` VALUES ('PROCTOLOGIA', 'TROMBOSIS HEMORROIDAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'ASMA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'ASMA OCUPACIONAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'BROMQUITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'BRONCONEUMONIA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'BRONCONEUMONIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'BRONCONEUMONIA BILATERAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'BRONQUITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'BRONQUITIS AGUDA + CRISIS AGUDA DE ASMA BRONQUIAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'BRONQUITIS AGUDA POSIBLE ETIOLOGIA BACTERIANA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'BRONQUITIS BILATERAL AGUDA EXTRAHOSPITALARIA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'BRONQUITS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'BRONQUITTIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'CASO CONFIRMADO DE COVID-19');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'CATARRO COMUN');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'CATARRO COMUN + SINUSITIS');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'CISIS MODERADA DE ASMA BRONQUIAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'COSTIPACION AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'COVID-19');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'COVID-19 - RECONSULTA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'CRISIS AGUDA DE ASMA BRONQUIAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'CRISIS AGUDA DE ASMA BRONQUIAL + INSUFICIENCIA RESPIRATORIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'CRISIS DE ASMA BRONQUIAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'ENFERMEDAD PULMONAR OBSTRUCTIVA CRONICA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'ENFERMEDAD PULMONAR OBSTRUCTIVA CRONICA AGUDIZADA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'ENFERMEDAD PULMONAR OBSTRUCTIVA CRONICA DESCOMPENSADA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INFECCION RESPIRATORIA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INFECCION RESPIRATORIA AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INFECCION RESPIRATORIA AGUDA + ASMA BRONQUIAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INFECCION RESPIRATORIA AGUDA + CRISIS AGUDA DE ASMA BRONQUIAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INFECCION RESPIRATORIA AGUDA + FARINGITIS AGUDA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INFECCION RESPIRATORIA AGUDA + SOSPECHA DE COVID-19');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INFECCION RESPIRATORIA AGUDA ALTA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INFECCION RESPIRATORIA AGUDA ALTA NO COMMPLICADA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INFECCION RESPIRATORIA AGUDA CON COMPONENTES OBSTRUCTIVOS');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INFECCION RESPIRATORIA AGUDA DESCOMPENSADA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INFECCION RESPIRATORIA AGUDA SOSPECHA COVID-19');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INFECCION RESPITARORIA ALTA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INSUFICIENCIA PULMONAR');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INSUFICIENCIA PULMONAR DESCOMPENSADA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INSUFICIENCIA RESPIRATORIA AGUDA ALTA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'INSUFICINCIA PULMONAR DESCOMPENSADA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'NEUMONIA DE BASE DERECHA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'NEUMONIA DE BASE IZQUIERDA');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'SINOCITIS FRONTAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'SINTOMA RESPIRATORIO AGUDO');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'SINTOMAS RESPIRATORIOS AGUDOS');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'SINTOMAS RESPIRATORIOS SOSPECHA DE COVID-19');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'SINUSITIS AGUDA + CRISIS AGUDA DE ASMA BRONQUIAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'SINUSITIS AGUDO EN CURSO DE CRISIS AGUDA DE ASMA BRONQUIAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'SINUSITIS FRONTAL + CRISIS AGUDA DE ASMA BRONQUIAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'SINUSITIS MAXILAR AGUDA + CRISIS DE ASMA BRONQUIAL');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'SOSPECHA COVID-19');
INSERT INTO `tbl_global_patologias` VALUES ('RESPIRATORIAS', 'VIROSIS INESPECIFICA');
INSERT INTO `tbl_global_patologias` VALUES ('SOMA (NO TRAUMA)', 'COLICO NEFRITICO CON HEMATURIA');
INSERT INTO `tbl_global_patologias` VALUES ('SOSPECHA CLINICA DE DENGUE', 'DENGUE CON DESHIDRATACION MODERADA');
INSERT INTO `tbl_global_patologias` VALUES ('SOSPECHA CLINICA DE DENGUE', 'DENGUE CON DESHIDRATACION ISOTONICA SEVERA');
INSERT INTO `tbl_global_patologias` VALUES ('SOSPECHA CLINICA DE DENGUE', 'DENGUE CON SIGNOS DE ALARMA');
INSERT INTO `tbl_global_patologias` VALUES ('SOSPECHA CLINICA DE DENGUE', 'DENGUE SIN SIGNOS DE ALARMA');
INSERT INTO `tbl_global_patologias` VALUES ('SOSPECHA CLINICA DE DENGUE', 'SOSPECHA CLINICA DE DENGUE');
INSERT INTO `tbl_global_patologias` VALUES ('SOSPECHA CLINICA DE DENGUE', 'SOSPECHA CLINICA DE DENGUE CON SIGNOS DE ALARMA');
INSERT INTO `tbl_global_patologias` VALUES ('SOSPECHA CLINICA DE DENGUE', 'SOSPECHA CLINICA DE DENGUE SIN SIGNOS DE ALARMA');
INSERT INTO `tbl_global_patologias` VALUES ('TERAPIA INTENSIVA', 'TRAUMA ABDOMINAL CERRADO + TRAUMA OFTALMOLOGICO');
INSERT INTO `tbl_global_patologias` VALUES ('TRAUMAS', 'ESGUINCE TOBILLO ');
INSERT INTO `tbl_global_patologias` VALUES ('TRAUMAS', 'POLICONTUSIONADA POR ACCIDENTE DOMESTICO');
INSERT INTO `tbl_global_patologias` VALUES ('TRAUMAS', 'POLICONUSA + TRAUMA CRANEAL SIMPLE');
INSERT INTO `tbl_global_patologias` VALUES ('TRAUMAS', 'POLITRAUMA');
INSERT INTO `tbl_global_patologias` VALUES ('TRAUMAS', 'TRAUMA DE RODILLA');
INSERT INTO `tbl_global_patologias` VALUES ('TRAUMAS', 'TRAUMA NASAL');
INSERT INTO `tbl_global_patologias` VALUES ('TRAUMAS', 'POLICONTUSO');
INSERT INTO `tbl_global_patologias` VALUES ('VACUNACION ANTI COVID-19 - ABDALA', 'PROFILAXIS COVID-19 CON VACUNA ABDALA');
INSERT INTO `tbl_global_patologias` VALUES ('VACUNACION ANTI COVID-19 - ABDALA', 'VACUNA');
INSERT INTO `tbl_global_patologias` VALUES ('VACUNACION ANTI COVID-19 - ABDALA', 'VACUNA ANTI COVID-19');

-- ----------------------------
-- Table structure for tbl_global_planes
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_planes`;
CREATE TABLE `tbl_global_planes`  (
  `codigo` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_ing_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_ing_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_ing_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_ing_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_ing_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_ing_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_ing_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_ing_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_ing_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_ing_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_ing_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_ing_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_cli_1` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_cli_2` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_cli_3` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_cli_4` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_cli_5` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_cli_6` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_cli_7` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_cli_8` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_cli_9` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_cli_10` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_cli_11` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `plan_cli_12` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = COMPACT;

-- ----------------------------
-- Records of tbl_global_planes
-- ----------------------------

-- ----------------------------
-- Table structure for tbl_global_unidades
-- ----------------------------
DROP TABLE IF EXISTS `tbl_global_unidades`;
CREATE TABLE `tbl_global_unidades`  (
  `autonumeric` bigint NOT NULL AUTO_INCREMENT,
  `codigo` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `codigo_grupo` varchar(8) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `tipo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `grupo` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `nombre` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `estado` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `captado` varchar(1) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT '0',
  `fecha_captado` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  PRIMARY KEY (`autonumeric`) USING BTREE,
  INDEX `idx_codigo`(`codigo` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = DYNAMIC;

-- ----------------------------
-- Records of tbl_global_unidades
-- ----------------------------

-- ----------------------------
-- View structure for vista_conciliar_facturas_medicos
-- ----------------------------
DROP VIEW IF EXISTS `vista_conciliar_facturas_medicos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_conciliar_facturas_medicos` AS select `tbl_acum_acad`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_acum_acad`.`factura` AS `factura`,`tbl_acum_acad`.`importe` AS `importe`,'ACADEMICO' AS `linea`,'valida2' AS `tipo`,'ACADEMICO' AS `facturador`,`tbl_acum_acad`.`tipopago` AS `tipopago`,`tbl_acum_acad`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_acad` join `tbl_global_unidades` on(`tbl_global_unidades`.`codigo` = `tbl_acum_acad`.`codigo`)) where `tbl_acum_acad`.`dia_acum` = 'A' and `tbl_acum_acad`.`importe` > 0 union all select `tbl_acum_aero`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_acum_aero`.`factura` AS `factura`,`tbl_acum_aero`.`importe` AS `importe`,'AEROPUERTO' AS `linea`,'valida1' AS `tipo`,`tbl_acum_aero`.`especialista` AS `facturador`,`tbl_acum_aero`.`tipopago` AS `tipopago`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_aero` join `tbl_global_unidades` on(`tbl_global_unidades`.`codigo` = `tbl_acum_aero`.`codigo`)) where `tbl_acum_aero`.`dia_acum` = 'A' and `tbl_acum_aero`.`importe` > 0 union all select `tbl_acum_asis`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_acum_asis`.`factura` AS `factura`,`tbl_acum_asis`.`importe` AS `importe`,'ASISTENCIA MEDICA' AS `linea`,'valida1' AS `tipo`,`tbl_acum_asis`.`especialista` AS `facturador`,`tbl_acum_asis`.`tipopago` AS `tipopago`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_asis` join `tbl_global_unidades` on(`tbl_global_unidades`.`codigo` = `tbl_acum_asis`.`codigo`)) where `tbl_acum_asis`.`dia_acum` = 'A' and `tbl_acum_asis`.`importe` > 0 union all select `tbl_acum_cali`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_acum_cali`.`factura` AS `factura`,`tbl_acum_cali`.`importe` AS `importe`,'CALIDAD DE VIDA' AS `linea`,'valida1' AS `tipo`,`tbl_acum_cali`.`especialista` AS `facturador`,`tbl_acum_cali`.`tipopago` AS `tipopago`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_cali` join `tbl_global_unidades` on(`tbl_global_unidades`.`codigo` = `tbl_acum_cali`.`codigo`)) where `tbl_acum_cali`.`dia_acum` = 'A' and `tbl_acum_cali`.`importe` > 0 union all select `tbl_acum_empr`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_acum_empr`.`factura` AS `factura`,`tbl_acum_empr`.`importe` AS `importe`,'EMPRESAS' AS `linea`,'valida4' AS `tipo`,'EMPRESAS' AS `facturador`,`tbl_acum_empr`.`tipopago` AS `tipopago`,`tbl_acum_empr`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_empr` join `tbl_global_unidades` on(`tbl_global_unidades`.`codigo` = `tbl_acum_empr`.`codigo`)) where `tbl_acum_empr`.`dia_acum` = 'A' and `tbl_acum_empr`.`importe` > 0 union all select `tbl_acum_esto`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_acum_esto`.`factura` AS `factura`,`tbl_acum_esto`.`importe` AS `importe`,'ESTOMATOLOGIA' AS `linea`,'valida1' AS `tipo`,`tbl_acum_esto`.`especialista` AS `facturador`,`tbl_acum_esto`.`tipopago` AS `tipopago`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_esto` join `tbl_global_unidades` on(`tbl_global_unidades`.`codigo` = `tbl_acum_esto`.`codigo`)) where `tbl_acum_esto`.`dia_acum` = 'A' and `tbl_acum_esto`.`importe` > 0 union all select `tbl_acum_even`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_acum_even`.`factura` AS `factura`,`tbl_acum_even`.`importe` AS `importe`,'EVENTOS CIENTIFICOS' AS `linea`,'valida3' AS `tipo`,'EVENTOS CIENTIFICOS' AS `especialista`,`tbl_acum_even`.`tipopago` AS `tipopago`,`tbl_acum_even`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_even` join `tbl_global_unidades` on(`tbl_global_unidades`.`codigo` = `tbl_acum_even`.`codigo`)) where `tbl_acum_even`.`dia_acum` = 'A' and `tbl_acum_even`.`importe` > 0 union all select `tbl_acum_covid`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_acum_covid`.`factura` AS `factura`,`tbl_acum_covid`.`importe` AS `importe`,'ESTUDIO PCR' AS `linea`,'valida1' AS `tipo`,`tbl_acum_covid`.`especialista` AS `facturador`,`tbl_acum_covid`.`tipopago` AS `tipopago`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_covid` join `tbl_global_unidades` on(`tbl_global_unidades`.`codigo` = `tbl_acum_covid`.`codigo`)) where `tbl_acum_covid`.`dia_acum` = 'A' and `tbl_acum_covid`.`importe` > 0 union all select `tbl_acum_puer`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_acum_puer`.`factura` AS `factura`,`tbl_acum_puer`.`importe` AS `importe`,'PUERTO' AS `linea`,'valida1' AS `tipo`,`tbl_acum_puer`.`especialista` AS `facturador`,`tbl_acum_puer`.`tipopago` AS `tipopago`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_puer` join `tbl_global_unidades` on(`tbl_global_unidades`.`codigo` = `tbl_acum_puer`.`codigo`)) where `tbl_acum_puer`.`dia_acum` = 'A' and `tbl_acum_puer`.`importe` > 0;

-- ----------------------------
-- View structure for vista_facturas_comercial
-- ----------------------------
DROP VIEW IF EXISTS `vista_facturas_comercial`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_facturas_comercial` AS select `tbl_acum_acad`.`codigo` AS `codigo`,`tbl_acum_acad`.`factura` AS `factura`,`tbl_acum_acad`.`importe` AS `importe`,'acad' AS `linea`,'valida2' AS `tipo`,`tbl_acum_acad`.`fecha_captado` AS `fecha_captado`,`tbl_acum_acad`.`validated_invoice` AS `validated_invoice` from `tbl_acum_acad` where `tbl_acum_acad`.`dia_acum` = 'D' union all select `tbl_acum_aero`.`codigo` AS `codigo`,`tbl_acum_aero`.`factura` AS `factura`,`tbl_acum_aero`.`importe` AS `importe`,'aero' AS `linea`,'valida1' AS `tipo`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado`,`tbl_acum_aero`.`validated_invoice` AS `validated_invoice` from `tbl_acum_aero` where `tbl_acum_aero`.`dia_acum` = 'D' union all select `tbl_acum_asis`.`codigo` AS `codigo`,`tbl_acum_asis`.`factura` AS `factura`,`tbl_acum_asis`.`importe` AS `importe`,'asis' AS `linea`,'valida1' AS `tipo`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado`,`tbl_acum_asis`.`validated_invoice` AS `validated_invoice` from `tbl_acum_asis` where `tbl_acum_asis`.`dia_acum` = 'D' union all select `tbl_acum_cali`.`codigo` AS `codigo`,`tbl_acum_cali`.`factura` AS `factura`,`tbl_acum_cali`.`importe` AS `importe`,'cali' AS `linea`,'valida1' AS `tipo`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado`,`tbl_acum_cali`.`validated_invoice` AS `validated_invoice` from `tbl_acum_cali` where `tbl_acum_cali`.`dia_acum` = 'D' union all select `tbl_acum_empr`.`codigo` AS `codigo`,`tbl_acum_empr`.`factura` AS `factura`,`tbl_acum_empr`.`importe` AS `importe`,'empr' AS `linea`,'valida4' AS `tipo`,`tbl_acum_empr`.`fecha_captado` AS `fecha_captado`,`tbl_acum_empr`.`validated_invoice` AS `validated_invoice` from `tbl_acum_empr` where `tbl_acum_empr`.`dia_acum` = 'D' union all select `tbl_acum_esto`.`codigo` AS `codigo`,`tbl_acum_esto`.`factura` AS `factura`,`tbl_acum_esto`.`importe` AS `importe`,'esto' AS `linea`,'valida1' AS `tipo`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado`,`tbl_acum_esto`.`validated_invoice` AS `validated_invoice` from `tbl_acum_esto` where `tbl_acum_esto`.`dia_acum` = 'D' union all select `tbl_acum_even`.`codigo` AS `codigo`,`tbl_acum_even`.`factura` AS `factura`,`tbl_acum_even`.`importe` AS `importe`,'even' AS `linea`,'valida3' AS `tipo`,`tbl_acum_even`.`fecha_captado` AS `fecha_captado`,`tbl_acum_even`.`validated_invoice` AS `validated_invoice` from `tbl_acum_even` where `tbl_acum_even`.`dia_acum` = 'D' union all select `tbl_acum_covid`.`codigo` AS `codigo`,`tbl_acum_covid`.`factura` AS `factura`,`tbl_acum_covid`.`importe` AS `importe`,'covid' AS `linea`,'valida1' AS `tipo`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado`,`tbl_acum_covid`.`validated_invoice` AS `validated_invoice` from `tbl_acum_covid` where `tbl_acum_covid`.`dia_acum` = 'D' union all select `tbl_acum_puer`.`codigo` AS `codigo`,`tbl_acum_puer`.`factura` AS `factura`,`tbl_acum_puer`.`importe` AS `importe`,'puer' AS `linea`,'valida1' AS `tipo`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado`,`tbl_acum_puer`.`validated_invoice` AS `validated_invoice` from `tbl_acum_puer` where `tbl_acum_puer`.`dia_acum` = 'D';

-- ----------------------------
-- View structure for vista_facturas_comercial_economia
-- ----------------------------
DROP VIEW IF EXISTS `vista_facturas_comercial_economia`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_facturas_comercial_economia` AS select `vista_facturas_comercial`.`codigo` AS `codigo`,`vista_facturas_comercial`.`factura` AS `factura`,`vista_facturas_comercial`.`factura` * 1 AS `factura_sin_ceros`,`vista_facturas_comercial`.`importe` AS `importe`,`vista_facturas_comercial`.`fecha_captado` AS `fecha_captado`,`vista_facturas_comercial`.`validated_invoice` AS `validated_invoice` from `vista_facturas_comercial` union all select `vista_facturas_economia`.`codigo` AS `codigo`,`vista_facturas_economia`.`factura` AS `factura`,`vista_facturas_economia`.`factura` * 1 AS `factura_sin_ceros`,`vista_facturas_economia`.`importe` AS `importe`,`vista_facturas_economia`.`fecha_captado` AS `fecha_captado`,`vista_facturas_economia`.`validated_invoice` AS `validated_invoice` from `vista_facturas_economia`;

-- ----------------------------
-- View structure for vista_facturas_economia
-- ----------------------------
DROP VIEW IF EXISTS `vista_facturas_economia`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_facturas_economia` AS select `tbl_acum_acad`.`codigo` AS `codigo`,`tbl_acum_acad`.`factura` AS `factura`,`tbl_acum_acad`.`importe` AS `importe`,'acad' AS `linea`,'valida2' AS `tipo`,'ACADEMICO' AS `especialista`,`tbl_acum_acad`.`fecha_captado` AS `fecha_captado`,`tbl_acum_acad`.`validated_invoice` AS `validated_invoice` from `tbl_acum_acad` union all select `tbl_acum_aero`.`codigo` AS `codigo`,`tbl_acum_aero`.`factura` AS `factura`,`tbl_acum_aero`.`importe` AS `importe`,'aero' AS `linea`,'valida1' AS `tipo`,`tbl_acum_aero`.`especialista` AS `especialista`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado`,`tbl_acum_aero`.`validated_invoice` AS `validated_invoice` from `tbl_acum_aero` union all select `tbl_acum_asis`.`codigo` AS `codigo`,`tbl_acum_asis`.`factura` AS `factura`,`tbl_acum_asis`.`importe` AS `importe`,'asis' AS `linea`,'valida1' AS `tipo`,`tbl_acum_asis`.`especialista` AS `especialista`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado`,`tbl_acum_asis`.`validated_invoice` AS `validated_invoice` from `tbl_acum_asis` union all select `tbl_acum_cali`.`codigo` AS `codigo`,`tbl_acum_cali`.`factura` AS `factura`,`tbl_acum_cali`.`importe` AS `importe`,'cali' AS `linea`,'valida1' AS `tipo`,`tbl_acum_cali`.`especialista` AS `especialista`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado`,`tbl_acum_cali`.`validated_invoice` AS `validated_invoice` from `tbl_acum_cali` union all select `tbl_acum_empr`.`codigo` AS `codigo`,`tbl_acum_empr`.`factura` AS `factura`,`tbl_acum_empr`.`importe` AS `importe`,'empr' AS `linea`,'valida4' AS `tipo`,'EMPRESAS' AS `especialista`,`tbl_acum_empr`.`fecha_captado` AS `fecha_captado`,`tbl_acum_empr`.`validated_invoice` AS `validated_invoice` from `tbl_acum_empr` union all select `tbl_acum_esto`.`codigo` AS `codigo`,`tbl_acum_esto`.`factura` AS `factura`,`tbl_acum_esto`.`importe` AS `importe`,'esto' AS `linea`,'valida1' AS `tipo`,`tbl_acum_esto`.`especialista` AS `especialista`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado`,`tbl_acum_esto`.`validated_invoice` AS `validated_invoice` from `tbl_acum_esto` union all select `tbl_acum_even`.`codigo` AS `codigo`,`tbl_acum_even`.`factura` AS `factura`,`tbl_acum_even`.`importe` AS `importe`,'even' AS `linea`,'valida3' AS `tipo`,'EVENTOS CIENTIFICOS' AS `especialista`,`tbl_acum_even`.`fecha_captado` AS `fecha_captado`,`tbl_acum_even`.`validated_invoice` AS `validated_invoice` from `tbl_acum_even` union all select `tbl_acum_covid`.`codigo` AS `codigo`,`tbl_acum_covid`.`factura` AS `factura`,`tbl_acum_covid`.`importe` AS `importe`,'covid' AS `linea`,'valida1' AS `tipo`,`tbl_acum_covid`.`especialista` AS `especialista`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado`,`tbl_acum_covid`.`validated_invoice` AS `validated_invoice` from `tbl_acum_covid` union all select `tbl_acum_puer`.`codigo` AS `codigo`,`tbl_acum_puer`.`factura` AS `factura`,`tbl_acum_puer`.`importe` AS `importe`,'puer' AS `linea`,'valida1' AS `tipo`,`tbl_acum_puer`.`especialista` AS `especialista`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado`,`tbl_acum_puer`.`validated_invoice` AS `validated_invoice` from `tbl_acum_puer`;

-- ----------------------------
-- View structure for vista_ingresos_consultorios
-- ----------------------------
DROP VIEW IF EXISTS `vista_ingresos_consultorios`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_ingresos_consultorios` AS select `tbl_acum_asis`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `unidad`,`tbl_acum_asis`.`importe` AS `importe`,`tbl_acum_asis`.`tipopago` AS `tipopago`,`tbl_acum_asis`.`cantclientes` AS `cantidad`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_asis` join `tbl_global_unidades` on(`tbl_acum_asis`.`codigo` = `tbl_global_unidades`.`codigo`)) where `tbl_global_unidades`.`estado` = '1' and `tbl_global_unidades`.`tipo` = 'CONSULTORIO';

-- ----------------------------
-- View structure for vista_ing_country_academico
-- ----------------------------
DROP VIEW IF EXISTS `vista_ing_country_academico`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_ing_country_academico` AS select `tbl_acum_acad`.`pais` AS `pais`,`tbl_acum_acad`.`importe` AS `importe`,`tbl_acum_acad`.`fecha_captado` AS `fecha_captado` from `tbl_acum_acad` where `tbl_acum_acad`.`dia_acum` = 'A' and `tbl_acum_acad`.`importe` > 0;

-- ----------------------------
-- View structure for vista_ing_country_asistencial
-- ----------------------------
DROP VIEW IF EXISTS `vista_ing_country_asistencial`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_ing_country_asistencial` AS select `tbl_acum_asis`.`pais` AS `pais`,`tbl_acum_asis`.`importe` AS `importe`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado` from `tbl_acum_asis` where `tbl_acum_asis`.`dia_acum` = 'A' and `tbl_acum_asis`.`importe` > 0 union all select `tbl_acum_esto`.`pais` AS `pais`,`tbl_acum_esto`.`importe` AS `importe`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado` from `tbl_acum_esto` where `tbl_acum_esto`.`dia_acum` = 'A' and `tbl_acum_esto`.`importe` > 0;

-- ----------------------------
-- View structure for vista_ing_country_calidad
-- ----------------------------
DROP VIEW IF EXISTS `vista_ing_country_calidad`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_ing_country_calidad` AS select `tbl_acum_cali`.`pais` AS `pais`,`tbl_acum_cali`.`importe` AS `importe`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado` from `tbl_acum_cali` where `tbl_acum_cali`.`dia_acum` = 'A' and `tbl_acum_cali`.`importe` > 0;

-- ----------------------------
-- View structure for vista_ing_country_frontera
-- ----------------------------
DROP VIEW IF EXISTS `vista_ing_country_frontera`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_ing_country_frontera` AS select `tbl_acum_aero`.`pais` AS `pais`,`tbl_acum_aero`.`importe` AS `importe`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado` from `tbl_acum_aero` where `tbl_acum_aero`.`dia_acum` = 'A' and `tbl_acum_aero`.`importe` > 0 union all select `tbl_acum_puer`.`pais` AS `pais`,`tbl_acum_puer`.`importe` AS `importe`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado` from `tbl_acum_puer` where `tbl_acum_puer`.`dia_acum` = 'A' and `tbl_acum_puer`.`importe` > 0 union all select `tbl_acum_covid`.`pais` AS `pais`,`tbl_acum_covid`.`importe` AS `importe`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado` from `tbl_acum_covid` where `tbl_acum_covid`.`dia_acum` = 'A' and `tbl_acum_covid`.`importe` > 0;

-- ----------------------------
-- View structure for vista_pacientes_asist_frontera
-- ----------------------------
DROP VIEW IF EXISTS `vista_pacientes_asist_frontera`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_pacientes_asist_frontera` AS select `tbl_acum_asis`.`cantclientes` AS `cantclientes`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado` from `tbl_acum_asis` union all select `tbl_acum_esto`.`cantclientes` AS `cantclientes`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado` from `tbl_acum_esto` union all select `tbl_acum_cali`.`cantclientes` AS `cantclientes`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado` from `tbl_acum_cali` union all select `tbl_acum_covid`.`cantclientes` AS `cantclientes`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado` from `tbl_acum_covid`;

-- ----------------------------
-- View structure for vista_pacientes_ca_eeuu
-- ----------------------------
DROP VIEW IF EXISTS `vista_pacientes_ca_eeuu`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_pacientes_ca_eeuu` AS select `tbl_acum_asis`.`codigo` AS `codigo`,`tbl_acum_asis`.`pais` AS `pais`,`tbl_acum_asis`.`importe` AS `importe`,`tbl_acum_asis`.`cantclientes` AS `cantclientes`,`tbl_global_unidades`.`tipo` AS `tipo`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_asis` join `tbl_global_unidades` on(`tbl_global_unidades`.`codigo` = `tbl_acum_asis`.`codigo`)) where `tbl_acum_asis`.`pais` = 'CANADA' or `tbl_acum_asis`.`pais` = 'ESTADOS UNIDOS DE AMERICA' union all select `tbl_acum_esto`.`codigo` AS `codigo`,`tbl_acum_esto`.`pais` AS `pais`,`tbl_acum_esto`.`importe` AS `importe`,`tbl_acum_esto`.`cantclientes` AS `cantclientes`,`tbl_global_unidades`.`tipo` AS `tipo`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_esto` join `tbl_global_unidades` on(`tbl_global_unidades`.`codigo` = `tbl_acum_esto`.`codigo`)) where `tbl_acum_esto`.`pais` = 'CANADA' or `tbl_acum_esto`.`pais` = 'ESTADOS UNIDOS DE AMERICA';

-- ----------------------------
-- View structure for vista_planes_activos
-- ----------------------------
DROP VIEW IF EXISTS `vista_planes_activos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_planes_activos` AS select `tbl_global_planes`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_global_unidades`.`tipo` AS `tipo`,`tbl_global_unidades`.`estado` AS `estado`,`tbl_global_planes`.`plan_ing_1` AS `plan_ing_1`,`tbl_global_planes`.`plan_ing_2` AS `plan_ing_2`,`tbl_global_planes`.`plan_ing_3` AS `plan_ing_3`,`tbl_global_planes`.`plan_ing_4` AS `plan_ing_4`,`tbl_global_planes`.`plan_ing_5` AS `plan_ing_5`,`tbl_global_planes`.`plan_ing_6` AS `plan_ing_6`,`tbl_global_planes`.`plan_ing_7` AS `plan_ing_7`,`tbl_global_planes`.`plan_ing_8` AS `plan_ing_8`,`tbl_global_planes`.`plan_ing_9` AS `plan_ing_9`,`tbl_global_planes`.`plan_ing_10` AS `plan_ing_10`,`tbl_global_planes`.`plan_ing_11` AS `plan_ing_11`,`tbl_global_planes`.`plan_ing_12` AS `plan_ing_12`,`tbl_global_planes`.`plan_cli_1` AS `plan_cli_1`,`tbl_global_planes`.`plan_cli_2` AS `plan_cli_2`,`tbl_global_planes`.`plan_cli_3` AS `plan_cli_3`,`tbl_global_planes`.`plan_cli_4` AS `plan_cli_4`,`tbl_global_planes`.`plan_cli_5` AS `plan_cli_5`,`tbl_global_planes`.`plan_cli_6` AS `plan_cli_6`,`tbl_global_planes`.`plan_cli_7` AS `plan_cli_7`,`tbl_global_planes`.`plan_cli_8` AS `plan_cli_8`,`tbl_global_planes`.`plan_cli_9` AS `plan_cli_9`,`tbl_global_planes`.`plan_cli_10` AS `plan_cli_10`,`tbl_global_planes`.`plan_cli_11` AS `plan_cli_11`,`tbl_global_planes`.`plan_cli_12` AS `plan_cli_12` from (`tbl_global_unidades` join `tbl_global_planes` on(`tbl_global_unidades`.`codigo` = `tbl_global_planes`.`codigo`)) where `tbl_global_unidades`.`estado` = '1';

-- ----------------------------
-- View structure for vista_planes_acumulados
-- ----------------------------
DROP VIEW IF EXISTS `vista_planes_acumulados`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_planes_acumulados` AS select `tbl_acum_acad`.`codigo` AS `codigo`,coalesce(`tbl_acum_acad`.`plan_ing_1`,0) AS `plan_ing_1`,coalesce(`tbl_acum_acad`.`plan_ing_2`,0) AS `plan_ing_2`,coalesce(`tbl_acum_acad`.`plan_ing_3`,0) AS `plan_ing_3`,coalesce(`tbl_acum_acad`.`plan_ing_4`,0) AS `plan_ing_4`,coalesce(`tbl_acum_acad`.`plan_ing_5`,0) AS `plan_ing_5`,coalesce(`tbl_acum_acad`.`plan_ing_6`,0) AS `plan_ing_6`,coalesce(`tbl_acum_acad`.`plan_ing_7`,0) AS `plan_ing_7`,coalesce(`tbl_acum_acad`.`plan_ing_8`,0) AS `plan_ing_8`,coalesce(`tbl_acum_acad`.`plan_ing_9`,0) AS `plan_ing_9`,coalesce(`tbl_acum_acad`.`plan_ing_10`,0) AS `plan_ing_10`,coalesce(`tbl_acum_acad`.`plan_ing_11`,0) AS `plan_ing_11`,coalesce(`tbl_acum_acad`.`plan_ing_12`,0) AS `plan_ing_12`,month(`tbl_acum_acad`.`fecha_captado`) AS `mes`,year(`tbl_acum_acad`.`fecha_captado`) AS `anno`,quarter(`tbl_acum_acad`.`fecha_captado`) AS `trimestre`,`tbl_acum_acad`.`plan_ing_1` + `tbl_acum_acad`.`plan_ing_2` + `tbl_acum_acad`.`plan_ing_3` + `tbl_acum_acad`.`plan_ing_4` + `tbl_acum_acad`.`plan_ing_5` + `tbl_acum_acad`.`plan_ing_6` + `tbl_acum_acad`.`plan_ing_7` + `tbl_acum_acad`.`plan_ing_8` + `tbl_acum_acad`.`plan_ing_9` + `tbl_acum_acad`.`plan_ing_10` + `tbl_acum_acad`.`plan_ing_11` + `tbl_acum_acad`.`plan_ing_12` AS `plan_anno` from `tbl_acum_acad` where `tbl_acum_acad`.`dia_acum` = 'A' group by `tbl_acum_acad`.`codigo`,month(`tbl_acum_acad`.`fecha_captado`),year(`tbl_acum_acad`.`fecha_captado`) union all select `tbl_acum_aero`.`codigo` AS `codigo`,coalesce(`tbl_acum_aero`.`plan_ing_1`,0) AS `plan_ing_1`,coalesce(`tbl_acum_aero`.`plan_ing_2`,0) AS `plan_ing_2`,coalesce(`tbl_acum_aero`.`plan_ing_3`,0) AS `plan_ing_3`,coalesce(`tbl_acum_aero`.`plan_ing_4`,0) AS `plan_ing_4`,coalesce(`tbl_acum_aero`.`plan_ing_5`,0) AS `plan_ing_5`,coalesce(`tbl_acum_aero`.`plan_ing_6`,0) AS `plan_ing_6`,coalesce(`tbl_acum_aero`.`plan_ing_7`,0) AS `plan_ing_7`,coalesce(`tbl_acum_aero`.`plan_ing_8`,0) AS `plan_ing_8`,coalesce(`tbl_acum_aero`.`plan_ing_9`,0) AS `plan_ing_9`,coalesce(`tbl_acum_aero`.`plan_ing_10`,0) AS `plan_ing_10`,coalesce(`tbl_acum_aero`.`plan_ing_11`,0) AS `plan_ing_11`,coalesce(`tbl_acum_aero`.`plan_ing_12`,0) AS `plan_ing_12`,month(`tbl_acum_aero`.`fecha_captado`) AS `mes`,year(`tbl_acum_aero`.`fecha_captado`) AS `anno`,quarter(`tbl_acum_aero`.`fecha_captado`) AS `trimestre`,`tbl_acum_aero`.`plan_ing_1` + `tbl_acum_aero`.`plan_ing_2` + `tbl_acum_aero`.`plan_ing_3` + `tbl_acum_aero`.`plan_ing_4` + `tbl_acum_aero`.`plan_ing_5` + `tbl_acum_aero`.`plan_ing_6` + `tbl_acum_aero`.`plan_ing_7` + `tbl_acum_aero`.`plan_ing_8` + `tbl_acum_aero`.`plan_ing_9` + `tbl_acum_aero`.`plan_ing_10` + `tbl_acum_aero`.`plan_ing_11` + `tbl_acum_aero`.`plan_ing_12` AS `plan_anno` from `tbl_acum_aero` where `tbl_acum_aero`.`dia_acum` = 'A' group by `tbl_acum_aero`.`codigo`,month(`tbl_acum_aero`.`fecha_captado`),year(`tbl_acum_aero`.`fecha_captado`) union all select `tbl_acum_asis`.`codigo` AS `codigo`,coalesce(`tbl_acum_asis`.`plan_ing_1`,0) AS `plan_ing_1`,coalesce(`tbl_acum_asis`.`plan_ing_2`,0) AS `plan_ing_2`,coalesce(`tbl_acum_asis`.`plan_ing_3`,0) AS `plan_ing_3`,coalesce(`tbl_acum_asis`.`plan_ing_4`,0) AS `plan_ing_4`,coalesce(`tbl_acum_asis`.`plan_ing_5`,0) AS `plan_ing_5`,coalesce(`tbl_acum_asis`.`plan_ing_6`,0) AS `plan_ing_6`,coalesce(`tbl_acum_asis`.`plan_ing_7`,0) AS `plan_ing_7`,coalesce(`tbl_acum_asis`.`plan_ing_8`,0) AS `plan_ing_8`,coalesce(`tbl_acum_asis`.`plan_ing_9`,0) AS `plan_ing_9`,coalesce(`tbl_acum_asis`.`plan_ing_10`,0) AS `plan_ing_10`,coalesce(`tbl_acum_asis`.`plan_ing_11`,0) AS `plan_ing_11`,coalesce(`tbl_acum_asis`.`plan_ing_12`,0) AS `plan_ing_12`,month(`tbl_acum_asis`.`fecha_captado`) AS `mes`,year(`tbl_acum_asis`.`fecha_captado`) AS `anno`,quarter(`tbl_acum_asis`.`fecha_captado`) AS `trimestre`,`tbl_acum_asis`.`plan_ing_1` + `tbl_acum_asis`.`plan_ing_2` + `tbl_acum_asis`.`plan_ing_3` + `tbl_acum_asis`.`plan_ing_4` + `tbl_acum_asis`.`plan_ing_5` + `tbl_acum_asis`.`plan_ing_6` + `tbl_acum_asis`.`plan_ing_7` + `tbl_acum_asis`.`plan_ing_8` + `tbl_acum_asis`.`plan_ing_9` + `tbl_acum_asis`.`plan_ing_10` + `tbl_acum_asis`.`plan_ing_11` + `tbl_acum_asis`.`plan_ing_12` AS `plan_anno` from `tbl_acum_asis` where `tbl_acum_asis`.`dia_acum` = 'A' group by `tbl_acum_asis`.`codigo`,month(`tbl_acum_asis`.`fecha_captado`),year(`tbl_acum_asis`.`fecha_captado`) union all select `tbl_acum_cali`.`codigo` AS `codigo`,coalesce(`tbl_acum_cali`.`plan_ing_1`,0) AS `plan_ing_1`,coalesce(`tbl_acum_cali`.`plan_ing_2`,0) AS `plan_ing_2`,coalesce(`tbl_acum_cali`.`plan_ing_3`,0) AS `plan_ing_3`,coalesce(`tbl_acum_cali`.`plan_ing_4`,0) AS `plan_ing_4`,coalesce(`tbl_acum_cali`.`plan_ing_5`,0) AS `plan_ing_5`,coalesce(`tbl_acum_cali`.`plan_ing_6`,0) AS `plan_ing_6`,coalesce(`tbl_acum_cali`.`plan_ing_7`,0) AS `plan_ing_7`,coalesce(`tbl_acum_cali`.`plan_ing_8`,0) AS `plan_ing_8`,coalesce(`tbl_acum_cali`.`plan_ing_9`,0) AS `plan_ing_9`,coalesce(`tbl_acum_cali`.`plan_ing_10`,0) AS `plan_ing_10`,coalesce(`tbl_acum_cali`.`plan_ing_11`,0) AS `plan_ing_11`,coalesce(`tbl_acum_cali`.`plan_ing_12`,0) AS `plan_ing_12`,month(`tbl_acum_cali`.`fecha_captado`) AS `mes`,year(`tbl_acum_cali`.`fecha_captado`) AS `anno`,quarter(`tbl_acum_cali`.`fecha_captado`) AS `trimestre`,`tbl_acum_cali`.`plan_ing_1` + `tbl_acum_cali`.`plan_ing_2` + `tbl_acum_cali`.`plan_ing_3` + `tbl_acum_cali`.`plan_ing_4` + `tbl_acum_cali`.`plan_ing_5` + `tbl_acum_cali`.`plan_ing_6` + `tbl_acum_cali`.`plan_ing_7` + `tbl_acum_cali`.`plan_ing_8` + `tbl_acum_cali`.`plan_ing_9` + `tbl_acum_cali`.`plan_ing_10` + `tbl_acum_cali`.`plan_ing_11` + `tbl_acum_cali`.`plan_ing_12` AS `plan_anno` from `tbl_acum_cali` where `tbl_acum_cali`.`dia_acum` = 'A' group by `tbl_acum_cali`.`codigo`,month(`tbl_acum_cali`.`fecha_captado`),year(`tbl_acum_cali`.`fecha_captado`) union all select `tbl_acum_empr`.`codigo` AS `codigo`,coalesce(`tbl_acum_empr`.`plan_ing_1`,0) AS `plan_ing_1`,coalesce(`tbl_acum_empr`.`plan_ing_2`,0) AS `plan_ing_2`,coalesce(`tbl_acum_empr`.`plan_ing_3`,0) AS `plan_ing_3`,coalesce(`tbl_acum_empr`.`plan_ing_4`,0) AS `plan_ing_4`,coalesce(`tbl_acum_empr`.`plan_ing_5`,0) AS `plan_ing_5`,coalesce(`tbl_acum_empr`.`plan_ing_6`,0) AS `plan_ing_6`,coalesce(`tbl_acum_empr`.`plan_ing_7`,0) AS `plan_ing_7`,coalesce(`tbl_acum_empr`.`plan_ing_8`,0) AS `plan_ing_8`,coalesce(`tbl_acum_empr`.`plan_ing_9`,0) AS `plan_ing_9`,coalesce(`tbl_acum_empr`.`plan_ing_10`,0) AS `plan_ing_10`,coalesce(`tbl_acum_empr`.`plan_ing_11`,0) AS `plan_ing_11`,coalesce(`tbl_acum_empr`.`plan_ing_12`,0) AS `plan_ing_12`,month(`tbl_acum_empr`.`fecha_captado`) AS `mes`,year(`tbl_acum_empr`.`fecha_captado`) AS `anno`,quarter(`tbl_acum_empr`.`fecha_captado`) AS `trimestre`,`tbl_acum_empr`.`plan_ing_1` + `tbl_acum_empr`.`plan_ing_2` + `tbl_acum_empr`.`plan_ing_3` + `tbl_acum_empr`.`plan_ing_4` + `tbl_acum_empr`.`plan_ing_5` + `tbl_acum_empr`.`plan_ing_6` + `tbl_acum_empr`.`plan_ing_7` + `tbl_acum_empr`.`plan_ing_8` + `tbl_acum_empr`.`plan_ing_9` + `tbl_acum_empr`.`plan_ing_10` + `tbl_acum_empr`.`plan_ing_11` + `tbl_acum_empr`.`plan_ing_12` AS `plan_anno` from `tbl_acum_empr` where `tbl_acum_empr`.`dia_acum` = 'A' group by `tbl_acum_empr`.`codigo`,month(`tbl_acum_empr`.`fecha_captado`),year(`tbl_acum_empr`.`fecha_captado`) union all select `tbl_acum_esto`.`codigo` AS `codigo`,coalesce(`tbl_acum_esto`.`plan_ing_1`,0) AS `plan_ing_1`,coalesce(`tbl_acum_esto`.`plan_ing_2`,0) AS `plan_ing_2`,coalesce(`tbl_acum_esto`.`plan_ing_3`,0) AS `plan_ing_3`,coalesce(`tbl_acum_esto`.`plan_ing_4`,0) AS `plan_ing_4`,coalesce(`tbl_acum_esto`.`plan_ing_5`,0) AS `plan_ing_5`,coalesce(`tbl_acum_esto`.`plan_ing_6`,0) AS `plan_ing_6`,coalesce(`tbl_acum_esto`.`plan_ing_7`,0) AS `plan_ing_7`,coalesce(`tbl_acum_esto`.`plan_ing_8`,0) AS `plan_ing_8`,coalesce(`tbl_acum_esto`.`plan_ing_9`,0) AS `plan_ing_9`,coalesce(`tbl_acum_esto`.`plan_ing_10`,0) AS `plan_ing_10`,coalesce(`tbl_acum_esto`.`plan_ing_11`,0) AS `plan_ing_11`,coalesce(`tbl_acum_esto`.`plan_ing_12`,0) AS `plan_ing_12`,month(`tbl_acum_esto`.`fecha_captado`) AS `mes`,year(`tbl_acum_esto`.`fecha_captado`) AS `anno`,quarter(`tbl_acum_esto`.`fecha_captado`) AS `trimestre`,`tbl_acum_esto`.`plan_ing_1` + `tbl_acum_esto`.`plan_ing_2` + `tbl_acum_esto`.`plan_ing_3` + `tbl_acum_esto`.`plan_ing_4` + `tbl_acum_esto`.`plan_ing_5` + `tbl_acum_esto`.`plan_ing_6` + `tbl_acum_esto`.`plan_ing_7` + `tbl_acum_esto`.`plan_ing_8` + `tbl_acum_esto`.`plan_ing_9` + `tbl_acum_esto`.`plan_ing_10` + `tbl_acum_esto`.`plan_ing_11` + `tbl_acum_esto`.`plan_ing_12` AS `plan_anno` from `tbl_acum_esto` where `tbl_acum_esto`.`dia_acum` = 'A' group by `tbl_acum_esto`.`codigo`,month(`tbl_acum_esto`.`fecha_captado`),year(`tbl_acum_esto`.`fecha_captado`) union all select `tbl_acum_even`.`codigo` AS `codigo`,coalesce(`tbl_acum_even`.`plan_ing_1`,0) AS `plan_ing_1`,coalesce(`tbl_acum_even`.`plan_ing_2`,0) AS `plan_ing_2`,coalesce(`tbl_acum_even`.`plan_ing_3`,0) AS `plan_ing_3`,coalesce(`tbl_acum_even`.`plan_ing_4`,0) AS `plan_ing_4`,coalesce(`tbl_acum_even`.`plan_ing_5`,0) AS `plan_ing_5`,coalesce(`tbl_acum_even`.`plan_ing_6`,0) AS `plan_ing_6`,coalesce(`tbl_acum_even`.`plan_ing_7`,0) AS `plan_ing_7`,coalesce(`tbl_acum_even`.`plan_ing_8`,0) AS `plan_ing_8`,coalesce(`tbl_acum_even`.`plan_ing_9`,0) AS `plan_ing_9`,coalesce(`tbl_acum_even`.`plan_ing_10`,0) AS `plan_ing_10`,coalesce(`tbl_acum_even`.`plan_ing_11`,0) AS `plan_ing_11`,coalesce(`tbl_acum_even`.`plan_ing_12`,0) AS `plan_ing_12`,month(`tbl_acum_even`.`fecha_captado`) AS `mes`,year(`tbl_acum_even`.`fecha_captado`) AS `anno`,quarter(`tbl_acum_even`.`fecha_captado`) AS `trimestre`,`tbl_acum_even`.`plan_ing_1` + `tbl_acum_even`.`plan_ing_2` + `tbl_acum_even`.`plan_ing_3` + `tbl_acum_even`.`plan_ing_4` + `tbl_acum_even`.`plan_ing_5` + `tbl_acum_even`.`plan_ing_6` + `tbl_acum_even`.`plan_ing_7` + `tbl_acum_even`.`plan_ing_8` + `tbl_acum_even`.`plan_ing_9` + `tbl_acum_even`.`plan_ing_10` + `tbl_acum_even`.`plan_ing_11` + `tbl_acum_even`.`plan_ing_12` AS `plan_anno` from `tbl_acum_even` where `tbl_acum_even`.`dia_acum` = 'A' group by `tbl_acum_even`.`codigo`,month(`tbl_acum_even`.`fecha_captado`),year(`tbl_acum_even`.`fecha_captado`) union all select `tbl_acum_farm`.`codigo` AS `codigo`,coalesce(`tbl_acum_farm`.`plan_ing_1`,0) AS `plan_ing_1`,coalesce(`tbl_acum_farm`.`plan_ing_2`,0) AS `plan_ing_2`,coalesce(`tbl_acum_farm`.`plan_ing_3`,0) AS `plan_ing_3`,coalesce(`tbl_acum_farm`.`plan_ing_4`,0) AS `plan_ing_4`,coalesce(`tbl_acum_farm`.`plan_ing_5`,0) AS `plan_ing_5`,coalesce(`tbl_acum_farm`.`plan_ing_6`,0) AS `plan_ing_6`,coalesce(`tbl_acum_farm`.`plan_ing_7`,0) AS `plan_ing_7`,coalesce(`tbl_acum_farm`.`plan_ing_8`,0) AS `plan_ing_8`,coalesce(`tbl_acum_farm`.`plan_ing_9`,0) AS `plan_ing_9`,coalesce(`tbl_acum_farm`.`plan_ing_10`,0) AS `plan_ing_10`,coalesce(`tbl_acum_farm`.`plan_ing_11`,0) AS `plan_ing_11`,coalesce(`tbl_acum_farm`.`plan_ing_12`,0) AS `plan_ing_12`,month(`tbl_acum_farm`.`fecha_captado`) AS `mes`,year(`tbl_acum_farm`.`fecha_captado`) AS `anno`,quarter(`tbl_acum_farm`.`fecha_captado`) AS `trimestre`,`tbl_acum_farm`.`plan_ing_1` + `tbl_acum_farm`.`plan_ing_2` + `tbl_acum_farm`.`plan_ing_3` + `tbl_acum_farm`.`plan_ing_4` + `tbl_acum_farm`.`plan_ing_5` + `tbl_acum_farm`.`plan_ing_6` + `tbl_acum_farm`.`plan_ing_7` + `tbl_acum_farm`.`plan_ing_8` + `tbl_acum_farm`.`plan_ing_9` + `tbl_acum_farm`.`plan_ing_10` + `tbl_acum_farm`.`plan_ing_11` + `tbl_acum_farm`.`plan_ing_12` AS `plan_anno` from `tbl_acum_farm` where `tbl_acum_farm`.`dia_acum` = 'A' group by `tbl_acum_farm`.`codigo`,month(`tbl_acum_farm`.`fecha_captado`),year(`tbl_acum_farm`.`fecha_captado`) union all select `tbl_acum_covid`.`codigo` AS `codigo`,coalesce(`tbl_acum_covid`.`plan_ing_1`,0) AS `plan_ing_1`,coalesce(`tbl_acum_covid`.`plan_ing_2`,0) AS `plan_ing_2`,coalesce(`tbl_acum_covid`.`plan_ing_3`,0) AS `plan_ing_3`,coalesce(`tbl_acum_covid`.`plan_ing_4`,0) AS `plan_ing_4`,coalesce(`tbl_acum_covid`.`plan_ing_5`,0) AS `plan_ing_5`,coalesce(`tbl_acum_covid`.`plan_ing_6`,0) AS `plan_ing_6`,coalesce(`tbl_acum_covid`.`plan_ing_7`,0) AS `plan_ing_7`,coalesce(`tbl_acum_covid`.`plan_ing_8`,0) AS `plan_ing_8`,coalesce(`tbl_acum_covid`.`plan_ing_9`,0) AS `plan_ing_9`,coalesce(`tbl_acum_covid`.`plan_ing_10`,0) AS `plan_ing_10`,coalesce(`tbl_acum_covid`.`plan_ing_11`,0) AS `plan_ing_11`,coalesce(`tbl_acum_covid`.`plan_ing_12`,0) AS `plan_ing_12`,month(`tbl_acum_covid`.`fecha_captado`) AS `mes`,year(`tbl_acum_covid`.`fecha_captado`) AS `anno`,quarter(`tbl_acum_covid`.`fecha_captado`) AS `trimestre`,`tbl_acum_covid`.`plan_ing_1` + `tbl_acum_covid`.`plan_ing_2` + `tbl_acum_covid`.`plan_ing_3` + `tbl_acum_covid`.`plan_ing_4` + `tbl_acum_covid`.`plan_ing_5` + `tbl_acum_covid`.`plan_ing_6` + `tbl_acum_covid`.`plan_ing_7` + `tbl_acum_covid`.`plan_ing_8` + `tbl_acum_covid`.`plan_ing_9` + `tbl_acum_covid`.`plan_ing_10` + `tbl_acum_covid`.`plan_ing_11` + `tbl_acum_covid`.`plan_ing_12` AS `plan_anno` from `tbl_acum_covid` where `tbl_acum_covid`.`dia_acum` = 'A' group by `tbl_acum_covid`.`codigo`,month(`tbl_acum_covid`.`fecha_captado`),year(`tbl_acum_covid`.`fecha_captado`) union all select `tbl_acum_puer`.`codigo` AS `codigo`,coalesce(`tbl_acum_puer`.`plan_ing_1`,0) AS `plan_ing_1`,coalesce(`tbl_acum_puer`.`plan_ing_2`,0) AS `plan_ing_2`,coalesce(`tbl_acum_puer`.`plan_ing_3`,0) AS `plan_ing_3`,coalesce(`tbl_acum_puer`.`plan_ing_4`,0) AS `plan_ing_4`,coalesce(`tbl_acum_puer`.`plan_ing_5`,0) AS `plan_ing_5`,coalesce(`tbl_acum_puer`.`plan_ing_6`,0) AS `plan_ing_6`,coalesce(`tbl_acum_puer`.`plan_ing_7`,0) AS `plan_ing_7`,coalesce(`tbl_acum_puer`.`plan_ing_8`,0) AS `plan_ing_8`,coalesce(`tbl_acum_puer`.`plan_ing_9`,0) AS `plan_ing_9`,coalesce(`tbl_acum_puer`.`plan_ing_10`,0) AS `plan_ing_10`,coalesce(`tbl_acum_puer`.`plan_ing_11`,0) AS `plan_ing_11`,coalesce(`tbl_acum_puer`.`plan_ing_12`,0) AS `plan_ing_12`,month(`tbl_acum_puer`.`fecha_captado`) AS `mes`,year(`tbl_acum_puer`.`fecha_captado`) AS `anno`,quarter(`tbl_acum_puer`.`fecha_captado`) AS `trimestre`,`tbl_acum_puer`.`plan_ing_1` + `tbl_acum_puer`.`plan_ing_2` + `tbl_acum_puer`.`plan_ing_3` + `tbl_acum_puer`.`plan_ing_4` + `tbl_acum_puer`.`plan_ing_5` + `tbl_acum_puer`.`plan_ing_6` + `tbl_acum_puer`.`plan_ing_7` + `tbl_acum_puer`.`plan_ing_8` + `tbl_acum_puer`.`plan_ing_9` + `tbl_acum_puer`.`plan_ing_10` + `tbl_acum_puer`.`plan_ing_11` + `tbl_acum_puer`.`plan_ing_12` AS `plan_anno` from `tbl_acum_puer` where `tbl_acum_puer`.`dia_acum` = 'A' group by `tbl_acum_puer`.`codigo`,month(`tbl_acum_puer`.`fecha_captado`),year(`tbl_acum_puer`.`fecha_captado`);

-- ----------------------------
-- View structure for vista_planes_acumulados_con_nombres
-- ----------------------------
DROP VIEW IF EXISTS `vista_planes_acumulados_con_nombres`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_planes_acumulados_con_nombres` AS select distinct `vista_planes_acumulados`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_global_unidades`.`tipo` AS `tipo`,`tbl_global_grupos`.`linea` AS `linea`,`vista_planes_acumulados`.`plan_ing_1` AS `plan_ing_1`,`vista_planes_acumulados`.`plan_ing_2` AS `plan_ing_2`,`vista_planes_acumulados`.`plan_ing_3` AS `plan_ing_3`,`vista_planes_acumulados`.`plan_ing_4` AS `plan_ing_4`,`vista_planes_acumulados`.`plan_ing_5` AS `plan_ing_5`,`vista_planes_acumulados`.`plan_ing_6` AS `plan_ing_6`,`vista_planes_acumulados`.`plan_ing_7` AS `plan_ing_7`,`vista_planes_acumulados`.`plan_ing_8` AS `plan_ing_8`,`vista_planes_acumulados`.`plan_ing_9` AS `plan_ing_9`,`vista_planes_acumulados`.`plan_ing_10` AS `plan_ing_10`,`vista_planes_acumulados`.`plan_ing_11` AS `plan_ing_11`,`vista_planes_acumulados`.`plan_ing_12` AS `plan_ing_12`,`vista_planes_acumulados`.`plan_anno` AS `plan_anno`,`vista_planes_acumulados`.`mes` AS `mes`,`vista_planes_acumulados`.`anno` AS `anno`,`vista_planes_acumulados`.`trimestre` AS `trimestre` from (`vista_planes_acumulados` join (`tbl_global_unidades` join `tbl_global_grupos` on(`tbl_global_unidades`.`codigo_grupo` = `tbl_global_grupos`.`codigo_grupo`)) on(`vista_planes_acumulados`.`codigo` = `tbl_global_unidades`.`codigo`)) group by `tbl_global_unidades`.`nombre`,`vista_planes_acumulados`.`anno`,`vista_planes_acumulados`.`mes`;

-- ----------------------------
-- View structure for vista_planes_acumulados_unid_espe
-- ----------------------------
DROP VIEW IF EXISTS `vista_planes_acumulados_unid_espe`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_planes_acumulados_unid_espe` AS select distinct `vista_planes_acumulados_con_nombres`.`nombre` AS `nombre`,`vista_planes_acumulados_con_nombres`.`plan_ing_1` AS `plan_ing_1`,`vista_planes_acumulados_con_nombres`.`plan_ing_2` AS `plan_ing_2`,`vista_planes_acumulados_con_nombres`.`plan_ing_3` AS `plan_ing_3`,`vista_planes_acumulados_con_nombres`.`plan_ing_4` AS `plan_ing_4`,`vista_planes_acumulados_con_nombres`.`plan_ing_5` AS `plan_ing_5`,`vista_planes_acumulados_con_nombres`.`plan_ing_6` AS `plan_ing_6`,`vista_planes_acumulados_con_nombres`.`plan_ing_7` AS `plan_ing_7`,`vista_planes_acumulados_con_nombres`.`plan_ing_8` AS `plan_ing_8`,`vista_planes_acumulados_con_nombres`.`plan_ing_9` AS `plan_ing_9`,`vista_planes_acumulados_con_nombres`.`plan_ing_10` AS `plan_ing_10`,`vista_planes_acumulados_con_nombres`.`plan_ing_11` AS `plan_ing_11`,`vista_planes_acumulados_con_nombres`.`plan_ing_12` AS `plan_ing_12`,`vista_planes_acumulados_con_nombres`.`anno` AS `anno` from `vista_planes_acumulados_con_nombres` union all select distinct `tbl_global_especialistas`.`nombre` AS `nombre`,`tbl_global_especialistas`.`plan_1` AS `plan_ing_1`,`tbl_global_especialistas`.`plan_2` AS `plan_ing_2`,`tbl_global_especialistas`.`plan_3` AS `plan_ing_3`,`tbl_global_especialistas`.`plan_4` AS `plan_ing_4`,`tbl_global_especialistas`.`plan_5` AS `plan_ing_5`,`tbl_global_especialistas`.`plan_6` AS `plan_ing_6`,`tbl_global_especialistas`.`plan_7` AS `plan_ing_7`,`tbl_global_especialistas`.`plan_8` AS `plan_ing_8`,`tbl_global_especialistas`.`plan_9` AS `plan_ing_9`,`tbl_global_especialistas`.`plan_10` AS `plan_ing_10`,`tbl_global_especialistas`.`plan_11` AS `plan_ing_11`,`tbl_global_especialistas`.`plan_12` AS `plan_ing_12`,`tbl_global_especialistas`.`anno` AS `anno` from `tbl_global_especialistas`;

-- ----------------------------
-- View structure for vista_planes_anuales_acumulados
-- ----------------------------
DROP VIEW IF EXISTS `vista_planes_anuales_acumulados`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_planes_anuales_acumulados` AS select distinct `vista_planes_acumulados_con_nombres`.`codigo` AS `codigo`,`vista_planes_acumulados_con_nombres`.`anno` AS `anno`,`vista_planes_acumulados_con_nombres`.`linea` AS `linea`,round(`vista_planes_acumulados_con_nombres`.`plan_ing_1` + `vista_planes_acumulados_con_nombres`.`plan_ing_2` + `vista_planes_acumulados_con_nombres`.`plan_ing_3` + `vista_planes_acumulados_con_nombres`.`plan_ing_4` + `vista_planes_acumulados_con_nombres`.`plan_ing_5` + `vista_planes_acumulados_con_nombres`.`plan_ing_6` + `vista_planes_acumulados_con_nombres`.`plan_ing_7` + `vista_planes_acumulados_con_nombres`.`plan_ing_8` + `vista_planes_acumulados_con_nombres`.`plan_ing_9` + `vista_planes_acumulados_con_nombres`.`plan_ing_10` + `vista_planes_acumulados_con_nombres`.`plan_ing_11` + `vista_planes_acumulados_con_nombres`.`plan_ing_12`,2) AS `plan_anual`,round(`vista_planes_acumulados_con_nombres`.`plan_ing_1` + `vista_planes_acumulados_con_nombres`.`plan_ing_2` + `vista_planes_acumulados_con_nombres`.`plan_ing_3`,2) AS `trimestre_1`,round(`vista_planes_acumulados_con_nombres`.`plan_ing_4` + `vista_planes_acumulados_con_nombres`.`plan_ing_5` + `vista_planes_acumulados_con_nombres`.`plan_ing_6`,2) AS `trimestre_2`,round(`vista_planes_acumulados_con_nombres`.`plan_ing_7` + `vista_planes_acumulados_con_nombres`.`plan_ing_8` + `vista_planes_acumulados_con_nombres`.`plan_ing_9`,2) AS `trimestre_3`,round(`vista_planes_acumulados_con_nombres`.`plan_ing_10` + `vista_planes_acumulados_con_nombres`.`plan_ing_11` + `vista_planes_acumulados_con_nombres`.`plan_ing_12`,2) AS `trimestre_4`,`vista_planes_acumulados_con_nombres`.`plan_ing_1` AS `plan_ing_1`,`vista_planes_acumulados_con_nombres`.`plan_ing_2` AS `plan_ing_2`,`vista_planes_acumulados_con_nombres`.`plan_ing_3` AS `plan_ing_3`,`vista_planes_acumulados_con_nombres`.`plan_ing_4` AS `plan_ing_4`,`vista_planes_acumulados_con_nombres`.`plan_ing_5` AS `plan_ing_5`,`vista_planes_acumulados_con_nombres`.`plan_ing_6` AS `plan_ing_6`,`vista_planes_acumulados_con_nombres`.`plan_ing_7` AS `plan_ing_7`,`vista_planes_acumulados_con_nombres`.`plan_ing_8` AS `plan_ing_8`,`vista_planes_acumulados_con_nombres`.`plan_ing_9` AS `plan_ing_9`,`vista_planes_acumulados_con_nombres`.`plan_ing_10` AS `plan_ing_10`,`vista_planes_acumulados_con_nombres`.`plan_ing_11` AS `plan_ing_11`,`vista_planes_acumulados_con_nombres`.`plan_ing_12` AS `plan_ing_12` from `vista_planes_acumulados_con_nombres`;

-- ----------------------------
-- View structure for vista_planes_ing_cli_acumulados
-- ----------------------------
DROP VIEW IF EXISTS `vista_planes_ing_cli_acumulados`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_planes_ing_cli_acumulados` AS select `subconsulta`.`fecha_captado` AS `fecha_captado`,`subconsulta`.`plan_ing_1` AS `plan_ing_1`,`subconsulta`.`plan_ing_2` AS `plan_ing_2`,`subconsulta`.`plan_ing_3` AS `plan_ing_3`,`subconsulta`.`plan_ing_4` AS `plan_ing_4`,`subconsulta`.`plan_ing_5` AS `plan_ing_5`,`subconsulta`.`plan_ing_6` AS `plan_ing_6`,`subconsulta`.`plan_ing_7` AS `plan_ing_7`,`subconsulta`.`plan_ing_8` AS `plan_ing_8`,`subconsulta`.`plan_ing_9` AS `plan_ing_9`,`subconsulta`.`plan_ing_10` AS `plan_ing_10`,`subconsulta`.`plan_ing_11` AS `plan_ing_11`,`subconsulta`.`plan_ing_12` AS `plan_ing_12`,`subconsulta`.`plan_cli_1` AS `plan_cli_1`,`subconsulta`.`plan_cli_2` AS `plan_cli_2`,`subconsulta`.`plan_cli_3` AS `plan_cli_3`,`subconsulta`.`plan_cli_4` AS `plan_cli_4`,`subconsulta`.`plan_cli_5` AS `plan_cli_5`,`subconsulta`.`plan_cli_6` AS `plan_cli_6`,`subconsulta`.`plan_cli_7` AS `plan_cli_7`,`subconsulta`.`plan_cli_8` AS `plan_cli_8`,`subconsulta`.`plan_cli_9` AS `plan_cli_9`,`subconsulta`.`plan_cli_10` AS `plan_cli_10`,`subconsulta`.`plan_cli_11` AS `plan_cli_11`,`subconsulta`.`plan_cli_12` AS `plan_cli_12` from (select `tbl_acum_acad`.`fecha_captado` AS `fecha_captado`,`tbl_acum_acad`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_acad`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_acad`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_acad`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_acad`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_acad`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_acad`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_acad`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_acad`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_acad`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_acad`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_acad`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_acad`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_acad`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_acad`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_acad`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_acad`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_acad`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_acad`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_acad`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_acad`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_acad`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_acad`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_acad`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_acad` group by `tbl_acum_acad`.`codigo`,`tbl_acum_acad`.`fecha_captado` union all select `tbl_acum_aero`.`fecha_captado` AS `fecha_captado`,`tbl_acum_aero`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_aero`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_aero`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_aero`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_aero`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_aero`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_aero`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_aero`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_aero`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_aero`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_aero`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_aero`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_aero`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_aero`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_aero`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_aero`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_aero`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_aero`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_aero`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_aero`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_aero`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_aero`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_aero`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_aero`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_aero` group by `tbl_acum_aero`.`codigo`,`tbl_acum_aero`.`fecha_captado` union all select `tbl_acum_asis`.`fecha_captado` AS `fecha_captado`,`tbl_acum_asis`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_asis`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_asis`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_asis`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_asis`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_asis`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_asis`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_asis`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_asis`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_asis`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_asis`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_asis`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_asis`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_asis`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_asis`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_asis`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_asis`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_asis`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_asis`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_asis`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_asis`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_asis`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_asis`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_asis`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_asis` group by `tbl_acum_asis`.`codigo`,`tbl_acum_asis`.`fecha_captado` union all select `tbl_acum_cali`.`fecha_captado` AS `fecha_captado`,`tbl_acum_cali`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_cali`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_cali`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_cali`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_cali`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_cali`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_cali`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_cali`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_cali`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_cali`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_cali`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_cali`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_cali`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_cali`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_cali`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_cali`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_cali`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_cali`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_cali`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_cali`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_cali`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_cali`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_cali`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_cali`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_cali` group by `tbl_acum_cali`.`codigo`,`tbl_acum_cali`.`fecha_captado` union all select `tbl_acum_empr`.`fecha_captado` AS `fecha_captado`,`tbl_acum_empr`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_empr`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_empr`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_empr`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_empr`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_empr`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_empr`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_empr`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_empr`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_empr`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_empr`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_empr`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_empr`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_empr`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_empr`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_empr`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_empr`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_empr`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_empr`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_empr`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_empr`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_empr`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_empr`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_empr`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_empr` group by `tbl_acum_empr`.`codigo`,`tbl_acum_empr`.`fecha_captado` union all select `tbl_acum_esto`.`fecha_captado` AS `fecha_captado`,`tbl_acum_esto`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_esto`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_esto`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_esto`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_esto`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_esto`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_esto`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_esto`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_esto`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_esto`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_esto`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_esto`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_esto`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_esto`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_esto`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_esto`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_esto`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_esto`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_esto`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_esto`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_esto`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_esto`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_esto`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_esto`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_esto` group by `tbl_acum_esto`.`codigo`,`tbl_acum_esto`.`fecha_captado` union all select `tbl_acum_even`.`fecha_captado` AS `fecha_captado`,`tbl_acum_even`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_even`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_even`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_even`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_even`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_even`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_even`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_even`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_even`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_even`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_even`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_even`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_even`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_even`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_even`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_even`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_even`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_even`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_even`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_even`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_even`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_even`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_even`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_even`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_even` group by `tbl_acum_even`.`codigo`,`tbl_acum_even`.`fecha_captado` union all select `tbl_acum_farm`.`fecha_captado` AS `fecha_captado`,`tbl_acum_farm`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_farm`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_farm`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_farm`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_farm`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_farm`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_farm`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_farm`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_farm`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_farm`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_farm`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_farm`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_farm`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_farm`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_farm`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_farm`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_farm`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_farm`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_farm`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_farm`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_farm`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_farm`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_farm`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_farm`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_farm` group by `tbl_acum_farm`.`codigo`,`tbl_acum_farm`.`fecha_captado` union all select `tbl_acum_covid`.`fecha_captado` AS `fecha_captado`,`tbl_acum_covid`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_covid`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_covid`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_covid`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_covid`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_covid`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_covid`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_covid`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_covid`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_covid`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_covid`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_covid`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_covid`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_covid`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_covid`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_covid`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_covid`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_covid`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_covid`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_covid`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_covid`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_covid`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_covid`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_covid`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_covid` group by `tbl_acum_covid`.`codigo`,`tbl_acum_covid`.`fecha_captado` union all select `tbl_acum_puer`.`fecha_captado` AS `fecha_captado`,`tbl_acum_puer`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_puer`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_puer`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_puer`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_puer`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_puer`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_puer`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_puer`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_puer`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_puer`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_puer`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_puer`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_puer`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_puer`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_puer`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_puer`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_puer`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_puer`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_puer`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_puer`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_puer`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_puer`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_puer`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_puer`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_puer` group by `tbl_acum_puer`.`codigo`,`tbl_acum_puer`.`fecha_captado`) `subconsulta` where `subconsulta`.`plan_ing_1` * 1 > 0 and `subconsulta`.`plan_ing_2` * 1 > 0 and `subconsulta`.`plan_ing_3` * 1 > 0 and `subconsulta`.`plan_ing_4` * 1 > 0 and `subconsulta`.`plan_ing_5` * 1 > 0 and `subconsulta`.`plan_ing_6` * 1 > 0 and `subconsulta`.`plan_ing_7` * 1 > 0 and `subconsulta`.`plan_ing_8` * 1 > 0 and `subconsulta`.`plan_ing_9` * 1 > 0 and `subconsulta`.`plan_ing_10` * 1 > 0 and `subconsulta`.`plan_ing_11` * 1 > 0 and `subconsulta`.`plan_ing_12` * 1 > 0 and `subconsulta`.`plan_cli_1` * 1 > 0 and `subconsulta`.`plan_cli_2` * 1 > 0 and `subconsulta`.`plan_cli_3` * 1 > 0 and `subconsulta`.`plan_cli_4` * 1 > 0 and `subconsulta`.`plan_cli_5` * 1 > 0 and `subconsulta`.`plan_cli_6` * 1 > 0 and `subconsulta`.`plan_cli_7` * 1 > 0 and `subconsulta`.`plan_cli_8` * 1 > 0 and `subconsulta`.`plan_cli_9` * 1 > 0 and `subconsulta`.`plan_cli_10` * 1 > 0 and `subconsulta`.`plan_cli_11` * 1 > 0 and `subconsulta`.`plan_cli_12` * 1 > 0 group by `subconsulta`.`fecha_captado` order by `subconsulta`.`fecha_captado`;

-- ----------------------------
-- View structure for vista_planes_ing_cli_acumulados_full
-- ----------------------------
DROP VIEW IF EXISTS `vista_planes_ing_cli_acumulados_full`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_planes_ing_cli_acumulados_full` AS select `subconsulta`.`codigo` AS `codigo`,`subconsulta`.`fecha_captado` AS `fecha_captado`,`subconsulta`.`plan_ing_1` AS `plan_ing_1`,`subconsulta`.`plan_ing_2` AS `plan_ing_2`,`subconsulta`.`plan_ing_3` AS `plan_ing_3`,`subconsulta`.`plan_ing_4` AS `plan_ing_4`,`subconsulta`.`plan_ing_5` AS `plan_ing_5`,`subconsulta`.`plan_ing_6` AS `plan_ing_6`,`subconsulta`.`plan_ing_7` AS `plan_ing_7`,`subconsulta`.`plan_ing_8` AS `plan_ing_8`,`subconsulta`.`plan_ing_9` AS `plan_ing_9`,`subconsulta`.`plan_ing_10` AS `plan_ing_10`,`subconsulta`.`plan_ing_11` AS `plan_ing_11`,`subconsulta`.`plan_ing_12` AS `plan_ing_12`,`subconsulta`.`plan_cli_1` AS `plan_cli_1`,`subconsulta`.`plan_cli_2` AS `plan_cli_2`,`subconsulta`.`plan_cli_3` AS `plan_cli_3`,`subconsulta`.`plan_cli_4` AS `plan_cli_4`,`subconsulta`.`plan_cli_5` AS `plan_cli_5`,`subconsulta`.`plan_cli_6` AS `plan_cli_6`,`subconsulta`.`plan_cli_7` AS `plan_cli_7`,`subconsulta`.`plan_cli_8` AS `plan_cli_8`,`subconsulta`.`plan_cli_9` AS `plan_cli_9`,`subconsulta`.`plan_cli_10` AS `plan_cli_10`,`subconsulta`.`plan_cli_11` AS `plan_cli_11`,`subconsulta`.`plan_cli_12` AS `plan_cli_12` from (select `tbl_acum_acad`.`codigo` AS `codigo`,`tbl_acum_acad`.`fecha_captado` AS `fecha_captado`,`tbl_acum_acad`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_acad`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_acad`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_acad`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_acad`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_acad`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_acad`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_acad`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_acad`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_acad`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_acad`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_acad`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_acad`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_acad`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_acad`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_acad`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_acad`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_acad`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_acad`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_acad`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_acad`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_acad`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_acad`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_acad`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_acad` group by `tbl_acum_acad`.`codigo`,`tbl_acum_acad`.`fecha_captado` union all select `tbl_acum_aero`.`codigo` AS `codigo`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado`,`tbl_acum_aero`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_aero`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_aero`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_aero`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_aero`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_aero`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_aero`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_aero`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_aero`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_aero`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_aero`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_aero`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_aero`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_aero`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_aero`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_aero`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_aero`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_aero`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_aero`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_aero`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_aero`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_aero`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_aero`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_aero`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_aero` group by `tbl_acum_aero`.`codigo`,`tbl_acum_aero`.`fecha_captado` union all select `tbl_acum_asis`.`codigo` AS `codigo`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado`,`tbl_acum_asis`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_asis`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_asis`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_asis`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_asis`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_asis`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_asis`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_asis`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_asis`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_asis`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_asis`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_asis`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_asis`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_asis`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_asis`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_asis`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_asis`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_asis`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_asis`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_asis`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_asis`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_asis`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_asis`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_asis`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_asis` group by `tbl_acum_asis`.`codigo`,`tbl_acum_asis`.`fecha_captado` union all select `tbl_acum_cali`.`codigo` AS `codigo`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado`,`tbl_acum_cali`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_cali`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_cali`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_cali`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_cali`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_cali`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_cali`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_cali`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_cali`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_cali`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_cali`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_cali`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_cali`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_cali`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_cali`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_cali`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_cali`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_cali`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_cali`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_cali`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_cali`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_cali`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_cali`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_cali`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_cali` group by `tbl_acum_cali`.`codigo`,`tbl_acum_cali`.`fecha_captado` union all select `tbl_acum_empr`.`codigo` AS `codigo`,`tbl_acum_empr`.`fecha_captado` AS `fecha_captado`,`tbl_acum_empr`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_empr`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_empr`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_empr`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_empr`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_empr`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_empr`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_empr`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_empr`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_empr`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_empr`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_empr`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_empr`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_empr`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_empr`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_empr`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_empr`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_empr`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_empr`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_empr`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_empr`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_empr`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_empr`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_empr`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_empr` group by `tbl_acum_empr`.`codigo`,`tbl_acum_empr`.`fecha_captado` union all select `tbl_acum_esto`.`codigo` AS `codigo`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado`,`tbl_acum_esto`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_esto`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_esto`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_esto`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_esto`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_esto`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_esto`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_esto`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_esto`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_esto`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_esto`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_esto`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_esto`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_esto`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_esto`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_esto`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_esto`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_esto`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_esto`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_esto`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_esto`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_esto`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_esto`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_esto`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_esto` group by `tbl_acum_esto`.`codigo`,`tbl_acum_esto`.`fecha_captado` union all select `tbl_acum_even`.`codigo` AS `codigo`,`tbl_acum_even`.`fecha_captado` AS `fecha_captado`,`tbl_acum_even`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_even`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_even`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_even`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_even`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_even`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_even`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_even`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_even`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_even`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_even`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_even`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_even`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_even`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_even`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_even`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_even`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_even`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_even`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_even`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_even`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_even`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_even`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_even`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_even` group by `tbl_acum_even`.`codigo`,`tbl_acum_even`.`fecha_captado` union all select `tbl_acum_farm`.`codigo` AS `codigo`,`tbl_acum_farm`.`fecha_captado` AS `fecha_captado`,`tbl_acum_farm`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_farm`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_farm`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_farm`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_farm`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_farm`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_farm`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_farm`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_farm`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_farm`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_farm`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_farm`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_farm`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_farm`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_farm`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_farm`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_farm`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_farm`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_farm`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_farm`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_farm`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_farm`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_farm`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_farm`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_farm` group by `tbl_acum_farm`.`codigo`,`tbl_acum_farm`.`fecha_captado` union all select `tbl_acum_covid`.`codigo` AS `codigo`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado`,`tbl_acum_covid`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_covid`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_covid`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_covid`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_covid`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_covid`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_covid`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_covid`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_covid`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_covid`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_covid`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_covid`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_covid`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_covid`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_covid`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_covid`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_covid`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_covid`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_covid`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_covid`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_covid`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_covid`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_covid`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_covid`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_covid` group by `tbl_acum_covid`.`codigo`,`tbl_acum_covid`.`fecha_captado` union all select `tbl_acum_puer`.`codigo` AS `codigo`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado`,`tbl_acum_puer`.`plan_ing_1` AS `plan_ing_1`,`tbl_acum_puer`.`plan_ing_2` AS `plan_ing_2`,`tbl_acum_puer`.`plan_ing_3` AS `plan_ing_3`,`tbl_acum_puer`.`plan_ing_4` AS `plan_ing_4`,`tbl_acum_puer`.`plan_ing_5` AS `plan_ing_5`,`tbl_acum_puer`.`plan_ing_6` AS `plan_ing_6`,`tbl_acum_puer`.`plan_ing_7` AS `plan_ing_7`,`tbl_acum_puer`.`plan_ing_8` AS `plan_ing_8`,`tbl_acum_puer`.`plan_ing_9` AS `plan_ing_9`,`tbl_acum_puer`.`plan_ing_10` AS `plan_ing_10`,`tbl_acum_puer`.`plan_ing_11` AS `plan_ing_11`,`tbl_acum_puer`.`plan_ing_12` AS `plan_ing_12`,`tbl_acum_puer`.`plan_cli_1` AS `plan_cli_1`,`tbl_acum_puer`.`plan_cli_2` AS `plan_cli_2`,`tbl_acum_puer`.`plan_cli_3` AS `plan_cli_3`,`tbl_acum_puer`.`plan_cli_4` AS `plan_cli_4`,`tbl_acum_puer`.`plan_cli_5` AS `plan_cli_5`,`tbl_acum_puer`.`plan_cli_6` AS `plan_cli_6`,`tbl_acum_puer`.`plan_cli_7` AS `plan_cli_7`,`tbl_acum_puer`.`plan_cli_8` AS `plan_cli_8`,`tbl_acum_puer`.`plan_cli_9` AS `plan_cli_9`,`tbl_acum_puer`.`plan_cli_10` AS `plan_cli_10`,`tbl_acum_puer`.`plan_cli_11` AS `plan_cli_11`,`tbl_acum_puer`.`plan_cli_12` AS `plan_cli_12` from `tbl_acum_puer` group by `tbl_acum_puer`.`codigo`,`tbl_acum_puer`.`fecha_captado`) `subconsulta` where `subconsulta`.`plan_ing_1` * 1 > 0 and `subconsulta`.`plan_ing_2` * 1 > 0 and `subconsulta`.`plan_ing_3` * 1 > 0 and `subconsulta`.`plan_ing_4` * 1 > 0 and `subconsulta`.`plan_ing_5` * 1 > 0 and `subconsulta`.`plan_ing_6` * 1 > 0 and `subconsulta`.`plan_ing_7` * 1 > 0 and `subconsulta`.`plan_ing_8` * 1 > 0 and `subconsulta`.`plan_ing_9` * 1 > 0 and `subconsulta`.`plan_ing_10` * 1 > 0 and `subconsulta`.`plan_ing_11` * 1 > 0 and `subconsulta`.`plan_ing_12` * 1 > 0 and `subconsulta`.`plan_cli_1` * 1 > 0 and `subconsulta`.`plan_cli_2` * 1 > 0 and `subconsulta`.`plan_cli_3` * 1 > 0 and `subconsulta`.`plan_cli_4` * 1 > 0 and `subconsulta`.`plan_cli_5` * 1 > 0 and `subconsulta`.`plan_cli_6` * 1 > 0 and `subconsulta`.`plan_cli_7` * 1 > 0 and `subconsulta`.`plan_cli_8` * 1 > 0 and `subconsulta`.`plan_cli_9` * 1 > 0 and `subconsulta`.`plan_cli_10` * 1 > 0 and `subconsulta`.`plan_cli_11` * 1 > 0 and `subconsulta`.`plan_cli_12` * 1 > 0 order by `subconsulta`.`fecha_captado`;

-- ----------------------------
-- View structure for vista_productividad_asistencial
-- ----------------------------
DROP VIEW IF EXISTS `vista_productividad_asistencial`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_productividad_asistencial` AS select `tbl_acum_asis`.`especialista` AS `especialista`,`tbl_acum_asis`.`factura` AS `factura`,`tbl_acum_asis`.`importe` AS `importe`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado` from `tbl_acum_asis` where `tbl_acum_asis`.`dia_acum` = 'A' and `tbl_acum_asis`.`importe` > 0 union all select `tbl_acum_esto`.`especialista` AS `especialista`,`tbl_acum_esto`.`factura` AS `factura`,`tbl_acum_esto`.`importe` AS `importe`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado` from `tbl_acum_esto` where `tbl_acum_esto`.`dia_acum` = 'A' and `tbl_acum_esto`.`importe` > 0 union all select `tbl_acum_cali`.`especialista` AS `especialista`,`tbl_acum_cali`.`factura` AS `factura`,`tbl_acum_cali`.`importe` AS `importe`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado` from `tbl_acum_cali` where `tbl_acum_cali`.`dia_acum` = 'A' and `tbl_acum_cali`.`importe` > 0;

-- ----------------------------
-- View structure for vista_productividad_frontera
-- ----------------------------
DROP VIEW IF EXISTS `vista_productividad_frontera`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_productividad_frontera` AS select `tbl_acum_aero`.`especialista` AS `especialista`,`tbl_acum_aero`.`factura` AS `factura`,`tbl_acum_aero`.`importe` AS `importe`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado` from `tbl_acum_aero` where `tbl_acum_aero`.`dia_acum` = 'A' and `tbl_acum_aero`.`importe` > 0 union all select `tbl_acum_puer`.`especialista` AS `especialista`,`tbl_acum_puer`.`factura` AS `factura`,`tbl_acum_puer`.`importe` AS `importe`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado` from `tbl_acum_puer` where `tbl_acum_puer`.`dia_acum` = 'A' and `tbl_acum_puer`.`importe` > 0 union all select `tbl_acum_covid`.`especialista` AS `especialista`,`tbl_acum_covid`.`factura` AS `factura`,`tbl_acum_covid`.`importe` AS `importe`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado` from `tbl_acum_covid` where `tbl_acum_covid`.`dia_acum` = 'A' and `tbl_acum_covid`.`importe` > 0;

-- ----------------------------
-- View structure for vista_productividad_general
-- ----------------------------
DROP VIEW IF EXISTS `vista_productividad_general`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_productividad_general` AS select `tbl_acum_asis`.`especialista` AS `especialista`,`tbl_acum_asis`.`factura` AS `factura`,`tbl_acum_asis`.`importe` AS `importe`,month(`tbl_acum_asis`.`fecha_captado`) AS `mes_captado`,year(`tbl_acum_asis`.`fecha_captado`) AS `ano_captado`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado` from `tbl_acum_asis` where `tbl_acum_asis`.`dia_acum` = 'A' union all select `tbl_acum_esto`.`especialista` AS `especialista`,`tbl_acum_esto`.`factura` AS `factura`,`tbl_acum_esto`.`importe` AS `importe`,month(`tbl_acum_esto`.`fecha_captado`) AS `mes_captado`,year(`tbl_acum_esto`.`fecha_captado`) AS `ano_captado`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado` from `tbl_acum_esto` where `tbl_acum_esto`.`dia_acum` = 'A' union all select `tbl_acum_cali`.`especialista` AS `especialista`,`tbl_acum_cali`.`factura` AS `factura`,`tbl_acum_cali`.`importe` AS `importe`,month(`tbl_acum_cali`.`fecha_captado`) AS `mes_captado`,year(`tbl_acum_cali`.`fecha_captado`) AS `ano_captado`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado` from `tbl_acum_cali` where `tbl_acum_cali`.`dia_acum` = 'A' union all select `tbl_acum_aero`.`especialista` AS `especialista`,`tbl_acum_aero`.`factura` AS `factura`,`tbl_acum_aero`.`importe` AS `importe`,month(`tbl_acum_aero`.`fecha_captado`) AS `mes_captado`,year(`tbl_acum_aero`.`fecha_captado`) AS `ano_captado`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado` from `tbl_acum_aero` where `tbl_acum_aero`.`dia_acum` = 'A' union all select `tbl_acum_puer`.`especialista` AS `especialista`,`tbl_acum_puer`.`factura` AS `factura`,`tbl_acum_puer`.`importe` AS `importe`,month(`tbl_acum_puer`.`fecha_captado`) AS `mes_captado`,year(`tbl_acum_puer`.`fecha_captado`) AS `ano_captado`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado` from `tbl_acum_puer` where `tbl_acum_puer`.`dia_acum` = 'A' union all select `tbl_acum_covid`.`especialista` AS `especialista`,`tbl_acum_covid`.`factura` AS `factura`,`tbl_acum_covid`.`importe` AS `importe`,month(`tbl_acum_covid`.`fecha_captado`) AS `mes_captado`,year(`tbl_acum_covid`.`fecha_captado`) AS `ano_captado`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado` from `tbl_acum_covid` where `tbl_acum_covid`.`dia_acum` = 'A' union all select 'SERVICIOS ACADEMICOS' AS `especialista`,`tbl_acum_acad`.`factura` AS `factura`,`tbl_acum_acad`.`importe` AS `importe`,month(`tbl_acum_acad`.`fecha_captado`) AS `mes_captado`,year(`tbl_acum_acad`.`fecha_captado`) AS `ano_captado`,`tbl_acum_acad`.`fecha_captado` AS `fecha_captado` from `tbl_acum_acad` where `tbl_acum_acad`.`dia_acum` = 'A' union all select `tbl_global_unidades`.`nombre` AS `especialista`,`tbl_acum_farm`.`codigo` AS `factura`,`tbl_acum_farm`.`ingresos` AS `importe`,month(`tbl_acum_farm`.`fecha_captado`) AS `mes_captado`,year(`tbl_acum_farm`.`fecha_captado`) AS `ano_captado`,`tbl_acum_farm`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_farm` join `tbl_global_unidades` on(`tbl_global_unidades`.`codigo` = `tbl_acum_farm`.`codigo`)) where `tbl_acum_farm`.`dia_acum` = 'A';

-- ----------------------------
-- View structure for vista_productividad_total
-- ----------------------------
DROP VIEW IF EXISTS `vista_productividad_total`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_productividad_total` AS select `tbl_acum_asis`.`especialista` AS `especialista`,`tbl_acum_asis`.`factura` AS `factura`,`tbl_acum_asis`.`importe` AS `importe`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado` from `tbl_acum_asis` where `tbl_acum_asis`.`dia_acum` = 'A' and `tbl_acum_asis`.`importe` > 0 union all select `tbl_acum_esto`.`especialista` AS `especialista`,`tbl_acum_esto`.`factura` AS `factura`,`tbl_acum_esto`.`importe` AS `importe`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado` from `tbl_acum_esto` where `tbl_acum_esto`.`dia_acum` = 'A' and `tbl_acum_esto`.`importe` > 0 union all select `tbl_acum_cali`.`especialista` AS `especialista`,`tbl_acum_cali`.`factura` AS `factura`,`tbl_acum_cali`.`importe` AS `importe`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado` from `tbl_acum_cali` where `tbl_acum_cali`.`dia_acum` = 'A' and `tbl_acum_cali`.`importe` > 0 union all select `tbl_acum_aero`.`especialista` AS `especialista`,`tbl_acum_aero`.`factura` AS `factura`,`tbl_acum_aero`.`importe` AS `importe`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado` from `tbl_acum_aero` where `tbl_acum_aero`.`dia_acum` = 'A' and `tbl_acum_aero`.`importe` > 0 union all select `tbl_acum_puer`.`especialista` AS `especialista`,`tbl_acum_puer`.`factura` AS `factura`,`tbl_acum_puer`.`importe` AS `importe`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado` from `tbl_acum_puer` where `tbl_acum_puer`.`dia_acum` = 'A' and `tbl_acum_puer`.`importe` > 0 union all select `tbl_acum_covid`.`especialista` AS `especialista`,`tbl_acum_covid`.`factura` AS `factura`,`tbl_acum_covid`.`importe` AS `importe`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado` from `tbl_acum_covid` where `tbl_acum_covid`.`dia_acum` = 'A' and `tbl_acum_covid`.`importe` > 0;

-- ----------------------------
-- View structure for vista_report_cump_plan_diario_lineas
-- ----------------------------
DROP VIEW IF EXISTS `vista_report_cump_plan_diario_lineas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_report_cump_plan_diario_lineas` AS select distinct `vista_planes_acumulados_con_nombres`.`linea` AS `linea`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_1`) AS `plan_ing_1`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_2`) AS `plan_ing_2`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_3`) AS `plan_ing_3`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_4`) AS `plan_ing_4`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_5`) AS `plan_ing_5`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_6`) AS `plan_ing_6`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_7`) AS `plan_ing_7`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_8`) AS `plan_ing_8`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_9`) AS `plan_ing_9`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_10`) AS `plan_ing_10`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_11`) AS `plan_ing_11`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_12`) AS `plan_ing_12`,`vista_planes_acumulados_con_nombres`.`anno` AS `anno` from `vista_planes_acumulados_con_nombres` group by `vista_planes_acumulados_con_nombres`.`linea`,`vista_planes_acumulados_con_nombres`.`anno`;

-- ----------------------------
-- View structure for vista_report_cump_plan_diario_lineas_unidad
-- ----------------------------
DROP VIEW IF EXISTS `vista_report_cump_plan_diario_lineas_unidad`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_report_cump_plan_diario_lineas_unidad` AS select `vista_planes_acumulados_con_nombres`.`nombre` AS `unidad`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_1`) AS `plan_ing_1`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_2`) AS `plan_ing_2`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_3`) AS `plan_ing_3`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_4`) AS `plan_ing_4`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_5`) AS `plan_ing_5`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_6`) AS `plan_ing_6`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_7`) AS `plan_ing_7`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_8`) AS `plan_ing_8`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_9`) AS `plan_ing_9`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_10`) AS `plan_ing_10`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_11`) AS `plan_ing_11`,min(`vista_planes_acumulados_con_nombres`.`plan_ing_12`) AS `plan_ing_12`,`vista_planes_acumulados_con_nombres`.`anno` AS `anno` from `vista_planes_acumulados_con_nombres` group by `vista_planes_acumulados_con_nombres`.`nombre`,`vista_planes_acumulados_con_nombres`.`anno`;

-- ----------------------------
-- View structure for vista_unid_ventas_mes_actual
-- ----------------------------
DROP VIEW IF EXISTS `vista_unid_ventas_mes_actual`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_unid_ventas_mes_actual` AS select `vista_union_ingresos`.`codigo` AS `codigo`,'SI' AS `BOTON_ACTIVO` from `vista_union_ingresos` where year(`vista_union_ingresos`.`fecha_captado`) = (select year(`tbl_global_cierre`.`fecha_cierre`) from `tbl_global_cierre`) and month(`vista_union_ingresos`.`fecha_captado`) = (select month(`tbl_global_cierre`.`fecha_cierre`) from `tbl_global_cierre`) group by `vista_union_ingresos`.`codigo`,year(`vista_union_ingresos`.`fecha_captado`),month(`vista_union_ingresos`.`fecha_captado`);

-- ----------------------------
-- View structure for vista_union_aero_empr_puer
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_aero_empr_puer`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_aero_empr_puer` AS select `tbl_acum_aero`.`tipopago` AS `tipopago`,`tbl_acum_aero`.`importe` AS `importe`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado` from `tbl_acum_aero` where `tbl_acum_aero`.`dia_acum` = 'A' union all select `tbl_acum_empr`.`tipopago` AS `tipopago`,`tbl_acum_empr`.`importe` AS `importe`,`tbl_acum_empr`.`fecha_captado` AS `fecha_captado` from `tbl_acum_empr` where `tbl_acum_empr`.`dia_acum` = 'A' union all select `tbl_acum_puer`.`tipopago` AS `tipopago`,`tbl_acum_puer`.`importe` AS `importe`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado` from `tbl_acum_puer` where `tbl_acum_puer`.`dia_acum` = 'A' union all select `tbl_acum_tarj`.`codigo` AS `codigo`,`tbl_acum_tarj`.`ingresos` AS `importe`,`tbl_acum_tarj`.`fecha_captado` AS `fecha_captado` from `tbl_acum_tarj` where `tbl_acum_tarj`.`dia_acum` = 'A' union all select `tbl_acum_covid`.`tipopago` AS `tipopago`,`tbl_acum_covid`.`importe` AS `importe`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado` from `tbl_acum_covid` where `tbl_acum_covid`.`dia_acum` = 'A';

-- ----------------------------
-- View structure for vista_union_asis_esto
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_asis_esto`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_asis_esto` AS select `tbl_acum_asis`.`codigo` AS `codigo`,`tbl_acum_asis`.`tipopago` AS `tipopago`,`tbl_acum_asis`.`importe` AS `importe`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado` from `tbl_acum_asis` where `tbl_acum_asis`.`dia_acum` = 'A' union all select `tbl_acum_esto`.`codigo` AS `codigo`,`tbl_acum_esto`.`tipopago` AS `tipopago`,`tbl_acum_esto`.`importe` AS `importe`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado` from `tbl_acum_esto` where `tbl_acum_esto`.`dia_acum` = 'A';

-- ----------------------------
-- View structure for vista_union_cali
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_cali`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_cali` AS select `tbl_acum_cali`.`tipopago` AS `tipopago`,`tbl_acum_cali`.`importe` AS `importe`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado` from `tbl_acum_cali` where `tbl_acum_cali`.`dia_acum` = 'A';

-- ----------------------------
-- View structure for vista_union_facturas
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_facturas`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_facturas` AS select `tbl_acum_acad`.`codigo` AS `codigo`,`tbl_acum_acad`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_acad`.`importe` AS `importe`,`tbl_acum_acad`.`tipopago` AS `tipopago`,`tbl_acum_acad`.`fecha_captado` AS `fecha_captado`,`tbl_acum_acad`.`dia_acum` AS `dia_acum` from `tbl_acum_acad` union all select `tbl_acum_aero`.`codigo` AS `codigo`,`tbl_acum_aero`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_aero`.`importe` AS `importe`,`tbl_acum_aero`.`tipopago` AS `tipopago`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado`,`tbl_acum_aero`.`dia_acum` AS `dia_acum` from `tbl_acum_aero` union all select `tbl_acum_asis`.`codigo` AS `codigo`,`tbl_acum_asis`.`factura` AS `factura`,`tbl_acum_asis`.`expediente` AS `expediente`,`tbl_acum_asis`.`importe` AS `importe`,`tbl_acum_asis`.`tipopago` AS `tipopago`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado`,`tbl_acum_asis`.`dia_acum` AS `dia_acum` from `tbl_acum_asis` union all select `tbl_acum_cali`.`codigo` AS `codigo`,`tbl_acum_cali`.`factura` AS `factura`,`tbl_acum_cali`.`expediente` AS `expediente`,`tbl_acum_cali`.`importe` AS `importe`,`tbl_acum_cali`.`tipopago` AS `tipopago`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado`,`tbl_acum_cali`.`dia_acum` AS `dia_acum` from `tbl_acum_cali` union all select `tbl_acum_empr`.`codigo` AS `codigo`,`tbl_acum_empr`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_empr`.`importe` AS `importe`,`tbl_acum_empr`.`tipopago` AS `tipopago`,`tbl_acum_empr`.`fecha_captado` AS `fecha_captado`,`tbl_acum_empr`.`dia_acum` AS `dia_acum` from `tbl_acum_empr` union all select `tbl_acum_esto`.`codigo` AS `codigo`,`tbl_acum_esto`.`factura` AS `factura`,`tbl_acum_esto`.`expediente` AS `expediente`,`tbl_acum_esto`.`importe` AS `importe`,`tbl_acum_esto`.`tipopago` AS `tipopago`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado`,`tbl_acum_esto`.`dia_acum` AS `dia_acum` from `tbl_acum_esto` union all select `tbl_acum_puer`.`codigo` AS `codigo`,`tbl_acum_puer`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_puer`.`importe` AS `importe`,`tbl_acum_puer`.`tipopago` AS `tipopago`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado`,`tbl_acum_puer`.`dia_acum` AS `dia_acum` from `tbl_acum_puer` union all select `tbl_acum_covid`.`codigo` AS `codigo`,`tbl_acum_covid`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_covid`.`importe` AS `importe`,`tbl_acum_covid`.`tipopago` AS `tipopago`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado`,`tbl_acum_covid`.`dia_acum` AS `dia_acum` from `tbl_acum_covid`;

-- ----------------------------
-- View structure for vista_union_facturas_acum
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_facturas_acum`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_facturas_acum` AS select `tbl_acum_acad`.`codigo` AS `codigo`,`tbl_acum_acad`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_acad`.`importe` AS `importe`,`tbl_acum_acad`.`tipopago` AS `tipopago`,`tbl_acum_acad`.`fecha_captado` AS `fecha_captado`,`tbl_acum_acad`.`dia_acum` AS `dia_acum` from `tbl_acum_acad` where `tbl_acum_acad`.`dia_acum` = 'A' and `tbl_acum_acad`.`importe` > 0 union all select `tbl_acum_aero`.`codigo` AS `codigo`,`tbl_acum_aero`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_aero`.`importe` AS `importe`,`tbl_acum_aero`.`tipopago` AS `tipopago`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado`,`tbl_acum_aero`.`dia_acum` AS `dia_acum` from `tbl_acum_aero` where `tbl_acum_aero`.`dia_acum` = 'A' and `tbl_acum_aero`.`importe` > 0 union all select `tbl_acum_asis`.`codigo` AS `codigo`,`tbl_acum_asis`.`factura` AS `factura`,`tbl_acum_asis`.`expediente` AS `expediente`,`tbl_acum_asis`.`importe` AS `importe`,`tbl_acum_asis`.`tipopago` AS `tipopago`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado`,`tbl_acum_asis`.`dia_acum` AS `dia_acum` from `tbl_acum_asis` where `tbl_acum_asis`.`dia_acum` = 'A' and `tbl_acum_asis`.`importe` > 0 union all select `tbl_acum_cali`.`codigo` AS `codigo`,`tbl_acum_cali`.`factura` AS `factura`,`tbl_acum_cali`.`expediente` AS `expediente`,`tbl_acum_cali`.`importe` AS `importe`,`tbl_acum_cali`.`tipopago` AS `tipopago`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado`,`tbl_acum_cali`.`dia_acum` AS `dia_acum` from `tbl_acum_cali` where `tbl_acum_cali`.`dia_acum` = 'A' and `tbl_acum_cali`.`importe` > 0 union all select `tbl_acum_empr`.`codigo` AS `codigo`,`tbl_acum_empr`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_empr`.`importe` AS `importe`,`tbl_acum_empr`.`tipopago` AS `tipopago`,`tbl_acum_empr`.`fecha_captado` AS `fecha_captado`,`tbl_acum_empr`.`dia_acum` AS `dia_acum` from `tbl_acum_empr` where `tbl_acum_empr`.`dia_acum` = 'A' and `tbl_acum_empr`.`importe` > 0 union all select `tbl_acum_esto`.`codigo` AS `codigo`,`tbl_acum_esto`.`factura` AS `factura`,`tbl_acum_esto`.`expediente` AS `expediente`,`tbl_acum_esto`.`importe` AS `importe`,`tbl_acum_esto`.`tipopago` AS `tipopago`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado`,`tbl_acum_esto`.`dia_acum` AS `dia_acum` from `tbl_acum_esto` where `tbl_acum_esto`.`dia_acum` = 'A' and `tbl_acum_esto`.`importe` > 0 union all select `tbl_acum_even`.`codigo` AS `codigo`,`tbl_acum_even`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_even`.`importe` AS `importe`,`tbl_acum_even`.`tipopago` AS `tipopago`,`tbl_acum_even`.`fecha_captado` AS `fecha_captado`,`tbl_acum_even`.`dia_acum` AS `dia_acum` from `tbl_acum_even` where `tbl_acum_even`.`dia_acum` = 'A' and `tbl_acum_even`.`importe` > 0 union all select `tbl_acum_puer`.`codigo` AS `codigo`,`tbl_acum_puer`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_puer`.`importe` AS `importe`,`tbl_acum_puer`.`tipopago` AS `tipopago`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado`,`tbl_acum_puer`.`dia_acum` AS `dia_acum` from `tbl_acum_puer` where `tbl_acum_puer`.`dia_acum` = 'A' and `tbl_acum_puer`.`importe` > 0 union all select `tbl_acum_covid`.`codigo` AS `codigo`,`tbl_acum_covid`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_covid`.`importe` AS `importe`,`tbl_acum_covid`.`tipopago` AS `tipopago`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado`,`tbl_acum_covid`.`dia_acum` AS `dia_acum` from `tbl_acum_covid` where `tbl_acum_covid`.`dia_acum` = 'A' and `tbl_acum_covid`.`importe` > 0;

-- ----------------------------
-- View structure for vista_union_facturas_acum_full
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_facturas_acum_full`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_facturas_acum_full` AS select `vista_union_facturas_acum`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_global_grupos`.`codigo_grupo` AS `codigo_grupo`,`tbl_global_grupos`.`tabla_diario` AS `tabla_diario`,`tbl_global_grupos`.`file_edit` AS `file_edit`,`vista_union_facturas_acum`.`factura` AS `factura`,`vista_union_facturas_acum`.`importe` AS `importe`,`vista_union_facturas_acum`.`tipopago` AS `tipopago`,'ACUM' AS `estado_factura`,`vista_union_facturas_acum`.`dia_acum` AS `dia_acum`,right(left(`tbl_global_grupos`.`file_edit`,octet_length(`tbl_global_grupos`.`file_edit`) - 4),octet_length(left(`tbl_global_grupos`.`file_edit`,octet_length(`tbl_global_grupos`.`file_edit`) - 4)) - 5) AS `tipo` from (`vista_union_facturas_acum` join (`tbl_global_unidades` join `tbl_global_grupos` on(`tbl_global_unidades`.`codigo_grupo` = `tbl_global_grupos`.`codigo_grupo`)) on(`vista_union_facturas_acum`.`codigo` = `tbl_global_unidades`.`codigo`));

-- ----------------------------
-- View structure for vista_union_facturas_diario
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_facturas_diario`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_facturas_diario` AS select `tbl_acum_acad`.`codigo` AS `codigo`,`tbl_acum_acad`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_acad`.`importe` AS `importe`,`tbl_acum_acad`.`tipopago` AS `tipopago`,`tbl_acum_acad`.`fecha_captado` AS `fecha_captado`,`tbl_acum_acad`.`dia_acum` AS `dia_acum` from `tbl_acum_acad` where `tbl_acum_acad`.`dia_acum` = 'D' union all select `tbl_acum_aero`.`codigo` AS `codigo`,`tbl_acum_aero`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_aero`.`importe` AS `importe`,`tbl_acum_aero`.`tipopago` AS `tipopago`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado`,`tbl_acum_aero`.`dia_acum` AS `dia_acum` from `tbl_acum_aero` where `tbl_acum_aero`.`dia_acum` = 'D' union all select `tbl_acum_asis`.`codigo` AS `codigo`,`tbl_acum_asis`.`factura` AS `factura`,`tbl_acum_asis`.`expediente` AS `expediente`,`tbl_acum_asis`.`importe` AS `importe`,`tbl_acum_asis`.`tipopago` AS `tipopago`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado`,`tbl_acum_asis`.`dia_acum` AS `dia_acum` from `tbl_acum_asis` where `tbl_acum_asis`.`dia_acum` = 'D' union all select `tbl_acum_cali`.`codigo` AS `codigo`,`tbl_acum_cali`.`factura` AS `factura`,`tbl_acum_cali`.`expediente` AS `expediente`,`tbl_acum_cali`.`importe` AS `importe`,`tbl_acum_cali`.`tipopago` AS `tipopago`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado`,`tbl_acum_cali`.`dia_acum` AS `dia_acum` from `tbl_acum_cali` where `tbl_acum_cali`.`dia_acum` = 'D' union all select `tbl_acum_empr`.`codigo` AS `codigo`,`tbl_acum_empr`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_empr`.`importe` AS `importe`,`tbl_acum_empr`.`tipopago` AS `tipopago`,`tbl_acum_empr`.`fecha_captado` AS `fecha_captado`,`tbl_acum_empr`.`dia_acum` AS `dia_acum` from `tbl_acum_empr` where `tbl_acum_empr`.`dia_acum` = 'D' union all select `tbl_acum_esto`.`codigo` AS `codigo`,`tbl_acum_esto`.`factura` AS `factura`,`tbl_acum_esto`.`expediente` AS `expediente`,`tbl_acum_esto`.`importe` AS `importe`,`tbl_acum_esto`.`tipopago` AS `tipopago`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado`,`tbl_acum_esto`.`dia_acum` AS `dia_acum` from `tbl_acum_esto` where `tbl_acum_esto`.`dia_acum` = 'D' union all select `tbl_acum_even`.`codigo` AS `codigo`,`tbl_acum_even`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_even`.`importe` AS `importe`,`tbl_acum_even`.`tipopago` AS `tipopago`,`tbl_acum_even`.`fecha_captado` AS `fecha_captado`,`tbl_acum_even`.`dia_acum` AS `dia_acum` from `tbl_acum_even` where `tbl_acum_even`.`dia_acum` = 'D' union all select `tbl_acum_puer`.`codigo` AS `codigo`,`tbl_acum_puer`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_puer`.`importe` AS `importe`,`tbl_acum_puer`.`tipopago` AS `tipopago`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado`,`tbl_acum_puer`.`dia_acum` AS `dia_acum` from `tbl_acum_puer` where `tbl_acum_puer`.`dia_acum` = 'D' union all select `tbl_acum_covid`.`codigo` AS `codigo`,`tbl_acum_covid`.`factura` AS `factura`,'' AS `expediente`,`tbl_acum_covid`.`importe` AS `importe`,`tbl_acum_covid`.`tipopago` AS `tipopago`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado`,`tbl_acum_covid`.`dia_acum` AS `dia_acum` from `tbl_acum_covid` where `tbl_acum_covid`.`dia_acum` = 'D';

-- ----------------------------
-- View structure for vista_union_facturas_diario_full
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_facturas_diario_full`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_facturas_diario_full` AS select `vista_union_facturas_diario`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_global_grupos`.`codigo_grupo` AS `codigo_grupo`,`tbl_global_grupos`.`tabla_diario` AS `tabla_diario`,`tbl_global_grupos`.`file_edit` AS `file_edit`,`vista_union_facturas_diario`.`factura` AS `factura`,`vista_union_facturas_diario`.`importe` AS `importe`,`vista_union_facturas_diario`.`tipopago` AS `tipopago`,'DIARIO' AS `estado_factura`,`vista_union_facturas_diario`.`dia_acum` AS `dia_acum`,right(left(`tbl_global_grupos`.`file_edit`,octet_length(`tbl_global_grupos`.`file_edit`) - 4),octet_length(left(`tbl_global_grupos`.`file_edit`,octet_length(`tbl_global_grupos`.`file_edit`) - 4)) - 5) AS `tipo` from (`vista_union_facturas_diario` join (`tbl_global_unidades` join `tbl_global_grupos` on(`tbl_global_unidades`.`codigo_grupo` = `tbl_global_grupos`.`codigo_grupo`)) on(`vista_union_facturas_diario`.`codigo` = `tbl_global_unidades`.`codigo`));

-- ----------------------------
-- View structure for vista_union_facturas_for_search_acum
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_facturas_for_search_acum`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_facturas_for_search_acum` AS select `vista_union_facturas`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `nombre`,`tbl_global_unidades`.`estado` AS `estado`,`vista_union_facturas`.`factura` AS `factura`,`vista_union_facturas`.`expediente` AS `expediente`,`vista_union_facturas`.`importe` AS `importe`,`vista_union_facturas`.`tipopago` AS `tipopago`,'ACUM' AS `categoria`,`vista_union_facturas`.`fecha_captado` AS `fecha_captado`,concat('tbl_acum_',right(left(`tbl_global_grupos`.`file_edit`,octet_length(`tbl_global_grupos`.`file_edit`) - 4),octet_length(left(`tbl_global_grupos`.`file_edit`,octet_length(`tbl_global_grupos`.`file_edit`) - 4)) - 5)) AS `tipo` from (`vista_union_facturas` join (`tbl_global_unidades` join `tbl_global_grupos` on(`tbl_global_unidades`.`codigo_grupo` = `tbl_global_grupos`.`codigo_grupo`)) on(`vista_union_facturas`.`codigo` = `tbl_global_unidades`.`codigo`)) where `vista_union_facturas`.`dia_acum` = 'A';

-- ----------------------------
-- View structure for vista_union_facturas_for_search_cancelled
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_facturas_for_search_cancelled`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_facturas_for_search_cancelled` AS select `tbl_global_unidades`.`codigo` AS `codigo`,`tbl_facturas_canceladas`.`origen` AS `nombre`,'-' AS `estado`,`tbl_facturas_canceladas`.`factura` AS `factura`,'' AS `expediente`,'0.00' AS `importe`,'-' AS `tipopago`,'CANCEL' AS `categoria`,`tbl_facturas_canceladas`.`fecha` AS `fecha_captado`,'tbl_facturas_canceladas' AS `tipo` from ((`tbl_facturas_canceladas` join `tbl_global_unidades` on(`tbl_facturas_canceladas`.`origen` = `tbl_global_unidades`.`nombre`)) join `tbl_global_grupos` on(`tbl_global_unidades`.`codigo_grupo` = `tbl_global_grupos`.`codigo_grupo`));

-- ----------------------------
-- View structure for vista_union_facturas_for_search_full
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_facturas_for_search_full`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_facturas_for_search_full` AS select `vista_union_facturas_for_search_acum`.`codigo` AS `codigo`,`vista_union_facturas_for_search_acum`.`nombre` AS `nombre`,`vista_union_facturas_for_search_acum`.`estado` AS `estado`,`vista_union_facturas_for_search_acum`.`factura` AS `factura`,`vista_union_facturas_for_search_acum`.`expediente` AS `expediente`,`vista_union_facturas_for_search_acum`.`importe` AS `importe`,`vista_union_facturas_for_search_acum`.`tipopago` AS `tipopago`,`vista_union_facturas_for_search_acum`.`categoria` AS `categoria`,`vista_union_facturas_for_search_acum`.`fecha_captado` AS `fecha_captado`,`vista_union_facturas_for_search_acum`.`tipo` AS `tipo` from `vista_union_facturas_for_search_acum` union all select `vista_union_facturas_for_search_cancelled`.`codigo` AS `codigo`,`vista_union_facturas_for_search_cancelled`.`nombre` AS `nombre`,`vista_union_facturas_for_search_cancelled`.`estado` AS `estado`,`vista_union_facturas_for_search_cancelled`.`factura` AS `factura`,`vista_union_facturas_for_search_cancelled`.`expediente` AS `expediente`,`vista_union_facturas_for_search_cancelled`.`importe` AS `importe`,`vista_union_facturas_for_search_cancelled`.`tipopago` AS `tipopago`,`vista_union_facturas_for_search_cancelled`.`categoria` AS `categoria`,`vista_union_facturas_for_search_cancelled`.`fecha_captado` AS `fecha_captado`,`vista_union_facturas_for_search_cancelled`.`tipo` AS `tipo` from `vista_union_facturas_for_search_cancelled`;

-- ----------------------------
-- View structure for vista_union_frontera
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_frontera`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_frontera` AS select `tbl_acum_empr`.`codigo` AS `codigo`,`tbl_acum_empr`.`importe` AS `importe`,`tbl_acum_empr`.`fecha_captado` AS `fecha_captado` from `tbl_acum_empr` union all select `tbl_acum_puer`.`codigo` AS `codigo`,`tbl_acum_puer`.`importe` AS `importe`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado` from `tbl_acum_puer` union all select `tbl_acum_aero`.`codigo` AS `codigo`,`tbl_acum_aero`.`importe` AS `importe`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado` from `tbl_acum_aero` union all select `tbl_acum_covid`.`codigo` AS `codigo`,`tbl_acum_covid`.`importe` AS `importe`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado` from `tbl_acum_covid`;

-- ----------------------------
-- View structure for vista_union_ingresos
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_ingresos`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_ingresos` AS select `tbl_acum_acad`.`codigo` AS `codigo`,`tbl_acum_acad`.`importe` AS `importe`,`tbl_acum_acad`.`tipopago` AS `tipopago`,`tbl_acum_acad`.`cantestu` AS `cantidad`,`tbl_acum_acad`.`fecha_captado` AS `fecha_captado` from `tbl_acum_acad` where `tbl_acum_acad`.`dia_acum` = 'A' union all select `tbl_acum_aero`.`codigo` AS `codigo`,`tbl_acum_aero`.`importe` AS `importe`,`tbl_acum_aero`.`tipopago` AS `tipopago`,`tbl_acum_aero`.`cantclientes` AS `cantidad`,`tbl_acum_aero`.`fecha_captado` AS `fecha_captado` from `tbl_acum_aero` where `tbl_acum_aero`.`dia_acum` = 'A' union all select `tbl_acum_asis`.`codigo` AS `codigo`,`tbl_acum_asis`.`importe` AS `importe`,`tbl_acum_asis`.`tipopago` AS `tipopago`,`tbl_acum_asis`.`cantclientes` AS `cantidad`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado` from `tbl_acum_asis` where `tbl_acum_asis`.`dia_acum` = 'A' union all select `tbl_acum_cali`.`codigo` AS `codigo`,`tbl_acum_cali`.`importe` AS `importe`,`tbl_acum_cali`.`tipopago` AS `tipopago`,`tbl_acum_cali`.`cantclientes` AS `cantidad`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado` from `tbl_acum_cali` where `tbl_acum_cali`.`dia_acum` = 'A' union all select `tbl_acum_empr`.`codigo` AS `codigo`,`tbl_acum_empr`.`importe` AS `importe`,`tbl_acum_empr`.`tipopago` AS `tipopago`,`tbl_acum_empr`.`cantclientes` AS `cantidad`,`tbl_acum_empr`.`fecha_captado` AS `fecha_captado` from `tbl_acum_empr` where `tbl_acum_empr`.`dia_acum` = 'A' union all select `tbl_acum_esto`.`codigo` AS `codigo`,`tbl_acum_esto`.`importe` AS `importe`,`tbl_acum_esto`.`tipopago` AS `tipopago`,`tbl_acum_esto`.`cantclientes` AS `cantidad`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado` from `tbl_acum_esto` where `tbl_acum_esto`.`dia_acum` = 'A' union all select `tbl_acum_even`.`codigo` AS `codigo`,`tbl_acum_even`.`importe` AS `importe`,`tbl_acum_even`.`tipopago` AS `tipopago`,`tbl_acum_even`.`cantclientes` AS `cantidad`,`tbl_acum_even`.`fecha_captado` AS `fecha_captado` from `tbl_acum_even` where `tbl_acum_even`.`dia_acum` = 'A' union all select `tbl_acum_farm`.`codigo` AS `codigo`,`tbl_acum_farm`.`ingresos` AS `importe`,'-' AS `tipopago`,`tbl_acum_farm`.`cantclientes` AS `cantidad`,`tbl_acum_farm`.`fecha_captado` AS `fecha_captado` from `tbl_acum_farm` where `tbl_acum_farm`.`dia_acum` = 'A' union all select `tbl_acum_covid`.`codigo` AS `codigo`,`tbl_acum_covid`.`importe` AS `importe`,`tbl_acum_covid`.`tipopago` AS `tipopago`,`tbl_acum_covid`.`cantclientes` AS `cantidad`,`tbl_acum_covid`.`fecha_captado` AS `fecha_captado` from `tbl_acum_covid` where `tbl_acum_covid`.`dia_acum` = 'A' union all select `tbl_acum_puer`.`codigo` AS `codigo`,`tbl_acum_puer`.`importe` AS `importe`,`tbl_acum_puer`.`tipopago` AS `tipopago`,`tbl_acum_puer`.`cantclientes` AS `cantidad`,`tbl_acum_puer`.`fecha_captado` AS `fecha_captado` from `tbl_acum_puer` where `tbl_acum_puer`.`dia_acum` = 'A' union all select `tbl_acum_tarj`.`codigo` AS `codigo`,`tbl_acum_tarj`.`ingresos` AS `importe`,'-' AS `tipopago`,`tbl_acum_tarj`.`cantclientes` AS `cantidad`,`tbl_acum_tarj`.`fecha_captado` AS `fecha_captado` from `tbl_acum_tarj` where `tbl_acum_tarj`.`dia_acum` = 'A';

-- ----------------------------
-- View structure for vista_union_ingresos_calidad
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_ingresos_calidad`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_ingresos_calidad` AS select `tbl_acum_cali`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `unidad`,`tbl_acum_cali`.`importe` AS `importe`,`tbl_acum_cali`.`tipopago` AS `tipopago`,`tbl_acum_cali`.`cantclientes` AS `cantidad`,`tbl_acum_cali`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_cali` join `tbl_global_unidades` on(`tbl_acum_cali`.`codigo` = `tbl_global_unidades`.`codigo`)) where `tbl_global_unidades`.`estado` = '1' and `tbl_global_unidades`.`tipo` = 'CALIDAD DE VIDA';

-- ----------------------------
-- View structure for vista_union_ingresos_clinica
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_ingresos_clinica`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_ingresos_clinica` AS select `tbl_acum_asis`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `unidad`,`tbl_acum_asis`.`importe` AS `importe`,`tbl_acum_asis`.`tipopago` AS `tipopago`,`tbl_acum_asis`.`cantclientes` AS `cantidad`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_asis` join `tbl_global_unidades` on(`tbl_acum_asis`.`codigo` = `tbl_global_unidades`.`codigo`)) where `tbl_global_unidades`.`estado` = '1' and `tbl_global_unidades`.`tipo` = 'CLINICA';

-- ----------------------------
-- View structure for vista_union_ingresos_consultorio
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_ingresos_consultorio`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_ingresos_consultorio` AS select `tbl_acum_asis`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `unidad`,`tbl_acum_asis`.`importe` AS `importe`,`tbl_acum_asis`.`tipopago` AS `tipopago`,`tbl_acum_asis`.`cantclientes` AS `cantidad`,`tbl_acum_asis`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_asis` join `tbl_global_unidades` on(`tbl_acum_asis`.`codigo` = `tbl_global_unidades`.`codigo`)) where `tbl_global_unidades`.`estado` = '1' and `tbl_global_unidades`.`tipo` = 'CONSULTORIO';

-- ----------------------------
-- View structure for vista_union_ingresos_estomatologia
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_ingresos_estomatologia`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_ingresos_estomatologia` AS select `tbl_acum_esto`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `unidad`,`tbl_acum_esto`.`importe` AS `importe`,`tbl_acum_esto`.`tipopago` AS `tipopago`,`tbl_acum_esto`.`cantclientes` AS `cantidad`,`tbl_acum_esto`.`fecha_captado` AS `fecha_captado` from (`tbl_acum_esto` join `tbl_global_unidades` on(`tbl_acum_esto`.`codigo` = `tbl_global_unidades`.`codigo`)) where `tbl_global_unidades`.`estado` = '1' and `tbl_global_unidades`.`tipo` = 'ESTOMATOLOGIA';

-- ----------------------------
-- View structure for vista_union_ingresos_hospital
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_ingresos_hospital`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_ingresos_hospital` AS select `vista_union_ingresos`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `unidad`,`vista_union_ingresos`.`importe` AS `importe`,`vista_union_ingresos`.`tipopago` AS `tipopago`,`vista_union_ingresos`.`cantidad` AS `cantidad`,`vista_union_ingresos`.`fecha_captado` AS `fecha_captado` from (`vista_union_ingresos` join `tbl_global_unidades` on(`vista_union_ingresos`.`codigo` = `tbl_global_unidades`.`codigo`)) where `tbl_global_unidades`.`estado` = '1' and `tbl_global_unidades`.`tipo` = 'HOSPITAL';

-- ----------------------------
-- View structure for vista_union_ingresos_linea
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_ingresos_linea`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_ingresos_linea` AS select `vista_union_ingresos`.`codigo` AS `codigo`,`tbl_global_grupos`.`linea` AS `linea`,`vista_union_ingresos`.`importe` AS `importe`,`vista_union_ingresos`.`fecha_captado` AS `fecha_captado` from ((`vista_union_ingresos` join `tbl_global_unidades` on(`vista_union_ingresos`.`codigo` = `tbl_global_unidades`.`codigo`)) join `tbl_global_grupos` on(`tbl_global_unidades`.`codigo_grupo` = `tbl_global_grupos`.`codigo_grupo`));

-- ----------------------------
-- View structure for vista_union_ingresos_unidad
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_ingresos_unidad`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_ingresos_unidad` AS select `vista_union_ingresos`.`codigo` AS `codigo`,`tbl_global_unidades`.`nombre` AS `unidad`,`vista_union_ingresos`.`importe` AS `importe`,`vista_union_ingresos`.`fecha_captado` AS `fecha_captado` from (`vista_union_ingresos` join `tbl_global_unidades` on(`vista_union_ingresos`.`codigo` = `tbl_global_unidades`.`codigo`));

-- ----------------------------
-- View structure for vista_union_invoices_captured_canceled
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_invoices_captured_canceled`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_invoices_captured_canceled` AS select `vista_facturas_economia`.`factura` AS `factura` from `vista_facturas_economia` union all select `tbl_facturas_canceladas`.`factura` AS `factura` from `tbl_facturas_canceladas`;

-- ----------------------------
-- View structure for vista_union_planes_activos_full
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_planes_activos_full`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_planes_activos_full` AS select distinct `subconsulta`.`nombre` AS `nombre`,`subconsulta`.`plan_ing_1` AS `plan_ing_1`,`subconsulta`.`plan_ing_2` AS `plan_ing_2`,`subconsulta`.`plan_ing_3` AS `plan_ing_3`,`subconsulta`.`plan_ing_4` AS `plan_ing_4`,`subconsulta`.`plan_ing_5` AS `plan_ing_5`,`subconsulta`.`plan_ing_6` AS `plan_ing_6`,`subconsulta`.`plan_ing_7` AS `plan_ing_7`,`subconsulta`.`plan_ing_8` AS `plan_ing_8`,`subconsulta`.`plan_ing_9` AS `plan_ing_9`,`subconsulta`.`plan_ing_10` AS `plan_ing_10`,`subconsulta`.`plan_ing_11` AS `plan_ing_11`,`subconsulta`.`plan_ing_12` AS `plan_ing_12`,`subconsulta`.`anno` AS `anno` from (select `vista_planes_acumulados_con_nombres`.`nombre` AS `nombre`,`vista_planes_acumulados_con_nombres`.`plan_ing_1` AS `plan_ing_1`,`vista_planes_acumulados_con_nombres`.`plan_ing_2` AS `plan_ing_2`,`vista_planes_acumulados_con_nombres`.`plan_ing_3` AS `plan_ing_3`,`vista_planes_acumulados_con_nombres`.`plan_ing_4` AS `plan_ing_4`,`vista_planes_acumulados_con_nombres`.`plan_ing_5` AS `plan_ing_5`,`vista_planes_acumulados_con_nombres`.`plan_ing_6` AS `plan_ing_6`,`vista_planes_acumulados_con_nombres`.`plan_ing_7` AS `plan_ing_7`,`vista_planes_acumulados_con_nombres`.`plan_ing_8` AS `plan_ing_8`,`vista_planes_acumulados_con_nombres`.`plan_ing_9` AS `plan_ing_9`,`vista_planes_acumulados_con_nombres`.`plan_ing_10` AS `plan_ing_10`,`vista_planes_acumulados_con_nombres`.`plan_ing_11` AS `plan_ing_11`,`vista_planes_acumulados_con_nombres`.`plan_ing_12` AS `plan_ing_12`,`vista_planes_acumulados_con_nombres`.`anno` AS `anno` from `vista_planes_acumulados_con_nombres` union all select `tbl_global_especialistas`.`nombre` AS `nombre`,`tbl_global_especialistas`.`plan_1` AS `plan_ing_1`,`tbl_global_especialistas`.`plan_2` AS `plan_ing_2`,`tbl_global_especialistas`.`plan_3` AS `plan_ing_3`,`tbl_global_especialistas`.`plan_4` AS `plan_ing_4`,`tbl_global_especialistas`.`plan_5` AS `plan_ing_5`,`tbl_global_especialistas`.`plan_6` AS `plan_ing_6`,`tbl_global_especialistas`.`plan_7` AS `plan_ing_7`,`tbl_global_especialistas`.`plan_8` AS `plan_ing_8`,`tbl_global_especialistas`.`plan_9` AS `plan_ing_9`,`tbl_global_especialistas`.`plan_10` AS `plan_ing_10`,`tbl_global_especialistas`.`plan_11` AS `plan_ing_11`,`tbl_global_especialistas`.`plan_12` AS `plan_ing_12`,`tbl_global_especialistas`.`anno` AS `anno` from `tbl_global_especialistas`) `subconsulta`;

-- ----------------------------
-- View structure for vista_union_planes_activos_hospital
-- ----------------------------
DROP VIEW IF EXISTS `vista_union_planes_activos_hospital`;
CREATE ALGORITHM = UNDEFINED SQL SECURITY DEFINER VIEW `vista_union_planes_activos_hospital` AS select `vista_planes_acumulados_con_nombres`.`nombre` AS `unidad`,`vista_planes_acumulados_con_nombres`.`plan_ing_1` AS `plan_ing_1`,`vista_planes_acumulados_con_nombres`.`plan_ing_2` AS `plan_ing_2`,`vista_planes_acumulados_con_nombres`.`plan_ing_3` AS `plan_ing_3`,`vista_planes_acumulados_con_nombres`.`plan_ing_4` AS `plan_ing_4`,`vista_planes_acumulados_con_nombres`.`plan_ing_5` AS `plan_ing_5`,`vista_planes_acumulados_con_nombres`.`plan_ing_6` AS `plan_ing_6`,`vista_planes_acumulados_con_nombres`.`plan_ing_7` AS `plan_ing_7`,`vista_planes_acumulados_con_nombres`.`plan_ing_8` AS `plan_ing_8`,`vista_planes_acumulados_con_nombres`.`plan_ing_9` AS `plan_ing_9`,`vista_planes_acumulados_con_nombres`.`plan_ing_10` AS `plan_ing_10`,`vista_planes_acumulados_con_nombres`.`plan_ing_11` AS `plan_ing_11`,`vista_planes_acumulados_con_nombres`.`plan_ing_12` AS `plan_ing_12`,`vista_planes_acumulados_con_nombres`.`anno` AS `anno` from `vista_planes_acumulados_con_nombres` where `vista_planes_acumulados_con_nombres`.`tipo` = 'HOSPITAL' group by `vista_planes_acumulados_con_nombres`.`nombre`,`vista_planes_acumulados_con_nombres`.`anno`;

SET FOREIGN_KEY_CHECKS = 1;
