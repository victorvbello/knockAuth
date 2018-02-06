class UserTokenController < Knock::AuthTokenController

	def create
  	render json:{userdata:entity.user_json_data,token:auth_token.token}, status: :created
	end
	
end
