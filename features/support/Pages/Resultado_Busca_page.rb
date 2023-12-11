class ResultadoBuscaPage
  puts File.join(Dir.pwd, "features", "support", "elements_data", "page_elements", "resultado_busca_elements.yaml")
  @resultado_busca_elements = YAML.load_file(File.join(Dir.pwd, "features", "support", "elements_data", "page_elements", "resultado_busca_elements.yaml"))

  def self.resultado_busca_elements
    if @resultado_busca_elements.nil?
      puts "Erro: @resultado_busca_elements é nil."
      return
    end
    @resultado_busca_elements
  end

  def valida_resultado_busca_page(page, termo_pesquisado)
    $Validation.valida_texto_pagina(page, "Resultados da busca por: #{termo_pesquisado}")
  end

  def clicar_no_primeiro_artigo
    # Seletor para encontrar o link do primeiro artigo
    link_primeiro_artigo = first(self.class.resultado_busca_elements["title_h2_busca"])

    # Verifica se o link do primeiro artigo foi encontrado
    if link_primeiro_artigo
      # Armazena o texto do título do primeiro artigo
      $titulo_artigo = link_primeiro_artigo.text

      # Clique no link do primeiro artigo
      link_primeiro_artigo.click

      # Verifica se a nova página contém o texto do título do primeiro artigo
      $article = find(self.class.resultado_busca_elements["title_h1_busca"]).text
    else
      puts "Nenhum link do artigo encontrado."
    end
  end
end
