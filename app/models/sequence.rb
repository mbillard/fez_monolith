class Sequence < ActiveRecord::Base
  attr_accessible :has_left_right_inputs, :has_three_repeating_inputs, :inputs, :test_count

  before_create :define_booleans

  private

  # on `before_create`
  def define_booleans
    self.has_three_repeating_inputs = !!(/(A A A|UP UP UP|DOWN DOWN DOWN|RT RT RT|LT LT LT|LEFT LEFT LEFT|RIGHT RIGHT RIGHT)/ =~ self.inputs)
    self.has_left_right_inputs = !!(/(LEFT|RIGHT)/ =~ self.inputs)

    true
  end

end
# == Schema Information
#
# Table name: sequences
#
#  id                         :integer(4)      not null, primary key
#  inputs                     :string(255)
#  test_count                 :integer(4)
#  has_three_repeating_inputs :boolean(1)
#  has_left_right_inputs      :boolean(1)
#  created_at                 :datetime        not null
#  updated_at                 :datetime        not null
#  match_count                :integer(4)
#

