# Mudança de método: a lição estava criando ilusão de fluência

**Data:** 20/08/2026. Decisão tomada a partir do [registro 0003](0003-diagnostico-simulado-2017.md).

## O problema

Placares nas lições (Grupo 1) contra desempenho no simulado 2017, feito **depois** delas:

| Tema | Erros na lição | Erros na prova |
|---|---|---|
| Porcentagem (0001) | **0** | **5** |
| Funções (0003) | 1 | **5** |
| Geometria espacial (0004) | 2 | 2 |
| Regra de três (0002) | 3 | (dentro dos 5 de proporção) |

Nota do simulado: 21/45 (46,7%), contra 22/44 (50%) antes das lições. **Sem ganho.**

Isso é exatamente o modo de falha que a metodologia deste workspace avisa: **fluency strength**
(recuperar na hora, com o contexto dado) subindo sem **storage strength** (recuperar depois,
sem aviso). O placar alto da lição deu uma sensação de domínio que a prova não confirmou.

## A causa provável — está no formato da lição

**A lição entrega a resposta mais difícil de graça: qual é o assunto.**

Quando a página se chama "Lição 0005 — Proporcionalidade inversa", ela já sabe, antes da questão 1,
que a ferramenta é produto constante. Na prova, o enunciado não diz o tema — descobrir isso É a
questão. São duas habilidades distintas, e só a primeira estava sendo treinada.

Reforça isso o padrão dos erros: **92% caem na alternativa vizinha da correta**, ou seja, ela monta
a conta e escorrega no fim. Não é desconhecimento do tema; é execução e escolha de ferramenta.

## O que muda

1. **Métrica.** Placar de lição deixa de ser sinal de sucesso — ele sobe sem a prova subir. A
   métrica passa a ser **simulado completo e cronometrado**.
2. **Ordem.** A [Lição 0008](../lessons/0008-revisao-interleaved.html) (revisão embaralhada, com a
   Rodada 1 treinando só a escolha da ferramenta) deixa de ser a última do Grupo 2 e passa a ser a
   **próxima** a fazer. Ela já foi construída para exatamente este problema, e ainda não foi testada.
3. **Formato daqui em diante.** Toda lição nova precisa de um bloco final **sem rótulo de tema**,
   misturado com assuntos anteriores. O rótulo pode aparecer no ensino, nunca na prática final.
4. **Grupo 3 muda de alvo.** Sai "mais temas novos", entra **execução**: conferência de unidade,
   o que a questão pergunta de fato, ordem de grandeza — e prática cronometrada. Há 12 questões de
   ganho em terreno já ensinado, mais do que qualquer tema novo renderia.

## O que NÃO fazer

Não re-ensinar porcentagem do zero. Ela acerta quando sabe que é porcentagem. Re-ensinar o conteúdo
atacaria o sintoma errado — e a Lição 0002 já mostrou que repetir a mesma explicação não gera
retenção (ver [registro 0002](0002-diagnostico-grupo-1.md)).
