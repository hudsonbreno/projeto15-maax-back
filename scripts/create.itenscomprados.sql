CREATE TABLE itenscomprados(
    "id" SERIAL PRIMARY KEY,
    "produto_id" INT NOT NULL REFERENCES produto(id),
    "quantidade" INT NOT NULL,
    "valor" FLOAT NOT NULL,
    "valor_total" FLOAT NOT NULL,
    "dia_compra" DATE,
    "fornecedor" VARCHAR
);

INSERT INTO itenscomprados("produto_id", "quantidade", "valor", "valor_total", "dia_compra", "fornecedor")
VALUES
(1, 2, 27.5, 55, '2023-03-31', 'VIP'),
(2, 1, 39.0, 39.0, '2023-03-31', 'VIP'),
(3, 3, 119.0, 357.0, '2023-03-31', 'VIP'),
(4, 2, 87, 174, '2023-03-31', 'VIP'),
(5, 1, 77, 77, '2023-03-31', 'VIP'),
(6, 1, 77, 77, '2023-03-31', 'VIP'),
(7, 1, 77, 77, '2023-03-31', 'VIP'),
(8, 2, 129, 258, '2023-03-31', 'VIP'),
(9, 2, 35, 70, '2023-03-31', 'VIP'),
(10, 3, 121, 363, '2023-03-31', 'VIP'),
(11, 2, 59, 118, '2023-03-31', 'VIP'),
(12, 1, 35, 35, '2023-03-31', 'VIP'),
(13, 3, 49, 147, '2023-03-31', 'VIP'),
(14, 2, 64, 128, '2023-03-31', 'VIP'),
(15, 2, 93, 186, '2023-03-31', 'VIP'),
(16, 2, 30, 60, '2023-03-31', 'VIP'),
(17, 1, 119, 119, '2023-03-31', 'VIP'),
(18, 1, 130, 130, '2023-03-31', 'VIP'),
(19, 1, 18, 18, '2023-03-31', 'VIP'),
(20, 1, 18, 18, '2023-03-31', 'VIP'),
(21, 1, 18, 18, '2023-03-31', 'VIP'),
(22, 1, 18, 18, '2023-03-31', 'VIP'),
(23, 2, 44, 88, '2023-03-31', 'VIP'),
(24, 2, 17, 34, '2023-03-31', 'VIP'),
(25, 1, 20, 20, '2023-03-31', 'VIP'),
(26, 1, 90, 90, '2023-03-31', 'VIP'),
(27, 1, 59, 59, '2023-03-31', 'VIP'),
(28, 1, 19, 19, '2023-03-31', 'VIP'),
(29, 1, 109, 109, '2023-03-31', 'VIP'),
(30, 1, 56, 56, '2023-03-31', 'VIP'),
(31, 2, 65, 130, '2023-03-31', 'VIP'),
(32, 1, 24.9, 24.90, '2023-03-31', 'VIP'),
(33, 2, 85, 170, '2023-03-31', 'VIP'),
(34, 2, 45, 90, '2023-03-31', 'VIP'),
(35, 2, 70, 140, '2023-03-31', 'VIP'),
(36, 1, 12, 12, '2023-03-31', 'VIP');

INSERT INTO itenscomprados("produto_id", "quantidade", "valor", "valor_total", "dia_compra", "fornecedor")
VALUES
(37, 1, 109, 109, '2023-06-05', 'VIP'),
(31, 1, 65, 65, '2023-06-05', 'VIP'),
(38, 3, 20, 20, '2023-06-05', 'VIP'),
(39, 2, 70, 70, '2023-06-05', 'VIP'),
(40, 1, 70, 70, '2023-06-05', 'VIP'),
(8, 1, 119, 119, '2023-06-05', 'VIP'),
(20, 3, 18, 54, '2023-06-05', 'VIP'),
(41, 3, 18, 54, '2023-06-05', 'VIP'),
(42, 3, 30, 90, '2023-06-05', 'VIP'),
(43, 3, 48, 144, '2023-06-05', 'VIP'),
(44, 3, 16, 48, '2023-06-05', 'VIP'),
(45, 1, 45, 45, '2023-06-05', 'VIP'),
(46, 1, 45, 45, '2023-06-05', 'VIP');

INSERT INTO itenscomprados("produtos_is", "quantidade", "valor","valor_total","dia_compra","fornecedor")
VALUES
(48, 1, 65, 65, '2023-05-16', 'VIP'),
(49, 1, 121, 121, '2023-05-16', 'VIP'),
(50, 1, 48, 48, '2023-05-16', 'VIP'),
(43, 1, 48, 48, '2023-05-16', 'VIP'),
(51, 3, 31, 93, '2023-05-16', 'VIP'),
(52, 2, 69, 138, '2023-05-16', 'VIP');

