# Blog Agi Automation

Este projeto visa automatizar os testes para o Blog Agi, utilizando Cucumber com Gherkin para especificações BDD e Capybara para automação de testes em Ruby.

## Estrutura do Projeto

- **features:** Contém os arquivos Gherkin com as especificações BDD.
- **features/support:** Inclui os arquivos de suporte, como page objects, elementos YAML e steps definitions.
- **features/support/page_objects:** Armazena as classes que representam as páginas da aplicação.
- **features/support/elements_data:** Contém os elementos YAML para facilitar a manutenção dos locators.
- **features/step_definitions:** Mantém os steps definitions associados às features.

## Configuração do Ambiente

1. **Ruby:** Certifique-se de ter Ruby instalado no seu sistema. Recomendamos usar [RVM](https://rvm.io/) para gerenciamento de versões Ruby.
2. **Dependências:** Execute `bundle install` para instalar as dependências do projeto.

# Configuração do Chromedriver

Antes de executar os testes, é necessário garantir que o Chromedriver esteja configurado corretamente e seja compatível com a versão do seu Google Chrome.

## Passos para Configuração:

1. **Verifique a Versão do Google Chrome:**
   - Abra o Google Chrome.
   - Clique no ícone de três pontos no canto superior direito.
   - Selecione "Ajuda" e depois "Sobre o Google Chrome".
   - Anote a versão do Chrome exibida na página.

2. **Baixe o Chromedriver:**
   - Acesse o [site oficial do Chromedriver](https://sites.google.com/chromium.org/driver/).
   - Baixe a versão compatível com a versão do seu Google Chrome.
   - Descompacte o arquivo baixado.

3. **Configure o Caminho do Chromedriver:**
   - Mova o arquivo `chromedriver.exe` para a pasta `features/support/chromedriver/` no seu projeto.

4. **Verifique a Compatibilidade:**
   - Certifique-se de que a versão do Chromedriver seja compatível com a versão do seu Google Chrome.

5. **Execute os Testes:**
   - Agora, você está pronto para executar os testes automatizados.

**Observação:** Mantenha o Chromedriver atualizado para garantir compatibilidade contínua com o Google Chrome.

## Links Úteis:

- [Chromedriver Downloads](https://sites.google.com/chromium.org/driver/)
- [Chrome Release Blog](https://blog.chromium.org/)

Certifique-se de seguir esses passos para garantir uma configuração adequada do Chromedriver em seu ambiente de desenvolvimento.

## Executando os Testes

Para executar todos os testes, utilize o seguinte comando:

```bash
cucumber -t @buscas_termos
```

```bash
cucumber -t @buscas_termos_err
```

Você também pode executar testes específicos passando o caminho para o arquivo de feature:

```bash
cucumber features/sua_feature.feature
```
# CustomDSL - Facilitando a Interação com Capybara

A classe `CustomDSL` foi criada para simplificar e encapsular as interações com a biblioteca Capybara, proporcionando uma interface mais amigável e legível para os testes automatizados. Aqui está uma visão geral das funcionalidades oferecidas por essa classe:

## Métodos Principais:

### `visit_page(url)`
- Descrição: Navega para a página especificada pela URL.
- Uso: `CustomDSL.new.visit_page('https://example.com')`

### `fill_in_field(field_name, with:)`
- Descrição: Preenche um campo de formulário com o texto fornecido.
- Uso: `CustomDSL.new.fill_in_field('username', with: 'user123')`

### `find_element(selector)`
- Descrição: Localiza um elemento na página com base no seletor fornecido.
- Uso: `CustomDSL.new.find_element('.my-element')`

### `check_checkbox(checkbox_name)`
- Descrição: Marca uma caixa de seleção.
- Uso: `CustomDSL.new.check_checkbox('remember_me')`

### `uncheck_checkbox(checkbox_name)`
- Descrição: Desmarca uma caixa de seleção.
- Uso: `CustomDSL.new.uncheck_checkbox('unsubscribe')`

### `find_and_click(selector)`
- Descrição: Localiza um elemento na página e realiza um clique nele.
- Uso: `CustomDSL.new.find_and_click('#submit-button')`

### `find_and_set(selector, text)`
- Descrição: Localiza um campo de entrada na página e define o texto.
- Uso: `CustomDSL.new.find_and_set('#search-input', 'Capybara')`

## Como Utilizar:

1. Instancie a classe `CustomDSL` no seu teste automatizado.
2. Utilize os métodos fornecidos para realizar ações específicas na página.

Exemplo:

```ruby
# Instanciando CustomDSL
custom_dsl = CustomDSL.new

# Navegando para uma página
custom_dsl.visit_page('https://example.com')

# Preenchendo um campo de formulário
custom_dsl.fill_in_field('username', with: 'user123')

# Realizando um clique em um botão
custom_dsl.find_and_click('#login-button')
```

Ao incorporar a classe `CustomDSL` nos seus testes, você pode simplificar a escrita dos casos de teste e melhorar a manutenção do código.

## Autor

[Raoni Candido Okabayashi Rodrigues] - [raoni.rodriguess@gmail.com]

## Licença

Este projeto é licenciado sob a MIT License - consulte o arquivo [LICENSE.md](LICENSE.md) para obter detalhes.

---
