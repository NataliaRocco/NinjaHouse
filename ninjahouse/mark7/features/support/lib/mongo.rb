require 'mongo'


class Markdb
    def apaga_tarefas(nome)
        tarefas_collection = client[:taks]
        tarefas_collection.delete_one('title' => nome)
    end

    def client
    
    url = 'ds225078.mlab.com'
    porta = '25078'
    banco = 'heroku_4m3km28x'
    usuário = 'heroku_4m3km28x'
    senha = 'rmrm93njviet46a4caul3svj4p'
    
    Mongo::Logger.logger = Logger.new('log/mongo.log')
         Mongo::Client.new("mongodb://#{usuario}:#{senha}@#{url}:#{porta}/#{banco}")
    end
end 
