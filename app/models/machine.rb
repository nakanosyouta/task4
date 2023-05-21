class Machine < ApplicationRecord

  has_many :process_controls

  has_many :instructions
end
