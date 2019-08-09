class TarefasPage 

    include Capybara::DSL

    def nova(tarefa)
        within('#add-task')do # so vai procura esse campos dentro deese id #add_task deixando o cidigo mais robusto
            fill_in'title', with: tarefa[:nome]
            fill_in'dueDate', with: tarefa[:data]
            insere_tags(tarefa[:tags]) # como esta recendo um array pode fazer for each
            click_button 'Cadastrar'
        end
    end

    def solicita_exclusao(nome)
        tr = obter_tr_por_nome(nome)
        tr.find('#delete-button').click
    end

    def obter_tr_por_nome(nome)
        find('table tbody tr', text: nome)
    end
    
    def tarefa_existe?(nome)
        page.has_css?('table tbody tr', text: nome)
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
