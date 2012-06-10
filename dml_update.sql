-- ----------------------------
-- Records of t_base_field
-- ----------------------------
START TRANSACTION;
INSERT INTO `t_base_field` VALUES ('1', 'gender', '性别', '0', '女', '1', '2012-06-10 16:11:57', '2012-06-10 16:11:47', '1');
INSERT INTO `t_base_field` VALUES ('2', 'gender', '性别', '1', '男', '1', '2012-06-10 16:16:37', '2012-06-10 16:16:32', '2');
INSERT INTO `t_base_field` VALUES ('3', 'gender', '性别', '2', '保密', '1', '2012-06-10 16:17:00', '2012-06-10 16:16:55', '3');
INSERT INTO `t_base_field` VALUES ('4', 'platform', '支持平台', '1', 'Android 1.5', '1', '2012-06-10 16:30:05', '2012-06-10 16:24:01', '4');
INSERT INTO `t_base_field` VALUES ('5', 'platform', '支持平台', '2', 'Android 1.6', '1', '2012-06-10 16:30:08', '2012-06-10 16:24:50', '5');
INSERT INTO `t_base_field` VALUES ('6', 'platform', '支持平台', '3', 'Android 2.0', '1', '2012-06-10 16:30:12', '2012-06-10 16:25:31', '6');
INSERT INTO `t_base_field` VALUES ('7', 'platform', '支持平台', '4', 'Android 2.1', '1', '2012-06-10 16:30:15', '2012-06-10 16:26:17', '7');
INSERT INTO `t_base_field` VALUES ('8', 'platform', '支持平台', '5', 'Android 2.2', '1', '2012-06-10 16:30:17', '2012-06-10 16:27:48', '8');
INSERT INTO `t_base_field` VALUES ('9', 'platform', '支持平台', '6', 'Android 2.3', '1', '2012-06-10 16:30:19', '2012-06-10 16:29:17', '9');
INSERT INTO `t_base_field` VALUES ('10', 'platform', '支持平台', '7', 'Android 4.0', '1', '2012-06-10 16:30:22', '2012-06-10 16:29:55', '10');
INSERT INTO `t_base_field` VALUES ('11', 'status', '状态', '0', '停用', '1', '2012-06-10 20:13:49', '2012-06-10 20:13:46', '11');
INSERT INTO `t_base_field` VALUES ('12', 'status', '状态', '1', '启用', '1', '2012-06-10 20:14:12', '2012-06-10 20:14:08', '12');
INSERT INTO `t_base_field` VALUES ('13', 'account_status', '状态', '0', '停用', '1', '2012-06-10 21:19:12', '2012-06-10 21:19:09', '13');
INSERT INTO `t_base_field` VALUES ('14', 'account_status', '状态', '1', '启用', '1', '2012-06-10 20:15:14', '2012-06-10 20:15:09', '14');
INSERT INTO `t_base_field` VALUES ('15', 'account_status', '状态', '2', '锁定', '1', '2012-06-10 20:16:55', '2012-06-10 20:16:49', '15');
INSERT INTO `t_base_field` VALUES ('16', 'suppor_language', '支持语言', '0', '简体中文', '1', '2012-06-10 20:35:35', '2012-06-10 20:35:31', '16');
INSERT INTO `t_base_field` VALUES ('17', 'suppor_language', '支持语言', '1', '繁体中文', '1', '2012-06-10 20:36:21', '2012-06-10 20:36:14', '17');
INSERT INTO `t_base_field` VALUES ('18', 'suppor_language', '支持语言', '2', '英文', '1', '2012-06-10 20:36:42', '2012-06-10 20:36:38', '18');
INSERT INTO `t_base_field` VALUES ('19', 'suppor_language', '支持语言', '3', '多语言', '1', '2012-06-10 20:37:31', '2012-06-10 20:37:26', '19');
COMMIT;

