# 🎯 Desafio Criativo: Extraindo Insights do Feedback de Clientes Bancários

Bem-vindo ao Desafio Criativo. Nesta atividade, você seguirá algumas etapas simples que, ao final, irão ajudar a **extrair insights de feedbacks de clientes bancários com apoio de IA, usando contexto, critérios de análise e cuidados com dados sensíveis**.

## 💡 Sobre o Exercício

Um bom prompt nasce de **intenção clara, contexto e instruções específicas**. Durante o desafio, você irá organizar suas ideias e transformá-las em comandos claros.

## 🧩 Construção Passo a Passo

Cada etapa adicionará uma **nova peça** ao seu prompt final. Ao concluir todas, você terá um prompt capaz de orientar uma IA a produzir exatamente o que você imaginou.

## 🚀 Como Resolver

Siga cada passo com atenção, registre suas respostas e, ao final, **una todos os elementos** para formar seu prompt final. Aproveite o processo criativo!

---

# Passo 2: Adicione contexto e restrições

Nesta etapa, você vai **incluir informações de apoio, limites e cuidados para orientar melhor a resposta da IA**.

## ✍️ O que fazer

Agora complemente sua intenção com contexto. Quais dados estarão disponíveis? Quais colunas ou campos existem? Que cuidados a IA deve ter ao lidar com feedbacks bancários?

Inclua também o que a IA deve evitar, como inventar dados, expor informações pessoais, ignorar comentários negativos ou tirar conclusões sem evidência.

## 📋 Modelo para você adaptar

Copie o bloco abaixo no seu editor de texto e preencha os campos entre colchetes:

> **Contexto:** Estou trabalhando com feedbacks de clientes bancários relacionados a [produto, serviço ou canal].
>
> **Dados disponíveis:** A base contém [descreva campos, colunas ou exemplos de informações disponíveis].
>
> **Critérios de análise:** A IA deve classificar os feedbacks por [temas, sentimento, urgência, canal, produto ou outro critério].
>
> **Cuidados e restrições:**
> - Use apenas os dados fornecidos.
> - Não invente números, causas ou conclusões.
> - Não exponha dados pessoais ou sensíveis.
> - Se houver informação insuficiente, indique a limitação.
> - Use linguagem [simples, executiva, técnica ou outro estilo].

## ✨ Exemplo preenchido

Veja como ficaria o Modelo acima já preenchido em um caso real (use como referência, não copie literalmente):

> **Contexto:** Estou trabalhando com feedbacks de clientes bancários relacionados ao aplicativo, Pix, cartão de crédito e atendimento por chat.
>
> **Dados disponíveis:** A base contém data do comentário, canal de atendimento, texto do feedback, produto citado e nota de satisfação de 1 a 5.
>
> **Critérios de análise:** A IA deve classificar os feedbacks por tema, sentimento, urgência e possível impacto na experiência do cliente.
>
> **Cuidados e restrições:**
> - Use apenas os dados fornecidos.
> - Não invente números, causas ou conclusões.
> - Não exponha dados pessoais ou sensíveis.
> - Se houver informação insuficiente, indique a limitação.
> - Use linguagem simples, direta e voltada para tomada de decisão.

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
| `desafio.txt` | Texto | Conteúdo do desafio em formato texto simples |
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

# Passo 3: Una as peças e refine

Nesta etapa, você vai **juntar intenção, contexto, critérios e restrições em um único prompt final**.

## ✍️ O que fazer

Reúna o que você escreveu nos passos anteriores e transforme tudo em um comando claro para a IA. O prompt final deve dizer o papel da IA, o objetivo, os dados que serão analisados, o formato da resposta e os cuidados esperados.

Depois de montar o prompt, revise: a tarefa está clara? O formato da resposta foi definido? A IA sabe o que evitar?

## 📋 Modelo para você adaptar

Copie o bloco abaixo no seu editor de texto e preencha os campos entre colchetes:

