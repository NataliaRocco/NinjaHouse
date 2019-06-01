class LoginPage

  include Capybara::DSL



  def load

    visit '/login'

  end


  def logar(email, senha)

    find('input[placeholder*=mail]').set email # ele procura pela palavra 'mail'

    find('input[type=password]').set senha

    find('button[id*=btnLogin]').click

  end

  def estou_pagina?
      page.has_css?('#login_form')
  end
  
    def alerta

      find('.alert-login')

    end

end

