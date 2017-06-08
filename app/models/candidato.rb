class Candidato < ActiveRecord::Base
    has_one :entrevista
    
    def self.import(file)
        CSV.foreach(file.path, col_sep: ";", headers: true) do |row|
            #Candidato.create! row.to_hash
            hash = row.to_hash
            #conv = Candidato.new row.to_hash
            hash["nascimento"] = Date.strptime(hash["nascimento"], '%d/%m/%y') 
            hash["data_inscricao"] = DateTime.strptime(hash["data_inscricao"], '%d/%m/%y %H:%M') 
            Candidato.create! hash
        end
    end
end
