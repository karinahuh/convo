class User < ApplicationRecord
	self.primary_key = "id"
	has_many :preferences_user
	has_secure_password
	after_initialize :init
	
	validates :nickname, presence: true, uniqueness: true
	validates :email, presence: true, uniqueness: true
	
	def init 
		self.complaint ||= 0
	end
	
	#class UserComplaint
		#def self.complaint	
			#self.sum(:complaint +1)
		#end
	#end
		
end
