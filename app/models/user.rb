class User < ActiveRecord::Base
  validates :first_name, :last_name, :id_number, :gender, :presence => true
  validates :email, :confirmation => true
  validates :email_confirmation, :presence => true
  validates :email, :uniqueness => true
  validates :password, :confirmation => true, :length => { :in => 6..20 }
  validates :password_confirmation, :presence => true
end
