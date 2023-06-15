INSERT INTO categoria("categoria")
VALUES
('Whey Protein'),
('Creatina'),
('Pre Treino'),
('Termogenico'),
('Hipercalorico'),
('Diversos');

DROP TABLE "produto";

CREATE TABLE produto(  
    "id" SERIAL PRIMARY KEY ,
    "url_img" TEXT,
    "categoria_id" INT REFERENCES categoria(id),
    "descricao" TEXT NOT NULL,
    "valor" FLOAT NOT NULL
);



INSERT INTO produto("categoria_id", "descricao", "valor","url_img")
VALUES
(6, 'MACA PERUANA + VITA C60 CAPS ABSOLUT',50, 'https://www.drogariaminasbrasil.com.br/media/product/fb1/maca-peruana-vit-c-650mg-com-60-capsulas-absolut-6d4.jpg'),
(3, 'DIABO VERDE TERMOGÊNICO 60 CAPS', 140, 'https://static3.tcdn.com.br/img/img_prod/677409/diabo_verde_mansao_maromba_pre_workout_frutas_vermelhas_250g_ftw_1981_1_115477828e6f36c9e78965e01ceb075a.png'),
(2, 'CREATINA 300 GR INTEGRAL MÉDICA', 150, 'https://i.zst.com.br/thumbs/12/19/38/1953019711.jpg'),
(3, 'HORUS 300 GR MAX CITRUS', 140,'https://static.netshoes.com.br/produtos/suplemento-alimentar-em-po-pre-treino-horus-300g-max/81/A05-4823-481/A05-4823-481_zoom1.jpg?ts=1682608909&ims=544x'),
(5, 'REFIL MASS TITANIUM 17500 3KG BAUNILHA', 115,'https://cdn.shoppub.io/cdn-cgi/image/w=1000,h=1000,q=80,f=auto/macacosuplementos/media/uploads/produtos/foto/lptaxbbj/7b470037-f9f9-4976-bc4b-d501c8c98fb3.jpeg'),
(5, 'INTEGRAL MEDICA SINISTER MASS 3KG INTEGRAL CHOCOLATE', 120,'https://mundoagranel.com.br/wp-content/uploads/2022/05/15124551680_sinister-mass-chocolate-3kg-integralmedica.png'),
(5, 'INTEGRAL MEDICA SINISTER MASS 3KG MORANGO', 120,'https://d3ugyf2ht6aenh.cloudfront.net/stores/818/927/products/sinister-morango1-8c99c74e698cbba87216329249183315-1024-1024.webp'),
--8
(2, 'CREATINA MAX TITANIUM 300G', 190,'https://www.madrugaosuplementos.com.br/media/catalog/product/cache/1/image/9df78eab33525d08d6e5fb8d27136e95/c/r/creatina-300g-max-titanium.png'),
(6, 'BARRA WHEY NUTS C/ 12 BODY ACTION', 64,'https://images.tcdn.com.br/img/img_prod/971829/barra_de_proteina_whey_nuts_display_c_12_unidades_31_1_5df36875d271e4bde3222190de2e7a28.jpg'),
(2, 'CREATINA 300 GR CAVERA PRETA', 150,'https://m.media-amazon.com/images/I/616OqkzCyAL._AC_UF1000,1000_QL80_.jpg'),
(3, 'PRE TREINO BOPE 300 GR CAVERA PRETA', 100,'https://m.media-amazon.com/images/I/61F7qHOVcqL._AC_UF1000,1000_QL80_.jpg'),
(6, 'ALBUMNA TURBO 500 GR CAVEIRA PRETA REFIL', 60,'https://static.netshoes.com.br/produtos/refil-albumin-turbo-sem-sabor-500g-black-skull/89/G54-7218-289/G54-7218-289_zoom1.jpg?ts=1676548727&ims=544x'),
(1, 'WHEY TURBO 907 GR CAVEIRA PRETA CHOCOLATE REFIL', 90,'https://images-americanas.b2w.io/produtos/4596874277/imagens/refil-whey-turbo-chocolate-907g-black-skull-caveira-preta/4596874277_1_large.jpg'),
(2, 'CREATINA DOUBLE FORCE 300 GR BODY ACTION', 100,'https://images.tcdn.com.br/img/img_prod/971829/creatine_double_force_300g_333_1_aba8100db74793886d47dc9532aaf9c3.jpg'),
(1, 'INTEGRAL MÉDICA NUTRIWHEY 1800 GR CHOCOLATE REFIL', 150,'https://static.netshoes.com.br/produtos/nutri-whey-protein-18-kg-body-size-refil-integralmedica/62/252-7132-962/252-7132-962_zoom1.jpg?ts=1650388715&ims=544x'),
(4, 'CHA ABDOMEN 140 GR BODY ACTION', 50,'https://images.tcdn.com.br/img/img_prod/971829/cha_abdomen_140g_73_1_f73ac785b1307151e9a56dbf9a984c2c.jpg'),
(1, '100% WHEY MUSCLEHAMMER 1.8KG MORANGO', 130,'https://images.tcdn.com.br/img/img_prod/971829/whey_muscle_hammer_1_8kg_223_1_e71ee394d40f6ae0e4023d6af1a99864.jpg'),
(1, 'REFIL WHEY BLEND 1800G VITAMINA DEFRUTAS', 160,'https://m.media-amazon.com/images/I/51sS2ebM5gL._AC_UF1000,1000_QL80_.jpg'),
(6, 'PASTA DE AMENDOIN ABSOLUT BRIGADEIRO PROTEICO 500 GR', 30,'https://www.drogariaminasbrasil.com.br/media/product/edf/pasta-de-amendoim-integral-com-whey-protein-sabor-brigadeiro-proteico-500g-absolut-nutrition-bcd.jpg'),
--20
(6, 'PASTA DE AMENDOIM ABSOLUT BOMBOM DE COCO 500 GR', 30,'https://m.media-amazon.com/images/I/511C9Kly16L._AC_UF1000,1000_QL80_.jpg'),
(6, 'PASTA DE AMENDOIM ABSOLUT BROWNE 500 GR', 30,'https://www.drogariaminasbrasil.com.br/media/product/9ed/pasta-de-amendoim-integral-sabor-brownie-500g-absolut-nutrition-d50.jpg'),
(6, 'PASTA DE AMENDOIM ABSOLUT CHOCO BRANCO 500 GR', 30,'https://a-static.mlcdn.com.br/800x560/pasta-de-amendoim-choc-branco-500g-absolut-nutrition/tvlecommerce/1389/13f80a97b420307cb2843cbe1569510e.jpeg'),
(6, 'BCAA 2400 ULTRA INTENSE 200 CAPS', 70,'https://images.tcdn.com.br/img/img_prod/971829/90_bcaa_2400_ultra_intense_43_1_5bee38e536e1fc8bd11af2f14fa7e4f7.jpg'),
(3, 'CAFEINA BLUSTER 60 CAPS', 30,'https://d3ugyf2ht6aenh.cloudfront.net/stores/001/060/841/products/cafeina-bluster-nutrition-150mg-60-caps1-8a8a8bd61d7346e30e15704575951463-640-0.jpg'),
(6, 'MULTIVITAMINICO 60 CAPS ABSOLUT A-Z', 50,'https://images.tcdn.com.br/img/img_prod/993282/multivitaminico_a_z_60_capsulas_2329_3_cf0da39ea1a2f40e05bdf8e6bf560cf3.jpg'),
(3, 'DIABO VERDE INSANO 300 G', 140,'https://m.media-amazon.com/images/I/71Wv2qyHxjL._AC_UF1000,1000_QL80_.jpg'),
(3, 'ULTIMATE IRON FIGHT 270G PROFIT', 110,'https://www.profitlabs.ind.br/assets/_sistema/produto/32-2-iron%20fight%20acai%20guarana%20270%20novo.png'),
(6, 'PASTA POWER ONE SWEET BROWIE 500G', 60,'https://images.tcdn.com.br/img/img_prod/752136/pasta_de_amendoim_sweet_sabor_brownie_500g_271_1_92a1c69fda815c8cdd4d727e51693af5.jpg'),
(1, 'ISOLATE PROTEIN WHEY MIX 1.8KG PROFIT COOKIES', 160,'https://www.corpoeenergia.com.br/media/catalog/product/cache/1/image/800x/9df78eab33525d08d6e5fb8d27136e95/I/M/IMG_299.png'),
(1, 'ISOLATE PROTEIN WHEY MIX 900G REFIL PROFIT CHOCOLATE', 100,'https://a-static.mlcdn.com.br/450x450/whey-protein-isolado-mix-hidrolisado-conc-900g-chocolate-refil-profit/taurene/ta10341/376c0bb9cdbb795a7cae4d5b0e5dd63c.jpeg'),
(2, 'REFIL CREATINA POWER 300 G PROFIT', 110,'https://images-americanas.b2w.io/produtos/4960456953/imagens/creatina-monohidratada-power-refil-300g-profit/4960457024_1_large.jpg'),
(4, 'THERMO VOLCANIX -60 CP', 50,'https://imgs.pontofrio.com.br/1505870802/1xg.jpg?imwidth=292'),
(2, 'CREATINA PURA 300 GOLDEN', 110,'https://images-americanas.b2w.io/produtos/3153371865/imagens/creatina-pura-300-g-probiotica-monohidratada-micronizada/3153371873_1_large.jpg'),
(3, 'PRE TREINO FATALITY 200G GOLDEN DRAGON', 79.90,'https://a-static.mlcdn.com.br/280x210/pre-treino-fatality-200g-ultra-concentrado-golden-dragon/ruccsuplementos/703b2fa895cf11ed93264201ac185019/7a5f1d6d469d5eeea68b5485a920ee49.jpeg'),
(1, 'WHEY 100% GOURMET 900 GR GOLDEN DRAGON BAUNILHA', 120,'https://m.media-amazon.com/images/I/61JC5Po55EL.jpg'),
(6, 'TEMPERO MR TASTE', 25,'https://www.mrsfitness.com.br/wp-content/uploads/2020/12/Mrs-Taste-Blend-de-Queijos.jpg');