START TRANSACTION;
TRUNCATE TABLE `t_base_module`;
-- ----------------------------
-- Records of t_base_module
-- ----------------------------
INSERT INTO `t_base_module` VALUES ('1', '系统管理', '/admin', '0', '0', '1', null, '1', '1', null, '2012-05-23 12:00:34', '2012-05-13 22:09:40');
INSERT INTO `t_base_module` VALUES ('2', '权限管理', null, '1', '1', '1', null, '1', '2', null, '2012-05-15 11:10:36', '2012-05-13 22:11:04');
INSERT INTO `t_base_module` VALUES ('3', '角色管理', '/admin/permission/role', '2', '2', '1', null, '1', '3', null, '2012-05-23 12:00:34', '2012-05-13 22:15:47');
INSERT INTO `t_base_module` VALUES ('4', '编辑角色', '/admin/permission/role/save', '3', '3', '1', null, '0', '5', null, '2012-05-23 12:00:34', '2012-05-13 22:16:36');
INSERT INTO `t_base_module` VALUES ('5', '删除角色', '/admin/permission/role/delete', '3', '3', '1', null, '0', '6', null, '2012-05-23 12:00:34', '2012-05-13 22:17:18');
INSERT INTO `t_base_module` VALUES ('6', '查询角色', '/admin/permission/role/query', '3', '3', '1', null, '0', '4', null, '2012-05-23 12:00:34', '2012-05-13 22:20:28');
INSERT INTO `t_base_module` VALUES ('7', '用户管理', '/admin/permission/user', '2', '2', '1', null, '1', '10', null, '2012-05-23 12:00:34', '2012-05-13 22:21:14');
INSERT INTO `t_base_module` VALUES ('8', '编辑用户', '/admin/permission/user/save', '7', '3', '1', null, '0', '12', null, '2012-05-23 12:00:34', '2012-05-13 22:22:12');
INSERT INTO `t_base_module` VALUES ('9', '删除用户', '/admin/permission/user/delete', '7', '3', '1', null, '0', '13', null, '2012-05-23 12:00:34', '2012-05-13 22:22:56');
INSERT INTO `t_base_module` VALUES ('10', '查询用户', '/admin/permission/user/query', '7', '3', '1', null, '0', '11', null, '2012-05-23 12:00:34', '2012-05-13 22:23:32');
INSERT INTO `t_base_module` VALUES ('11', '模块管理', '/admin/permission/module', '2', '2', '1', null, '1', '16', null, '2012-05-23 12:00:34', '2012-05-13 22:24:05');
INSERT INTO `t_base_module` VALUES ('12', '编辑模块', '/admin/permission/module/save', '11', '3', '1', null, '0', '18', null, '2012-05-23 12:00:34', '2012-05-13 22:24:47');
INSERT INTO `t_base_module` VALUES ('13', '删除模块', '/admin/permission/module/delete', '11', '3', '1', null, '0', '19', null, '2012-05-23 12:00:34', '2012-05-13 22:25:27');
INSERT INTO `t_base_module` VALUES ('14', '查询模块', '/admin/permission/module/query', '11', '3', '1', null, '0', '17', null, '2012-05-23 12:00:34', '2012-05-14 21:50:02');
INSERT INTO `t_base_module` VALUES ('15', '字典管理', '/admin/permission/field', '2', '2', '1', null, '1', '20', null, '2012-06-10 15:15:53', '2012-06-10 15:15:35');
INSERT INTO `t_base_module` VALUES ('16', '查询字段', '/admin/permission/field/query', '15', '3', '1', null, '0', '21', null, '2012-06-10 16:19:22', '2012-06-10 16:19:20');
INSERT INTO `t_base_module` VALUES ('17', '编辑字段', '/admin/permission/field/save', '15', '3', '1', null, '0', '22', null, '2012-06-10 16:20:24', '2012-06-10 16:20:20');
INSERT INTO `t_base_module` VALUES ('18', '删除字段', '/admin/permission/field/delete', '15', '3', '1', null, '0', '23', null, '2012-06-10 16:21:12', '2012-06-10 16:21:09');
INSERT INTO `t_base_module` VALUES ('101', 'Market管理', null, '1', '1', '1', null, '1', '111', 'Market管理', '2012-06-10 15:11:21', '2012-05-17 10:36:21');
INSERT INTO `t_base_module` VALUES ('102', '查询所有模块', '/admin/permission/module/queryAll', '101', '3', '1', null, '0', '106', null, '2012-06-10 15:18:03', '2012-05-16 00:23:31');
INSERT INTO `t_base_module` VALUES ('103', '应用管理', '/admin/app/application', '101', '2', '1', null, '1', '116', '应用管理', '2012-06-10 15:20:54', '2012-05-18 17:21:53');
INSERT INTO `t_base_module` VALUES ('104', '查询应用', '/admin/app/application/query', '103', '3', '1', null, '0', '117', '查询应用', '2012-06-10 15:21:28', '2012-05-20 11:05:09');
INSERT INTO `t_base_module` VALUES ('105', '编辑应用', '/admin/app/application/save', '103', '3', '1', null, '0', '118', '编辑应用', '2012-06-10 15:21:31', '2012-05-20 11:06:44');
INSERT INTO `t_base_module` VALUES ('106', '删除应用', '/admin/app/application/delete', '103', '3', '1', null, '0', '119', '删除应用', '2012-06-10 15:21:35', '2012-05-20 11:08:54');
INSERT INTO `t_base_module` VALUES ('107', '分类管理', '/admin/app/catalog', '101', '2', '1', null, '1', '112', '应用分类管理', '2012-06-10 15:18:29', '2012-05-20 11:09:48');
INSERT INTO `t_base_module` VALUES ('108', '查询分类', '/admin/app/catalog/query', '107', '3', '1', null, '0', '113', '查询应用分类', '2012-06-10 15:18:34', '2012-05-20 11:40:08');
INSERT INTO `t_base_module` VALUES ('109', '编辑分类', '/admin/app/catalog/save', '107', '3', '1', null, '0', '114', '编辑应用分类', '2012-06-10 15:18:38', '2012-05-20 11:41:14');
INSERT INTO `t_base_module` VALUES ('110', '删除分类', '/admin/app/catalog/delete', '107', '3', '1', null, '0', '115', '删除应用分类', '2012-06-10 15:18:42', '2012-05-20 11:41:55');
INSERT INTO `t_base_module` VALUES ('111', '评论管理', '/admin/app/comment', '101', '2', '1', null, '1', '125', '应用评论管理', '2012-06-10 15:28:29', '2012-05-21 11:33:13');
INSERT INTO `t_base_module` VALUES ('112', '查询评论', '/admin/app/comment/query', '111', '3', '1', null, '0', '126', '查询评论图片', '2012-06-10 15:28:58', '2012-05-21 11:33:59');
INSERT INTO `t_base_module` VALUES ('113', '编辑评论', '/admin/app/comment/save', '111', '3', '1', null, '0', '127', '编辑评论', '2012-06-10 15:29:01', '2012-05-21 11:34:35');
INSERT INTO `t_base_module` VALUES ('114', '删除评论', '/admin/app/comment/delete', '111', '3', '1', null, '0', '128', '删除评论', '2012-06-10 15:29:02', '2012-05-21 11:35:18');
INSERT INTO `t_base_module` VALUES ('115', '查看评论', '/admin/app/comment/view', '111', '3', '1', null, '0', '129', '查看评论', '2012-06-10 15:29:08', '2012-05-21 11:35:47');
INSERT INTO `t_base_module` VALUES ('116', '版本管理', '/admin/app/version', '101', '2', '1', null, '1', '120', '应用版本管理', '2012-06-10 15:29:19', '2012-05-21 11:36:39');
INSERT INTO `t_base_module` VALUES ('117', '查询版本', '/admin/app/version/query', '116', '3', '1', null, '0', '121', '查询版本', '2012-06-10 15:29:55', '2012-05-21 11:37:08');
INSERT INTO `t_base_module` VALUES ('118', '编辑版本', '/admin/app/version/save', '116', '3', '1', null, '0', '122', '编辑版本', '2012-06-10 15:29:58', '2012-05-21 11:37:39');
INSERT INTO `t_base_module` VALUES ('119', '删除版本', '/admin/app/version/delete', '116', '3', '1', null, '0', '123', '删除版本', '2012-06-10 15:30:00', '2012-05-21 11:38:16');
INSERT INTO `t_base_module` VALUES ('120', '查看版本', '/admin/app/version/view', '116', '3', '1', null, '0', '124', '查看版本', '2012-06-10 15:30:05', '2012-05-21 11:38:49');
INSERT INTO `t_base_module` VALUES ('121', '帐号管理', '/admin/app/account', '101', '1', '1', null, '1', '128', '帐号管理模块', '2012-06-10 15:30:17', '2012-06-08 23:52:50');
INSERT INTO `t_base_module` VALUES ('122', '查询帐号', '/admin/app/account/query', '121', '2', '1', null, '0', '129', '查询帐号', '2012-06-10 15:30:44', '2012-05-22 11:07:08');
INSERT INTO `t_base_module` VALUES ('123', '编辑帐号', '/admin/app/account/save', '121', '2', '1', null, '0', '130', '编辑帐号', '2012-06-10 15:30:46', '2012-05-22 11:07:50');
INSERT INTO `t_base_module` VALUES ('124', '封号', '/admin/app/account/lock', '121', '2', '1', null, '0', '131', '封号帐号', '2012-06-10 15:30:48', '2012-05-22 11:08:33');
INSERT INTO `t_base_module` VALUES ('125', '解封', '/admin/app/account/unlock', '121', '2', '1', null, '0', '132', '解封帐号', '2012-06-10 15:30:50', '2012-05-22 11:09:38');
INSERT INTO `t_base_module` VALUES ('126', '查询平台用户', '/admin/app/account/all', '121', '3', '1', null, '0', '136', '查询所有帐号信息（评论管理中查询下拉框）', '2012-06-10 15:30:53', '2012-05-29 15:20:10');
INSERT INTO `t_base_module` VALUES ('127', '下载记录', '/admin/app/download', '101', '3', '1', null, '1', '133', '应用下载记录', '2012-06-10 15:31:14', '2012-05-22 11:37:44');
INSERT INTO `t_base_module` VALUES ('128', '查询下载记录', '/admin/app/download/query', '127', '3', '1', null, '0', '134', '查询下载记录', '2012-06-10 15:31:26', '2012-05-22 11:38:50');
COMMIT;

