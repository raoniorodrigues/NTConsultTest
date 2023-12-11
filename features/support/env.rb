require "capybara"
require "capybara/cucumber"
require "selenium-webdriver"
require "rspec"
require "yaml"

include Capybara::DSL

# Carregue a configuração do arquivo YAML
config = YAML.load_file(File.join(Dir.pwd, "features", "support", "elements_data", "base_page.yaml"))
base_url = config["base_url"]

# Caminho para o chromedriver dentro do projeto
chromedriver_path = File.join(Dir.pwd, "features", "support", "chromedriver", "chromedriver.exe")

# Configuração do Capybara com o caminho personalizado para o chromedriver
Capybara.register_driver :selenium_chrome do |app|
  options = Selenium::WebDriver::Chrome::Options.new
  options.add_argument("--start-maximized") # Abre a janela em tela cheia
  Capybara::Selenium::Driver.new(app, browser: :chrome, options: options, driver_path: chromedriver_path)
end

Capybara.default_driver = :selenium_chrome
Capybara.app_host = base_url
Capybara.configure do |config|
  config.run_server = false
  config.default_max_wait_time = 20
end

World(Capybara::DSL)
World(RSpec::Matchers)
