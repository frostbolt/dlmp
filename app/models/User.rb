class User < ActiveRecord::Base

	validates :username, presence: true, uniqueness: true, length: { in: 3..12 }
	validates :password, presence: true, length: { in: 3..32 }
	validates :email, presence: true, uniqueness: true, email: true
	
	def get_token
		if self.token == nil
			self.token = SecureRandom.hex(15)
			self.save
		end
		return self.token
	end

end