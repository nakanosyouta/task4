class Instruction < ApplicationRecord

  has_one :process_control
  
  belongs_to :machine
end
