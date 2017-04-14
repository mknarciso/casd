class CreateCandidateForms < ActiveRecord::Migration
  def change
    create_table :candidate_forms do |t|
      t.integer :automovel
      t.integer :television
      t.integer :computers
      t.integer :washingMachines
      t.integer :fridge
      t.integer :radio
      t.integer :bathrooms
      t.integer :employees
      t.string :householderInstructionLevel
      t.string :city
      t.string :houseType
      t.string :transport
      t.string :familyIncomeParticipation
      t.string :workType
      t.string :individualMonthlyIncome
      t.string :howDoYouKnowCASD
      t.integer :isHighSchoolStudent
      t.boolean :hasStudiedCASD
      t.boolean :relativeInCASD

      t.timestamps null: false
    end
  end
end
