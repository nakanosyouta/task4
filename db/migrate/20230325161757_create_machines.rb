class CreateMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :machines do |t|
      
    t.string "instruction_id"
    
    t.string "machine_unit", null: false
    t.string "machine_number", null: false  

      t.timestamps
    end
  end
end
