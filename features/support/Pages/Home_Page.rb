class HomePage
  def acessa_home
    $CustomDSL.visit_page("")
    $Validation.valida_title(page, "Blog Do Agi - Agibank")
  end
end
