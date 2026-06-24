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

## Diagnóstico (simulado ENEM 2021, 2º dia, Matemática)
- Acertou 22/44 válidas (50%). Ver [learning-records/0001](learning-records/0001-diagnostico-simulado-2021.md).
- **Forte:** estatística + leitura de gráficos/tabelas; geometria métrica.
- **Fraco (ordem de prioridade):** 1) porcentagem/variação percentual; 2) funções; 3) razão/proporção e regra de três; 4) geometria espacial/visualização 3D.

## Sequência de lições planejada
- [x] 0001 — Variação percentual (método do multiplicador).
- [x] 0002 — Razão, proporção e regra de três (incl. inversa) — questões 154, 159, 165.
- [ ] 0003 — Funções e seus gráficos (linear vs quadrática) — questões 161, 162, 141, 180.
- [ ] Manter estatística/gráficos aquecida com prática espaçada (ponto forte).

## Publicação (GitHub Pages)
- Site publicado a partir da pasta **`docs/`** (Settings → Pages → branch `main`, pasta `/docs`).
- `docs/` é gerado por **`./publish.sh`** e contém SÓ material do aluno (`index.html`, `lessons/`, `reference/`).
- Privados (não vão pro ar): `MISSION.md`, `NOTES.md`, `RESOURCES.md`, `learning-records/`.
- **Fluxo após criar/editar lição:** salvar em `lessons/` ou `reference/` → `./publish.sh` → `git add -A && git commit && git push`.
- `index.html` (hub) lista as lições — marcar como ativa (remover classe `soon`) quando uma nova lição sair.

## Pendências
- [ ] Confirmar pesos das áreas no ENEM-USP para TO/Fono.
- [ ] Após a Nicole fazer a Lição 0001, registrar desempenho e decidir se aprofunda porcentagem ou avança.
