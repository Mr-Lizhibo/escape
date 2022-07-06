/*
 Navicat Premium Data Transfer

 Source Server         : vsign
 Source Server Type    : MySQL
 Source Server Version : 80028
 Source Host           : localhost:3306
 Source Schema         : escape

 Target Server Type    : MySQL
 Target Server Version : 80028
 File Encoding         : 65001

 Date: 06/07/2022 17:37:33
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for escape_stock
-- ----------------------------
DROP TABLE IF EXISTS `escape_stock`;
CREATE TABLE `escape_stock` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL COMMENT 'id',
  `thread_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '线程名字',
  `Warehousing_ time` varchar(255) DEFAULT NULL COMMENT '查询库存的时间',
  `by_shop` varchar(255) DEFAULT NULL COMMENT '店铺名字',
  `by_address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '店铺地址',
  `in_quantity` int DEFAULT NULL COMMENT '库存数量',
  `sku` varchar(255) DEFAULT NULL COMMENT '车的型号(size、color)',
  `shopno` int DEFAULT NULL COMMENT '店铺id',
  `mob` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '自行车名字',
  `is_delete` int DEFAULT NULL COMMENT '删除',
  `remarks` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- ----------------------------
-- Records of escape_stock
-- ----------------------------
BEGIN;
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4dd6d0fd0e11ecb8e0272e72b32aba', '线程: 4', 'Wed Jul  6 17:29:27 2022', '捷安特汉川堤坡路专卖店', '湖北省孝感市汉川市新城区堤坡路雍豪府8栋109号', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4de7cefd0e11ecb8e0272e72b32aba', '线程: 4', 'Wed Jul  6 17:29:27 2022', '捷安特黄梅专卖店', '湖北省黄冈市黄梅县西河路213号', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4df638fd0e11ecb8e0272e72b32aba', '线程: 3', 'Wed Jul  6 17:29:28 2022', '捷安特宜昌CYCLING WORLD', '湖北省宜昌市西陵区城东大道54号南苑之星', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e03d0fd0e11ecb8e0272e72b32aba', '线程: 5', 'Wed Jul  6 17:29:29 2022', '捷安特-Liv武汉黄陂专卖店', '湖北省武汉市黄陂区前川大道锦绣名居58-60号门面', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e0fe2fd0e11ecb8e0272e72b32aba', '线程: 16', 'Wed Jul  6 17:29:30 2022', '捷安特巴城金澄花园专卖店', '江苏省苏州市昆山市巴城镇前进西路3284-3292号', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e1870fd0e11ecb8e0272e72b32aba', '线程: 17', 'Wed Jul  6 17:29:30 2022', '捷安特苏州园区景城专卖店', '江苏省苏州市工业园区九华路65号景城邻里中心', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e20aefd0e11ecb8e0272e72b32aba', '线程: 16', 'Wed Jul  6 17:29:30 2022', '捷安特宾水西道专卖店', '天津市天津市南开区宾水西道195号', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e2806fd0e11ecb8e0272e72b32aba', '线程: 12', 'Wed Jul  6 17:29:30 2022', '捷安特长垣CYCLING WORLD', '龙山商业街龙柱往西100米路北', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e2fe0fd0e11ecb8e0272e72b32aba', '线程: 10', 'Wed Jul  6 17:29:30 2022', '捷安特东营永旺专卖店', '山东省东营市东营区西城西三路28号（银座二店南50米）', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e367afd0e11ecb8e0272e72b32aba', '线程: 3', 'Wed Jul  6 17:29:30 2022', '捷安特光谷红岩生活馆', '湖北省武汉市洪山区光谷转盘民族大道124号', 12, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e3d78fd0e11ecb8e0272e72b32aba', '线程: 10', 'Wed Jul  6 17:29:31 2022', '捷安特临汾迎春中街CYCLING WORL', '山西省临汾市尧都区迎春中街4号', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e43e0fd0e11ecb8e0272e72b32aba', '线程: 3', 'Wed Jul  6 17:29:31 2022', '捷安特荆门生活馆', '湖北省荆门市东宝区雨霖路1号', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e4a02fd0e11ecb8e0272e72b32aba', '线程: 17', 'Wed Jul  6 17:29:32 2022', '捷安特雄楚大道专卖店', '湖北省武汉市洪山区雄楚大道358号附2', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e5038fd0e11ecb8e0272e72b32aba', '线程: 3', 'Wed Jul  6 17:29:32 2022', '捷安特潜江专卖店', '湖北省省直辖县级行政区划潜江市潜阳中路12号', 2, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e5628fd0e11ecb8e0272e72b32aba', '线程: 4', 'Wed Jul  6 17:29:32 2022', '捷安特-Liv三孝口专卖店', '安徽省合肥市庐阳区金寨路339号', 2, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e5c5efd0e11ecb8e0272e72b32aba', '线程: 3', 'Wed Jul  6 17:29:32 2022', '捷安特恩施清江新城专卖店', '湖北省恩施土家族苗族自治州恩施市清江新城一期9栋1单元110号商铺', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e6294fd0e11ecb8e0272e72b32aba', '线程: 11', 'Wed Jul  6 17:29:33 2022', '捷安特玉田CYCLING WORLD', '河北省唐山市玉田县城南关下坡路东 捷安特专卖', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e68fcfd0e11ecb8e0272e72b32aba', '线程: 15', 'Wed Jul  6 17:29:33 2022', '捷安特沌口专卖店', '湖北省武汉市汉阳区神龙大道佳和馨苑13-11号', 4, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e6f96fd0e11ecb8e0272e72b32aba', '线程: 1', 'Wed Jul  6 17:29:34 2022', '捷安特-Liv慈溪大新路专卖店', '浙江省宁波市慈溪市浒山镇大新路455-459号', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e75aefd0e11ecb8e0272e72b32aba', '线程: 3', 'Wed Jul  6 17:29:34 2022', '捷安特江宁义乌专卖店', '江苏省南京市江宁区凤鸣路义乌商品城B区12栋1楼28号', 11, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e7d6afd0e11ecb8e0272e72b32aba', '线程: 4', 'Wed Jul  6 17:29:35 2022', '捷安特连云港CYCLING WORLD', '江苏省连云港市海州区巨龙南路66号君悦财富广场5-101-102商铺', 6, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e859efd0e11ecb8e0272e72b32aba', '线程: 3', 'Wed Jul  6 17:29:36 2022', '捷安特长江路专卖店', '江苏省苏州市高新区长江路318号', 2, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e8d46fd0e11ecb8e0272e72b32aba', '线程: 16', 'Wed Jul  6 17:29:38 2022', '捷安特-Liv三阳路CYCLING WORLD', '湖北省武汉市江岸区解放大道与三阳路交汇处融科天城四期T18a栋1-2层商7', 5, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e9516fd0e11ecb8e0272e72b32aba', '线程: 8', 'Wed Jul  6 17:29:38 2022', '捷安特府西街专卖店', '山西省太原市杏花岭区府西街195号', 1, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4e9d90fd0e11ecb8e0272e72b32aba', '线程: 14', 'Wed Jul  6 17:29:38 2022', '捷安特焦作人民路CYCLING WORLD', '河南省焦作市山阳区人民路人民广场正对面', 5, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4ea59cfd0e11ecb8e0272e72b32aba', '线程: 11', 'Wed Jul  6 17:29:39 2022', '捷安特洛阳中州西路专卖店', '河南省洛阳市涧西区中州西路与长春路交叉口向西200米路南', 2, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4ead08fd0e11ecb8e0272e72b32aba', '线程: 15', 'Wed Jul  6 17:29:40 2022', '捷安特长沙星沙大道专卖店', '湖南省长沙市长沙县星沙大道天和华城2栋103', 3, '2250201124', NULL, NULL, NULL, NULL);
INSERT INTO `escape_stock` (`id`, `thread_name`, `Warehousing_ time`, `by_shop`, `by_address`, `in_quantity`, `sku`, `shopno`, `mob`, `is_delete`, `remarks`) VALUES ('2a4eb438fd0e11ecb8e0272e72b32aba', '线程: 2', 'Wed Jul  6 17:29:42 2022', '捷安特中兴中路专卖店', '浙江省绍兴市越城区中兴中路345、347、349号', 1, '2250201124', NULL, NULL, NULL, NULL);
COMMIT;

-- ----------------------------
-- Triggers structure for table escape_stock
-- ----------------------------
DROP TRIGGER IF EXISTS `id_trigger`;
delimiter ;;
CREATE TRIGGER `id_trigger` BEFORE INSERT ON `escape_stock` FOR EACH ROW begin
    set new.id=replace(UUID(),'-','');
end
;;
delimiter ;

SET FOREIGN_KEY_CHECKS = 1;
