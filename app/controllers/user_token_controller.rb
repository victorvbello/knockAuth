class UserTokenController < Knock::AuthTokenController

	def create
  	render json:{token:auth_token,userdata:entity.user_json_data}, status: :created
	end
	
end
