      #language: pt
      #encoding: UTF-8
      #author: raoni.rodriguess@gmail.com

      @buscas_termos
      Funcionalidade: Pesquisa no Blog Agi

      Esquema do Cenário: Realizar Pesquisa
      Dado que o usuário está na home do blog Agi
      Quando o usuário insere o termo "<termo>" na barra de pesquisa
      E o usuário clica no primeiro item da pesquisa
      Então é esperado que a página exiba o resultado do artigo clicado

      Exemplos:
      | termo                                        |
      | "empréstimos pessoais"                       |
      | "planejamento financeiro para aposentadoria" |
      | "cartão de crédito"                          |
      | "Conta Corrente"                             |