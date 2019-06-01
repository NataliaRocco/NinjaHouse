class TarefasPage 

    include Capybara::DSL

    def nova(tarefa)
        within('#add-task')do # so vai procura esse campos dentro deese id #add_task deixando o cidigo mais robusto
            fill_in'title', with: tarefa[:nova]
            fill_in'dueDate', with: tarefa[:data]
            insere_tags(tarefa[:tags]) # como esta recendo um array pode fazer for each
            click_button 'Cadastrar'
        end
    end
  

    def botao_novo
        find('button[id^=insert-button]').click
    end

    def ola
        find('#task-board h3')
    end

    private

    def insere_tags(tags)
        campo_tag = find('div[class*=tagsinput] input')
        tags.each do |t|
            campo_tag.set t[:tag] # gravar o valor da tag
            campo_tag.send_keys :tab # simular tecla a tab do teclado
            sleep 0.5
        end
    end
end

#pageobject: padrao de projeto do qual cria uma classe que representa a pagina q eu quero testar