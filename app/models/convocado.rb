class Convocado < ActiveRecord::Base
    def self.import(file)
        CSV.foreach(file.path, col_sep: ";", headers: true) do |row|
            Convocado.create! row.to_hash
        end
    end
end
