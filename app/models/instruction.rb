class Instruction < ApplicationRecord

  has_one :process_control

  belongs_to :machine

  validates :product_name, presence: true, length: { maximum: 50 }
  validates :conductor, presence: true, length: { maximum: 50 }
  validates :conductor_range, presence: true, length: { maximum: 50 }
  validates :insulator, presence: true, length: { maximum: 50 }
  validates :insulator_range, presence: true, length: { maximum: 50 }
  validates :finish, presence: true, length: { maximum: 50 }
  validates :finish_range, presence: true, length: { maximum: 50 }
  validates :order, presence: true, length: { maximum: 50 }
  validates :volume, presence: true, length: { maximum: 50 }
  validates :bobbin, presence: true, length: { maximum: 50 }
  validates :temperature_top, length: { maximum: 50 }
  validates :temperature_under, presence: true, length: { maximum: 50 }
  validates :paint_top, length: { maximum: 50 }
  validates :paint_under, presence: true, length: { maximum: 50 }
  validates :speed, presence: true, length: { maximum: 50 }
  validates :lubricant, presence: true, length: { maximum: 50 }
  validates :apply, length: { maximum: 50 }
  validates :product_time, presence: true, length: { maximum: 50 }
  validates :material, presence: true, length: { maximum: 50 }
  validates :delivery, presence: true, length: { maximum: 50 }
  validates :ovrview, length: { maximum: 50 }
  #allow_blank: true


end

# == Schema Information
#
# Table name: instructions
#
#  id                :integer          not null, primary key
#  apply             :string
#  bobbin            :string           not null
#  conductor         :string           not null
#  conductor_range   :string           not null
#  delivery          :string           not null
#  finish            :string           not null
#  finish_range      :string           not null
#  insulator         :string
#  insulator_range   :string
#  lubricant         :string
#  material          :string           not null
#  order             :integer          not null
#  ovrview           :string
#  paint_top         :string
#  paint_under       :string
#  product_name      :string           not null
#  product_time      :string           not null
#  speed             :string           not null
#  temperature_top   :string
#  temperature_under :string
#  volume            :string           not null
#  work_name         :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  machine_id        :integer
#
