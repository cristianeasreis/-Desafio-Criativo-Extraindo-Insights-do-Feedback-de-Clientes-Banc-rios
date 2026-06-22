-- ============================================================
-- Desafio Criativo: Extraindo Insights do Feedback de Clientes Bancarios
-- Script de criacao das tabelas
-- ============================================================

-- Tabela de canais de atendimento
CREATE TABLE canais_atendimento (
    id_canal        INT           PRIMARY KEY,
    nome_canal      VARCHAR(100)  NOT NULL,  -- Ex: Aplicativo, Chat, Agencia, Telefone
    descricao       VARCHAR(255)
);

-- Tabela de produtos bancarios
CREATE TABLE produtos (
    id_produto      INT           PRIMARY KEY,
    nome_produto    VARCHAR(100)  NOT NULL,  -- Ex: Pix, Cartao de Credito, Conta Corrente
    categoria       VARCHAR(100)            -- Ex: Pagamento, Credito, Conta
);

-- Tabela de temas de classificacao
CREATE TABLE temas (
    id_tema         INT           PRIMARY KEY,
    nome_tema       VARCHAR(100)  NOT NULL   -- Ex: Usabilidade, Seguranca, Atendimento, Tarifas
);

-- Tabela principal de feedbacks dos clientes
CREATE TABLE feedbacks (
    id_feedback         INT             PRIMARY KEY,
    data_comentario     DATE            NOT NULL,
    id_canal            INT             NOT NULL,
    id_produto          INT,
    texto_feedback      TEXT            NOT NULL,
    nota_satisfacao     TINYINT         NOT NULL CHECK (nota_satisfacao BETWEEN 1 AND 5),
    -- Dados sensiveis: nao armazenar nome, CPF ou dados pessoais identificaveis
    -- Utilizar apenas identificador anonimizado se necessario
    id_cliente_anonimo  VARCHAR(50),
    CONSTRAINT fk_feedback_canal    FOREIGN KEY (id_canal)   REFERENCES canais_atendimento(id_canal),
    CONSTRAINT fk_feedback_produto  FOREIGN KEY (id_produto) REFERENCES produtos(id_produto)
);

-- Tabela de classificacoes dos feedbacks (resultado da analise de IA)
CREATE TABLE classificacoes_feedback (
    id_classificacao    INT             PRIMARY KEY,
    id_feedback         INT             NOT NULL,
    id_tema             INT             NOT NULL,
    sentimento          VARCHAR(20)     NOT NULL CHECK (sentimento IN ('Positivo', 'Negativo', 'Neutro')),
    urgencia            VARCHAR(20)     NOT NULL CHECK (urgencia IN ('Alta', 'Media', 'Baixa')),
    impacto_experiencia VARCHAR(20)              CHECK (impacto_experiencia IN ('Alto', 'Medio', 'Baixo')),
    observacao          TEXT,           -- Limitacoes ou notas da analise de IA
    data_classificacao  TIMESTAMP       DEFAULT CURRENT_TIMESTAMP,
    CONSTRAINT fk_class_feedback FOREIGN KEY (id_feedback) REFERENCES feedbacks(id_feedback),
    CONSTRAINT fk_class_tema     FOREIGN KEY (id_tema)     REFERENCES temas(id_tema)
);

-- ============================================================
-- Carga inicial de dados de referencia
-- ============================================================

INSERT INTO canais_atendimento (id_canal, nome_canal, descricao) VALUES
(1, 'Aplicativo',  'App mobile do banco'),
(2, 'Chat',        'Atendimento por chat online'),
(3, 'Agencia',     'Atendimento presencial'),
(4, 'Telefone',    'Central de atendimento telefonica');

INSERT INTO produtos (id_produto, nome_produto, categoria) VALUES
(1, 'Pix',              'Pagamento'),
(2, 'Cartao de Credito','Credito'),
(3, 'Conta Corrente',   'Conta'),
(4, 'Investimentos',    'Investimento'),
(5, 'Emprestimo',       'Credito');

INSERT INTO temas (id_tema, nome_tema) VALUES
(1, 'Usabilidade'),
(2, 'Seguranca'),
(3, 'Atendimento'),
(4, 'Tarifas'),
(5, 'Desempenho'),
(6, 'Funcionalidade');
