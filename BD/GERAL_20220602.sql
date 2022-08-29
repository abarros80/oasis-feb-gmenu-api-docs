/*USUARIO--------------------------------------------------------------------------------------------------------------*/

INSERT INTO `gmenubd`.`users`(`id`,`email`,`name`,`password`,`username`)
VALUES 
(1, "adilson.barros@oasisatlantico.com", "Adilson Barros", "12345678", "abarros"),
(2, "fernanda.barros@oasisatlantico.com", "Fernanda Barros", "87654321", "fbarros");


/*ROLES--------------------------------------------------------------------------------------------------------------*/

INSERT INTO `gmenubd`.`roles` (`id`, `name`) VALUES(1, 'ROLE_ADMIN');
INSERT INTO `gmenubd`.`roles` (`id`, `name`) VALUES(2, 'ROLE_SUPER');
INSERT INTO `gmenubd`.`roles` (`id`, `name`) VALUES(3, 'ROLE_SUPERVISOR');
INSERT INTO `gmenubd`.`roles` (`id`, `name`) VALUES(4, 'ROLE_USER');

/*ASSOCIAR USUARIO A ROLES--------------------------------------------------------------------------------------------------------------*/
INSERT INTO `gmenubd`.`user_roles` (`user_id`,`role_id`)
VALUES
(1,1), (2,4);



/*COMENTARIO: INSERIR HOTEL--------------------------------------------------------------------------------------------------------------*/

INSERT INTO `gmenubd`.`tbl_hotel` (`id`, `activo`, `email`, `logo_path`, `data_alteracao`, `data_criacao`, `id_user_alteracao`, `id_user_criacao`, `nome`, `telefone`) 
VALUES ( 1, 1, "portogrande@oasisatlantico.com", "https://caboverde-porto-grande.oasisatlantico.com/wp-content/uploads/sites/26/2019/08/PortoGrande_V_verde-copy.png", sysdate(), sysdate(), 1, 1, "Hotel Porto Grande", "2323190");

INSERT INTO `gmenubd`.`tbl_hotel` (`id`, `activo`, `email`, `logo_path`, `data_alteracao`, `data_criacao`, `id_user_alteracao`, `id_user_criacao`, `nome`, `telefone`) 
VALUES ( 2, 1, "praiamar@oasisatlantico.com", "https://caboverde-praiamar.oasisatlantico.com/wp-content/uploads/sites/27/2019/08/praiamar_V_verde.png", sysdate(), sysdate(), 1, 1, "Hotel Praiamar", "2608440");

INSERT INTO `gmenubd`.`tbl_hotel` (`id`, `activo`, `email`, `logo_path`, `data_alteracao`, `data_criacao`, `id_user_alteracao`, `id_user_criacao`, `nome`, `telefone`) 
VALUES ( 3, 1, "belorizonte@oasisatlantico.com", "https://caboverde-belorizonte.oasisatlantico.com/wp-content/uploads/sites/24/2019/08/Belorizonte_V_verde.png", sysdate(), sysdate(), 1, 1, "Hotel Belorizonte", " 2421045");

INSERT INTO `gmenubd`.`tbl_hotel` (`id`, `activo`, `email`, `logo_path`, `data_alteracao`, `data_criacao`, `id_user_alteracao`, `id_user_criacao`, `nome`, `telefone`) 
VALUES ( 4, 1, "salinassea@oasisatlantico.com", "https://caboverde-salinas-sea.oasisatlantico.com/wp-content/uploads/sites/12/2019/06/SalinasSea_V_branco-copy.png", sysdate(), sysdate(), 1, 1, "Hotel Salinas Sea", " 2422300");

/*ASSOCIAR USUARIO A HOTEL--------------------------------------------------------------------------------------------------------------*/
INSERT INTO `gmenubd`.`user_hotels`
(`user_id`,`hotel_id`)
VALUES
(1,1), (1,2), (1,3), (1,4),(2,1);

/*COMENTAR DEPOIS*/

INSERT INTO `gmenubd`.`user_hotels`
(`user_id`,`hotel_id`)
VALUES
(3,1), (3,2), (3,3);






/*COMENTARIO: INSERIR RESTAURANTES DO HOTEL PORTO GRANDE--------------------------------------------------------------------------------------------------------------*/
/*COMENTARIO: KALIMBA--------------------------------------------------------------------------------------------------------------*/
INSERT INTO `gmenubd`.`tbl_restaurante`
(`id`, `activo`, `horario`, `imagem_capa`, `data_alteracao`, `data_criacao`, `id_user_alteracao`, `id_user_criacao`, `nome`, `numero_interno`, `telefone`,`hotel_id`)
VALUES(1,1,"10h as 22h","https://caboverde-porto-grande.oasisatlantico.com/wp-content/uploads/sites/26/2019/08/2sasd9-1-copy.jpg",sysdate(), sysdate(), 1, 1, "Kalimba", "...", "2323190", 1);

