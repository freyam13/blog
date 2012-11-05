class Post < ActiveRecord::Base
  attr_accessible :content, :tags, :title
  
  validates_presence_of :content, :tags, :title
  
end
