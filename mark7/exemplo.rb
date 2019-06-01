

   # fill_in funciona quando o elemento input possui id ou name
   #valor absloluto
   # fill_in 'login_email', with: email
   # fill_in 'login_password', with: senha
     
   # buscar elemento do tipo input cuja o atributo placeholder,
   #seja igual a exemple@gamail.com

   #css selector   
   # find('input[placeholder ="example@gmail.com"]').set email
   # find('input[type=password]').set senha
   
   #o id do login é dinamico, entao usa o texto
   # click_button'Login'
   # senao tiver texto usa o id do login, porém pega um texto do id
   #q nao muda'btnlogin'e o asterisco ele procura  um botao cuja o o valor do id q contenha'btnLogin' 
   # find('button[id*=btnLogin]').click
   # o acento circunflecio eh se começa com btnLogin
    #find('button[id^=btnLogin]').click
    
   #css selector
   # find('#login_email').set email
   # find('#login_password').set senha

# Quando('tento logar com {string} e {string}') do |email, senha|
     # find('input[placeholder ="example@gmail.com"]').set email
      # find('input[type=password]').set senha
      # find('button[id*=btnLogin]').click



#Exemplos de cenarios que podemser feito uma matriz, pois todos estao na msm pagina do login
   
	# @temp
    # Cenario: Senha incorreta

    #     Dado que estou na página de login
    #     Quando faço login com "natalia.rocco@hotmail.com" e "abcabc"
    #     Então devo ver a mensagem de alerta "Senha inválida."
    # @temp
    # Cenario: Email incorreto 

    #     Dado que estou na página de login
    #     Quando faço login com "natalia.rocco&hotmail.com" e "123456"
    #     Então devo ver a mensagem de alerta "Email incorreto ou ausente."
    # @temp 
    # Cenario: Email não informado

    #     Dado que estou na página de login
    #     Quando faço login com "" e "123456"
    #     Então devo ver a mensagem de alerta "Email incorreto ou ausente."
    #  @temp 
    # Cenario: Senha não informada

    #     Dado que estou na página de login
    #     Quando faço login com "natalia.rocco@hotmail.com" e ""
    #     Então devo ver a mensagem de alerta "Senha ausente."
    #  @temp 
    # Cenario: Usuario não existe

    #     Dado que estou na página de login
    #     Quando faço login com "natalia@hotmail.com" e "123456"
    #     Então devo ver a mensagem de alerta "Usuário não cadastrado."
#hooks ganchos de steps
# nunca colocar uma step depois do 'Entao' no BDD, pois depois do 'entao' tudo são verificação e assim cirar um gancho(arquivo hooks)
