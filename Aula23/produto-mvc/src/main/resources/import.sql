INSERT INTO tb_categoria(nome) VALUES('TV');
INSERT INTO tb_categoria(nome) VALUES('Smartphone');
INSERT INTO tb_categoria(nome) VALUES('Game');
INSERT INTO tb_categoria(nome) VALUES('Mouse');
INSERT INTO tb_categoria(nome) VALUES('Teclado');
INSERT INTO tb_categoria(nome) VALUES('Fone');
INSERT INTO tb_categoria(nome) VALUES('Monitor');

INSERT INTO tb_loja(nome) VALUES('Americanas');
INSERT INTO tb_loja(nome) VALUES('Fast Shop');
INSERT INTO tb_loja(nome) VALUES('Magazine Luiza');
INSERT INTO tb_loja(nome) VALUES('Submarino');
INSERT INTO tb_loja(nome) VALUES('Banana shop');

INSERT INTO tb_produto(nome, descricao, valor, categoria_id) VALUES('MouseMicrosoft', 'Mouse sem fio', 250.0, 4);
INSERT INTO tb_produto(nome, descricao, valor, categoria_id) VALUES('SmartphoneSamsung Galaxy A54 5G', 'Samsung Galaxy A54 5G', 1799.0, 1);
INSERT INTO tb_produto(nome, descricao, valor, categoria_id) VALUES('Smart TV', 'Smart TV LG LED 65 polegadas', 3999, 1);
INSERT INTO tb_produto(nome, descricao, valor, categoria_id) VALUES('Fone Hyperx', 'Headset Hyperx Cloud2', 599, 6);
INSERT INTO tb_produto(nome, descricao, valor, categoria_id) VALUES('Zelda', 'Jogo zelda', 200, 3);

INSERT INTO tb_produto_loja(produto_id, loja_id) VALUES (1, 1);
INSERT INTO tb_produto_loja(produto_id, loja_id) VALUES (1, 3);
INSERT INTO tb_produto_loja(produto_id, loja_id) VALUES (2, 1);
INSERT INTO tb_produto_loja(produto_id, loja_id) VALUES (1, 4);
INSERT INTO tb_produto_loja(produto_id, loja_id) VALUES (3, 2);
INSERT INTO tb_produto_loja(produto_id, loja_id) VALUES (4, 2);
INSERT INTO tb_produto_loja(produto_id, loja_id) VALUES (5, 5);
INSERT INTO tb_produto_loja(produto_id, loja_id) VALUES (1, 5);