START TRANSACTION;
TRUNCATE TABLE `t_base_role_module`;
-- ----------------------------
-- Records of t_base_role_module
-- ----------------------------
INSERT INTO `t_base_role_module` VALUES ('1', '1');
INSERT INTO `t_base_role_module` VALUES ('2', '1');
INSERT INTO `t_base_role_module` VALUES ('1', '2');
INSERT INTO `t_base_role_module` VALUES ('1', '3');
INSERT INTO `t_base_role_module` VALUES ('1', '4');
INSERT INTO `t_base_role_module` VALUES ('1', '5');
INSERT INTO `t_base_role_module` VALUES ('1', '6');
INSERT INTO `t_base_role_module` VALUES ('1', '7');
INSERT INTO `t_base_role_module` VALUES ('1', '8');
INSERT INTO `t_base_role_module` VALUES ('1', '9');
INSERT INTO `t_base_role_module` VALUES ('1', '10');
INSERT INTO `t_base_role_module` VALUES ('1', '11');
INSERT INTO `t_base_role_module` VALUES ('1', '12');
INSERT INTO `t_base_role_module` VALUES ('1', '13');
INSERT INTO `t_base_role_module` VALUES ('1', '14');
INSERT INTO `t_base_role_module` VALUES ('1', '15');
INSERT INTO `t_base_role_module` VALUES ('1', '16');
INSERT INTO `t_base_role_module` VALUES ('1', '17');
INSERT INTO `t_base_role_module` VALUES ('1', '18');
INSERT INTO `t_base_role_module` VALUES ('1', '101');
INSERT INTO `t_base_role_module` VALUES ('2', '101');
INSERT INTO `t_base_role_module` VALUES ('1', '102');
INSERT INTO `t_base_role_module` VALUES ('2', '102');
INSERT INTO `t_base_role_module` VALUES ('1', '103');
INSERT INTO `t_base_role_module` VALUES ('2', '103');
INSERT INTO `t_base_role_module` VALUES ('1', '104');
INSERT INTO `t_base_role_module` VALUES ('2', '104');
INSERT INTO `t_base_role_module` VALUES ('1', '105');
INSERT INTO `t_base_role_module` VALUES ('2', '105');
INSERT INTO `t_base_role_module` VALUES ('1', '106');
INSERT INTO `t_base_role_module` VALUES ('2', '106');
INSERT INTO `t_base_role_module` VALUES ('1', '107');
INSERT INTO `t_base_role_module` VALUES ('2', '107');
INSERT INTO `t_base_role_module` VALUES ('1', '108');
INSERT INTO `t_base_role_module` VALUES ('2', '108');
INSERT INTO `t_base_role_module` VALUES ('1', '109');
INSERT INTO `t_base_role_module` VALUES ('2', '109');
INSERT INTO `t_base_role_module` VALUES ('1', '110');
INSERT INTO `t_base_role_module` VALUES ('2', '110');
INSERT INTO `t_base_role_module` VALUES ('1', '111');
INSERT INTO `t_base_role_module` VALUES ('2', '111');
INSERT INTO `t_base_role_module` VALUES ('1', '112');
INSERT INTO `t_base_role_module` VALUES ('2', '112');
INSERT INTO `t_base_role_module` VALUES ('1', '113');
INSERT INTO `t_base_role_module` VALUES ('2', '113');
INSERT INTO `t_base_role_module` VALUES ('1', '114');
INSERT INTO `t_base_role_module` VALUES ('2', '114');
INSERT INTO `t_base_role_module` VALUES ('1', '115');
INSERT INTO `t_base_role_module` VALUES ('2', '115');
INSERT INTO `t_base_role_module` VALUES ('1', '116');
INSERT INTO `t_base_role_module` VALUES ('2', '116');
INSERT INTO `t_base_role_module` VALUES ('1', '117');
INSERT INTO `t_base_role_module` VALUES ('2', '117');
INSERT INTO `t_base_role_module` VALUES ('1', '118');
INSERT INTO `t_base_role_module` VALUES ('2', '118');
INSERT INTO `t_base_role_module` VALUES ('1', '119');
INSERT INTO `t_base_role_module` VALUES ('2', '119');
INSERT INTO `t_base_role_module` VALUES ('1', '120');
INSERT INTO `t_base_role_module` VALUES ('2', '120');
INSERT INTO `t_base_role_module` VALUES ('1', '121');
INSERT INTO `t_base_role_module` VALUES ('2', '121');
INSERT INTO `t_base_role_module` VALUES ('1', '122');
INSERT INTO `t_base_role_module` VALUES ('2', '122');
INSERT INTO `t_base_role_module` VALUES ('1', '123');
INSERT INTO `t_base_role_module` VALUES ('2', '123');
INSERT INTO `t_base_role_module` VALUES ('1', '124');
INSERT INTO `t_base_role_module` VALUES ('2', '124');
INSERT INTO `t_base_role_module` VALUES ('1', '125');
INSERT INTO `t_base_role_module` VALUES ('2', '125');
INSERT INTO `t_base_role_module` VALUES ('1', '126');
INSERT INTO `t_base_role_module` VALUES ('2', '126');
INSERT INTO `t_base_role_module` VALUES ('1', '127');
INSERT INTO `t_base_role_module` VALUES ('2', '127');
INSERT INTO `t_base_role_module` VALUES ('1', '128');
INSERT INTO `t_base_role_module` VALUES ('2', '128');
COMMIT;