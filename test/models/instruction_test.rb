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
require "test_helper"

class InstructionTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
