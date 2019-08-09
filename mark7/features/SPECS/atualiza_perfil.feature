    #language:pt
    Funcionalidade: Atualização perfil
    Sendi um usuario que fez um cadastro simples
    Posso atualizarseus dados cadastrais
    PAra que minhas informações estejas sempre atualizadas

    # dock string outra forma de mostrar mensagem com mais de uma linha

   @logout   @perfil 

    Esquema do Cenario: Atualizar meu perfil

    Dado que estou autenticado com '<email>' e '<senha>'
    E eu trabalho na '<empresa>' com o '<cargo>'
    Quando faço  a atualização do meu cadastro 
    Então devo ver a seguinte mensagem: "Perfil atualizado com sucesso!"

        Exemplos:
    | email                  | senha  | empresa | cargo      |
    | developer@google.com   | abc123 | Google  | Developer  |
    # | qa@yahoo.com           | def123 | Yahoo   | QA         |
    # | cco@amazon.com         | ghi123 | Amazon  | CCO        |
    # | cto@picpay.com         | jhl123 | PicPay  | CTO        |
    # | estagirario@nubank.com | mno123 | Nubank  | Estagiario |



