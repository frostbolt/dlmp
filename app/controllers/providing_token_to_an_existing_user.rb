get "/api/users/getToken/:username/:password" do 
	tempuser = User.find_by(username: params['username'])

	if (tempuser == nil)
		@a.errors << "The username or password is incorrect"
	elsif (tempuser.password != params['password'])
		@a.errors << "The username or password is incorrect"
	else
		@a.status = true
		@a.data[:token] = tempuser.get_token
		@a.errors << tempuser.errors.messages
	end

	@a.to_json
end