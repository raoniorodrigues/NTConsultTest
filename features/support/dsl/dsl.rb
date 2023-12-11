require "capybara/dsl"

class CustomDSL
  include Capybara::DSL

  def visit_page(url)
    visit(url)
  end

  def fill_in_field(field_name, with:)
    fill_in(field_name, with: with)
  end

  def find_element(selector)
    find(selector)
  end

  def check_checkbox(checkbox_name)
    check(checkbox_name)
  end

  def uncheck_checkbox(checkbox_name)
    uncheck(checkbox_name)
  end

  def find_and_click(selector)
    find(selector).click
  end

  def find_and_set(selector, text)
    find(selector).set(text)
  end
end
