class Entrevista < ActiveRecord::Base
    belongs_to :candidato
    
    validates :entregou_documentos, presence: true
    validates :historico_escolar, presence: true
    validates :numero_de_pessoas, presence: true
    validates_presence_of :holerites_mes1, :if => :nenhuma_renda?
    validates :agua_mes1, presence: true
    validates :luz_mes1, presence: true
    validates :aprovado, presence: true
    
    def nenhuma_renda?
        aposentadorias.try(:empty?) || auxilios.try(:empty?)
    end
    
end

