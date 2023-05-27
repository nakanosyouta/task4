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
require "test_helper"

class ProcessControlTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
