#language: pt

Funcionalidade: Login

    Para que eu possa cadastrar e gerenciar minhas atividades
    Sendo um usuario cadastrado
    Posso acessar o sistema com meu email e minha senha
   
  @logout @smoke 
    Cenario: Usuario Autenticado

        Dado que estou na página de login
        Quando faço login com "natalia.rocco@hotmail.com" e "123456"
        Então devo ver a mensagem "Olá, natalia"

@tentativa
    Esquema do Cenario: Tentativa de Login

        Dado que estou na página de login
        Quando faço login com "<email>" e "<senha>"
        Então devo ver a mensagem de alerta "<mensagem>"

        Exemplos:
      | email                     | senha  | mensagem                    |
      | natalia.rocco@hotmail.com | abcabc | Senha inválida.             |
      | natalia.rocco&hotmail.com | 123456 | Email incorreto ou ausente. |
      |                           | 123456 | Email incorreto ou ausente. |
      | natalia.rocco@hotmail.com |        | Senha ausente.              |
      | natalia@hotmail.com       | 123456 | Usuário não cadastrado.     |


     Cenario: Bloqueia após 5 tentativas

        Dado que estou na página de login
        E a quantidade máxima de login é de 5 tentativas
        Quando tento logar com "natalia.rocco@hotmail.com" e "abcabc"
        Então devo ver a mensagem de alerta "Usuário bloqueado. Por favor aguarde 10 segundos, e tente novamente."

