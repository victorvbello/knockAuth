

class User < ActiveRecord::Base
		has_secure_password
		BCrypt::Engine.cost = 4

		def self.from_token_request request
			username = request.params["auth"] && request.params["auth"]["username"]
    	self.find_by username: username
		end

		def self.from_token_payload payload
    	self.find payload["sub"]
  	end

		def to_token_payload
      {
        sub: id,
        username: username
      }
		end


		##Metodos de has_secure_password

		def authenticate(unencrypted_password)
      BCrypt::Password.new(password_digest) == unencrypted_password && self
    end

    def password=(unencrypted_password)
      unless unencrypted_password.blank?
        @password = unencrypted_password
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST : BCrypt::Engine.cost
        self.password_digest = BCrypt::Password.create(unencrypted_password, cost: cost)
      end
    end

    def password_confirmation=(unencrypted_password)
      @password_confirmation = unencrypted_password
    end

    ##Metodos propios

    def user_json_data
      {
        first_name:first_name,
        last_name:last_name,
        username:username
      }
    end
end 