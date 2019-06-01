    #language:pt
    Funcionalidade: Meu perfil
    Para que eu possa manter meus dados atualizados
    Sendo um suario que fez o cadastro simplificado
    Posso completar o cadastro do meu perfil

    # dock string outra forma de mostrar mensagem com mais de uma linha

   @logout   @perfil

    Esquema do Cenario: Atualizar meu perfil

    Dado que estou logado com 'natalia.rocco@hotmail.com' e '123456'
    E acesso o meu perfil
    Quando completo o meu cadastro com 'Google' e 'Developer'
    Então devo ver a mensagem de atualização cadastral:
        """
        Perfil cadastrado com sucesso!

        """

        Exemplos:
    | email                  | senha  | empresa | cargo      |
    | developer@google.com   | abc123 | Google  | Developer  |
    # | qa@yahoo.com           | def123 | Yahoo   | QA         |
    # | cco@amazon.com         | ghi123 | Amazon  | CCO        |
    # | cto@picpay.com         | jhl123 | PicPay  | CTO        |
    # | estagirario@nubank.com | mno123 | Nubank  | Estagiario |



