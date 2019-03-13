module ControllerMacros
  def login_user
    before(:each) do
      @request.env["devise.mapping"]= Devise.mapping[:user]
      @user = User.create(
        email: 'test@test.com',
        password: 'password',
        first_name: 'Test',
        last_name: 'Tester',
        age: 28
      )
      sign_in @user
    end
  end

end