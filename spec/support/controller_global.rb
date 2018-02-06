module ControllerGlobal
  def login_user
    before(:each) do
      role = FactoryBot.create(:role) 
      user=role.users.create(FactoryBot.attributes_for(:user))

      token = Knock::AuthToken.new(payload: { sub: user.id }).token
      {
        'Authorization': "Bearer #{token}"
      }
    end
  end
end
