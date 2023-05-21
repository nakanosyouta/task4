class AddColumnProcessControl < ActiveRecord::Migration[6.1]
  def change
    add_column :process_controls, :status, :integer,null: false,default: 1
  end
end