INSERT INTO produto("categoria_id", "descricao", "valor","url_img")
VALUES
--37
(1, 'ISOLATE PROTEIN MIX 1.8KG REFIL PROFIT BAUNILHA', 160,'https://www.corpoeenergia.com.br/media/catalog/product/cache/1/image/800x/9df78eab33525d08d6e5fb8d27136e95/I/M/IMG_299.png'),
(3, 'TRIBULUS 2200 MG C/ MACA 60 CAPS', 50,'https://d3ugyf2ht6aenh.cloudfront.net/stores/284/307/products/tribulus-terrestri-62-saponinas-2200mg-com-300caps-sunfood1-405f960cea5bff703316601542740133-640-0.png'),
(1, 'POTE WHEY PRO MAX TITANIUM 1000G CHOCOLATE', 120,'https://m.media-amazon.com/images/I/41eyIYs156L._AC_UF1000,1000_QL80_.jpg'),
(1, 'POTE WHEY PRO MAX TITANIUM 1000G VITAMINA DE FRUTAS', 120,'https://www.eurosuplementos.com.br/uploads/product_file/MEDwhey-pro-1000g-vitamina-de-frutas-max-titanium-2933-42235-eg.jpg'),
--41
(6, 'PASTA DE AMENDOIM ABSOLUT BEIJINHO DE COCO 500 GR', 30,'https://www.drogariaminasbrasil.com.br/media/product/b0a/pasta-de-amendoim-integral-sabor-beijinho-de-coco-500g-absolut-nutrition-5d7.jpg'),
#(3, 'PRE TREINO BOPE 150 GR CAVEIRA PRETA', 69.90,''),
#(6, 'TOP WHEY BAR COM 12 41 GR CHOCOLATE C/ AVELA MAX TITANIUM', 96,''),
#(6, 'MULTIVITAMINICO A Z 60 CAPS GOLDEN DRAGON', 40,''),
#(3, 'PRE TREINO FATALITY 200G GOLDEN DRAGON LIMÃO', 79.90,'https://www.mrsfitness.com.br/wp-content/uploads/2020/12/Mrs-Taste-Blend-de-Queijos.jpg'),
#(3, 'PRE TREINO FATALITY 200G GOLDEN DRAGON UVA', 79.90,'https://www.mrsfitness.com.br/wp-content/uploads/2020/12/Mrs-Taste-Blend-de-Queijos.jpg');

