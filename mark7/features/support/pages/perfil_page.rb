class PerfilPage

    include Capybara::DSL

    def completa(perfil)
        find('input[name$=company]').set perfil[:empresa]
        combo_cargo = find('select[name$=job]')
        combo_cargo.find('option', text: perfil[:cargo]).select_option   # dentro do elemento find('select [name$=job]') procura uma option
        click_button 'Salvar' #'click_button' do tipo button
    end
    
    def alerta
        find('.panel-c-success')     
    end    


end