                  #language: pt
                  #encoding: UTF-8
                  #author: raoni.rodriguess@gmail.com

                  @buscas_termos_err
                  Funcionalidade: Pesquisa no Blog Agi

                  Esquema do Cenário: Lidar com Nenhum Resultado
                  Dado que o usuário está na home do blog Agi
                  Quando o usuário insere o termo "<termo>" na barra de pesquisa
                  E ocorre uma exceção indicando "Nenhum resultado"
                  Então é esperado que a página exiba a mensagem "Não encontramos nada para estes termos de busca. Tente novamente com palavras-chave diferentes."

                  Exemplos:
                  | termo                        |
                  | "viagem espacial financeira" |
                  | "termo inexistente"          |
                  | "erro na busca 1234"         |
                  | "excecao generica"           |