/*COMENTARIO: CARDAPIOS DO KALIMBA--------------------------------------------------------------------------------------------------------------*/

INSERT INTO `gmenubd`.`tbl_cardapio`(`id`,`activo`,`cod_reduz`,`imagem_path`,`nome_fr`,`nome_ing`,`nome_pt`,`hotel_id`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`)
VALUE(1, 1, "TAPA", "https://caboverde-porto-grande.oasisatlantico.com/wp-content/uploads/sites/26/2020/07/TAPAS-scaled.jpg", "Tapas", "Tapas", "Tapas", 1,sysdate(), sysdate(), 1, 1);

INSERT INTO `gmenubd`.`tbl_cardapio`(`id`,`activo`,`cod_reduz`,`imagem_path`,`nome_fr`,`nome_ing`,`nome_pt`,`hotel_id`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`)
VALUE(2, 1, "SNK", "https://caboverde-porto-grande.oasisatlantico.com/wp-content/uploads/sites/26/2020/08/snack.jpg", "Snacks", "Snacks", "Snacks", 1,sysdate(), sysdate(), 1, 1);

INSERT INTO `gmenubd`.`tbl_cardapio`(`id`,`activo`,`cod_reduz`,`imagem_path`,`nome_fr`,`nome_ing`,`nome_pt`,`hotel_id`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`)
VALUE(3, 1, "SOP", "https://caboverde-porto-grande.oasisatlantico.com/wp-content/uploads/sites/26/2020/08/entradas.jpg", "Entrées/Soupe", "Appetizers/Soup", "Entradas/Sopas", 1,sysdate(), sysdate(), 1, 1);

INSERT INTO `gmenubd`.`tbl_cardapio`(`id`,`activo`,`cod_reduz`,`imagem_path`,`nome_fr`,`nome_ing`,`nome_pt`,`hotel_id`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`)
VALUE(4, 1, "MASS", "https://caboverde-porto-grande.oasisatlantico.com/wp-content/uploads/sites/26/2020/07/MASSAS-E-OVOS-scaled.jpg", "Massas e Ovos", "Pasta and Eggs", "Pâtes et Œufs", 1,sysdate(), sysdate(), 1, 1);

INSERT INTO `gmenubd`.`tbl_cardapio`(`id`,`activo`,`cod_reduz`,`imagem_path`,`nome_fr`,`nome_ing`,`nome_pt`,`hotel_id`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`)
VALUE(5, 1, "CARN", "https://caboverde-porto-grande.oasisatlantico.com/wp-content/uploads/sites/26/2020/07/CARNES-scaled.jpg", "Viande", "Meat", "Carnes", 1,sysdate(), sysdate(), 1, 1);

INSERT INTO `gmenubd`.`tbl_cardapio`(`id`,`activo`,`cod_reduz`,`imagem_path`,`nome_fr`,`nome_ing`,`nome_pt`,`hotel_id`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`)
VALUE(6, 1, "PEIX", "https://caboverde-porto-grande.oasisatlantico.com/wp-content/uploads/sites/26/2020/08/peixes.jpg", "Poissons et Fruits de Mer", "Fish and Seafood", "Peixes e Mariscos", 1,sysdate(), sysdate(), 1, 1);

INSERT INTO `gmenubd`.`tbl_cardapio`(`id`,`activo`,`cod_reduz`,`imagem_path`,`nome_fr`,`nome_ing`,`nome_pt`,`hotel_id`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`)
VALUE(7, 1, "PIZZ", "https://caboverde-porto-grande.oasisatlantico.com/wp-content/uploads/sites/26/2020/07/PIZZA1-scaled.jpg", "Pizzas", "Pizzas", "Pizzas", 1,sysdate(), sysdate(), 1, 1);

INSERT INTO `gmenubd`.`tbl_cardapio`(`id`,`activo`,`cod_reduz`,`imagem_path`,`nome_fr`,`nome_ing`,`nome_pt`,`hotel_id`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`)
VALUE(8, 1, "SOB", "https://caboverde-porto-grande.oasisatlantico.com/wp-content/uploads/sites/26/2020/08/sobremesas.jpg", "Desserts", "Desserts", "Sobremesas", 1,sysdate(), sysdate(), 1, 1);

