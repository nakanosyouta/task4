class Machine < ApplicationRecord

  has_many :process_controls

  has_many :instructions
  
  validates :machine_unit, presence: true, length: { maximum: 50 }
  validates :machine_number, presence: true, length: { maximum: 50 }
  
end

# == Schema Information
#
# Table name: machines
#
#  id             :integer          not null, primary key
#  machine_number :string           not null
#  machine_unit   :string           not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#  instruction_id :string
#
