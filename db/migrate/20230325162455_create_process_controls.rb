class CreateProcessControls < ActiveRecord::Migration[6.1]
  def change
    create_table :process_controls do |t|
      
      t.string "staff_id"
      t.string "machine_id"
      t.string "instruction_id"
      # ccs
      t.string "temperature_set", null: false
      t.string "temperature_out", null: false
      # チェック欄
      t.string "check_exterior", null: false
      t.string "check_line", null: false
      t.string "check_paint", null: false
      t.string "check_neme", null: false

      t.timestamps
    end
  end
end
