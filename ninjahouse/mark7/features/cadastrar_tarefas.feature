#language: pt

Funcionalidade: Cadastrar tarefas
    Para que eu possa organizar as minhas atividades
    Sendo um usuário cadastrado
    Posso cadastrar novas tarefas

   @login @nova_tarefa
    Cenario: Nova tarefa

        Dado que "Estudar Ruby" é a minha nova tarefa
        E devo finalizar esta tarefa até "01/01/2019"
        E além disso quero taquear esta tarefa com:
            | tag        |
            | ruby       |
            | capybara   |
            | leitura    |
            | video aula |
        Quando eu faço o cadastro desta tarefa
        Então devo este cadastro na lista com o status "Em andamento"

