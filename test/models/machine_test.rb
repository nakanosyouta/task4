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
require "test_helper"

class MachineTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
