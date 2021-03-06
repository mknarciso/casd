class Entrevista < ActiveRecord::Base
    belongs_to :candidato
    
    #validates :entregou_documentos, presence: true
    #validates :historico_escolar, presence: true
    #validates :numero_de_pessoas, presence: true
    #validates_presence_of :holerites_mes1, :if => :nenhuma_renda?
    #validates :agua_mes1, presence: true
    #validates :luz_mes1, presence: true
    
    def nenhuma_renda?
        aposentadorias.try(:empty?) || auxilios.try(:empty?)
    end
    
    validates_presence_of :holerites_mes1, :agua_mes1, :luz_mes1, :net_TV_mes1
    
    def self.media(arg1, arg2, arg3)
       result = 0
       numArgsNaoNulos = 0
       if(!arg1.nil?)
           result += arg1
           numArgsNaoNulos += 1
       end
       if(!arg2.nil?)
           result += arg2
           numArgsNaoNulos += 1
       end
       if(!arg3.nil?)
           result += arg3
           numArgsNaoNulos += 1
       end
       if(numArgsNaoNulos != 0)
        return result/numArgsNaoNulos
       else
        return 0
       end
    end
end

