require "rspec/expectations"
require "rspec"

class Validation
  include RSpec::Matchers

  def valida_texto_pagina(page, texto)
    expect(page).to have_content(texto)
  end

  def valida_css_visible(page, elemento)
    expect(page).to have_css(elemento)
  end

  def valida_url(page, url)
    expect(page).to have_current_path(url)
  end

  def valida_alert(page, texto)
    text = page.driver.browser.switch_to.alert.text
    expect(text).to eq texto
    page.driver.browser.switch_to.alert.accept
  end

  def valida_sem_href(page, href)
    expect(page).to have_no_selector(href)
  end

  def valida_link(page, link)
    expect(page).to have_link(link)
  end

  def valida_sem_link(page, link)
    expect(page).to have_no_link(link)
  end

  def valida_tamanho(obtido, esperado)
    expect(obtido).to eq(esperado)
  end

  def valida_title(element, expected_title)
    expect(element).to have_title(expected_title)
  end
end
