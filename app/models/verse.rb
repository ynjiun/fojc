# == Schema Information
#
# Table name: verses
#
#  id         :integer          not null, primary key
#  verse      :string(255)
#  chinese    :text
#  schinese   :text
#  english    :text
#  last_show  :date
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Verse < ActiveRecord::Base
  attr_accessible :chinese, :english, :last_show, :schinese, :verse
  default_scope order: 'verses.verse ASC'
end
