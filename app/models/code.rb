class Code < ActiveRecord::Base
  attr_accessible :has_left_right_inputs, :has_three_repeating_inputs, :inputs, :test_count
end
# == Schema Information
#
# Table name: codes
#
#  id                         :integer(4)      not null, primary key
#  inputs                     :string(255)
#  test_count                 :integer(4)
#  has_three_repeating_inputs :boolean(1)
#  has_left_right_inputs      :boolean(1)
#  created_at                 :datetime        not null
#  updated_at                 :datetime        not null
#

