# NOTES — Preferências e working notes

## Sobre a estudante
- **Nicole** é a estudante (o ftrajano está montando/conduzindo o estudo).
- Nível de matemática ainda **desconhecido** — vamos inferir a partir de um **simulado** que ela já fez (pendente de localizar/analisar).

## Preferências de ensino
- Lições em **português**.
- Tem **bastante tempo** (7h+/semana) → pode aprofundar e treinar muito, mas manter cada lição curta (working memory).

## Padrão técnico do material (IMPORTANTE — aplicar em TODA lição/cartão)
- **MathJax** para notação matemática (CDN: `tex-mml-chtml.js`).
- Delimitadores **apenas** `\( \)` (inline) e `\[ \]` (display). **NUNCA** habilitar `$...$` — conflitaria com "R$" (real).
- Decimais com vírgula em LaTeX: usar `1{,}50` (as chaves evitam espaço extra após a vírgula).
- Frações **inline**: usar `\frac` (NÃO `\dfrac` — fica grande e cola na linha de cima). `\dfrac` só em display `\[ \]`.
- Onde houver frações inline, dar `line-height` ~2 no bloco + `mjx-container[display="false"]{vertical-align:-0.15em}`.
- Snippet padrão do `<head>`:
  ```html
  <script>window.MathJax={tex:{inlineMath:[['\\(','\\)']],displayMath:[['\\[','\\]']]}};</script>
  <script src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-mml-chtml.js" async></script>
  ```

## Padrão pedagógico das lições — ESCADA DE DIFICULDADE (aplicar em todas)
- Quiz com **15–20 questões** (a Nicole pediu) organizadas em **4 níveis** que sobem de dificuldade:
  - **N1 Mecânica** — a operação pura / o método isolado.
  - **N2 Aplicação** — um passo do mundo real.
  - **N3 Duas etapas / pegadinhas** — combina sub-habilidades, expõe misconceptions.
  - **N4 Nível ENEM** — enunciados no nível da prova; quando existir, usar as **questões reais que ela errou** no simulado (marcar "você errou esta") + itens **estilo ENEM** autorais.
- **Não** exigir fidelidade à prova: o critério é a **dificuldade-alvo**, não reproduzir a questão original. Quando não há questão real, criar item autoral no nível ENEM.
- Cada questão com feedback imediato (JS) e MathJax. Placar conta o total dinamicamente (`document.querySelectorAll('.q').length`).
- Opções de resposta com formato uniforme dentro da questão (não dar pista pelo tamanho).
- Distratores devem refletir erros reais dela (ex.: marcou 28% na Q155 → 28% vira distrator).

## Estratégia
- Priorizar tópicos por **frequência no ENEM** (porcentagem, regra de três, gráficos/tabelas, funções, geometria, estatística, probabilidade).
- Garantir acerto nas fáceis/médias antes de caçar as difíceis (a maioria das questões é de nível básico/médio).
- Ancorar tudo na missão: chegar perto do corte ~780–790 (ENEM-USP, TO/Fono, FMRP).

## Diagnóstico (simulado ENEM 2017, 2º dia, caderno azul) — 20/08/2026
- Acertou **21/45 (46,7%)**. Em 2021 foi 22/44 (50%) → **estável, não melhorou.**
- Ver [learning-records/0003](learning-records/0003-diagnostico-simulado-2017.md).
- **92% dos erros caem na alternativa VIZINHA da correta** → ela calcula e erra no último passo,
  não chuta. Intervenção deve mirar **precisão de execução e conferência**, não conteúdo novo.
- Erros por área: geometria 5 · proporcionalidade/% 5 · funções 5 · contagem+prob 3 ·
  financeira 2 · trigonometria 2 · estatística 1 · leitura de escala 1.
- **As lacunas são as MESMAS de 2021** (porcentagem, funções, proporção, geometria) —
  confirmadas em duas provas independentes.
- **Alerta:** 0 erros na Lição 0001 (porcentagem) mas 5 erros de porcentagem na prova →
  fluência na lição não virou retenção em condição de prova.
- [ ] PENDENTE: perguntar ao ftrajano se este simulado foi ANTES ou DEPOIS das lições 0001–0004.

## Diagnóstico (simulado ENEM 2021, 2º dia, Matemática)
- Acertou 22/44 válidas (50%). Ver [learning-records/0001](learning-records/0001-diagnostico-simulado-2021.md).
- **Forte:** estatística + leitura de gráficos/tabelas; geometria métrica.
- **Fraco (ordem de prioridade):** 1) porcentagem/variação percentual; 2) funções; 3) razão/proporção e regra de três; 4) geometria espacial/visualização 3D.

