class User < ActiveRecord::Base
  attr_accessible :admin, :email, :first_name, :last_name, :password, :password_confirmation
  
  has_secure_password
  
  validates_presence_of :email, :first_name, :last_name
  validates_uniqueness_of :email
end
