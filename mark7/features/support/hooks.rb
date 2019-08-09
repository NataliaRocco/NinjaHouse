
Before do
    @page = Pages.new
    @component = Components.new
end

Before ('@login')do
    @page.login.load    
    @page.login.logar('natalia.rocco@hotmail.com', '123456')
end


After('@logout') do
    @component.nav.sair
    expect(@page.login.estou_pagina?).to be true
end

After do |scenario|
    nome = scenario.name.gsub(/[^A-Za-z0-9 ]/, '').downcase!
    nome = nome.tr(' ', '_')
    screenshot = "log/screenshots/#{nome}.png"
    page.save_screenshot(screenshot) # => Capaybara tira o Screenshot
    embed(screenshot , "image/png","Evidencia") # =>cucumber tira o Screenshot
end