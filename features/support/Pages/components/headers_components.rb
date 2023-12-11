class HeadersComponents
  @headers_components_elements = YAML.load_file(File.join(Dir.pwd, "features", "support", "elements_data", "page_elements", "header_component_elements.yaml"))

  def self.headers_components_elements
    if @headers_components_elements.nil?
      puts "Erro: @headers_components_elements é nil."
      return
    end
    @headers_components_elements
  end

  def realiza_busca(termo_busca)
    $CustomDSL.find_and_click(self.class.headers_components_elements["search_button"])
    $CustomDSL.find_and_set(self.class.headers_components_elements["search_input_text"], termo_busca)
    $CustomDSL.find_and_click(self.class.headers_components_elements["search_button_submit"])
  end
end
