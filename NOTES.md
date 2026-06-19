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

## Estratégia
- Priorizar tópicos por **frequência no ENEM** (porcentagem, regra de três, gráficos/tabelas, funções, geometria, estatística, probabilidade).
- Garantir acerto nas fáceis/médias antes de caçar as difíceis (a maioria das questões é de nível básico/médio).
- Ancorar tudo na missão: chegar perto do corte ~780–790 (ENEM-USP, TO/Fono, FMRP).

## Diagnóstico (simulado ENEM 2021, 2º dia, Matemática)
- Acertou 22/44 válidas (50%). Ver [learning-records/0001](learning-records/0001-diagnostico-simulado-2021.md).
- **Forte:** estatística + leitura de gráficos/tabelas; geometria métrica.
- **Fraco (ordem de prioridade):** 1) porcentagem/variação percentual; 2) funções; 3) razão/proporção e regra de três; 4) geometria espacial/visualização 3D.

## Sequência de lições planejada
- [x] 0001 — Variação percentual (método do multiplicador).
- [ ] 0002 — Razão, proporção e regra de três (incl. inversa) — questões 154, 159, 165.
- [ ] 0003 — Funções e seus gráficos (linear vs quadrática) — questões 161, 162, 141, 180.
- [ ] Manter estatística/gráficos aquecida com prática espaçada (ponto forte).

## Pendências
- [ ] Confirmar pesos das áreas no ENEM-USP para TO/Fono.
- [ ] Após a Nicole fazer a Lição 0001, registrar desempenho e decidir se aprofunda porcentagem ou avança.
