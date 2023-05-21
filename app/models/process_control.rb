class ProcessControl < ApplicationRecord

  belongs_to :machine
  belongs_to :instruction
  enum status: { waiting: 0, progress: 1, done: 2 }
end
