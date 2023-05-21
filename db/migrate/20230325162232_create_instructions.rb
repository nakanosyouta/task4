class CreateInstructions < ActiveRecord::Migration[6.1]
  def change
    create_table :instructions do |t|

      t.integer "machine_id"
      # 品名
      t.string "product_name", null: false
      # 導体
      t.string "conductor", null: false
      t.string "conductor_range", null: false
      # 絶縁体
      t.string "insulator"
      t.string "insulator_range"
      # 仕上
      t.string "finish", null: false
      t.string "finish_range", null: false
      # 量
      t.integer "order", null: false
      t.string "volume", null: false
      t.string "bobbin", null: false
      # 熱
      t.string "temperature_top"
      t.string "temperature_under"
      # 塗料
      t.string "paint_top"
      t.string "paint_under"
      # 速度
      t.string "speed", null: false
      # 滑剤
      t.string "lubricant"
      t.string "apply"
      # その他
      t.string "product_time", null: false
      t.string "material", null: false
      t.string "delivery", null: false
      t.string "ovrview"

      t.string "work_name"

      t.timestamps
    end
  end
end