> Atue como [papel da IA, como analista de dados, analista de experiência do cliente ou consultor de negócios].
>
> Sua tarefa é analisar [tipo de feedback ou base de comentários] sobre [produto, serviço ou canal] para identificar [objetivo principal].
>
> **Contexto:** [explique o cenário, o público que usará a análise e a decisão que precisa ser apoiada].
>
> **Dados disponíveis:** [descreva os campos, colunas ou exemplos de informações que serão fornecidas].
>
> **Instruções de análise:**
> 1. Classifique os feedbacks por [critérios de classificação].
> 2. Identifique os principais padrões, problemas, elogios e oportunidades.
> 3. Aponte evidências nos dados fornecidos.
> 4. Sugira ações práticas para [público ou área responsável].
>
> **Formato da resposta:** [descreva o formato esperado, como resumo executivo, tabela, tópicos e recomendações].
>
> **Restrições:**
> - Use apenas os dados fornecidos.
> - Não invente números, causas ou conclusões.
> - Não exponha dados pessoais ou sensíveis.
> - Informe limitações quando os dados não forem suficientes.
> - Use linguagem [estilo desejado].

## ✨ Exemplo preenchido — baseado na estrutura deste projeto

O exemplo abaixo usa os campos e tabelas criados nos arquivos `desafio.sql`, `massa_dados.sql` e `massa_negativos.sql`:

> Atue como analista de dados e experiência do cliente em um banco.
>
> Sua tarefa é analisar feedbacks de clientes sobre aplicativo bancário, Pix, cartão de crédito e atendimento por chat para identificar temas recorrentes, sentimento dos clientes e oportunidades de melhoria.
>
> **Contexto:** A análise será usada por uma equipe de experiência do cliente para priorizar melhorias nos canais digitais e reduzir atritos no atendimento. O foco é transformar comentários soltos em insights claros e acionáveis.
>
> **Dados disponíveis:** Serão fornecidos comentários com `data_comentario`, `canal de atendimento`, `texto_feedback`, `produto citado` e `nota_satisfacao` de 1 a 5. Os feedbacks já possuem classificações de `sentimento`, `urgencia` e `impacto_experiencia` geradas por análise anterior. A base contém 50 registros entre janeiro e abril de 2026, dos quais 20 são feedbacks negativos para validação.
>
> **Instruções de análise:**
> 1. Classifique os feedbacks por tema (`temas`), sentimento, urgência e produto citado.
> 2. Identifique os principais padrões, problemas, elogios e oportunidades.
> 3. Aponte evidências nos dados fornecidos, usando exemplos curtos de comentários.
> 4. Sugira ações práticas para a equipe de experiência do cliente e para o time responsável pelos canais digitais.
>
> **Formato da resposta:** Entregue um resumo executivo com até 5 linhas, uma tabela com tema, sentimento, evidência e ação sugerida, além de uma lista final com as 3 prioridades mais importantes.
>
> **Restrições:**
> - Use apenas os dados fornecidos.
> - Não invente números, causas ou conclusões.
> - Não exponha dados pessoais ou sensíveis (os IDs de clientes são anonimizados: `CLI-XXXX`).
> - Informe limitações quando os dados não forem suficientes.
> - Use linguagem simples, direta e voltada para tomada de decisão.

---

## ☁️ Como entregar seu Desafio

Salve seu prompt final em um arquivo `.txt` ou `.md` e publique em um dos hosts aceitos pela DIO.

Os arquivos deste repositório já servem como entrega completa:

| Arquivo | Conteúdo |
|---|---|
| `desafio.txt` | Passos 1, 2 e 3 em formato texto |
| `README.md` | Documentação completa com todos os passos |
| `desafio.sql` | Estrutura do banco de dados |
| `massa_dados.sql` | 30 feedbacks variados |
| `massa_negativos.sql` | 20 feedbacks negativos para teste |
