# 🎯 Análise de Feedback de Clientes Bancários com IA

**Documentação Técnica do Projeto**

---

## 📌 Visão Geral

Este projeto implementa uma solução completa para **extração de insights de feedbacks de clientes bancários com apoio de Inteligência Artificial**. O objetivo é estruturar dados de comentários, classificá-los por tema, sentimento e urgência, e gerar um prompt especializado para orientar modelos de IA na análise desses dados.

---

## 🗄️ Estrutura do Banco de Dados

As tabelas abaixo foram criadas no arquivo `desafio.sql` para suportar a análise dos feedbacks:

| Tabela | Descrição |
|---|---|
| `canais_atendimento` | Canais disponíveis: Aplicativo, Chat, Agência, Telefone |
| `produtos` | Produtos bancários: Pix, Cartão de Crédito, Conta Corrente, etc. |
| `temas` | Temas para classificação: Usabilidade, Segurança, Atendimento, Tarifas, etc. |
| `feedbacks` | Tabela principal com data, canal, produto, texto do feedback e nota de satisfação (1 a 5) |
| `classificacoes_feedback` | Resultado da análise de IA: sentimento, urgência e impacto na experiência |

### Campos da tabela `feedbacks`

| Campo | Tipo | Descrição |
|---|---|---|
| `id_feedback` | INT | Identificador único |
| `data_comentario` | DATE | Data do comentário |
| `id_canal` | INT | Canal de atendimento |
| `id_produto` | INT | Produto citado |
| `texto_feedback` | TEXT | Conteúdo do feedback |
| `nota_satisfacao` | TINYINT | Nota de 1 a 5 |
| `id_cliente_anonimo` | VARCHAR | ID anonimizado (sem dados pessoais) |

### Campos da tabela `classificacoes_feedback`

| Campo | Tipo | Descrição |
|---|---|---|
| `sentimento` | VARCHAR | Positivo, Negativo ou Neutro |
| `urgencia` | VARCHAR | Alta, Média ou Baixa |
| `impacto_experiencia` | VARCHAR | Alto, Médio ou Baixo |
| `observacao` | TEXT | Limitações ou notas da análise de IA |

> **Atenção:** A estrutura segue as restrições do desafio — nenhum dado pessoal identificável é armazenado.

---

## 📁 Arquivos do Projeto

| Arquivo | Tipo | Descrição |
|---|---|---|
| `README.md` | Markdown | Documentação completa do projeto |
| `prompt_analise_feedback_bancario.txt` | Texto | Prompt final completo pronto para uso com IA |
| `desafio.sql` | SQL | Criação das tabelas e carga dos dados de referência |
| `massa_dados.sql` | SQL | 30 feedbacks variados (positivos, negativos e neutros) com suas classificações |
| `massa_negativos.sql` | SQL | 20 feedbacks negativos para teste e validação da análise de IA |

---

## ▶️ Ordem de Execução dos Scripts SQL

Execute os arquivos na seguinte ordem:

```sql
-- 1. Criar estrutura do banco
desafio.sql

-- 2. Popular com massa geral de dados
massa_dados.sql

-- 3. Popular com massa de testes negativos
massa_negativos.sql
```

---

## 📊 Resumo dos Dados

| Script | Feedbacks | Classificações | Período |
|---|---|---|---|
| `massa_dados.sql` | 30 (IDs 1–30) | 30 | Jan–Mar 2026 |
| `massa_negativos.sql` | 20 (IDs 101–120) | 20 | Abr 2026 |
| **Total** | **50** | **50** | **Jan–Abr 2026** |

### Distribuição por canal

| Canal | Feedbacks |
|---|---|
| Aplicativo | 25 |
| Chat | 14 |
| Agência | 7 |
| Telefone | 4 |

### Distribuição por sentimento (massa negativa)

| Sentimento | Quantidade |
|---|---|
| Negativo | 20 |
| Urgência Alta | 16 |
| Impacto Alto | 16 |

---

## 🤖 Prompt de IA