## Sequência de lições planejada
**Grupo 1 (completo, resultados em [learning-records/0002](learning-records/0002-diagnostico-grupo-1.md)):**
- [x] 0001 — Variação percentual (método do multiplicador). → **0 erros, dominado.**
- [x] 0002 — Razão, proporção e regra de três (incl. inversa) — questões 154, 159, 165. → **3 erros, todos de INVERSA.**
- [x] 0003 — Funções e seus gráficos (linear vs quadrática) — questões 141, 161, 162, 180. → **1 erro (sinal de \(a\)).**
- [x] 0004 — Geometria espacial / visualização 3D (137, 168, 175). → **2 erros (Q175 e Euler).**

**Grupo 2 (COMPLETO — aguardando desempenho da Nicole):**
- [x] 0005 — Proporcionalidade inversa & grandezas compostas (REMEDIAÇÃO). 17 questões + cartão novo.
- [x] 0006 — Probabilidade. 18 questões + cartão novo.
- [x] 0007 — Contagem / princípio fundamental da contagem. 18 questões + cartão novo.
- [x] 0008 — Revisão interleaved 0001–0007. 19 questões, Rodada 1 = só identificar a ferramenta.
- [ ] Manter estatística/gráficos aquecida com prática espaçada (ponto forte).

## Onde os 6 erros do Grupo 1 foram re-testados (checar estes primeiro no feedback)
| Erro original | Re-testado em |
|---|---|
| trajeto 90 km/h (inversa) | 0005 N4 (mesmo item) · 0008 R3 (120 km/h, números novos) |
| 16 km/L (Q165) | 0005 N4 (mesmo item) · **0008 R4 (25 km/L — números novos, testa transferência real)** |
| 4 grupos/pneus (Q159) | 0005 N3 (gargalo isolado) e N4 (item real) · 0008 R4 (5 equipes/estandes) |
| \(a<0\) → máximo | 0008 R1 (com mnemônico da carinha triste) |
| Euler / prisma hexagonal | 0008 R2 (12 vértices, 8 faces → 18) |
| cubo dentro de cubo (Q175) | 0008 R3 (seção do cubo → triângulo equilátero) |

**O item mais informativo de todos é o 0008 R4 (moto 25 km/L):** é a Q165 com outros números. Se ela acertar esse e errar o da 0005, decorou; se acertar os dois, aprendeu o método.

## Frequência dos temas no ENEM (base para priorizar)
Ordem confirmada por levantamento externo (ver RESOURCES.md):
1. **Proporcionalidade direta e indireta — 213 questões** ← o mais cobrado de todos
2. Estatística — 187 · 3. Geometria plana — 110
Por área: funções ~20%, geometria plana/espacial ~18%, probabilidade e estatística ~15%, matemática financeira ~12%. Probabilidade cai **todo ano**.

## Cadência de trabalho (definida pelo ftrajano)
- Produzir as lições em **grupos de 4**. A cada grupo, **PARAR e coletar feedback** do desempenho real da Nicole antes de seguir.
- **GRUPO 1 = lições 0001–0004 (COMPLETO, feedback coletado em 20/08/2026).**
- **GRUPO 2 = lições 0005–0008.** → Ao fim, coletar de novo o desempenho por nível.
- Ainda não cobertos (candidatos ao Grupo 3): matrizes 157, sequências 136, trigonometria 156, bases numéricas 177, análise dimensional 163, comparação de áreas 171, matemática financeira (juros).

## Lição de remediação — o que aprendi sobre o que NÃO funciona
A Lição 0002 ensinou inversa, e mesmo assim a Nicole repetiu **o erro exato do simulado** em duas questões reais. Conclusão: repetir a mesma explicação não gera retenção. Numa remediação, usar um **modelo mental diferente** do da primeira lição (aqui: "produto constante" no lugar de "multiplica cruzado"), não só mais exercícios.

## Publicação (GitHub Pages)
- Site publicado a partir da pasta **`docs/`** (Settings → Pages → branch `main`, pasta `/docs`).
- `docs/` é gerado por **`./publish.sh`** e contém SÓ material do aluno (`index.html`, `lessons/`, `reference/`).
- Privados (não vão pro ar): `MISSION.md`, `NOTES.md`, `RESOURCES.md`, `learning-records/`.
- **Fluxo após criar/editar lição:** salvar em `lessons/` ou `reference/` → `./publish.sh` → `git add -A && git commit && git push`.
- `index.html` (hub) lista as lições — marcar como ativa (remover classe `soon`) quando uma nova lição sair.

## Pendências
- [ ] Confirmar pesos das áreas no ENEM-USP para TO/Fono.
- [x] ~~Após a Nicole fazer a Lição 0001, registrar desempenho~~ → feito: 0 erros, porcentagem dominada.
- [ ] Após o Grupo 2, checar se a inversa finalmente fixou (é o teste decisivo da remediação).
- [ ] Nas ~12 semanas restantes, reservar as últimas ~4 para simulados cronometrados completos.
- [ ] **Grupo 3 (a definir):** virar a chave de conteúdo para EXECUÇÃO — lição de conferência
      (unidade pedida, o que se pergunta, ordem de grandeza) + remediação de funções e geometria
      + matemática financeira (nunca ensinada, ~12% da prova).
