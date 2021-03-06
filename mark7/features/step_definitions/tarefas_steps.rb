Dado('que {string} é a minha nova tarefa') do |nova_tarefa|
  @nova_tarefa = {nome: nova_tarefa, data: nil, tags: [] }
  MarkDb.new.apaga_tarefa(nova_tarefa)
end
#aula mongo

Dado("que {string} é a minha nova tarefa dinamica") do |nova_tarefa|
  @nova_tarefa = { 
    nome: "#{nova_tarefa} - #{Faker::Lorem.characters(10)}",
    data: nil,
     tags: [] 
    }
end

Dado('devo finalizar esta tarefa até {string}') do |data_tarefa|
  @nova_tarefa[:data] = data_tarefa
end

Dado('além disso quero taquear esta tarefa com:') do |table|
  @nova_tarefa[:tags] = table_hashes #array de hashes(o comando 'hashes' mexer cm tabelas)
end

Quando('eu faço o cadastro desta tarefa') do
  @page.tarefas.botao_novo.click
  @page.tarefas.nova(@nova_tarefa)
end

Então('devo este cadastro na lista com o status {string}') do |status_tarefa|
 res = @page.tarefas.obter_tr_por_nome(@nova_tarefa[:nome])
 expect(res).to have_content status_tarefa
end

#Remover

Dado("esta tarefa é indesejada") do
  @tarefa_indesejada = @nova_tarefa[:nome]
  steps %(
    Quando eu faço o cadastro desta tarefa
  )
end

Quando("eu solicito a exclusão desta tarefa") do
  # @page.tarefas.obter_tr_por_nome (@nova_tarefa[:nome]).text find ('#delete-button').click
  @page.tarefas.solicita_exclusao(@tarefa_indesejada)
end

Quando("confirmo esta solicitação") do
  @component.modal.confirma
end

Então("esta tarefa não deve ser exibida na lista") do
  @page.tarefas.tarefa_existe?(@tarefa_indesejada)
end