-- ============================================================
-- Massa de testes: 20 feedbacks negativos de clientes bancarios
-- Execute apos rodar desafio.sql
-- Foco: comentarios negativos para validacao da analise de IA
-- ============================================================

INSERT INTO feedbacks (id_feedback, data_comentario, id_canal, id_produto, texto_feedback, nota_satisfacao, id_cliente_anonimo) VALUES
(101, '2026-04-01', 1, 1, 'Meu Pix ficou pendente por mais de 2 horas sem nenhum retorno do banco.', 1, 'CLI-T001'),
(102, '2026-04-02', 2, 2, 'O atendente do chat nao soube resolver meu problema com o cartao bloqueado e encerrou a conversa sem solucao.', 1, 'CLI-T002'),
(103, '2026-04-03', 1, 3, 'O aplicativo simplesmente nao abre desde a ultima atualizacao. Perdi o dia sem conseguir acessar minha conta.', 1, 'CLI-T003'),
(104, '2026-04-04', 4, 5, 'Liguei tres vezes para renegociar meu emprestimo e cada atendente me passou uma informacao diferente.', 1, 'CLI-T004'),
(105, '2026-04-05', 3, 2, 'Na agencia me fizeram esperar 1 hora e meu cartao ainda nao chegou depois de 20 dias.', 1, 'CLI-T005'),
(106, '2026-04-06', 1, 4, 'Meu investimento em CDB foi resgatado automaticamente sem eu ter solicitado. Absurdo.', 1, 'CLI-T006'),
(107, '2026-04-07', 2, 1, 'Tentei cancelar um Pix agendado pelo chat e o sistema deu erro. O valor foi debitado mesmo assim.', 1, 'CLI-T007'),
(108, '2026-04-08', 1, 2, 'Fui cobrado em dobro na fatura do cartao. O estorno prometido nao foi realizado ate agora.', 1, 'CLI-T008'),
(109, '2026-04-09', 4, 3, 'Tentei encerrar minha conta pelo telefone e o atendente me transferiu cinco vezes sem solucao.', 1, 'CLI-T009'),
(110, '2026-04-10', 1, 5, 'A taxa de juros do meu emprestimo mudou sem aviso previo. Isso e abusivo.', 2, 'CLI-T010'),
(111, '2026-04-11', 2, 3, 'O chat ficou desconectando toda hora. Precisei repetir meu problema quatro vezes para atendentes diferentes.', 1, 'CLI-T011'),
(112, '2026-04-12', 1, 1, 'Recebi notificacao de Pix recebido mas o saldo nao foi atualizado. Fiquei sem o dinheiro por dois dias.', 1, 'CLI-T012'),
(113, '2026-04-13', 3, 4, 'O gerente da agencia me vendeu um investimento sem explicar os riscos. Me sinto enganado.', 1, 'CLI-T013'),
(114, '2026-04-14', 1, 2, 'O app nao mostra o limite disponivel do cartao corretamente. Ja tive compra recusada por isso.', 2, 'CLI-T014'),
(115, '2026-04-15', 2, 5, 'Solicitei simulacao de portabilidade de emprestimo pelo chat e nunca recebi resposta.', 2, 'CLI-T015'),
(116, '2026-04-16', 4, 2, 'Liguei para contestar uma compra fraudulenta no cartao e fui tratado como suspeito pelo atendente.', 1, 'CLI-T016'),
(117, '2026-04-17', 1, 3, 'Minha senha foi resetada sem que eu tivesse solicitado. Possivel falha de seguranca no app.', 1, 'CLI-T017'),
(118, '2026-04-18', 2, 1, 'O Pix para CNPJ retornou erro de chave invalida, mas a chave esta correta. Perdi o prazo de pagamento.', 1, 'CLI-T018'),
(119, '2026-04-19', 3, 3, 'Fui a agencia atualizar meu cadastro e me disseram que o sistema estava fora do ar. Voltei tres vezes.', 2, 'CLI-T019'),
(120, '2026-04-20', 1, 4, 'O extrato de rendimentos do meu fundo de investimento esta errado ha dois meses. Ninguem resolve.', 1, 'CLI-T020');

-- ============================================================
-- Classificacoes para os feedbacks negativos de teste
-- ============================================================

INSERT INTO classificacoes_feedback (id_classificacao, id_feedback, id_tema, sentimento, urgencia, impacto_experiencia, observacao) VALUES
(101, 101, 5, 'Negativo', 'Alta',  'Alto',   'Pix pendente sem retorno - possivel falha de processamento'),
(102, 102, 3, 'Negativo', 'Alta',  'Alto',   'Atendente encerrou chat sem resolver - falha grave de atendimento'),
(103, 103, 5, 'Negativo', 'Alta',  'Alto',   'App inacessivel apos atualizacao - impacto massivo de usuarios'),
(104, 104, 3, 'Negativo', 'Alta',  'Alto',   'Informacoes contraditorias entre atendentes - falta de padronizacao'),
(105, 105, 3, 'Negativo', 'Alta',  'Alto',   'Longo tempo de espera e nao cumprimento do prazo de entrega do cartao'),
(106, 106, 6, 'Negativo', 'Alta',  'Alto',   'Resgate nao autorizado - possivel erro critico de sistema'),
(107, 107, 2, 'Negativo', 'Alta',  'Alto',   'Debito realizado apos erro no cancelamento - risco financeiro ao cliente'),
(108, 108, 4, 'Negativo', 'Alta',  'Alto',   'Cobranca duplicada sem estorno - impacto financeiro direto'),
(109, 109, 3, 'Negativo', 'Alta',  'Alto',   'Multiplas transferencias sem resolucao - experiencia critica'),
(110, 110, 4, 'Negativo', 'Alta',  'Alto',   'Alteracao de taxa sem notificacao previa - possivel violacao contratual'),
(111, 111, 5, 'Negativo', 'Media', 'Alto',   'Instabilidade do chat exige repeticao de informacoes pelo cliente'),
(112, 112, 6, 'Negativo', 'Alta',  'Alto',   'Inconsistencia entre notificacao e saldo - risco de confianca'),
(113, 113, 3, 'Negativo', 'Alta',  'Alto',   'Venda sem transparencia de riscos - possivel irregularidade regulatoria'),
(114, 114, 6, 'Negativo', 'Media', 'Medio',  'Exibicao incorreta de limite gera recusa de compra'),
(115, 115, 3, 'Negativo', 'Media', 'Medio',  'Solicitacao sem retorno - falha no fluxo de atendimento'),
(116, 116, 3, 'Negativo', 'Alta',  'Alto',   'Cliente tratado como suspeito em caso de fraude - falha de conduta'),
(117, 117, 2, 'Negativo', 'Alta',  'Alto',   'Reset de senha nao solicitado - alerta critico de seguranca'),
(118, 118, 6, 'Negativo', 'Alta',  'Alto',   'Erro em Pix para CNPJ causou perda de prazo de pagamento'),
(119, 119, 5, 'Negativo', 'Media', 'Medio',  'Sistema indisponivel na agencia em multiplas visitas'),
(120, 120, 6, 'Negativo', 'Alta',  'Alto',   'Extrato incorreto ha dois meses sem resolucao - impacto em decisoes financeiras');
