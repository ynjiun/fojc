# == Schema Information
#
# Table name: pads
#
#  id         :integer          not null, primary key
#  name       :string(255)
#  snippet    :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Pad < ActiveRecord::Base
  attr_accessible :name, :snippet
end
