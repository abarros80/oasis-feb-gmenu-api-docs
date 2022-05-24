
drop table if exists `gmenubd`.`tbl_conjunto`;
drop table if exists `gmenubd`.`tbl_item`;
drop table if exists `gmenubd`.`tbl_tipo_conjunto`;

/*COMENTARIO: INSERIR TIPO CONJUNTO--------------------------------------------------------------------------------------------------------------*/

INSERT INTO `gmenubd`.`tbl_tipo_conjunto` (`id`, `activo`, `data_cadastro`, `id_user_cadastro`, `nome`) VALUES (1, 1, sysdate(), 1, "ROOT");
INSERT INTO `gmenubd`.`tbl_tipo_conjunto` (`id`, `activo`, `data_cadastro`, `id_user_cadastro`, `nome`) VALUES (2, 1, sysdate(), 1, "ENTRADAS");
INSERT INTO `gmenubd`.`tbl_tipo_conjunto` (`id`, `activo`, `data_cadastro`, `id_user_cadastro`, `nome`) VALUES (3, 1, sysdate(), 1, "SOBREMESAS");
INSERT INTO `gmenubd`.`tbl_tipo_conjunto` (`id`, `activo`, `data_cadastro`, `id_user_cadastro`, `nome`) VALUES (4, 1, sysdate(), 1, "PRINCIPAL");
INSERT INTO `gmenubd`.`tbl_tipo_conjunto` (`id`, `activo`, `data_cadastro`, `id_user_cadastro`, `nome`) VALUES (5, 1, sysdate(), 1, "CARNE");
INSERT INTO `gmenubd`.`tbl_tipo_conjunto` (`id`, `activo`, `data_cadastro`, `id_user_cadastro`, `nome`) VALUES (6, 1, sysdate(), 1, "PEIXE");
INSERT INTO `gmenubd`.`tbl_tipo_conjunto` (`id`, `activo`, `data_cadastro`, `id_user_cadastro`, `nome`) VALUES (7, 1, sysdate(), 1, "BEBIDAS");
INSERT INTO `gmenubd`.`tbl_tipo_conjunto` (`id`, `activo`, `data_cadastro`, `id_user_cadastro`, `nome`) VALUES (8, 1, sysdate(), 1, "VINHO");

/*COMENTARIO: INSERIR  CONJUNTO--------------------------------------------------------------------------------------------------------------*/

INSERT INTO `gmenubd`.`tbl_conjunto`
(`id`, `activo`, `data_cadastro`, `desc_fr`, `desc_ing`, `desc_pt`, `foto_path`, `id_user_cadastro`, `nome`, `ordem`, `conjunto_id`, `tipo_conjunto_id`) VALUES (1, 1, sysdate(), "desc_fr", "desc_ing", "desc_pt",  "foto_path", 1, "MENU TABANKA", 0, null, 1); 

INSERT INTO `gmenubd`.`tbl_conjunto`
(`id`, `activo`, `data_cadastro`, `desc_fr`, `desc_ing`, `desc_pt`, `foto_path`, `id_user_cadastro`, `nome`, `ordem`, `conjunto_id`, `tipo_conjunto_id`) VALUES (2, 1, sysdate(), "desc_fr", "desc_ing", "desc_pt",  "foto_path", 1, "SALADAS", 1, 1, 2); 

INSERT INTO `gmenubd`.`tbl_conjunto`
(`id`, `activo`, `data_cadastro`, `desc_fr`, `desc_ing`, `desc_pt`, `foto_path`, `id_user_cadastro`, `nome`, `ordem`, `conjunto_id`, `tipo_conjunto_id`) VALUES (3, 1, sysdate(), "desc_fr", "desc_ing", "desc_pt",  "foto_path", 1, "SOPA", 2, 1, 2); 


/*COMENTARIO: INSERIR  ITEM--------------------------------------------------------------------------------------------------------------*/
INSERT INTO `gmenubd`.`tbl_item`
(`id`, `activo`, `data_cadastro`, `desc_fr`, `desc_ing`, `desc_pt`, `foto_path`, `id_user_cadastro`, `nome`, `ordem`, `preco`, `quantidade`, `unidade_medida_enum`, `conjunto_id`)
VALUES (1, 1, sysdate(), "desc_fr", "desc_ing", "desc_pt", "foto_path", 1, "Salada Cesar", 1, 500, 30, "GRAMA", 2);