O prompt final está disponível no arquivo [`prompt_analise_feedback_bancario.txt`](prompt_analise_feedback_bancario.txt) e foi construído com os seguintes componentes:

| Componente | Descrição |
|---|---|
| **Papel** | Analista de dados e experiência do cliente em banco digital |
| **Objetivo** | Identificar temas recorrentes, sentimento, urgência e propor ações priorizadas |
| **Dados de entrada** | 50 feedbacks com 10 campos estruturados (canal, produto, nota, sentimento, urgência, impacto) |
| **Saída esperada** | Resumo executivo + tabela analítica + top 3 prioridades + alertas de segurança |
| **Restrições** | Sem invenção de dados, sem exposição de dados pessoais, IDs anonimizados |

### Campos utilizados no prompt

| Campo | Tipo | Descrição |
|---|---|---|
| `data_comentario` | DATE | Data do registro |
| `canal` | VARCHAR | Aplicativo, Chat, Agência ou Telefone |
| `produto` | VARCHAR | Pix, Cartão de Crédito, Conta Corrente, Investimentos ou Empréstimo |
| `texto_feedback` | TEXT | Comentário livre do cliente |
| `nota_satisfacao` | TINYINT | Nota de 1 a 5 |
| `sentimento` | VARCHAR | Positivo, Negativo ou Neutro |
| `urgencia` | VARCHAR | Alta, Média ou Baixa |
| `impacto_experiencia` | VARCHAR | Alto, Médio ou Baixo |
| `observacao` | TEXT | Notas da análise |
| `id_cliente_anonimo` | VARCHAR | ID anonimizado — sem dados pessoais identificáveis |

---

## 📁 Arquivos do Projeto

| Arquivo | Tipo | Descrição |
|---|---|---|
| `README.md` | Markdown | Documentação técnica do projeto |
| `prompt_analise_feedback_bancario.txt` | Texto | Prompt final pronto para uso com qualquer modelo de IA |
| `desafio.sql` | SQL | DDL completo: criação das 5 tabelas e carga dos dados de referência |
| `massa_dados.sql` | SQL | 30 feedbacks variados (positivos, negativos e neutros) com classificações |
| `massa_negativos.sql` | SQL | 20 feedbacks negativos para testes e validação da análise de IA |

---

## ▶️ Como Executar

### Pré-requisito

Qualquer banco de dados relacional compatível com SQL padrão (MySQL, PostgreSQL, SQL Server ou SQLite).

### Ordem de execução

```sql
-- 1. Criar a estrutura do banco e popular dados de referência
desafio.sql

-- 2. Inserir massa geral de dados (jan–mar 2026)
massa_dados.sql

-- 3. Inserir massa de testes negativos (abr 2026)
massa_negativos.sql
```

### Verificação após execução

```sql
-- Total de feedbacks inseridos
SELECT COUNT(*) FROM feedbacks;
-- Esperado: 50

-- Distribuição por sentimento
SELECT sentimento, COUNT(*) AS total
FROM classificacoes_feedback
GROUP BY sentimento;

-- Feedbacks críticos (urgência Alta + impacto Alto)
SELECT f.texto_feedback, c.sentimento, c.urgencia, c.observacao
FROM feedbacks f
JOIN classificacoes_feedback c ON f.id_feedback = c.id_feedback
WHERE c.urgencia = 'Alta' AND c.impacto_experiencia = 'Alto';
```

---

## 🔒 Política de Dados

- Nenhum dado pessoal identificável é armazenado
- Clientes são referenciados apenas por ID anonimizado (`CLI-XXXX`)
- Feedbacks não contêm nome, CPF, e-mail ou qualquer informação sensível
- As restrições do prompt orientam a IA a manter a mesma política na análise

---

## 🛠️ Tecnologias Utilizadas

| Tecnologia | Uso |
|---|---|
| SQL (padrão ANSI) | Modelagem e carga dos dados |
| Markdown | Documentação |
| Git / GitHub | Versionamento e publicação |
| IA Generativa | Análise dos feedbacks via prompt estruturado |
