class ProcessControl < ApplicationRecord

  belongs_to :machine
  belongs_to :instruction
  enum status: { waiting: 0, progress: 1, done: 2 }
  
  validates :temperature_set, presence: true, length: { maximum: 50 }
  validates :temperature_out, presence: true, length: { maximum: 50 }
  validates :check_exterior, presence: true, length: { maximum: 50 }
  validates :check_line, presence: true, length: { maximum: 50 }
  validates :check_paint, presence: true, length: { maximum: 50 }
  validates :check_neme, presence: true, length: { maximum: 50 }
  
end

# == Schema Information
#
# Table name: process_controls
#
#  id              :integer          not null, primary key
#  check_exterior  :string           not null
#  check_line      :string           not null
#  check_neme      :string           not null
#  check_paint     :string           not null
#  status          :integer          default("progress"), not null
#  temperature_out :string           not null
#  temperature_set :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  instruction_id  :string
#  machine_id      :string
#  staff_id        :string
#
