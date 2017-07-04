class Candidato < ActiveRecord::Base
    has_one :entrevista
    has_one :pesquisa
    
    validates :inscricao, presence: true
    validates :nome, presence: true
    validates :rg, presence: true
    validates :cpf, presence: true
    validates :sexo, presence: true
    validates :nascimento, presence: true
    validates :email, presence: true
    validates :endereco, presence: true
    validates :bairro, presence: true
    validates :cep, presence: true
    validates :cidade, presence: true
    validates :tipo_escola, presence: true
    validates :escolaridade, presence: true
    validates :nome_escola, presence: true
    validates :transporte, presence: true
    validates :ex_aluno, presence: true
    validates :como_conheceu, presence: true
    validates :data_inscricao, presence: true
    
    def self.import(file)
        CSV.foreach(file.path, col_sep: ";", headers: true) do |row|
            #Candidato.create! row.to_hash
            hash = row.to_hash
            #conv = Candidato.new row.to_hash
            hash["nascimento"] = Date.strptime(hash["nascimento"], '%d/%m/%Y') 
            hash["data_inscricao"] = DateTime.strptime(hash["data_inscricao"], '%d/%m/%Y %H:%M') 
            Candidato.create! hash
        end
    end
end
