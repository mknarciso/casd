class Convocado < ActiveRecord::Base
    def self.import(file)
        CSV.foreach(file.path, col_sep: ";", headers: true) do |row|
            #Convocado.create! row.to_hash
            hash = row.to_hash
            #conv = Convocado.new row.to_hash
            hash["nascimento"] = Date.strptime(hash["nascimento"], '%d/%m/%y') 
            hash["data_inscricao"] = DateTime.strptime(hash["data_inscricao"], '%d/%m/%y %H:%M') 
            Convocado.create! hash
        end
    end
end
