

class Pages
    attr_accessor :login, :perfil, :tarefas

    def initialize
        self.login = LoginPage.new
        self.perfil = PerfilPage.new
        self.tarefas = TarefasPage.new
    end
end

class Components
    attr_accessor :nav, :side, :modal

    def initialize
        self.nav = Navbar.new
        self.side = Sidebar.new
        self.modal = Modal.new
    end

end