INSERT INTO produtos("categoria_id", "descricao", "valor","url_img")
VALUES
--48
(5,'ANABOLIC MASS 28500 3KG PROFIT MORANGO',120,'https://a-static.mlcdn.com.br/800x560/anabolic-mass-28500-3kg-morango-profit/extradelivery/2559566/917454b9acd0fa05aff4c4b41c770859.jpg'),
#(6,'BOLD BAR FLORESTA NEGRA COM 12',,'https://cdn.awsli.com.br/2500x2500/403/403381/produto/126243284/efa410c688.jpg'),
(6,'TOP WHEY BAR COM 12 41 GR BRIGADEIRO MAX TITANIUM',96,'https://images.tcdn.com.br/img/img_prod/745295/top_whey_bar_sabor_brigadeiro_display_com_12_un_de_41g_max_titanium_11101_1_4aea54e50f0f374bf8510d98fb176490.jpg'),
#(6,'PASTA DE AMENDOIN ABSOLUT BOMBOM DE COCO 1KG',,'https://a-static.mlcdn.com.br/450x450/pasta-de-amendoim-bombom-de-coco-66-g-de-proteina-1kg-absolut-nutrition/fitbeauty/15848242742/8386aa6b2c95772f6778d548e7af999b.jpeg'),
(3,'PRE TREINO IRON NIGTH 300 GR ABSOLUT',120,'https://www.absolutnutrition.com.br/wp-content/uploads/2022/07/IRON-MOCKUP-1-1-e1657149350684.png');

INSERT INTO produtos("categoria_id", "descricao", "valor","url_img")
VALUES
--53
(,'',,''),
(,'',,''),
(,'',,''),
(,'',,''),
(,'',,'');

--(,'',,''),