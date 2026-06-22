-- ============================================================
-- Massa de dados: 30 feedbacks de clientes bancarios
-- Execute apos rodar desafio.sql
-- ============================================================

INSERT INTO feedbacks (id_feedback, data_comentario, id_canal, id_produto, texto_feedback, nota_satisfacao, id_cliente_anonimo) VALUES
(1,  '2026-01-05', 1, 1, 'O Pix caiu direto, muito rapido e pratico!', 5, 'CLI-0001'),
(2,  '2026-01-08', 2, 2, 'Meu cartao foi bloqueado sem motivo aparente, pessimo atendimento.', 1, 'CLI-0002'),
(3,  '2026-01-10', 1, 3, 'O aplicativo trava toda vez que tento ver meu extrato.', 2, 'CLI-0003'),
(4,  '2026-01-12', 4, 5, 'Consegui renegociar meu emprestimo pelo telefone sem dificuldade.', 4, 'CLI-0004'),
(5,  '2026-01-15', 2, 1, 'Pix agendado nao foi enviado na data combinada.', 2, 'CLI-0005'),
(6,  '2026-01-18', 3, 4, 'O gerente explicou muito bem as opcoes de investimento disponíveis.', 5, 'CLI-0006'),
(7,  '2026-01-20', 1, 2, 'Limite do cartao foi aumentado automaticamente, gostei!', 5, 'CLI-0007'),
(8,  '2026-01-22', 2, 3, 'Demorou mais de 10 minutos para um atendente responder no chat.', 2, 'CLI-0008'),
(9,  '2026-01-25', 1, 1, 'Notificacao de Pix recebido chegou atrasada.', 3, 'CLI-0009'),
(10, '2026-01-28', 4, 2, 'Cobrou anuidade indevida, precisei ligar tres vezes para resolver.', 1, 'CLI-0010'),
(11, '2026-02-02', 1, 4, 'Interface de investimentos confusa, nao consigo encontrar o CDB.', 2, 'CLI-0011'),
(12, '2026-02-05', 3, 3, 'Abertura de conta presencial foi rapida e a atendente foi excelente.', 5, 'CLI-0012'),
(13, '2026-02-07', 2, 5, 'Simulacao de emprestimo pelo chat funcionou perfeitamente.', 4, 'CLI-0013'),
(14, '2026-02-10', 1, 2, 'App caiu justo na hora de pagar a fatura do cartao.', 1, 'CLI-0014'),
(15, '2026-02-13', 1, 1, 'Pix para chave aleatoria retornou erro, mas o valor foi debitado.', 1, 'CLI-0015'),
(16, '2026-02-15', 4, 3, 'Atendimento telefonico foi educado porem demorou muito na fila.', 3, 'CLI-0016'),
(17, '2026-02-18', 1, 4, 'Rendimento da poupanca exibido incorretamente no app.', 2, 'CLI-0017'),
(18, '2026-02-20', 2, 1, 'Suporte pelo chat resolveu meu problema de Pix devolvido rapidamente.', 5, 'CLI-0018'),
(19, '2026-02-22', 3, 2, 'Solicitei segunda via do cartao na agencia, chegou em 2 dias.', 5, 'CLI-0019'),
(20, '2026-02-25', 1, 5, 'Taxa de juros do emprestimo pessoal esta muito alta comparada ao mercado.', 2, 'CLI-0020'),
(21, '2026-03-01', 2, 3, 'Nao consigo alterar minha senha pelo chat, sistema sempre cai.', 1, 'CLI-0021'),
(22, '2026-03-04', 1, 1, 'Funcionalidade de Pix cobranca foi lancada, amei a novidade!', 5, 'CLI-0022'),
(23, '2026-03-06', 4, 4, 'Resgate do tesouro direto nao foi processado no prazo informado.', 2, 'CLI-0023'),
(24, '2026-03-09', 1, 2, 'Notificacao de compra no cartao chegou instantanea, sensacao de seguranca.', 5, 'CLI-0024'),
(25, '2026-03-12', 3, 3, 'Fui mal atendido na agencia, funcionario ignorou minha reclamacao.', 1, 'CLI-0025'),
(26, '2026-03-15', 2, 5, 'Chat demorou mas o atendente foi muito prestativo na solucao do emprestimo.', 4, 'CLI-0026'),
(27, '2026-03-18', 1, 1, 'App travou durante transferencia Pix, fiquei sem saber se foi concluida.', 1, 'CLI-0027'),
(28, '2026-03-20', 4, 2, 'Cancelamento do cartao pelo telefone foi simples e rapido.', 4, 'CLI-0028'),
(29, '2026-03-23', 1, 4, 'Novos graficos de rentabilidade no app deixaram o painel muito mais claro.', 5, 'CLI-0029'),
(30, '2026-03-26', 2, 3, 'Solicitei extrato pelo chat e recebi por e-mail em menos de 5 minutos.', 5, 'CLI-0030');

