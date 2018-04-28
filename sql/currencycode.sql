/*
Navicat MySQL Data Transfer

Source Server         : root
Source Server Version : 50715
Source Host           : localhost:3306
Source Database       : currencycode

Target Server Type    : MYSQL
Target Server Version : 50715
File Encoding         : 65001

Date: 2017-11-06 14:45:42
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for currency_code
-- ----------------------------
DROP TABLE IF EXISTS `currency_code`;
CREATE TABLE `currency_code` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) DEFAULT NULL,
  `c_name` varchar(255) DEFAULT NULL,
  `d_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=174 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of currency_code
-- ----------------------------
INSERT INTO `currency_code` VALUES ('1', 'AED', '阿联酋迪拉姆', 'United Arab Emirates Dirham');
INSERT INTO `currency_code` VALUES ('2', 'AFN', '阿富汗尼', 'Afghan Afghani');
INSERT INTO `currency_code` VALUES ('3', 'ALL', '阿尔巴尼列克', 'Albania Lek');
INSERT INTO `currency_code` VALUES ('4', 'AMD', '亚美尼亚德拉姆', 'Armenia Dram');
INSERT INTO `currency_code` VALUES ('5', 'ANG', '荷兰盾', 'Dutch Guilder');
INSERT INTO `currency_code` VALUES ('6', 'AOA', '安哥拉宽扎', 'Angola Kwanza');
INSERT INTO `currency_code` VALUES ('7', 'ARS', '阿根廷比索', 'Argentina Peso');
INSERT INTO `currency_code` VALUES ('8', 'AUD', '澳元', 'Australia Dollar');
INSERT INTO `currency_code` VALUES ('9', 'AWG', '阿鲁巴弗罗林', 'Aruba Florin');
INSERT INTO `currency_code` VALUES ('10', 'AZN', '阿塞拜疆马纳特', 'Azerbaijan Manat');
INSERT INTO `currency_code` VALUES ('11', 'BAM', '波黑可兑换马克', 'Bosnia Convertible Mark');
INSERT INTO `currency_code` VALUES ('12', 'BBD', '巴巴多斯元', 'Barbados Dollar');
INSERT INTO `currency_code` VALUES ('13', 'BDT', '孟加拉国塔卡', 'Bangladesh Taka');
INSERT INTO `currency_code` VALUES ('14', 'BGN', '保加利亚列弗', 'Bulgaria Lev');
INSERT INTO `currency_code` VALUES ('15', 'BHD', '巴林第纳尔', 'Bahrain Dinar');
INSERT INTO `currency_code` VALUES ('16', 'BIF', '布隆迪法郎', 'Burundi Franc');
INSERT INTO `currency_code` VALUES ('17', 'BMD', '百慕大元', 'Bermudian Dollar');
INSERT INTO `currency_code` VALUES ('18', 'BND', '文莱元', 'Brunei Dollar');
INSERT INTO `currency_code` VALUES ('19', 'BOB', '玻利维亚诺', 'Bolivian Boliviano');
INSERT INTO `currency_code` VALUES ('20', 'BRL', '巴西雷亚尔', 'Brazilian Real');
INSERT INTO `currency_code` VALUES ('21', 'BSD', '巴哈马元', 'Bahamian Dollar');
INSERT INTO `currency_code` VALUES ('22', 'BTN', '不丹努扎姆', 'Bhutanese Ngultrum');
INSERT INTO `currency_code` VALUES ('23', 'BWP', '博茨瓦纳普拉', 'Botswana Pula ');
INSERT INTO `currency_code` VALUES ('24', 'BYR', '白俄罗斯卢布', 'Belarusian Ruble');
INSERT INTO `currency_code` VALUES ('25', 'BZD', '伯利兹元', 'Belize Dollar');
INSERT INTO `currency_code` VALUES ('26', 'CAD', '加元', 'Canadian Dollar');
INSERT INTO `currency_code` VALUES ('27', 'CDF', '刚果法郎', 'Congolese Franc');
INSERT INTO `currency_code` VALUES ('28', 'CHF', '瑞士法郎', 'Swiss Franc');
INSERT INTO `currency_code` VALUES ('29', 'CLF', '智利比索(基金)', 'Chilean Unidad de Fomento');
INSERT INTO `currency_code` VALUES ('30', 'CLP', '智利比索', 'Chilean Peso');
INSERT INTO `currency_code` VALUES ('31', 'CNH', '中国离岸人民币', 'Chinese Offshore Renminbi');
INSERT INTO `currency_code` VALUES ('32', 'CNY', '人民币', 'Chinese Yuan');
INSERT INTO `currency_code` VALUES ('33', 'COP', '哥伦比亚比索', 'Colombia Peso ');
INSERT INTO `currency_code` VALUES ('34', 'CRC', '哥斯达黎加科朗', 'Costa Rica Colon');
INSERT INTO `currency_code` VALUES ('35', 'CUP', '古巴比索', 'Cuban Peso');
INSERT INTO `currency_code` VALUES ('36', 'CVE', '佛得角埃斯库多', 'Cape Verde Escudo');
INSERT INTO `currency_code` VALUES ('37', 'CYP', '塞普路斯镑', 'Cyprus Pound');
INSERT INTO `currency_code` VALUES ('38', 'CZK', '捷克克朗', 'Czech Republic Koruna');
INSERT INTO `currency_code` VALUES ('39', 'DEM', '德国马克', 'Deutsche Mark');
INSERT INTO `currency_code` VALUES ('40', 'DJF', '吉布提法郎', 'Djiboutian Franc');
INSERT INTO `currency_code` VALUES ('41', 'DKK', '丹麦克朗', 'Danish Krone');
INSERT INTO `currency_code` VALUES ('42', 'DOP', '多米尼加比索', 'Dominican Peso');
INSERT INTO `currency_code` VALUES ('43', 'DZD', '阿尔及利亚第纳尔', 'Algerian Dinar ');
INSERT INTO `currency_code` VALUES ('44', 'ECS', '厄瓜多尔苏克雷', 'Ecuadorian Sucre');
INSERT INTO `currency_code` VALUES ('45', 'EGP', '埃及镑', 'Egyptian Pound');
INSERT INTO `currency_code` VALUES ('46', 'ERN', '厄立特里亚纳克法', 'Eritrean Nakfa ');
INSERT INTO `currency_code` VALUES ('47', 'ETB', '埃塞俄比亚比尔', 'Ethiopian Birr');
INSERT INTO `currency_code` VALUES ('48', 'EUR', '欧元', 'Euro');
INSERT INTO `currency_code` VALUES ('49', 'FJD', '斐济元', 'Fiji Dollar');
INSERT INTO `currency_code` VALUES ('50', 'FKP', '福克兰群岛镑', 'Falkland Islands Pound');
INSERT INTO `currency_code` VALUES ('51', 'FRF', '法国法郎', 'French Franc');
INSERT INTO `currency_code` VALUES ('52', 'GBP', '英镑', 'British Pound');
INSERT INTO `currency_code` VALUES ('53', 'GEL', '格鲁吉亚拉里', 'Georgian Lari');
INSERT INTO `currency_code` VALUES ('54', 'GHS', '加纳塞地', 'Ghanaian Cedi');
INSERT INTO `currency_code` VALUES ('55', 'GIP', '直布罗陀镑', 'Gibraltar Pound');
INSERT INTO `currency_code` VALUES ('56', 'GMD', '冈比亚达拉西', 'Gambian Dalasi');
INSERT INTO `currency_code` VALUES ('57', 'GNF', '几内亚法郎', 'Guinean Franc');
INSERT INTO `currency_code` VALUES ('58', 'GTQ', '危地马拉格查尔', 'Guatemalan Quetzal');
INSERT INTO `currency_code` VALUES ('59', 'GYD', '圭亚那元', 'Guyanese Dollar');
INSERT INTO `currency_code` VALUES ('60', 'HKD', '港币', 'Hong Kong Dollar');
INSERT INTO `currency_code` VALUES ('61', 'HNL', '洪都拉斯伦皮拉', 'Honduran Lempira');
INSERT INTO `currency_code` VALUES ('62', 'HRK', '克罗地亚库纳', 'Croatian Kuna');
INSERT INTO `currency_code` VALUES ('63', 'HTG', '海地古德', 'Haitian Gourde');
INSERT INTO `currency_code` VALUES ('64', 'HUF', '匈牙利福林', 'Hungarian Forint');
INSERT INTO `currency_code` VALUES ('65', 'IDR', '印度尼西亚卢比', 'Indonesian Rupiah');
INSERT INTO `currency_code` VALUES ('66', 'IEP', '爱尔兰镑', 'Irish Pound');
INSERT INTO `currency_code` VALUES ('67', 'ILS', '以色列新谢克尔', 'Israeli New Shekel');
INSERT INTO `currency_code` VALUES ('68', 'INR', '印度卢比', 'Indian Rupee');
INSERT INTO `currency_code` VALUES ('69', 'IQD', '伊拉克第纳尔', 'Iraqi Dinar');
INSERT INTO `currency_code` VALUES ('70', 'IRR', '伊朗里亚尔', 'Iranian Rial');
INSERT INTO `currency_code` VALUES ('71', 'ISK', '冰岛克郎', 'Icelandic Krona');
INSERT INTO `currency_code` VALUES ('72', 'ITL', '意大利里拉', 'Italian Lira');
INSERT INTO `currency_code` VALUES ('73', 'JMD', '牙买加元', 'Jamaican Dollar');
INSERT INTO `currency_code` VALUES ('74', 'JOD', '约旦第纳尔', 'Jordanian Dinar');
INSERT INTO `currency_code` VALUES ('75', 'JPY', '日元', 'Japanese Yen');
INSERT INTO `currency_code` VALUES ('76', 'KES', '肯尼亚先令', 'Kenyan Shilling');
INSERT INTO `currency_code` VALUES ('77', 'KGS', '吉尔吉斯斯坦索姆', 'Kyrgyzstani Som');
INSERT INTO `currency_code` VALUES ('78', 'KHR', '柬埔寨瑞尔', 'Cambodian Riel');
INSERT INTO `currency_code` VALUES ('79', 'KMF', '科摩罗法郎', 'Comorian franc');
INSERT INTO `currency_code` VALUES ('80', 'KPW', '朝鲜元', 'North Korean Won');
INSERT INTO `currency_code` VALUES ('81', 'KRW', '韩元', 'South Korean Won');
INSERT INTO `currency_code` VALUES ('82', 'KWD', '科威特第纳尔', 'Kuwaiti Dinar');
INSERT INTO `currency_code` VALUES ('83', 'KYD', '开曼群岛元', 'Cayman Islands Dollar');
INSERT INTO `currency_code` VALUES ('84', 'KZT', '哈萨克斯坦坚戈', 'Kazakstani Tenge');
INSERT INTO `currency_code` VALUES ('85', 'LAK', '老挝基普', 'Lao kip');
INSERT INTO `currency_code` VALUES ('86', 'LBP', '黎巴嫩镑', 'Lebanese Pound');
INSERT INTO `currency_code` VALUES ('87', 'LKR', '斯里兰卡卢比', 'Sri Lankan Rupee');
INSERT INTO `currency_code` VALUES ('88', 'LRD', '利比里亚元', 'Liberian dollar');
INSERT INTO `currency_code` VALUES ('89', 'LSL', '莱索托洛蒂', 'Lesotho Loti');
INSERT INTO `currency_code` VALUES ('90', 'LTL', '立陶宛立特', 'Lithuanian Litas');
INSERT INTO `currency_code` VALUES ('91', 'LVL', '拉脱维亚拉特', 'Latvian Lats');
INSERT INTO `currency_code` VALUES ('92', 'LYD', '利比亚第纳尔', 'Libyan Dinar');
INSERT INTO `currency_code` VALUES ('93', 'MAD', '摩洛哥迪拉姆', 'Moroccan Dirham');
INSERT INTO `currency_code` VALUES ('94', 'MDL', '摩尔多瓦列伊', 'Moldovan Leu');
INSERT INTO `currency_code` VALUES ('95', 'MGA', '马达加斯加阿里亚里', 'Malagasy Ariary');
INSERT INTO `currency_code` VALUES ('96', 'MKD', '马其顿代纳尔', 'Macedonian Denar');
INSERT INTO `currency_code` VALUES ('97', 'MMK', '缅甸元', 'Myanmar Kyat');
INSERT INTO `currency_code` VALUES ('98', 'MNT', '蒙古图格里克', 'Mongolian Tugrik');
INSERT INTO `currency_code` VALUES ('99', 'MOP', '澳门元', 'Macau Pataca');
INSERT INTO `currency_code` VALUES ('100', 'MRO', '毛里塔尼亚乌吉亚', 'Mauritania Ouguiya');
INSERT INTO `currency_code` VALUES ('101', 'MUR', '毛里求斯卢比', 'Mauritian Rupee');
INSERT INTO `currency_code` VALUES ('102', 'MVR', '马尔代夫拉菲亚', 'Maldives Rufiyaa');
INSERT INTO `currency_code` VALUES ('103', 'MWK', '马拉维克瓦查', 'Malawian Kwacha');
INSERT INTO `currency_code` VALUES ('104', 'MXN', '墨西哥比索', 'Mexican Peso');
INSERT INTO `currency_code` VALUES ('105', 'MXV', '墨西哥(资金)', 'Mexican Unidad De Inversion');
INSERT INTO `currency_code` VALUES ('106', 'MYR', '林吉特', 'Malaysian Ringgit');
INSERT INTO `currency_code` VALUES ('107', 'MZN', '莫桑比克新梅蒂卡尔', 'New Mozambican Metical');
INSERT INTO `currency_code` VALUES ('108', 'NAD', '纳米比亚元', 'Namibian Dollar');
INSERT INTO `currency_code` VALUES ('109', 'NGN', '尼日利亚奈拉', 'Nigerian Naira');
INSERT INTO `currency_code` VALUES ('110', 'NIO', '尼加拉瓜新科多巴', 'Nicaraguan Cordoba Oro');
INSERT INTO `currency_code` VALUES ('111', 'NOK', '挪威克朗', 'Norwegian Krone');
INSERT INTO `currency_code` VALUES ('112', 'NPR', '尼泊尔卢比', 'Nepalese Rupee');
INSERT INTO `currency_code` VALUES ('113', 'NZD', '新西兰元', 'New Zealand Dollar');
INSERT INTO `currency_code` VALUES ('114', 'OMR', '阿曼里亚尔', 'Omani Rial');
INSERT INTO `currency_code` VALUES ('115', 'PAB', '巴拿马巴波亚', 'Panamanian Balboa');
INSERT INTO `currency_code` VALUES ('116', 'PEN', '秘鲁新索尔', 'Peruvian Nuevo Sol');
INSERT INTO `currency_code` VALUES ('117', 'PGK', '巴布亚新几内亚基那', 'Papua New Guinea Kina');
INSERT INTO `currency_code` VALUES ('118', 'PHP', '菲律宾比索', 'Philippine Peso');
INSERT INTO `currency_code` VALUES ('119', 'PKR', '巴基斯坦卢比', 'Pakistan Rupee');
INSERT INTO `currency_code` VALUES ('120', 'PLN', '波兰兹罗提', 'Polish Zloty');
INSERT INTO `currency_code` VALUES ('121', 'PYG', '巴拉圭瓜拉尼', 'Paraguayan Guarani');
INSERT INTO `currency_code` VALUES ('122', 'QAR', '卡塔尔里亚尔', 'Qatari Riyal');
INSERT INTO `currency_code` VALUES ('123', 'RON', '罗马尼亚列伊', 'Romanian Leu');
INSERT INTO `currency_code` VALUES ('124', 'RSD', '塞尔维亚第纳尔', 'Serbian Dinar');
INSERT INTO `currency_code` VALUES ('125', 'RUB', '俄罗斯卢布', 'Russian Ruble');
INSERT INTO `currency_code` VALUES ('126', 'RWF', '卢旺达法郎', 'Rwandan Franc');
INSERT INTO `currency_code` VALUES ('127', 'SAR', '沙特里亚尔', 'Saudi Arabian Riyal');
INSERT INTO `currency_code` VALUES ('128', 'SBD', '所罗门群岛元', 'Solomon Islands Dollar');
INSERT INTO `currency_code` VALUES ('129', 'SCR', '塞舌尔卢比', 'Seychelles Rupee');
INSERT INTO `currency_code` VALUES ('130', 'SDG', '苏丹磅', 'Sudanese Pound');
INSERT INTO `currency_code` VALUES ('131', 'SEK', '瑞典克朗', 'Swedish Krona');
INSERT INTO `currency_code` VALUES ('132', 'SGD', '新加坡元', 'Singapore Dollar');
INSERT INTO `currency_code` VALUES ('133', 'SHP', '圣赫勒拿镑', 'Saint Helena Pound');
INSERT INTO `currency_code` VALUES ('134', 'SIT', '斯洛文尼亚托拉尔', 'Slovenian Tolar');
INSERT INTO `currency_code` VALUES ('135', 'SLL', '塞拉利昂利昂', 'Sierra Leonean Leone');
INSERT INTO `currency_code` VALUES ('136', 'SOS', '索马里先令', 'Somali Shilling');
INSERT INTO `currency_code` VALUES ('137', 'SRD', '苏里南元', 'Suriname Dollar');
INSERT INTO `currency_code` VALUES ('138', 'STD', '圣多美多布拉', 'Sao Tome Dobra');
INSERT INTO `currency_code` VALUES ('139', 'SVC', '萨尔瓦多科朗', 'Salvadoran Colon');
INSERT INTO `currency_code` VALUES ('140', 'SYP', '叙利亚镑', 'Syrian Pound');
INSERT INTO `currency_code` VALUES ('141', 'SZL', '斯威士兰里兰吉尼', 'Swazi Lilangeni');
INSERT INTO `currency_code` VALUES ('142', 'THB', '泰铢', 'Thai Baht');
INSERT INTO `currency_code` VALUES ('143', 'TJS', '塔吉克斯坦索莫尼', 'Tajikistan Somoni');
INSERT INTO `currency_code` VALUES ('144', 'TMT', '土库曼斯坦马纳特', 'Turkmenistan Manat');
INSERT INTO `currency_code` VALUES ('145', 'TND', '突尼斯第纳尔', 'Tunisian Dinar');
INSERT INTO `currency_code` VALUES ('146', 'TOP', '汤加潘加', 'Tongan Pa\'Anga');
INSERT INTO `currency_code` VALUES ('147', 'TRY', '土耳其里拉', 'Turkish Lira');
INSERT INTO `currency_code` VALUES ('148', 'TTD', '特立尼达多巴哥元', 'Trinidad and Tobago Dollar');
INSERT INTO `currency_code` VALUES ('149', 'TWD', '新台币', 'New Taiwan Dollar');
INSERT INTO `currency_code` VALUES ('150', 'TZS', '坦桑尼亚先令', 'Tanzanian Shilling');
INSERT INTO `currency_code` VALUES ('151', 'UAH', '乌克兰格里夫纳', 'Ukrainian Hryvnia');
INSERT INTO `currency_code` VALUES ('152', 'UGX', '乌干达先令', 'Ugandan Shilling');
INSERT INTO `currency_code` VALUES ('153', 'USD', '美元', 'United States Dollar');
INSERT INTO `currency_code` VALUES ('154', 'UYU', '乌拉圭比索', 'Uruguayan Peso');
INSERT INTO `currency_code` VALUES ('155', 'UZS', '乌兹别克斯坦苏姆', 'Uzbekistani Som');
INSERT INTO `currency_code` VALUES ('156', 'VEF', '委内瑞拉玻利瓦尔', 'Venezuelan Bolivar Fuerte');
INSERT INTO `currency_code` VALUES ('157', 'VND', '越南盾', 'Viet Nam Dong');
INSERT INTO `currency_code` VALUES ('158', 'VUV', '瓦努阿图瓦图', 'Vanuatu Vatu');
INSERT INTO `currency_code` VALUES ('159', 'WST', '萨摩亚塔拉', 'Samoa Tala');
INSERT INTO `currency_code` VALUES ('160', 'XAF', '中非法郎', 'Central African CFA Franc');
INSERT INTO `currency_code` VALUES ('161', 'XAG', '银价盎司', 'Ounces of Silver');
INSERT INTO `currency_code` VALUES ('162', 'XAU', '金价盎司', 'Ounces of Gold');
INSERT INTO `currency_code` VALUES ('163', 'XCD', '东加勒比元', 'East Caribbean Dollar');
INSERT INTO `currency_code` VALUES ('164', 'XCP', '铜价盎司', 'Ounces of Copper');
INSERT INTO `currency_code` VALUES ('165', 'XDR', 'IMF特别提款权', 'IMF Special Drawing Rights');
INSERT INTO `currency_code` VALUES ('166', 'XOF', '西非法郎', 'West African CFA');
INSERT INTO `currency_code` VALUES ('167', 'XPD', '钯价盎司', 'Ounces of Palladium');
INSERT INTO `currency_code` VALUES ('168', 'XPF', '太平洋法郎', 'French Pacific Franc');
INSERT INTO `currency_code` VALUES ('169', 'XPT', '珀价盎司', 'Ounces of Platinum');
INSERT INTO `currency_code` VALUES ('170', 'YER', '也门里亚尔', 'Yemeni Rial');
INSERT INTO `currency_code` VALUES ('171', 'ZAR', '南非兰特', 'South African Rand');
INSERT INTO `currency_code` VALUES ('172', 'ZMW', '赞比亚克瓦查', 'Zambian Kwacha');
INSERT INTO `currency_code` VALUES ('173', 'ZWL', '津巴布韦元', 'Zimbabwean Dollar');
