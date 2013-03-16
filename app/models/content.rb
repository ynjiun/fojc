class Content < ActiveRecord::Base
  attr_accessible :description, :name, :chinese, :schinese, :english, :avatar
  has_attached_file :avatar, :styles => { :thumb => ["100x100",:png] }
end