-- ============================================================
-- Classificacoes geradas pela analise de IA para cada feedback
-- ============================================================

INSERT INTO classificacoes_feedback (id_classificacao, id_feedback, id_tema, sentimento, urgencia, impacto_experiencia, observacao) VALUES
(1,  1,  5, 'Positivo', 'Baixa', 'Baixo',  NULL),
(2,  2,  3, 'Negativo', 'Alta',  'Alto',   'Cliente relatou bloqueio indevido sem justificativa'),
(3,  3,  5, 'Negativo', 'Alta',  'Alto',   'Problema recorrente de performance no app'),
(4,  4,  3, 'Positivo', 'Baixa', 'Medio',  NULL),
(5,  5,  6, 'Negativo', 'Alta',  'Alto',   'Falha critica: debito sem confirmacao de envio'),
(6,  6,  3, 'Positivo', 'Baixa', 'Baixo',  NULL),
(7,  7,  6, 'Positivo', 'Baixa', 'Medio',  NULL),
(8,  8,  3, 'Negativo', 'Media', 'Medio',  'Tempo de espera acima do aceitavel'),
(9,  9,  5, 'Negativo', 'Media', 'Medio',  NULL),
(10, 10, 4, 'Negativo', 'Alta',  'Alto',   'Cobranca indevida com multiplos contatos necessarios'),
(11, 11, 1, 'Negativo', 'Media', 'Medio',  'Problema de navegacao na secao de investimentos'),
(12, 12, 3, 'Positivo', 'Baixa', 'Baixo',  NULL),
(13, 13, 6, 'Positivo', 'Baixa', 'Baixo',  NULL),
(14, 14, 5, 'Negativo', 'Alta',  'Alto',   'Indisponibilidade em momento critico de pagamento'),
(15, 15, 2, 'Negativo', 'Alta',  'Alto',   'Possivel falha de seguranca: debito sem confirmacao'),
(16, 16, 3, 'Neutro',   'Baixa', 'Medio',  'Atendimento satisfatorio porem com longa espera'),
(17, 17, 6, 'Negativo', 'Media', 'Medio',  'Dado financeiro incorreto pode gerar desconfianca'),
(18, 18, 3, 'Positivo', 'Baixa', 'Baixo',  NULL),
(19, 19, 3, 'Positivo', 'Baixa', 'Baixo',  NULL),
(20, 20, 4, 'Negativo', 'Media', 'Medio',  'Percepcao de taxa elevada em relacao ao mercado'),
(21, 21, 2, 'Negativo', 'Alta',  'Alto',   'Falha no fluxo de alteracao de senha - risco de seguranca'),
(22, 22, 6, 'Positivo', 'Baixa', 'Baixo',  NULL),
(23, 23, 6, 'Negativo', 'Alta',  'Alto',   'Descumprimento de prazo em produto de investimento'),
(24, 24, 2, 'Positivo', 'Baixa', 'Baixo',  NULL),
(25, 25, 3, 'Negativo', 'Alta',  'Alto',   'Reclamacao ignorada por funcionario na agencia'),
(26, 26, 3, 'Positivo', 'Baixa', 'Medio',  NULL),
(27, 27, 2, 'Negativo', 'Alta',  'Alto',   'Incerteza apos transacao - possivel duplicidade'),
(28, 28, 3, 'Positivo', 'Baixa', 'Baixo',  NULL),
(29, 29, 1, 'Positivo', 'Baixa', 'Baixo',  NULL),
(30, 30, 3, 'Positivo', 'Baixa', 'Baixo',  NULL);