INSERT INTO `gmenubd`.`tbl_cardapio`(`id`,`activo`,`cod_reduz`,`imagem_path`,`nome_fr`,`nome_ing`,`nome_pt`,`hotel_id`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`)
VALUE(9, 1, "AGU", "https://caboverde-porto-grande.oasisatlantico.com/wp-content/uploads/sites/26/2020/08/agua-1.jpg", "Eau", "Water", "Água", 1,sysdate(), sysdate(), 1, 1);

INSERT INTO `gmenubd`.`tbl_cardapio`(`id`,`activo`,`cod_reduz`,`imagem_path`,`nome_fr`,`nome_ing`,`nome_pt`,`hotel_id`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`)
VALUE(10, 1, "AGU", "https://caboverde-porto-grande.oasisatlantico.com/wp-content/uploads/sites/26/2020/08/cafetaria.jpg", "Cafétéria", "Coffee", "Cafetaria", 1,sysdate(), sysdate(), 1, 1);

/*COMENTARIO: ASSOCIAR CARDAPIOS A RESTAURANTE--------------------------------------------------------------------------------------------------------------*/
INSERT INTO `gmenubd`.`tbl_restaurante_cardapio`
(`id`,`ordem`,`cardapio_id`,`restaurante_id`)
VALUES
(1,1,1,1), (2,1,2,1), (3,1,3,1), (4,1,4,1), (5,1,5,1), (6,1,6,1), (7,1,7,1), (8,1,8,1), (9,1,9,1), (10,1,10,1);

/*COMENTARIO: TIPO ITEM--------------------------------------------------------------------------------------------------------------*/
INSERT INTO `gmenubd`.`tbl_tipo_item`
(`id`,`activo`,`nome`,`data_criacao`,`data_alteracao`,`id_user_alteracao`,`id_user_criacao`)
VALUES
(1,1,"BEBIDA",sysdate(), sysdate(), 1, 1), (2,1,"COMIDA",sysdate(), sysdate(), 1, 1), (3,1,"OUTROS",sysdate(), sysdate(), 1, 1);

/*COMENTARIO: ITEM--------------------------------------------------------------------------------------------------------------*/

INSERT INTO `gmenubd`.`tbl_item`
(`id`,`activo`,`desc_fr`,`desc_ing`,`desc_pt`,`foto_path`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`,`nome_fr`,`nome_ing`,`nome_pt`,`preco`,`quantidade`,`unidade_medida_enum`,`hotel_id`,`tipo_item_id`)
VALUES
(1,1,"Coca Cola","Coca Cola","Coca Cola","...",sysdate(), sysdate(), 1, 1, "Coca", "Coca", "Coca", 200, 1, "UNIDADE", 1, 1);

INSERT INTO `gmenubd`.`tbl_item`
(`id`,`activo`,`desc_fr`,`desc_ing`,`desc_pt`,`foto_path`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`,`nome_fr`,`nome_ing`,`nome_pt`,`preco`,`quantidade`,`unidade_medida_enum`,`hotel_id`,`tipo_item_id`)
VALUES
(2,1,"Fanta","Fanta Fanta","Fanta","...",sysdate(), sysdate(), 1, 1, "Fanta", "Fanta", "Fanta", 100, 1, "UNIDADE", 1, 1);

INSERT INTO `gmenubd`.`tbl_item`
(`id`,`activo`,`desc_fr`,`desc_ing`,`desc_pt`,`foto_path`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`,`nome_fr`,`nome_ing`,`nome_pt`,`preco`,`quantidade`,`unidade_medida_enum`,`hotel_id`,`tipo_item_id`)
VALUES
(3,1,"Atum Grelhado","Atum Grelhado","Atum Grelhado","...",sysdate(), sysdate(), 1, 1, "Atum Grelhado", "Atum Grelhado", "Atum Grelhado", 100, 1, "UNIDADE", 1, 2);

INSERT INTO `gmenubd`.`tbl_item`
(`id`,`activo`,`desc_fr`,`desc_ing`,`desc_pt`,`foto_path`,`data_alteracao`,`data_criacao`,`id_user_alteracao`,`id_user_criacao`,`nome_fr`,`nome_ing`,`nome_pt`,`preco`,`quantidade`,`unidade_medida_enum`,`hotel_id`,`tipo_item_id`)
VALUES
(4,1,"Bife","Bife","Bife","...",sysdate(), sysdate(), 1, 1, "Bife", "Bife", "Bife", 100, 1, "UNIDADE", 1, 2);

/*COMENTARIO: ASSOCIAR CARDAPIOS A ITEM -----------------------------------------------------------------------------------------------*/
INSERT INTO `gmenubd`.`tbl_item_cardapio`
(`id`,`ordem`,`cardapio_id`,`item_id`)
VALUES
(1,1,1,1),
(2,2,1,2);

INSERT INTO `gmenubd`.`tbl_item_cardapio`
(`id`,`ordem`,`cardapio_id`,`item_id`)
VALUES
(3,3,5,3),
(4,4,5,4);