class Convocado < ActiveRecord::Base
    def self.import(file)
        CSV.foreach(file.path, col_sep: ";", headers: true) do |row|
            Convocado.create! row.to_hash
            #hash = row.to_hash
            #conv = Convocado.new row.to_hash
            #if hash.especiais == "Sim"
            #   hash.especiais = true
            #else
            #    hash.especiais = false
            #end
            #puts hash
        end
    end
end
