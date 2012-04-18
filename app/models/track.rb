class Track < ActiveRecord::Base
  attr_accessible :false_positive_count, :ip_address, :match_count, :tested_count

  def fraud?
    match_count >= 10
  end

end
# == Schema Information
#
# Table name: tracks
#
#  id                   :integer(4)      not null, primary key
#  ip_address           :string(255)
#  tested_count         :integer(4)
#  match_count          :integer(4)
#  false_positive_count :integer(4)
#  created_at           :datetime        not null
#  updated_at           :datetime        not null
#