INSERT INTO itenscomprados("produtos_is", "quantidade", "valor","valor_total","dia_compra","fornecedor")
VALUES
#(, 1, 93, 93, '2023-05-09', 'VIP'),
#(, 1, 90, 90, '2023-05-09', 'VIP'),
#(, 1, 90, 90, '2023-05-09', 'VIP'),
#(, 1, 90, 90, '2023-05-09', 'VIP'),
#(, 2, 35, 70, '2023-05-09', 'VIP'),
#(, 1, 10, 10, '2023-05-09', 'VIP');

#"WHEY BAR HIGH PROTEIN C/ 24 DE 40 GR AMENDOIM"
#"DIABO VERDE INSANO 300G ENERGETIC"
#"DIABO VERDE INSANO 300G MAÇA VERDE"
#"DIABO VERDE INSANO 300G"
#"BARRA WHEY NUTS C/ 12 BODY ACTION"
#"COQUETELEIRA GOLDEN DRAGON"


INSERT INTO itenscomprados("produtos_is", "quantidade", "valor","valor_total","dia_compra","fornecedor")
VALUES
#(, 3, 52, 156, '2023-05-02', 'VIP'),
#(, 2, 50, 100, '2023-05-02', 'VIP'),
#(, 2, 15, 30, '2023-05-02', 'VIP'),
#(, 2, 119, 238, '2023-05-02', 'VIP'),
#(, 1, 49, 49, '2023-05-02', 'VIP'),
#(, 1, 31, 31, '2023-05-02', 'VIP');

#'REFIL NUTRIWHEY 907 GR INTEGRAL MEDICA'
#'PRE TREINO BOPE 300 GR CAVEIRA PRETA'
#'COQUETELEIRA PROFIT'
#'CREATINA 300 GR INTEGRAL MEDICA'
#'KIMERA NIGTH 60 CAPS'
#'PASTA DE AMENDOIN ABSOLUT BOMBOM DE COCO 1KG'

INSERT INTO itenscomprados("produtos_is", "quantidade", "valor","valor_total","dia_compra","fornecedor")
VALUES
#(, 1, 65, 130, '2023-04-14', 'VIP'),
#(, 1, 71, 71, '2023-04-14', 'VIP'),
#(, 2, 59, 118, '2023-04-14', 'VIP'),
#(, 2, 88,176, '2023-04-14', 'VIP'),
#(, 3, 26, 78, '2023-04-14', 'VIP'),
#(, 1, 20, 20, '2023-04-14', 'VIP'),
#(, 1, 19, 19, '2023-04-14', 'VIP'),
#(, 2, 46, 92, '2023-04-14', 'VIP'),
#(, 1, 15, 15, '2023-04-14', 'VIP'),
#(, 2, 45, 90, '2023-04-14', 'VIP'),
#(, 1, 109, 109, '2023-04-14', 'VIP'),
#(, 1, 69, 69, '2023-04-14', 'VIP'),
#(, 1, 87, 87, '2023-04-14', 'VIP'),
#(, 1, 97, 97, '2023-04-14', 'VIP'),
#(, 1, 46, 46, '2023-04-14', 'VIP'),
#(, 1, 98, 98, '2023-04-14', 'VIP'),
#(, 1, 77, 77, '2023-04-14', 'VIP'),
#(, 1, 98, 98, '2023-04-14', 'VIP'),
#(, 1, 57, 57, '2023-04-14', 'VIP'),
#(, 1, 58, 58, '2023-04-14', 'VIP'),

#ANABOLIC MASS 28500 3KG PROFIT
# DIABO VERDE BLEND PROTEIN MANSAO MAROMBA 900 GR
# WHEY ISOPROTEIN GOLD 900 BAUNILHA
# ISO PROTEIN BLEND POTE 900 GR PROBIOTICA BAUNILHA
# TRIBULUS HARDCORE 1500 MG C/ MACA 120 CAPS 60%
# SQUEEZE INTEGRAL MEDICA 800 ML VERMELHA
# KIMERA IRIDIUM LABS 60 CAPS
# COQUETELEIRA PROFIT
# HYPER WHEY REFIL 900 GR PROFIT BAUNILHA
# ISOLATE PROTEIN MIX 1.8KG REFIL PROGIT CHOCOLATE C/ AMENDOIM
# ISOLATE PROTEIN MIX 900G POTE PROFIT BAUNILHA
# HORUS 300 GR MAX
# EGIDE 300 GR MAX TITANIUM
# PRE TREINO BONE BRAKER 300 GRAN
# REFIL WHEY 100% 900 GR MAX COOKIES
# REFIL MASS TITANIUM 17500 3KG BAUNILHA
# POTE WHEY 100% 907 GR MORANGO INTEGRAL MEDICA
# PRE TREINO X7 300 GR ATLHETICA
# L-GLUTAMINE 300 GR PROBIOTICA SEM SABOR