class User < ApplicationRecord
	self.primary_key = "id"
	has_many :preferences_user
	has_secure_password
	
	validates :nickname, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
end
