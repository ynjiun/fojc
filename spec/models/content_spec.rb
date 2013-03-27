# == Schema Information
#
# Table name: contents
#
#  id                  :integer          not null, primary key
#  name                :string(255)
#  description         :string(255)
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#  avatar_file_name    :string(255)
#  avatar_content_type :string(255)
#  avatar_file_size    :integer
#  avatar_updated_at   :datetime
#  chinese             :boolean
#  schinese            :boolean
#  english             :boolean
#

require 'spec_helper'

describe Content do
  #pending "add some examples to (or delete) #{__FILE__}"
end
