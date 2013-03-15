class Content < ActiveRecord::Base
  attr_accessible :description, :filename, :language, :name, :public, :url
end
