Dado("que o usuário está na home do blog Agi") do
  $HomePage.acessa_home
end

Quando('o usuário insere o termo "{string}" na barra de pesquisa') do |termo|
  $termo = termo
  $HeadersComponents.realiza_busca($termo)
end

Quando("o usuário clica no primeiro item da pesquisa") do
  $ResultadoBuscaPage.valida_resultado_busca_page(page, $termos)
  $ResultadoBuscaPage.clicar_no_primeiro_artigo
end

Então("é esperado que a página exiba o resultado do artigo clicado") do
  $Validation.valida_texto_pagina($titulo_artigo, $article)
end

# Cenários de Busca com termos que retornarão as mensagens:
# Nenhum resultado e "Não encontramos nada para estes termos de busca. Tente novamente com palavras-chave diferentes."

Quando("ocorre uma exceção indicando {string}") do |err|
  $Validation.valida_texto_pagina(page, err)
end

Então("é esperado que a página exiba a mensagem {string}") do |err|
  $Validation.valida_texto_pagina(page, err)
end
