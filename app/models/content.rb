class Content < ActiveRecord::Base
  attr_accessible :description, :filename, :language, :name, :url, :public, :avatar
  has_attached_file :avatar, :styles => { :medium => "300x300", :thumb => "100x100" }
end
